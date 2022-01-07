; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_pcm_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_pcm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_soc_dai = type { i32 }

@UDA1380_CLK = common dso_local global i32 0, align 4
@R00_DAC_CLK = common dso_local global i32 0, align 4
@UDA1380_PM = common dso_local global i32 0, align 4
@R02_PON_PLL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@R00_EN_DAC = common dso_local global i32 0, align 4
@R00_EN_INT = common dso_local global i32 0, align 4
@R00_EN_ADC = common dso_local global i32 0, align 4
@R00_EN_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uda1380_pcm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda1380_pcm_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_device*, %struct.snd_soc_device** %14, align 8
  store %struct.snd_soc_device* %15, %struct.snd_soc_device** %6, align 8
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %19, align 8
  store %struct.snd_soc_codec* %20, %struct.snd_soc_codec** %7, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %22 = load i32, i32* @UDA1380_CLK, align 4
  %23 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_codec* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @R00_DAC_CLK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %30 = load i32, i32* @UDA1380_PM, align 4
  %31 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_codec* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %33 = load i32, i32* @UDA1380_PM, align 4
  %34 = load i32, i32* @R02_PON_PLL, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @uda1380_write(%struct.snd_soc_codec* %32, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %28, %2
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @R00_EN_DAC, align 4
  %47 = load i32, i32* @R00_EN_INT, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %39
  %53 = load i32, i32* @R00_EN_ADC, align 4
  %54 = load i32, i32* @R00_EN_DEC, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %61 = load i32, i32* @UDA1380_CLK, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @uda1380_write(%struct.snd_soc_codec* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
