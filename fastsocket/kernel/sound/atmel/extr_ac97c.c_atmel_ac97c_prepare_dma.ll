; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ac97c = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.dw_cyclic_desc = type { %struct.atmel_ac97c*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"too complex transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not prepare cyclic DMA\0A\00", align 1
@atmel_ac97c_dma_playback_period_done = common dso_local global i32 0, align 4
@DMA_TX_READY = common dso_local global i32 0, align 4
@atmel_ac97c_dma_capture_period_done = common dso_local global i32 0, align 4
@DMA_RX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ac97c*, %struct.snd_pcm_substream*, i32)* @atmel_ac97c_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_prepare_dma(%struct.atmel_ac97c* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_ac97c*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dw_cyclic_desc*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.atmel_ac97c* %0, %struct.atmel_ac97c** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %10, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %3
  %28 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %29 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %103

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %41 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.dma_chan*, %struct.dma_chan** %42, align 8
  store %struct.dma_chan* %43, %struct.dma_chan** %8, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %46 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.dma_chan*, %struct.dma_chan** %47, align 8
  store %struct.dma_chan* %48, %struct.dma_chan** %8, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %50, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %55, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.dw_cyclic_desc* @dw_dma_cyclic_prep(%struct.dma_chan* %60, i32 %63, i64 %64, i64 %65, i32 %66)
  store %struct.dw_cyclic_desc* %67, %struct.dw_cyclic_desc** %9, align 8
  %68 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %69 = call i64 @IS_ERR(%struct.dw_cyclic_desc* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %49
  %72 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %73 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.dw_cyclic_desc* %77)
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %49
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* @atmel_ac97c_dma_playback_period_done, align 4
  %85 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %86 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @DMA_TX_READY, align 4
  %88 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %89 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %99

91:                                               ; preds = %79
  %92 = load i32, i32* @atmel_ac97c_dma_capture_period_done, align 4
  %93 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %94 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @DMA_RX_READY, align 4
  %96 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %97 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %101 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %102 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %101, i32 0, i32 0
  store %struct.atmel_ac97c* %100, %struct.atmel_ac97c** %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %71, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local %struct.dw_cyclic_desc* @dw_dma_cyclic_prep(%struct.dma_chan*, i32, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.dw_cyclic_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.dw_cyclic_desc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
