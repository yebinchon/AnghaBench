; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_devdma.c_devdma_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_devdma.c_devdma_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer, %struct.snd_pcm_runtime* }
%struct.snd_dma_buffer = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.snd_dma_buffer*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devdma_hw_free(%struct.device* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %5, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %11, align 8
  store %struct.snd_dma_buffer* %12, %struct.snd_dma_buffer** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = icmp ne %struct.snd_dma_buffer* %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_free_coherent(i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %39, align 8
  %41 = call i32 @kfree(%struct.snd_dma_buffer* %40)
  br label %42

42:                                               ; preds = %23, %18
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %43, i32* null)
  br label %45

45:                                               ; preds = %42, %17
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_dma_buffer*) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
