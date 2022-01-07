; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_zylonite.c_zylonite_voice_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_zylonite.c_zylonite_voice_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO = common dso_local global i32 0, align 4
@clk_pout = common dso_local global i64 0, align 8
@WM9713_PCMCLK_PLL_DIV = common dso_local global i32 0, align 4
@WM9713_PCMCLK_DIV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @zylonite_voice_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zylonite_voice_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %20, align 8
  store %struct.snd_soc_dai* %21, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %25, align 8
  store %struct.snd_soc_dai* %26, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %30 = call i32 @params_format(%struct.snd_pcm_hw_params* %29)
  %31 = call i32 @snd_pcm_format_physical_width(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %36 [
    i32 8000, label %33
    i32 16000, label %34
    i32 48000, label %35
  ]

33:                                               ; preds = %2
  store i32 12, i32* %10, align 4
  br label %39

34:                                               ; preds = %2
  store i32 6, i32* %10, align 4
  br label %39

35:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %105

39:                                               ; preds = %35, %34, %33
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %40, %42
  %44 = mul nsw i32 %43, 8
  store i32 %44, i32* %9, align 4
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %46 = load i32, i32* @PXA_SSP_CLK_AUDIO, align 4
  %47 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %45, i32 %46, i32 0, i32 1)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %3, align 4
  br label %105

52:                                               ; preds = %39
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %53, i32 0, i32 0, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %105

60:                                               ; preds = %52
  %61 = load i64, i64* @clk_pout, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %65 = load i32, i32* @WM9713_PCMCLK_PLL_DIV, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @WM9713_PCMDIV(i32 %66)
  %68 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %64, i32 %65, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = load i32, i32* @WM9713_PCMCLK_DIV, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @WM9713_PCMDIV(i32 %72)
  %74 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %70, i32 %71, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %105

80:                                               ; preds = %75
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %83 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %81, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %105

92:                                               ; preds = %80
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %94 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %93, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %102, %90, %78, %58, %50, %36
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @WM9713_PCMDIV(i32) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
