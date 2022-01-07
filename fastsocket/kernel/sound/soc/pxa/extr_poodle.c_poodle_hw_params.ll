; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_poodle.c_poodle_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_poodle.c_poodle_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@WM8731_SYSCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@PXA2XX_I2S_SYSCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @poodle_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poodle_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %22, align 8
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %28 [
    i32 8000, label %26
    i32 16000, label %26
    i32 48000, label %26
    i32 96000, label %26
    i32 11025, label %27
    i32 22050, label %27
    i32 44100, label %27
  ]

26:                                               ; preds = %2, %2, %2, %2
  store i32 12288000, i32* %9, align 4
  br label %28

27:                                               ; preds = %2, %2, %2
  store i32 11289600, i32* %9, align 4
  br label %28

28:                                               ; preds = %2, %27, %26
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %29, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %28
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %42 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %41, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %40
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %54 = load i32, i32* @WM8731_SYSCLK, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %57 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %72

62:                                               ; preds = %52
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %64 = load i32, i32* @PXA2XX_I2S_SYSCLK, align 4
  %65 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %66 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %63, i32 %64, i32 0, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %60, %50, %38
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
