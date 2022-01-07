; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.pxa2xx_pcm_client* }
%struct.snd_pcm_runtime = type { %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pxa2xx_pcm_client = type { {}*, %struct.TYPE_2__*, %struct.TYPE_2__* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DMA_PRIO_LOW = common dso_local global i32 0, align 4
@pxa2xx_pcm_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pxa2xx_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.pxa2xx_pcm_client*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.pxa2xx_runtime_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %8, align 8
  store %struct.pxa2xx_pcm_client* %9, %struct.pxa2xx_pcm_client** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @__pxa2xx_pcm_open(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %20, align 8
  store %struct.pxa2xx_runtime_data* %21, %struct.pxa2xx_runtime_data** %5, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %3, align 8
  %29 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %3, align 8
  %33 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi %struct.TYPE_2__* [ %30, %27 ], [ %34, %31 ]
  %37 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %38 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %40 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_PRIO_LOW, align 4
  %45 = load i32, i32* @pxa2xx_pcm_dma_irq, align 4
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %47 = call i32 @pxa_request_dma(i32 %43, i32 %44, i32 %45, %struct.snd_pcm_substream* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %69

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %54 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %3, align 8
  %56 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.snd_pcm_substream*)**
  %58 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %57, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = call i32 %58(%struct.snd_pcm_substream* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %72

64:                                               ; preds = %51
  %65 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %66 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pxa_free_dma(i32 %67)
  br label %69

69:                                               ; preds = %64, %50
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %71 = call i32 @__pxa2xx_pcm_close(%struct.snd_pcm_substream* %70)
  br label %72

72:                                               ; preds = %69, %63, %17
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @__pxa2xx_pcm_open(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pxa_request_dma(i32, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @__pxa2xx_pcm_close(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
