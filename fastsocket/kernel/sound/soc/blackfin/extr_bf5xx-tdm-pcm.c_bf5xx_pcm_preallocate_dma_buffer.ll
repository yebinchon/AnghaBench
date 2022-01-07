; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_preallocate_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_preallocate_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.snd_pcm = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i64, i64, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@bf5xx_pcm_hardware = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Failed to allocate dma memory \09\09\09Please increase uncached DMA memory region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@sport_handle = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*, i32)* @bf5xx_pcm_preallocate_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_dma_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %6, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  store %struct.snd_dma_buffer* %18, %struct.snd_dma_buffer** %7, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bf5xx_pcm_hardware, i32 0, i32 0), align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %21 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 %39, 4
  %41 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @dma_alloc_coherent(i32 %38, i64 %40, i32* %42, i32 %43)
  %45 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %2
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %2
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sport_handle, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %74

68:                                               ; preds = %55
  %69 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sport_handle, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
