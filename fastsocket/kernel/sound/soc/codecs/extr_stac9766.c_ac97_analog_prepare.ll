; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_ac97_analog_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_ac97_analog_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i16 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i16 0, align 2
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i16 0, align 2
@AC97_PCM_LR_ADC_RATE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ac97_analog_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_analog_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
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
  %16 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %17 = call zeroext i16 @stac9766_ac97_read(%struct.snd_soc_codec* %15, i16 zeroext %16)
  store i16 %17, i16* %8, align 2
  %18 = load i16, i16* %8, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %19, 1
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %8, align 2
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %23 = load i16, i16* @AC97_EXTENDED_STATUS, align 2
  %24 = load i16, i16* %8, align 2
  %25 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %22, i16 zeroext %23, i16 zeroext %24)
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i16, i16* @AC97_PCM_FRONT_DAC_RATE, align 2
  store i16 %32, i16* %7, align 2
  br label %35

33:                                               ; preds = %2
  %34 = load i16, i16* @AC97_PCM_LR_ADC_RATE, align 2
  store i16 %34, i16* %7, align 2
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = load i16, i16* %7, align 2
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %36, i16 zeroext %37, i16 zeroext %40)
  ret i32 %41
}

declare dso_local zeroext i16 @stac9766_ac97_read(%struct.snd_soc_codec*, i16 zeroext) #1

declare dso_local i32 @stac9766_ac97_write(%struct.snd_soc_codec*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
