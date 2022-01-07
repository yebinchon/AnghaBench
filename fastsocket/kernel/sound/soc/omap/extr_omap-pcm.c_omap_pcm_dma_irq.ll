; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_dma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.omap_runtime_data* }
%struct.omap_runtime_data = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@OMAP_DMA_LAST_IRQ = common dso_local global i32 0, align 4
@OMAP_DMA_BLOCK_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @omap_pcm_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_pcm_dma_irq(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.omap_runtime_data*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %8, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %17, align 8
  store %struct.omap_runtime_data* %18, %struct.omap_runtime_data** %9, align 8
  %19 = call i64 (...) @cpu_is_omap1510()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %21
  %28 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %29 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %28, i32 0, i32 1
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @OMAP_DMA_LAST_IRQ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %37 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %46 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %45, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %97

49:                                               ; preds = %35, %27
  %50 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %51 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @OMAP_DMA_BLOCK_IRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %61 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %88

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @OMAP_DMA_LAST_IRQ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %73 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %87

74:                                               ; preds = %62
  %75 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %76 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %85 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %49
  %90 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %9, align 8
  %91 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %90, i32 0, i32 1
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %21, %3
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %96 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %95)
  br label %97

97:                                               ; preds = %94, %44
  ret void
}

declare dso_local i64 @cpu_is_omap1510(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
