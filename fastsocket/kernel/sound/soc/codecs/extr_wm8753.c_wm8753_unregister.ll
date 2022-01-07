; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8753_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@wm8753_dai = common dso_local global i32* null, align 8
@wm8753_codec = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8753_priv*)* @wm8753_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8753_unregister(%struct.wm8753_priv* %0) #0 {
  %2 = alloca %struct.wm8753_priv*, align 8
  store %struct.wm8753_priv* %0, %struct.wm8753_priv** %2, align 8
  %3 = load %struct.wm8753_priv*, %struct.wm8753_priv** %2, align 8
  %4 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %3, i32 0, i32 0
  %5 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %6 = call i32 @wm8753_set_bias_level(%struct.TYPE_3__* %4, i32 %5)
  %7 = load %struct.wm8753_priv*, %struct.wm8753_priv** %2, align 8
  %8 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @run_delayed_work(i32* %9)
  %11 = load i32*, i32** @wm8753_dai, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32*, i32** @wm8753_dai, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @snd_soc_unregister_dais(i32* %12, i32 %14)
  %16 = load %struct.wm8753_priv*, %struct.wm8753_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %16, i32 0, i32 0
  %18 = call i32 @snd_soc_unregister_codec(%struct.TYPE_3__* %17)
  %19 = load %struct.wm8753_priv*, %struct.wm8753_priv** %2, align 8
  %20 = call i32 @kfree(%struct.wm8753_priv* %19)
  store i32* null, i32** @wm8753_codec, align 8
  ret void
}

declare dso_local i32 @wm8753_set_bias_level(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @run_delayed_work(i32*) #1

declare dso_local i32 @snd_soc_unregister_dais(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.wm8753_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
