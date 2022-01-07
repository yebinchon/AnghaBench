; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_8__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.psc_dma* }
%struct.psc_dma = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @psc_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.psc_dma*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %7, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.psc_dma*, %struct.psc_dma** %17, align 8
  store %struct.psc_dma* %18, %struct.psc_dma** %8, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %47 [
    i32 128, label %20
  ]

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.psc_dma*, %struct.psc_dma** %8, align 8
  %30 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, -65536
  store i32 %32, i32* %30, align 8
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.psc_dma*, %struct.psc_dma** %8, align 8
  %35 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 65535
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.psc_dma*, %struct.psc_dma** %8, align 8
  %40 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.psc_dma*, %struct.psc_dma** %8, align 8
  %44 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @out_be32(i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %3, %38
  ret i32 0
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
