; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_9__*, %struct.snd_pcm_runtime* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.snd_pcm_substream*, i32)*, i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_RATES_FRONT_DAC = common dso_local global i32 0, align 4
@AC97_RATES_ADC = common dso_local global i32 0, align 4
@pxa2xx_ac97_ac97 = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pxa2xx_ac97_pcm_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_pcm_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 2, i32* %12, align 4
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @AC97_RATES_FRONT_DAC, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @AC97_RATES_ADC, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pxa2xx_ac97_ac97, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %38 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %37)
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %5, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %25
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.snd_pcm_substream*, i32)* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %57, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %58(%struct.snd_pcm_substream* %59, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %50, %25
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
