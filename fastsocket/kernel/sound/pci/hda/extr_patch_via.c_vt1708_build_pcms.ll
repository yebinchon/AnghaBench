; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_vt1708_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hda_pcm* }
%struct.hda_pcm = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HDA_PCM_TYPE_AUDIO = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @vt1708_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt1708_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 2
  %10 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  store %struct.via_spec* %10, %struct.via_spec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = call i32 @snd_hda_gen_build_pcms(%struct.hda_codec* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 285611784
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %31 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.hda_pcm*, %struct.hda_pcm** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %33, i64 %35
  store %struct.hda_pcm* %36, %struct.hda_pcm** %7, align 8
  %37 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %38 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %29
  %46 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %47 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HDA_PCM_TYPE_AUDIO, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %29
  br label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %54 = load %struct.hda_pcm*, %struct.hda_pcm** %7, align 8
  %55 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %23

63:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @snd_hda_gen_build_pcms(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
