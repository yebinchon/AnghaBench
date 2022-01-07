; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_hifi_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_hifi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@WM8753_BCLK_DIV_4 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_2 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_16 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_8 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@WM8753_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@S3C24XX_DIV_MCLK = common dso_local global i32 0, align 4
@S3C2410_IISMOD_32FS = common dso_local global i32 0, align 4
@WM8753_BCLKDIV = common dso_local global i32 0, align 4
@S3C24XX_DIV_PRESCALER = common dso_local global i32 0, align 4
@WM8753_PLL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @neo1973_gta02_hifi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neo1973_gta02_hifi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %7, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %24, align 8
  store %struct.snd_soc_dai* %25, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = call i64 (...) @s3c24xx_i2s_get_clockrate()
  store i64 %26, i64* %12, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  switch i32 %28, label %42 [
    i32 8000, label %29
    i32 16000, label %29
    i32 48000, label %30
    i32 96000, label %32
    i32 11025, label %34
    i32 22050, label %36
    i32 44100, label %38
    i32 88200, label %40
  ]

29:                                               ; preds = %2, %2
  store i32 12288000, i32* %9, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* @WM8753_BCLK_DIV_4, align 4
  store i32 %31, i32* %10, align 4
  store i32 12288000, i32* %9, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @WM8753_BCLK_DIV_2, align 4
  store i32 %33, i32* %10, align 4
  store i32 12288000, i32* %9, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load i32, i32* @WM8753_BCLK_DIV_16, align 4
  store i32 %35, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @WM8753_BCLK_DIV_8, align 4
  store i32 %37, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @WM8753_BCLK_DIV_4, align 4
  store i32 %39, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @WM8753_BCLK_DIV_2, align 4
  store i32 %41, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %42

42:                                               ; preds = %2, %40, %38, %36, %34, %32, %30, %29
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %44 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %45 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %43, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %115

54:                                               ; preds = %42
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %56 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %57 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %55, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %115

66:                                               ; preds = %54
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %68 = load i32, i32* @WM8753_MCLK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %71 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %115

76:                                               ; preds = %66
  %77 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %78 = load i32, i32* @S3C24XX_DIV_MCLK, align 4
  %79 = load i32, i32* @S3C2410_IISMOD_32FS, align 4
  %80 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %115

85:                                               ; preds = %76
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %87 = load i32, i32* @WM8753_BCLKDIV, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %115

94:                                               ; preds = %85
  %95 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %96 = load i32, i32* @S3C24XX_DIV_PRESCALER, align 4
  %97 = call i32 @S3C24XX_PRESCALE(i32 4, i32 4)
  %98 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %95, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %115

103:                                              ; preds = %94
  %104 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %105 = load i32, i32* @WM8753_PLL1, align 4
  %106 = load i64, i64* %12, align 8
  %107 = udiv i64 %106, 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %104, i32 %105, i64 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %112, %101, %92, %83, %74, %64, %52
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @s3c24xx_i2s_get_clockrate(...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @S3C24XX_PRESCALE(i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
