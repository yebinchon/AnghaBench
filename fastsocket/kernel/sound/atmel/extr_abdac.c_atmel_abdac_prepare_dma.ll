; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_abdac = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dw_cyclic_desc*, %struct.dma_chan* }
%struct.dw_cyclic_desc = type { %struct.atmel_abdac*, i32 }
%struct.dma_chan = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"too complex transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not prepare cyclic DMA\0A\00", align 1
@atmel_abdac_dma_period_done = common dso_local global i32 0, align 4
@DMA_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_abdac*, %struct.snd_pcm_substream*, i32)* @atmel_abdac_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_abdac_prepare_dma(%struct.atmel_abdac* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_abdac*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dw_cyclic_desc*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.atmel_abdac* %0, %struct.atmel_abdac** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %10, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25, %3
  %32 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %33 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %25
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %40, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %45, i32 %48)
  store i64 %49, i64* %12, align 8
  %50 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call %struct.dw_cyclic_desc* @dw_dma_cyclic_prep(%struct.dma_chan* %50, i32 %53, i64 %54, i64 %55, i32 %56)
  store %struct.dw_cyclic_desc* %57, %struct.dw_cyclic_desc** %9, align 8
  %58 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %59 = call i64 @IS_ERR(%struct.dw_cyclic_desc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %39
  %62 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %68 = call i32 @PTR_ERR(%struct.dw_cyclic_desc* %67)
  store i32 %68, i32* %4, align 4
  br label %84

69:                                               ; preds = %39
  %70 = load i32, i32* @atmel_abdac_dma_period_done, align 4
  %71 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %72 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %74 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %75 = getelementptr inbounds %struct.dw_cyclic_desc, %struct.dw_cyclic_desc* %74, i32 0, i32 0
  store %struct.atmel_abdac* %73, %struct.atmel_abdac** %75, align 8
  %76 = load %struct.dw_cyclic_desc*, %struct.dw_cyclic_desc** %9, align 8
  %77 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %78 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store %struct.dw_cyclic_desc* %76, %struct.dw_cyclic_desc** %79, align 8
  %80 = load i32, i32* @DMA_READY, align 4
  %81 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %82 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %69, %61, %31
  %85 = load i32, i32* %4, align 4
  ret i32 %85
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
