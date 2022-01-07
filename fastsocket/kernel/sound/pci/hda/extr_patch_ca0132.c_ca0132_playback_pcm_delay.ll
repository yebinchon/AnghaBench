; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_playback_pcm_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_playback_pcm_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i64, i64* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@DSP_PLAYBACK_INIT_LATENCY = common dso_local global i32 0, align 4
@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@SURROUND = common dso_local global i64 0, align 8
@DIALOG_PLUS = common dso_local global i64 0, align 8
@DSP_PLAY_ENHANCEMENT_LATENCY = common dso_local global i64 0, align 8
@SPEAKER_OUT = common dso_local global i64 0, align 8
@DSP_SPEAKER_OUT_LATENCY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @ca0132_playback_pcm_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_playback_pcm_delay(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.ca0132_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %12, align 8
  store %struct.ca0132_spec* %13, %struct.ca0132_spec** %8, align 8
  %14 = load i32, i32* @DSP_PLAYBACK_INIT_LATENCY, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %10, align 8
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSP_DOWNLOADED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

24:                                               ; preds = %3
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %29 = load i64, i64* @EFFECT_START_NID, align 8
  %30 = sub i64 %28, %29
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %24
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @SURROUND, align 8
  %39 = load i64, i64* @EFFECT_START_NID, align 8
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %46 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @DIALOG_PLUS, align 8
  %49 = load i64, i64* @EFFECT_START_NID, align 8
  %50 = sub i64 %48, %49
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44, %34
  %55 = load i64, i64* @DSP_PLAY_ENHANCEMENT_LATENCY, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %54, %44
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SPEAKER_OUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i64, i64* @DSP_SPEAKER_OUT_LATENCY, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %67, %61
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul i32 %74, %77
  %79 = udiv i32 %78, 1000
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
