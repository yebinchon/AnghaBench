; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.TYPE_4__* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.s6000_pcm_dma_params* }
%struct.s6000_pcm_dma_params = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.s6000_runtime_data* }
%struct.s6000_runtime_data = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @s6000_pcm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_pcm_start(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.s6000_runtime_data*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.s6000_pcm_dma_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %12, align 8
  store %struct.s6000_runtime_data* %13, %struct.s6000_runtime_data** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %22, align 8
  store %struct.s6000_pcm_dma_params* %23, %struct.s6000_pcm_dma_params** %5, align 8
  %24 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %3, align 8
  %25 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %34 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %35 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  br label %41

37:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %38 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %39 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DMA_MASK_DMAC(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @DMA_INDEX_CHNL(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, 1
  %49 = call i32 @s6dmac_enable_chan(i32 %43, i32 %45, i32 1, i32 0, i32 %46, i32 %48, i32 0, i32 0, i32 0, i32 4, i32 -1, i32 0, i32 0, i32 1)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %51 = call i32 @s6000_pcm_enqueue_dma(%struct.snd_pcm_substream* %50)
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = call i32 @s6000_pcm_enqueue_dma(%struct.snd_pcm_substream* %52)
  %54 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %3, align 8
  %55 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6dmac_enable_chan(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_MASK_DMAC(i32) #1

declare dso_local i32 @DMA_INDEX_CHNL(i32) #1

declare dso_local i32 @s6000_pcm_enqueue_dma(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
