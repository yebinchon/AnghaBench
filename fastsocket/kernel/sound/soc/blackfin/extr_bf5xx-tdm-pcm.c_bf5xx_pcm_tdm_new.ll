; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_tdm_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_tdm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.snd_soc_dai = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm = type { i32 }

@bf5xx_pcm_dmamask = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_soc_dai*, %struct.snd_pcm*)* @bf5xx_pcm_tdm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_pcm_tdm_new(%struct.snd_card* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm* %2) #0 {
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  store %struct.snd_pcm* %2, %struct.snd_pcm** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32* @bf5xx_pcm_dmamask, i32** %18, align 8
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = call i64 @DMA_BIT_MASK(i32 32)
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %41 = call i32 @bf5xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %54 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %55 = call i32 @bf5xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %58, %44
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @bf5xx_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
