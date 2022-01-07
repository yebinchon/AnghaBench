; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_6__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.psc_dma* }
%struct.psc_dma = type { %struct.psc_dma_stream, %struct.psc_dma_stream }
%struct.psc_dma_stream = type { i64, i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @psc_dma_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.psc_dma*, align 8
  %5 = alloca %struct.psc_dma_stream*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.psc_dma*, %struct.psc_dma** %15, align 8
  store %struct.psc_dma* %16, %struct.psc_dma** %4, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %26 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %25, i32 0, i32 1
  store %struct.psc_dma_stream* %26, %struct.psc_dma_stream** %5, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %29 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %28, i32 0, i32 0
  store %struct.psc_dma_stream* %29, %struct.psc_dma_stream** %5, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %32 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %35 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @bytes_to_frames(i32 %40, i64 %41)
  ret i32 %42
}

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
