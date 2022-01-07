; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8900_REG_AUDIO1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM8900_REG_DACCTRL = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL_DAC_SB_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8900_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %16, align 8
  store %struct.snd_soc_device* %17, %struct.snd_soc_device** %9, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %21, align 8
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %10, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %24 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %25 = call i32 @snd_soc_read(%struct.snd_soc_codec* %23, i32 %24)
  %26 = and i32 %25, -97
  store i32 %26, i32* %11, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_format(%struct.snd_pcm_hw_params* %27)
  switch i32 %28, label %39 [
    i32 131, label %29
    i32 130, label %30
    i32 129, label %33
    i32 128, label %36
  ]

29:                                               ; preds = %3
  br label %42

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, 32
  store i32 %32, i32* %11, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, 64
  store i32 %35, i32* %11, align 4
  br label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, 96
  store i32 %38, i32* %11, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %36, %33, %30, %29
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %44 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 %45)
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %42
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %54 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %55 = call i32 @snd_soc_read(%struct.snd_soc_codec* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = call i32 @params_rate(%struct.snd_pcm_hw_params* %56)
  %58 = icmp sle i32 %57, 24000
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @WM8900_REG_DACCTRL_DAC_SB_FILT, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %68

63:                                               ; preds = %52
  %64 = load i32, i32* @WM8900_REG_DACCTRL_DAC_SB_FILT, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %70 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @snd_soc_write(%struct.snd_soc_codec* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %42
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
