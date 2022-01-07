; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_8__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_8__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.psc_dma* }
%struct.psc_dma = type { %struct.TYPE_10__*, i32, %struct.psc_dma_stream, %struct.psc_dma_stream, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.psc_dma_stream = type { i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"psc_dma_close(substream=%p)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @psc_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.psc_dma*, align 8
  %5 = alloca %struct.psc_dma_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  store %struct.snd_soc_pcm_runtime* %8, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.psc_dma*, %struct.psc_dma** %14, align 8
  store %struct.psc_dma* %15, %struct.psc_dma** %4, align 8
  %16 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %17 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %19)
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %30 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %29, i32 0, i32 2
  store %struct.psc_dma_stream* %30, %struct.psc_dma_stream** %5, align 8
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %33 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %32, i32 0, i32 3
  store %struct.psc_dma_stream* %33, %struct.psc_dma_stream** %5, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %36 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %34
  %41 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %42 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %48 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %53 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @out_be16(i32* %51, i32 %54)
  %56 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %57 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @out_8(i32* %59, i32 64)
  br label %61

61:                                               ; preds = %46, %40, %34
  %62 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %63 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
