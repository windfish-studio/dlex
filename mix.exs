defmodule Dlex.MixProject do
  use Mix.Project

  def project do
    [
      app: :dlex,
      version: "0.4.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.6.3"},
      {:db_connection, "~> 2.1"},
      {:grpc, "~> 0.3.1"},
      {:jason, "~> 1.0", optional: true},
      {:mint, "~> 1.0", optional: true},
      {:castore, "~> 0.1.4", optional: true},
      {:ecto, "~> 3.1", optional: true},
      {:earmark, "~> 1.0", only: :dev},
      {:exrun, "~> 0.1.0", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end

  defp description do
    "Dlex is a gRPC based client for the Dgraph database."
  end

  defp package do
    [
      maintainers: ["Dmitry Russ(Aleksandrov)", "Eric Hagman"],
      licenses: ["Apache 2.0"],
      links: %{"Github" => "https://github.com/liveforeverx/dlex"}
    ]
  end
end
