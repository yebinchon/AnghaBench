; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.TYPE_6__* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.s6000_pcm_dma_params* }
%struct.s6000_pcm_dma_params = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.s6000_runtime_data* }
%struct.s6000_runtime_data = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @s6000_pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_pcm_stop(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.s6000_runtime_data*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.s6000_pcm_dma_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %11, align 8
  store %struct.s6000_runtime_data* %12, %struct.s6000_runtime_data** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %4, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %21, align 8
  store %struct.s6000_pcm_dma_params* %22, %struct.s6000_pcm_dma_params** %5, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %30 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %34 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DMA_MASK_DMAC(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @DMA_INDEX_CHNL(i32 %39)
  %41 = call i32 @s6dmac_set_terminal_count(i32 %38, i32 %40, i32 0)
  %42 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %3, align 8
  %43 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DMA_MASK_DMAC(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DMA_INDEX_CHNL(i32 %48)
  %50 = call i32 @s6dmac_disable_chan(i32 %47, i32 %49)
  %51 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %3, align 8
  %52 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret i32 0
}

declare dso_local i32 @s6dmac_set_terminal_count(i32, i32, i32) #1

declare dso_local i32 @DMA_MASK_DMAC(i32) #1

declare dso_local i32 @DMA_INDEX_CHNL(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6dmac_disable_chan(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
