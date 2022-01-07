; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8903_priv* }
%struct.wm8903_priv = type { %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, i32, i32 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @wm8903_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8903_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca %struct.wm8903_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_device*, %struct.snd_soc_device** %13, align 8
  store %struct.snd_soc_device* %14, %struct.snd_soc_device** %6, align 8
  %15 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %18, align 8
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %7, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 0
  %22 = load %struct.wm8903_priv*, %struct.wm8903_priv** %21, align 8
  store %struct.wm8903_priv* %22, %struct.wm8903_priv** %8, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %30 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %35 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %40 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %39, i32 0, i32 1
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %40, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %43 = icmp eq %struct.snd_pcm_substream* %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %46 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %45, i32 0, i32 0
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %46, align 8
  %48 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %49 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %48, i32 0, i32 1
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %52 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %51, i32 0, i32 0
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
