; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_ac97_hifi_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_ac97_hifi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ac97_hifi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_hifi_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %16 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %17 = call i32 @ac97_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %19 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 1
  %22 = call i32 @ac97_write(%struct.snd_soc_codec* %18, i32 %19, i32 %21)
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ac97_write(%struct.snd_soc_codec* %33, i32 %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
