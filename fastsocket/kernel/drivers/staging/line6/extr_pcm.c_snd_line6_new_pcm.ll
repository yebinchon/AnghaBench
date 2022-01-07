; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_snd_line6_new_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_snd_line6_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { %struct.TYPE_4__*, %struct.snd_pcm* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm = type { i32, i32, %struct.snd_line6_pcm* }

@line6_cleanup_pcm = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_line6_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_line6_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_line6_pcm*)* @snd_line6_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_new_pcm(%struct.snd_line6_pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  %6 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %7 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %12 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @snd_pcm_new(i32 %10, i8* %18, i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 2
  store %struct.snd_line6_pcm* %25, %struct.snd_line6_pcm** %27, align 8
  %28 = load i32, i32* @line6_cleanup_pcm, align 4
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %33 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %32, i32 0, i32 1
  store %struct.snd_pcm* %31, %struct.snd_pcm** %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %38 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strcpy(i32 %36, i64 %43)
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %46 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %47 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %45, i32 %46, i32* @snd_line6_playback_ops)
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %49 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %50 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %48, i32 %49, i32* @snd_line6_capture_ops)
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %52 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @snd_dma_continuous_data(i32 %53)
  %55 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %51, i32 %52, i32 %54, i32 65536, i32 131072)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %24, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
