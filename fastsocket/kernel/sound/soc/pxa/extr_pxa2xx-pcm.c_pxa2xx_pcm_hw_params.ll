; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-pcm.c_pxa2xx_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-pcm.c_pxa2xx_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pxa2xx_pcm_dma_params* }
%struct.pxa2xx_pcm_dma_params = type { i32 }
%struct.snd_pcm_runtime = type { %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { i32, %struct.pxa2xx_pcm_dma_params* }
%struct.snd_pcm_hw_params = type { i32 }

@DMA_PRIO_LOW = common dso_local global i32 0, align 4
@pxa2xx_pcm_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @pxa2xx_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.pxa2xx_runtime_data*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.pxa2xx_pcm_dma_params*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %15, align 8
  store %struct.pxa2xx_runtime_data* %16, %struct.pxa2xx_runtime_data** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %8, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %25, align 8
  store %struct.pxa2xx_pcm_dma_params* %26, %struct.pxa2xx_pcm_dma_params** %9, align 8
  %27 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %9, align 8
  %28 = icmp ne %struct.pxa2xx_pcm_dma_params* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %32 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %31, i32 0, i32 1
  %33 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %32, align 8
  %34 = icmp eq %struct.pxa2xx_pcm_dma_params* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %9, align 8
  %37 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %38 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %37, i32 0, i32 1
  store %struct.pxa2xx_pcm_dma_params* %36, %struct.pxa2xx_pcm_dma_params** %38, align 8
  %39 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %40 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %39, i32 0, i32 1
  %41 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %40, align 8
  %42 = getelementptr inbounds %struct.pxa2xx_pcm_dma_params, %struct.pxa2xx_pcm_dma_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_PRIO_LOW, align 4
  %45 = load i32, i32* @pxa2xx_pcm_dma_irq, align 4
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %47 = call i32 @pxa_request_dma(i32 %43, i32 %44, i32 %45, %struct.snd_pcm_substream* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %55 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %88

56:                                               ; preds = %30
  %57 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %58 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %57, i32 0, i32 1
  %59 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %58, align 8
  %60 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %9, align 8
  %61 = icmp ne %struct.pxa2xx_pcm_dma_params* %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %64 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pxa_free_dma(i32 %65)
  %67 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %9, align 8
  %68 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %69 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %68, i32 0, i32 1
  store %struct.pxa2xx_pcm_dma_params* %67, %struct.pxa2xx_pcm_dma_params** %69, align 8
  %70 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %71 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %70, i32 0, i32 1
  %72 = load %struct.pxa2xx_pcm_dma_params*, %struct.pxa2xx_pcm_dma_params** %71, align 8
  %73 = getelementptr inbounds %struct.pxa2xx_pcm_dma_params, %struct.pxa2xx_pcm_dma_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DMA_PRIO_LOW, align 4
  %76 = load i32, i32* @pxa2xx_pcm_dma_irq, align 4
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %78 = call i32 @pxa_request_dma(i32 %74, i32 %75, i32 %76, %struct.snd_pcm_substream* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %62
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  %86 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %56
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %91 = call i32 @__pxa2xx_pcm_hw_params(%struct.snd_pcm_substream* %89, %struct.snd_pcm_hw_params* %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %81, %50, %29
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @pxa_request_dma(i32, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @__pxa2xx_pcm_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
