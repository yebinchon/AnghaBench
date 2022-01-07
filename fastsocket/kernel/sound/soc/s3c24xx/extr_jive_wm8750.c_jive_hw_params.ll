; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_jive_wm8750.c_jive_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_jive_wm8750.c_jive_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.s3c_i2sv2_rate_calc = type { i64, i64 }

@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@WM8750_SYSCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@S3C2412_DIV_RCLK = common dso_local global i32 0, align 4
@S3C2412_DIV_PRESCALER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @jive_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jive_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.s3c_i2sv2_rate_calc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %23, align 8
  store %struct.snd_soc_dai* %24, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  switch i32 %26, label %29 [
    i32 8000, label %27
    i32 16000, label %27
    i32 48000, label %27
    i32 96000, label %27
    i32 11025, label %28
    i32 22050, label %28
    i32 44100, label %28
  ]

27:                                               ; preds = %2, %2, %2, %2
  store i32 12288000, i32* %10, align 4
  br label %29

28:                                               ; preds = %2, %2, %2
  store i32 11289600, i32* %10, align 4
  br label %29

29:                                               ; preds = %2, %28, %27
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 (...) @s3c2412_get_iisclk()
  %33 = call i32 @s3c_i2sv2_iis_calc_rate(%struct.s3c_i2sv2_rate_calc* %9, i32* null, i32 %31, i32 %32)
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %35 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %34, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %89

45:                                               ; preds = %29
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %47 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %46, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %89

57:                                               ; preds = %45
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = load i32, i32* @WM8750_SYSCLK, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %62 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %89

67:                                               ; preds = %57
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %69 = load i32, i32* @S3C2412_DIV_RCLK, align 4
  %70 = getelementptr inbounds %struct.s3c_i2sv2_rate_calc, %struct.s3c_i2sv2_rate_calc* %9, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %68, i32 %69, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %67
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %79 = load i32, i32* @S3C2412_DIV_PRESCALER, align 4
  %80 = getelementptr inbounds %struct.s3c_i2sv2_rate_calc, %struct.s3c_i2sv2_rate_calc* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, 1
  %83 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %78, i32 %79, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %86, %75, %65, %55, %43
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @s3c_i2sv2_iis_calc_rate(%struct.s3c_i2sv2_rate_calc*, i32*, i32, i32) #1

declare dso_local i32 @s3c2412_get_iisclk(...) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
