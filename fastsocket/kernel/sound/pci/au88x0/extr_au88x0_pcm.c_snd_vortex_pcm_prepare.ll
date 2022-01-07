; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@VORTEX_PCM_WT = common dso_local global i64 0, align 8
@VORTEX_PCM_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vortex_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.TYPE_9__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 2
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vortex_alsafmt_aspfmt(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @VORTEX_PCM_TYPE(i32 %40)
  %42 = load i64, i64* @VORTEX_PCM_WT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %30
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @vortex_adbdma_setmode(%struct.TYPE_9__* %45, i32 %46, i32 1, i32 %47, i32 %48, i32 0, i32 0)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @vortex_adbdma_setstartbuffer(%struct.TYPE_9__* %50, i32 %51, i32 0)
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @VORTEX_PCM_TYPE(i32 %55)
  %57 = load i64, i64* @VORTEX_PCM_SPDIF, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %44
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @vortex_adb_setsrc(%struct.TYPE_9__* %60, i32 %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %44
  br label %76

68:                                               ; preds = %30
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vortex_wtdma_setmode(%struct.TYPE_9__* %69, i32 %70, i32 1, i32 %71, i32 0, i32 0)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @vortex_wtdma_setstartbuffer(%struct.TYPE_9__* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %68, %67
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vortex_alsafmt_aspfmt(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @VORTEX_PCM_TYPE(i32) #1

declare dso_local i32 @vortex_adbdma_setmode(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_adbdma_setstartbuffer(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vortex_adb_setsrc(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @vortex_wtdma_setmode(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_wtdma_setstartbuffer(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
