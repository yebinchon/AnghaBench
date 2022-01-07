; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.snd_soc_dai = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm = type { i32 }

@davinci_pcm_dmamask = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_soc_dai*, %struct.snd_pcm*)* @davinci_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pcm_new(%struct.snd_card* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %6, align 8
  store %struct.snd_pcm* %2, %struct.snd_pcm** %7, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32* @davinci_pcm_dmamask, i32** %19, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %40 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %41 = call i32 @davinci_pcm_preallocate_dma_buffer(%struct.snd_pcm* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %55 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %56 = call i32 @davinci_pcm_preallocate_dma_buffer(%struct.snd_pcm* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %47
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %44
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @davinci_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
