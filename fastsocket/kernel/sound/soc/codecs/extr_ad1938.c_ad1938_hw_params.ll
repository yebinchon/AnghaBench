; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@AD1938_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD1938_DAC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD1938_ADC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ad1938_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_soc_device*, align 8
  %11 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %9, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %16, align 8
  store %struct.snd_soc_device* %17, %struct.snd_soc_device** %10, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %10, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %21, align 8
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %11, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %28 [
    i32 131, label %25
    i32 130, label %26
    i32 129, label %27
    i32 128, label %27
  ]

25:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %28

26:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %28

27:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %3, %27, %26, %25
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %30 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %29, i32 0, i32 0
  %31 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %30, align 8
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %33 = load i32, i32* @AD1938_DAC_CTRL2, align 4
  %34 = call i32 %31(%struct.snd_soc_codec* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AD1938_DAC_WORD_LEN_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 1
  %43 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %42, align 8
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %45 = load i32, i32* @AD1938_DAC_CTRL2, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %43(%struct.snd_soc_codec* %44, i32 %45, i32 %46)
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %49 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %48, i32 0, i32 0
  %50 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %49, align 8
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %52 = load i32, i32* @AD1938_ADC_CTRL1, align 4
  %53 = call i32 %50(%struct.snd_soc_codec* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @AD1938_ADC_WORD_LEN_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %61 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %60, i32 0, i32 1
  %62 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %61, align 8
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %64 = load i32, i32* @AD1938_ADC_CTRL1, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 %62(%struct.snd_soc_codec* %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
