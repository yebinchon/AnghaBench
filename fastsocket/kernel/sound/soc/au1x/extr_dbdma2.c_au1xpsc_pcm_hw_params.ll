; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_dmadata = type { i64, i64, i64, i64, i64, i64, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i64 }
%struct.snd_pcm_hw_params = type { i64 }

@au1xpsc_audio_pcmdma = common dso_local global %struct.au1xpsc_audio_dmadata** null, align 8
@.str = private unnamed_addr constant [86 x i8] c"runtime->dma_area = 0x%08lx dma_addr_t = 0x%08lx dma_size = %d runtime->min_align %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"bits %d  frags %d  frag_bytes %d  is_rx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DDMA channel (re)alloc failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @au1xpsc_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %13)
  %15 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.au1xpsc_audio_dmadata**, %struct.au1xpsc_audio_dmadata*** @au1xpsc_audio_pcmdma, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %22, i64 %24
  %26 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %25, align 8
  store %struct.au1xpsc_audio_dmadata* %26, %struct.au1xpsc_audio_dmadata** %6, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DBG(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i32 %35, i32 %38)
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %44 = call i64 @params_periods(%struct.snd_pcm_hw_params* %43)
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %46 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %44, i32 %46, i32 %47)
  %49 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @au1x_pcm_dbdma_realloc(%struct.au1xpsc_audio_dmadata* %49, i32 %50, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %19
  %58 = call i32 @MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %84

59:                                               ; preds = %19
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %62 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %61, i32 0, i32 7
  store %struct.snd_pcm_substream* %60, %struct.snd_pcm_substream** %62, align 8
  %63 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %64 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %63)
  %65 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %66 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %68 = call i64 @params_periods(%struct.snd_pcm_hw_params* %67)
  %69 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %70 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %75 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %77 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %76, i32 0, i32 1
  store i64 %73, i64* %77, align 8
  %78 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %79 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %81 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %83 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %59, %57, %18
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream*) #1

declare dso_local i32 @DBG(i8*, i64, i64, i32, i32) #1

declare dso_local i64 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @au1x_pcm_dbdma_realloc(%struct.au1xpsc_audio_dmadata*, i32, i64) #1

declare dso_local i32 @MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
