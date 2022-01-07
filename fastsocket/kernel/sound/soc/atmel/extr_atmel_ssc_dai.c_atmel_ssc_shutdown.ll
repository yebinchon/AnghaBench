; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { i32, i32, i64, i64, i64, %struct.TYPE_8__*, i64, %struct.atmel_pcm_dma_params** }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.atmel_pcm_dma_params = type { i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"atmel_ssc_shutdown: %s disabled SSC_SR=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"transmit\00", align 1
@SR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"atmel_ssc_dau: Stopping clock\0A\00", align 1
@CR_SWRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_ssc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_ssc_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.atmel_ssc_info*, align 8
  %7 = alloca %struct.atmel_pcm_dma_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %12, i64 %19
  store %struct.atmel_ssc_info* %20, %struct.atmel_ssc_info** %6, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

27:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %30 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %29, i32 0, i32 7
  %31 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %31, i64 %33
  %35 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %34, align 8
  store %struct.atmel_pcm_dma_params* %35, %struct.atmel_pcm_dma_params** %7, align 8
  %36 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %37 = icmp ne %struct.atmel_pcm_dma_params* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %28
  %39 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %40 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %39, i32 0, i32 5
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CR, align 4
  %45 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %46 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ssc_writel(i32 %43, i32 %44, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %55 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %55, i32 0, i32 5
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SR, align 4
  %61 = call i32 @ssc_readl(i32 %59, i32 %60)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %61)
  %63 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %64 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %66 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %67, i32 0, i32 7
  %69 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %69, i64 %71
  store %struct.atmel_pcm_dma_params* null, %struct.atmel_pcm_dma_params** %72, align 8
  br label %73

73:                                               ; preds = %38, %28
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 1, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %76, i32 0, i32 1
  %78 = call i32 @spin_lock_irq(i32* %77)
  %79 = load i32, i32* %9, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %82 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %86 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %127, label %89

89:                                               ; preds = %73
  %90 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %91 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %97 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %96, i32 0, i32 5
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clk_disable(i32 %100)
  %102 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %103 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %102, i32 0, i32 5
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %108 = call i32 @free_irq(i32 %106, %struct.atmel_ssc_info* %107)
  %109 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %110 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %109, i32 0, i32 6
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %94, %89
  %112 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %113 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %112, i32 0, i32 5
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CR, align 4
  %118 = load i32, i32* @CR_SWRST, align 4
  %119 = call i32 @SSC_BIT(i32 %118)
  %120 = call i32 @ssc_writel(i32 %116, i32 %117, i32 %119)
  %121 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %122 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %124 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %126 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %111, %73
  %128 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %129 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock_irq(i32* %129)
  ret void
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @free_irq(i32, %struct.atmel_ssc_info*) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
