; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, %struct.s6000_runtime_data* }
%struct.s6000_runtime_data = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.s6000_pcm_dma_params* }
%struct.s6000_pcm_dma_params = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @s6000_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.s6000_pcm_dma_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.s6000_runtime_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %18, align 8
  store %struct.s6000_pcm_dma_params* %19, %struct.s6000_pcm_dma_params** %4, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %5, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 2
  %25 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %24, align 8
  store %struct.s6000_runtime_data* %25, %struct.s6000_runtime_data** %6, align 8
  %26 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %6, align 8
  %27 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %1
  %36 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %4, align 8
  %37 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DMA_MASK_DMAC(i32 %38)
  %40 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %4, align 8
  %41 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DMA_INDEX_CHNL(i32 %42)
  %44 = call i32 @s6dmac_cur_src(i32 %39, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %4, align 8
  %47 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DMA_MASK_DMAC(i32 %48)
  %50 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %4, align 8
  %51 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DMA_INDEX_CHNL(i32 %52)
  %54 = call i32 @s6dmac_cur_dst(i32 %49, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %6, align 8
  %64 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %63, i32 0, i32 0
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp uge i32 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6dmac_cur_src(i32, i32) #1

declare dso_local i32 @DMA_MASK_DMAC(i32) #1

declare dso_local i32 @DMA_INDEX_CHNL(i32) #1

declare dso_local i32 @s6dmac_cur_dst(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
