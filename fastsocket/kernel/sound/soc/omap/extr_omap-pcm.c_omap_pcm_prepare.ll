; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.omap_runtime_data* }
%struct.omap_runtime_data = type { i32, %struct.omap_pcm_dma_data* }
%struct.omap_pcm_dma_data = type { i32, i32, i32 }
%struct.omap_dma_channel_params = type { i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32 }

@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@OMAP_DMA_AMODE_POST_INC = common dso_local global i8* null, align 8
@OMAP_DMA_AMODE_CONSTANT = common dso_local global i8* null, align 8
@OMAP_DMA_DST_SYNC = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_MPUI = common dso_local global i8* null, align 8
@OMAP_DMA_SRC_SYNC = common dso_local global i32 0, align 4
@OMAP_DMA_FRAME_IRQ = common dso_local global i32 0, align 4
@OMAP_DMA_LAST_IRQ = common dso_local global i32 0, align 4
@OMAP_DMA_BLOCK_IRQ = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_BURST_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @omap_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.omap_runtime_data*, align 8
  %6 = alloca %struct.omap_pcm_dma_data*, align 8
  %7 = alloca %struct.omap_dma_channel_params, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %12, align 8
  store %struct.omap_runtime_data* %13, %struct.omap_runtime_data** %5, align 8
  %14 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %15 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %14, i32 0, i32 1
  %16 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %15, align 8
  store %struct.omap_pcm_dma_data* %16, %struct.omap_pcm_dma_data** %6, align 8
  %17 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %18 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %17, i32 0, i32 1
  %19 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %18, align 8
  %20 = icmp ne %struct.omap_pcm_dma_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.omap_dma_channel_params* %7, i32 0, i32 72)
  %24 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %25 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 11
  store i32 %24, i32* %25, align 8
  %26 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %6, align 8
  %27 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 10
  store i32 %28, i32* %29, align 4
  %30 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %6, align 8
  %31 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 9
  store i32 %32, i32* %33, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %22
  %40 = load i8*, i8** @OMAP_DMA_AMODE_POST_INC, align 8
  %41 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 7
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** @OMAP_DMA_AMODE_CONSTANT, align 8
  %43 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 6
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @OMAP_DMA_DST_SYNC, align 4
  %45 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %6, align 8
  %51 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load i8*, i8** @OMAP_DMA_PORT_MPUI, align 8
  %55 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 8
  store i8* %54, i8** %55, align 8
  br label %73

56:                                               ; preds = %22
  %57 = load i8*, i8** @OMAP_DMA_AMODE_CONSTANT, align 8
  %58 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 7
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** @OMAP_DMA_AMODE_POST_INC, align 8
  %60 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 6
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* @OMAP_DMA_SRC_SYNC, align 4
  %62 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %6, align 8
  %64 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** @OMAP_DMA_PORT_MPUI, align 8
  %72 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %56, %39
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %74)
  %76 = sdiv i32 %75, 2
  %77 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.omap_dma_channel_params, %struct.omap_dma_channel_params* %7, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %83 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @omap_set_dma_params(i32 %84, %struct.omap_dma_channel_params* %7)
  %86 = call i64 (...) @cpu_is_omap1510()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %73
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %96 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @OMAP_DMA_FRAME_IRQ, align 4
  %99 = load i32, i32* @OMAP_DMA_LAST_IRQ, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @OMAP_DMA_BLOCK_IRQ, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @omap_enable_dma_irq(i32 %97, i32 %102)
  br label %110

104:                                              ; preds = %88, %73
  %105 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %106 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OMAP_DMA_FRAME_IRQ, align 4
  %109 = call i32 @omap_enable_dma_irq(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %94
  %111 = call i32 (...) @cpu_class_is_omap1()
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %115 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @OMAP_DMA_DATA_BURST_16, align 4
  %118 = call i32 @omap_set_dma_src_burst_mode(i32 %116, i32 %117)
  %119 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %5, align 8
  %120 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @OMAP_DMA_DATA_BURST_16, align 4
  %123 = call i32 @omap_set_dma_dest_burst_mode(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %110
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %21
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.omap_dma_channel_params*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @omap_set_dma_params(i32, %struct.omap_dma_channel_params*) #1

declare dso_local i64 @cpu_is_omap1510(...) #1

declare dso_local i32 @omap_enable_dma_irq(i32, i32) #1

declare dso_local i32 @cpu_class_is_omap1(...) #1

declare dso_local i32 @omap_set_dma_src_burst_mode(i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_burst_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
