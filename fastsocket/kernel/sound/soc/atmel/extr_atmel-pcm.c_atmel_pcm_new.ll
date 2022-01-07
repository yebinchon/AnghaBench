; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.snd_soc_dai = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm = type { i32 }

@atmel_pcm_dmamask = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"at32-pcm:Allocating PCM capture DMA buffer\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_soc_dai*, %struct.snd_pcm*)* @atmel_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_new(%struct.snd_card* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm* %2) #0 {
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
  store i32* @atmel_pcm_dmamask, i32** %18, align 8
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %40 = call i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %61

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %54 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %55 = call i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %61

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60, %58, %43
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
