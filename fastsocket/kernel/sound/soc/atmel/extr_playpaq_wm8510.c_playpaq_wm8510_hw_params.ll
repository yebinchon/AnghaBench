; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_playpaq_wm8510.c_playpaq_wm8510_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_playpaq_wm8510.c_playpaq_wm8510_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.at32_ssc_info* }
%struct.at32_ssc_info = type { %struct.ssc_device* }
%struct.ssc_device = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"playpaq_wm8510_hw_params: ssc is NULL!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8510_MCLKDIV_2 = common dso_local global i32 0, align 4
@WM8510_BCLKDIV_8 = common dso_local global i32 0, align 4
@WM8510_MCLKDIV_4 = common dso_local global i32 0, align 4
@WM8510_MCLKDIV_6 = common dso_local global i32 0, align 4
@WM8510_MCLKDIV_8 = common dso_local global i32 0, align 4
@WM8510_MCLKDIV_12 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"playpaq_wm8510: Unsupported sample rate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"playpaq_wm8510: Failed to set CODEC DAI format (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"playpaq_wm8510: Failed to set CPU DAI format (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"playpaq_wm8510: pll_in = %ld, pll_out = %u, bclk = %x, mclk = %x\0A\00", align 1
@CODEC_CLK = common dso_local global i32 0, align 4
@WM8510_BCLKDIV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"playpaq_wm8510: Failed to set CODEC DAI BCLKDIV (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"playpaq_wm8510: Failed to set CODEC DAI PLL (%d)\0A\00", align 1
@WM8510_MCLKDIV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"playpaq_wm8510: Failed to set CODEC MCLKDIV (%d)\0A\00", align 1
@AT32_SSC_CMR_DIV = common dso_local global i32 0, align 4
@AT32_SSC_TCMR_PERIOD = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @playpaq_wm8510_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playpaq_wm8510_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.at32_ssc_info*, align 8
  %10 = alloca %struct.ssc_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %22, align 8
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %7, align 8
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %8, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load %struct.at32_ssc_info*, %struct.at32_ssc_info** %30, align 8
  store %struct.at32_ssc_info* %31, %struct.at32_ssc_info** %9, align 8
  %32 = load %struct.at32_ssc_info*, %struct.at32_ssc_info** %9, align 8
  %33 = getelementptr inbounds %struct.at32_ssc_info, %struct.at32_ssc_info* %32, i32 0, i32 0
  %34 = load %struct.ssc_device*, %struct.ssc_device** %33, align 8
  store %struct.ssc_device* %34, %struct.ssc_device** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load %struct.ssc_device*, %struct.ssc_device** %10, align 8
  %41 = icmp eq %struct.ssc_device* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %134

46:                                               ; preds = %2
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %48 = call i32 @params_rate(%struct.snd_pcm_hw_params* %47)
  switch i32 %48, label %67 [
    i32 48000, label %49
    i32 44100, label %52
    i32 22050, label %55
    i32 16000, label %58
    i32 11025, label %61
    i32 8000, label %64
  ]

49:                                               ; preds = %46
  store i32 24576000, i32* %11, align 4
  %50 = load i32, i32* @WM8510_MCLKDIV_2, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %51, i32* %12, align 4
  br label %73

52:                                               ; preds = %46
  store i32 22579200, i32* %11, align 4
  %53 = load i32, i32* @WM8510_MCLKDIV_2, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %54, i32* %12, align 4
  br label %73

55:                                               ; preds = %46
  store i32 22579200, i32* %11, align 4
  %56 = load i32, i32* @WM8510_MCLKDIV_4, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %57, i32* %12, align 4
  br label %73

58:                                               ; preds = %46
  store i32 24576000, i32* %11, align 4
  %59 = load i32, i32* @WM8510_MCLKDIV_6, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %60, i32* %12, align 4
  br label %73

61:                                               ; preds = %46
  store i32 22579200, i32* %11, align 4
  %62 = load i32, i32* @WM8510_MCLKDIV_8, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %63, i32* %12, align 4
  br label %73

64:                                               ; preds = %46
  store i32 24576000, i32* %11, align 4
  %65 = load i32, i32* @WM8510_MCLKDIV_12, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @WM8510_BCLKDIV_8, align 4
  store i32 %66, i32* %12, align 4
  br label %73

67:                                               ; preds = %46
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %69 = call i32 @params_rate(%struct.snd_pcm_hw_params* %68)
  %70 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %134

73:                                               ; preds = %64, %61, %58, %55, %52, %49
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %3, align 4
  br label %134

83:                                               ; preds = %73
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %3, align 4
  br label %134

93:                                               ; preds = %83
  %94 = load i32, i32* @CODEC_CLK, align 4
  %95 = call i32 @clk_get_rate(i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %101 = load i32, i32* @WM8510_BCLKDIV, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %100, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %3, align 4
  br label %134

110:                                              ; preds = %93
  %111 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %112 = load i32, i32* @CODEC_CLK, align 4
  %113 = call i32 @clk_get_rate(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %111, i32 0, i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* %14, align 4
  %120 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %3, align 4
  br label %134

122:                                              ; preds = %110
  %123 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %124 = load i32, i32* @WM8510_MCLKDIV, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %123, i32 %124, i32 %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %129, %118, %106, %89, %79, %67, %42
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
