; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_pcm_oss_file* }
%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_pcm_oss_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_oss_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %10, align 8
  store %struct.snd_pcm_oss_file* %11, %struct.snd_pcm_oss_file** %8, align 8
  %12 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %8, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, i64 %15
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %7, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %19 = icmp eq %struct.snd_pcm_substream* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %8, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %23, i64 %24
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %25, align 8
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %7, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @snd_BUG_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %39, align 8
  store %struct.snd_pcm* %40, %struct.snd_pcm** %6, align 8
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %8, align 8
  %49 = call i32 @snd_pcm_oss_sync(%struct.snd_pcm_oss_file* %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %8, align 8
  %55 = call i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file* %54)
  %56 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 1
  %61 = call i32 @wake_up(i32* %60)
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @module_put(i32 %66)
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %69 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = call i32 @snd_card_file_remove(%struct.TYPE_2__* %70, %struct.file* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %50, %34
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_oss_sync(%struct.snd_pcm_oss_file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.TYPE_2__*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
