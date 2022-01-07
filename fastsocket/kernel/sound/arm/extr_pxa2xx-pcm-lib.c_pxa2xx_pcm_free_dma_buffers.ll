; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_free_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_free_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_pcm_free_dma_buffers(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dma_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %47

21:                                               ; preds = %9
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  store %struct.snd_dma_buffer* %23, %struct.snd_dma_buffer** %4, align 8
  %24 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dma_free_writecombine(i32 %34, i32 %37, i32* %40, i32 %43)
  %45 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %29, %28, %20
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dma_free_writecombine(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
