; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.psc_dma* }
%struct.psc_dma = type { %struct.psc_dma_stream, %struct.psc_dma_stream, i32 }
%struct.psc_dma_stream = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_runtime = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"psc_dma_open(substream=%p)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@psc_dma_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid buffer size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @psc_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.psc_dma*, align 8
  %7 = alloca %struct.psc_dma_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.psc_dma*, %struct.psc_dma** %20, align 8
  store %struct.psc_dma* %21, %struct.psc_dma** %6, align 8
  %22 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %23 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %36 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %35, i32 0, i32 1
  store %struct.psc_dma_stream* %36, %struct.psc_dma_stream** %7, align 8
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %39 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %38, i32 0, i32 0
  store %struct.psc_dma_stream* %39, %struct.psc_dma_stream** %7, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %41, i32* @psc_dma_hardware)
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %44 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %45 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %40
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %7, align 8
  %61 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %60, i32 0, i32 0
  store %struct.snd_pcm_substream* %59, %struct.snd_pcm_substream** %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %48
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
