; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pxa2xx_pcm_client = type { i64, i64 }
%struct.snd_pcm = type { i32, %struct.pxa2xx_pcm_client* }

@.str = private unnamed_addr constant [11 x i8] c"PXA2xx-PCM\00", align 1
@pxa2xx_pcm_free_dma_buffers = common dso_local global i32 0, align 4
@pxa2xx_pcm_dmamask = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@pxa2xx_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_pcm_new(%struct.snd_card* %0, %struct.pxa2xx_pcm_client* %1, %struct.snd_pcm** %2) #0 {
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.pxa2xx_pcm_client*, align 8
  %6 = alloca %struct.snd_pcm**, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.pxa2xx_pcm_client* %1, %struct.pxa2xx_pcm_client** %5, align 8
  store %struct.snd_pcm** %2, %struct.snd_pcm*** %6, align 8
  %13 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %5, align 8
  %14 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %5, align 8
  %20 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %9, align 4
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @snd_pcm_new(%struct.snd_card* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 %26, i32 %27, %struct.snd_pcm** %7)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %99

32:                                               ; preds = %3
  %33 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %5, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 1
  store %struct.pxa2xx_pcm_client* %33, %struct.pxa2xx_pcm_client** %35, align 8
  %36 = load i32, i32* @pxa2xx_pcm_free_dma_buffers, align 4
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %32
  %46 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %47 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* @pxa2xx_pcm_dmamask, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %52 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %59 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %67, i32 %68, i32* @pxa2xx_pcm_ops)
  %70 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %99

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %81, i32* %12, align 4
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %82, i32 %83, i32* @pxa2xx_pcm_ops)
  %85 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %99

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.snd_pcm**, %struct.snd_pcm*** %6, align 8
  %94 = icmp ne %struct.snd_pcm** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %97 = load %struct.snd_pcm**, %struct.snd_pcm*** %6, align 8
  store %struct.snd_pcm* %96, %struct.snd_pcm** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %90, %75, %31
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
