; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_voice_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_voice_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8753_PCM_DIV_6 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_B = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@WM8753_PCMCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@WM8753_PCMDIV = common dso_local global i32 0, align 4
@WM8753_PLL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @neo1973_gta02_voice_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neo1973_gta02_voice_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = call i64 (...) @s3c24xx_i2s_get_clockrate()
  store i64 %19, i64* %10, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = icmp ne i32 %21, 8000
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_channels(%struct.snd_pcm_hw_params* %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load i32, i32* @WM8753_PCM_DIV_6, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = load i32, i32* @SND_SOC_DAIFMT_DSP_B, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %35, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %75

46:                                               ; preds = %33
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = load i32, i32* @WM8753_PCMCLK, align 4
  %49 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %50 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %47, i32 %48, i32 12288000, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %46
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = load i32, i32* @WM8753_PCMDIV, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %75

64:                                               ; preds = %55
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %66 = load i32, i32* @WM8753_PLL2, align 4
  %67 = load i64, i64* %10, align 8
  %68 = udiv i64 %67, 4
  %69 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %65, i32 %66, i64 %68, i32 12288000)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %72, %62, %53, %44, %30, %23
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @s3c24xx_i2s_get_clockrate(...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
