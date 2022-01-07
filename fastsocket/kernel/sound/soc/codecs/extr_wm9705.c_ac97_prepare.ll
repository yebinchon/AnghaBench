; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9705.c_ac97_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9705.c_ac97_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ac97_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_device*, align 8
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_device*, %struct.snd_soc_device** %18, align 8
  store %struct.snd_soc_device* %19, %struct.snd_soc_device** %7, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %23, align 8
  store %struct.snd_soc_codec* %24, %struct.snd_soc_codec** %8, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %26 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %27 = call i32 @ac97_read(%struct.snd_soc_codec* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %29 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, 1
  %32 = call i32 @ac97_write(%struct.snd_soc_codec* %28, i32 %29, i32 %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ac97_write(%struct.snd_soc_codec* %43, i32 %44, i32 %47)
  ret i32 %48
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
