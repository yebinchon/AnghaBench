; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ad1889 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AD_DS_RAMC = common dso_local global i32 0, align 4
@AD_DMA_ADC = common dso_local global i32 0, align 4
@AD_DMA_LOOP = common dso_local global i32 0, align 4
@AD_DMA_IM_CNT = common dso_local global i32 0, align 4
@AD_DS_RAMC_ADEN = common dso_local global i32 0, align 4
@AD_DMA_CHSS = common dso_local global i32 0, align 4
@AD_DMA_CHSS_ADCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD_CHAN_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ad1889_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ad1889*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ad1889* %9, %struct.snd_ad1889** %7, align 8
  %10 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %11 = load i32, i32* @AD_DS_RAMC, align 4
  %12 = call i32 @ad1889_readw(%struct.snd_ad1889* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %33 [
    i32 129, label %14
    i32 128, label %28
  ]

14:                                               ; preds = %2
  %15 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %16 = load i32, i32* @AD_DMA_ADC, align 4
  %17 = load i32, i32* @AD_DMA_LOOP, align 4
  %18 = load i32, i32* @AD_DMA_IM_CNT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ad1889_writew(%struct.snd_ad1889* %15, i32 %16, i32 %19)
  %21 = load i32, i32* @AD_DS_RAMC_ADEN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %25 = load i32, i32* @AD_DMA_CHSS, align 4
  %26 = load i32, i32* @AD_DMA_CHSS_ADCS, align 4
  %27 = call i32 @ad1889_writel(%struct.snd_ad1889* %24, i32 %25, i32 %26)
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @AD_DS_RAMC_ADEN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %28, %14
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %39 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %42 = load i32, i32* @AD_DS_RAMC, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ad1889_writew(%struct.snd_ad1889* %41, i32 %42, i32 %43)
  %45 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %46 = load i32, i32* @AD_DS_RAMC, align 4
  %47 = call i32 @ad1889_readw(%struct.snd_ad1889* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %52 = load i32, i32* @AD_CHAN_ADC, align 4
  %53 = call i32 @ad1889_channel_reset(%struct.snd_ad1889* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %36
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writew(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_writel(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_channel_reset(%struct.snd_ad1889*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
