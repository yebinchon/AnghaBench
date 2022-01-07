; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.omap_pcm_dma_data* }
%struct.omap_pcm_dma_data = type { i32, i32 }
%struct.snd_pcm_runtime = type { i32, %struct.omap_runtime_data* }
%struct.omap_runtime_data = type { i32, %struct.omap_pcm_dma_data* }
%struct.snd_pcm_hw_params = type { i32 }

@omap_pcm_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @omap_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.omap_runtime_data*, align 8
  %9 = alloca %struct.omap_pcm_dma_data*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %18, align 8
  store %struct.omap_runtime_data* %19, %struct.omap_runtime_data** %8, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %25, align 8
  store %struct.omap_pcm_dma_data* %26, %struct.omap_pcm_dma_data** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %9, align 8
  %28 = icmp ne %struct.omap_pcm_dma_data* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %31, i32* %33)
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %36 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %35)
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %8, align 8
  %40 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %39, i32 0, i32 1
  %41 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %40, align 8
  %42 = icmp ne %struct.omap_pcm_dma_data* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %71

44:                                               ; preds = %30
  %45 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %9, align 8
  %46 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %8, align 8
  %47 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %46, i32 0, i32 1
  store %struct.omap_pcm_dma_data* %45, %struct.omap_pcm_dma_data** %47, align 8
  %48 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %9, align 8
  %49 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %9, align 8
  %52 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @omap_pcm_dma_irq, align 4
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %8, align 8
  %57 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %56, i32 0, i32 0
  %58 = call i32 @omap_request_dma(i32 %50, i32 %53, i32 %54, %struct.snd_pcm_substream* %55, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %44
  %62 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %8, align 8
  %63 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %8, align 8
  %66 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @omap_dma_link_lch(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %44
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %43, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @omap_request_dma(i32, i32, i32, %struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @omap_dma_link_lch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
