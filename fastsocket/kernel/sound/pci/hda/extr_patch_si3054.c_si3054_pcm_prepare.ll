; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_si3054.c_si3054_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_si3054.c_si3054_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI3054_LINE_RATE = common dso_local global i32 0, align 4
@SI3054_LINE_LEVEL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @si3054_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si3054_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %13 = load i32, i32* @SI3054_LINE_RATE, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SET_REG(%struct.hda_codec* %12, i32 %13, i32 %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %21 = load i32, i32* @SI3054_LINE_LEVEL, align 4
  %22 = call i32 @GET_REG(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = mul nsw i32 8, %28
  %30 = shl i32 255, %29
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 4
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 8, %41
  %43 = shl i32 %35, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %47 = load i32, i32* @SI3054_LINE_LEVEL, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @SET_REG(%struct.hda_codec* %46, i32 %47, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %51 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %52 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %50, i32 %53, i32 %54, i32 0, i32 %55)
  ret i32 0
}

declare dso_local i32 @SET_REG(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @GET_REG(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
