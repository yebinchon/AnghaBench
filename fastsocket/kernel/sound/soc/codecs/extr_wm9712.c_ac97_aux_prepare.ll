; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9712.c_ac97_aux_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9712.c_ac97_aux_prepare.c"
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
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %7, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %19, align 8
  store %struct.snd_soc_device* %20, %struct.snd_soc_device** %8, align 8
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %8, align 8
  %22 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %24, align 8
  store %struct.snd_soc_codec* %25, %struct.snd_soc_codec** %9, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %27 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %28 = call i32 @ac97_read(%struct.snd_soc_codec* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %30 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, 1
  %33 = call i32 @ac97_write(%struct.snd_soc_codec* %29, i32 %30, i32 %32)
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %35 = load i32, i32* @AC97_PCI_SID, align 4
  %36 = call i32 @ac97_read(%struct.snd_soc_codec* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %38 = load i32, i32* @AC97_PCI_SID, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, 32768
  %41 = call i32 @ac97_write(%struct.snd_soc_codec* %37, i32 %38, i32 %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %52 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ac97_write(%struct.snd_soc_codec* %51, i32 %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
