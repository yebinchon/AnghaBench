; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32, i32 }
%struct.omap_mcbsp_data = type { i32 }

@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@MCBSP_DMA_MODE_THRESHOLD = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_mcbsp_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.omap_mcbsp_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %6, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.omap_mcbsp_data* @to_mcbsp(i32 %22)
  store %struct.omap_mcbsp_data* %23, %struct.omap_mcbsp_data** %7, align 8
  %24 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %7, align 8
  %25 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @omap_mcbsp_request(i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = call i64 (...) @cpu_is_omap343x()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @omap_mcbsp_get_dma_op_mode(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %47 = load i32, i32* @UINT_MAX, align 4
  %48 = call i32 @snd_pcm_hw_constraint_minmax(i32 %45, i32 %46, i32 4096, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @omap_mcbsp_get_max_tx_threshold(i32 %56)
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @omap_mcbsp_get_max_rx_threshold(i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @MCBSP_DMA_MODE_THRESHOLD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @snd_pcm_hw_constraint_minmax(i32 %72, i32 %73, i32 32, i32 %74)
  br label %76

76:                                               ; preds = %69, %61
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local %struct.omap_mcbsp_data* @to_mcbsp(i32) #1

declare dso_local i32 @omap_mcbsp_request(i32) #1

declare dso_local i64 @cpu_is_omap343x(...) #1

declare dso_local i32 @omap_mcbsp_get_dma_op_mode(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

declare dso_local i32 @omap_mcbsp_get_max_tx_threshold(i32) #1

declare dso_local i32 @omap_mcbsp_get_max_rx_threshold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
