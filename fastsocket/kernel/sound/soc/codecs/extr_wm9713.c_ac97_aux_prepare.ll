; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_ac97_aux_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_ac97_aux_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_PCI_SID = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@AC97_PCM_SURR_DAC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ac97_aux_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_aux_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %7, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %17 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %18 = call i32 @ac97_read(%struct.snd_soc_codec* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, 1
  %23 = call i32 @ac97_write(%struct.snd_soc_codec* %19, i32 %20, i32 %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %25 = load i32, i32* @AC97_PCI_SID, align 4
  %26 = call i32 @ac97_read(%struct.snd_soc_codec* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %28 = load i32, i32* @AC97_PCI_SID, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, 32768
  %31 = call i32 @ac97_write(%struct.snd_soc_codec* %27, i32 %28, i32 %30)
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %42 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ac97_write(%struct.snd_soc_codec* %41, i32 %42, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %3, align 4
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
