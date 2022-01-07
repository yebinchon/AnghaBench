; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1836.c_ad1836_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1836.c_ad1836_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@AD1836_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_DAC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1836_ADC_WORD_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ad1836_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1836_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %9, align 8
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %18 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %20, align 8
  store %struct.snd_soc_codec* %21, %struct.snd_soc_codec** %10, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = call i32 @params_format(%struct.snd_pcm_hw_params* %22)
  switch i32 %23, label %27 [
    i32 131, label %24
    i32 130, label %25
    i32 129, label %26
    i32 128, label %26
  ]

24:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %27

25:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %27

26:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %3, %26, %25, %24
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %29 = load i32, i32* @AD1836_DAC_CTRL1, align 4
  %30 = load i32, i32* @AD1836_DAC_WORD_LEN_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %34 = load i32, i32* @AD1836_ADC_CTRL2, align 4
  %35 = load i32, i32* @AD1836_ADC_WORD_LEN_MASK, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %33, i32 %34, i32 %35, i32 %36)
  ret i32 0
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
