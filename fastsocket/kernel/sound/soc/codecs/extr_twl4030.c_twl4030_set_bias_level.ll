; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.twl4030_priv* }
%struct.twl4030_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @twl4030_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %6, i32 0, i32 1
  %8 = load %struct.twl4030_priv*, %struct.twl4030_priv** %7, align 8
  store %struct.twl4030_priv* %8, %struct.twl4030_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %44 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %27
    i32 131, label %41
  ]

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = call i32 @twl4030_codec_mute(%struct.snd_soc_codec* %11, i32 0)
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = call i32 @twl4030_power_up(%struct.snd_soc_codec* %14)
  %16 = load %struct.twl4030_priv*, %struct.twl4030_priv** %5, align 8
  %17 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = call i32 @twl4030_codec_mute(%struct.snd_soc_codec* %21, i32 0)
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = call i32 @twl4030_codec_mute(%struct.snd_soc_codec* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %20
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = call i32 @twl4030_power_up(%struct.snd_soc_codec* %28)
  %30 = load %struct.twl4030_priv*, %struct.twl4030_priv** %5, align 8
  %31 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %36 = call i32 @twl4030_codec_mute(%struct.snd_soc_codec* %35, i32 0)
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %39 = call i32 @twl4030_codec_mute(%struct.snd_soc_codec* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %34
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %43 = call i32 @twl4030_power_down(%struct.snd_soc_codec* %42)
  br label %44

44:                                               ; preds = %2, %41, %40, %26, %10
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret i32 0
}

declare dso_local i32 @twl4030_codec_mute(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_power_up(%struct.snd_soc_codec*) #1

declare dso_local i32 @twl4030_power_down(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
