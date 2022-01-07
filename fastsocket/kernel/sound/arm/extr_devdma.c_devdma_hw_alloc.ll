; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_devdma.c_devdma_hw_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_devdma.c_devdma_hw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer, %struct.snd_pcm_runtime* }
%struct.snd_dma_buffer = type { i64, i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i32 }
%struct.snd_pcm_runtime = type { i64, %struct.snd_dma_buffer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devdma_hw_alloc(%struct.device* %0, %struct.snd_pcm_substream* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.snd_dma_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %8, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %15, align 8
  store %struct.snd_dma_buffer* %16, %struct.snd_dma_buffer** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %18 = icmp ne %struct.snd_dma_buffer* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %21 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %84

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %29 = call i32 @devdma_hw_free(%struct.device* %27, %struct.snd_pcm_substream* %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  store %struct.snd_dma_buffer* %45, %struct.snd_dma_buffer** %9, align 8
  br label %80

46:                                               ; preds = %36, %30
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.snd_dma_buffer* @kmalloc(i32 48, i32 %47)
  store %struct.snd_dma_buffer* %48, %struct.snd_dma_buffer** %9, align 8
  %49 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %50 = icmp ne %struct.snd_dma_buffer* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %92

52:                                               ; preds = %46
  %53 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %54 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %55 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %59 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.device* %57, %struct.device** %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %64 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %63, i32 0, i32 3
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32* @dma_alloc_coherent(%struct.device* %61, i64 %62, i32* %64, i32 %65)
  %67 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %68 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %73 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %75 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %52
  br label %89

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %82 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %83 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %81, %struct.snd_dma_buffer* %82)
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %25
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %78
  %90 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %91 = call i32 @kfree(%struct.snd_dma_buffer* %90)
  br label %92

92:                                               ; preds = %89, %51
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %84
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @devdma_hw_free(%struct.device*, %struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_dma_buffer* @kmalloc(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, %struct.snd_dma_buffer*) #1

declare dso_local i32 @kfree(%struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
