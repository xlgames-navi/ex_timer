defmodule ExTimer.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_timer,
      version: "1.5.4",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "ex_timer",
      source_url: "https://github.com/kminwoog/ex_timer"
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
      {:ex_doc, "~> 0.35.1", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end

  defp description() do
    "Better performance timer in elixir."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "ex_timer",
      # These are the default files included in the package
      files: ["lib", "test", "config", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["taiyo"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kminwoog/ex_timer"}
    ]
  end
end
