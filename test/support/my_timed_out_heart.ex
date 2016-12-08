defmodule MyTimedOutHeart do
  use HeartCheck, timeout: 1000

  add :redis do
    # TODO: do some actual tests here
    :ok
  end

  add "string_test" do
    :ok
  end

  add :failing do
    {:error, "I always fail"}
  end

  add :cas do
    # TODO: do some actual tests here
    :timer.sleep(2000)
    {:error, "failed"}
  end

  add :module, MyTestModule
end
