; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i32, %struct.snd_es1688* }

@.str = private unnamed_addr constant [7 x i8] c"ESx688\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_es1688_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_es1688_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_es1688_pcm(%struct.snd_es1688* %0, i32 %1, %struct.snd_pcm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm**, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_es1688* %0, %struct.snd_es1688** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm** %2, %struct.snd_pcm*** %7, align 8
  %10 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %11 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @snd_pcm_new(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1, i32 1, %struct.snd_pcm** %8)
  store i32 %14, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %20 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %21 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %19, i32 %20, i32* @snd_es1688_playback_ops)
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %23 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %22, i32 %23, i32* @snd_es1688_capture_ops)
  %25 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 2
  store %struct.snd_es1688* %25, %struct.snd_es1688** %27, align 8
  %28 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %35 = call i8* @snd_es1688_chip_id(%struct.snd_es1688* %34)
  %36 = call i32 @sprintf(i32 %33, i8* %35)
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %38 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %39 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %38, i32 0, i32 0
  store %struct.snd_pcm* %37, %struct.snd_pcm** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %41 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %42 = call i32 (...) @snd_dma_isa_data()
  %43 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %40, i32 %41, i32 %42, i32 65536, i32 65536)
  %44 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  %45 = icmp ne %struct.snd_pcm** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %18
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %48 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  store %struct.snd_pcm* %47, %struct.snd_pcm** %48, align 8
  br label %49

49:                                               ; preds = %46, %18
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i8* @snd_es1688_chip_id(%struct.snd_es1688*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_isa_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
