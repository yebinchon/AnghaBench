; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camelot_pcm = type { i32, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@cam_pcm_data = common dso_local global %struct.camelot_pcm* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@camelot_pcm_hardware = common dso_local global i32 0, align 4
@camelot_rxdma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"audio unit %d irqs already taken!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@camelot_txdma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @camelot_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camelot_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.camelot_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = load %struct.camelot_pcm*, %struct.camelot_pcm** @cam_pcm_data, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %12, i64 %19
  store %struct.camelot_pcm* %20, %struct.camelot_pcm** %5, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  store i32 %27, i32* %6, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %28, i32* @camelot_pcm_hardware)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 2
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i32 [ %36, %32 ], [ %40, %37 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %48 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %47, i32 0, i32 2
  store %struct.snd_pcm_substream* %46, %struct.snd_pcm_substream** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @camelot_rxdma, align 4
  %51 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %52 = call i32 @dmabrg_request_irq(i32 %49, i32 %50, %struct.camelot_pcm* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %102

67:                                               ; preds = %45
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @camelot_rxdma, align 4
  %71 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %72 = call i32 @dmabrg_request_irq(i32 %69, i32 %70, %struct.camelot_pcm* %71)
  br label %101

73:                                               ; preds = %41
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %76 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %75, i32 0, i32 1
  store %struct.snd_pcm_substream* %74, %struct.snd_pcm_substream** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @camelot_txdma, align 4
  %79 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %80 = call i32 @dmabrg_request_irq(i32 %77, i32 %78, %struct.camelot_pcm* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %86 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %102

95:                                               ; preds = %73
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @camelot_txdma, align 4
  %99 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %100 = call i32 @dmabrg_request_irq(i32 %97, i32 %98, %struct.camelot_pcm* %99)
  br label %101

101:                                              ; preds = %95, %67
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %84, %56
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @dmabrg_request_irq(i32, i32, %struct.camelot_pcm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
