; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_enqueue_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_enqueue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, %struct.davinci_runtime_data* }
%struct.davinci_runtime_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16, i64 }

@.str = private unnamed_addr constant [81 x i8] c"davinci_pcm: audio_set_dma_params_play channel = %d dma_ptr = %x period_size=%x\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@INCR = common dso_local global i32 0, align 4
@W8BIT = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @davinci_pcm_enqueue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_pcm_enqueue_dma(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.davinci_runtime_data*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %19, align 8
  store %struct.davinci_runtime_data* %20, %struct.davinci_runtime_data** %3, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %22, align 8
  store %struct.snd_pcm_runtime* %23, %struct.snd_pcm_runtime** %4, align 8
  %24 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %25 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %30 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i32 %42)
  %44 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %45 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %13, align 4
  %51 = udiv i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %1
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %9, align 8
  %59 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %60 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %11, align 2
  store i16 0, i16* %12, align 2
  br label %75

66:                                               ; preds = %1
  %67 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %68 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %10, align 8
  store i16 0, i16* %11, align 2
  %73 = load i32, i32* %13, align 4
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %12, align 2
  br label %75

75:                                               ; preds = %66, %57
  %76 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %77 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i16, i16* %79, align 4
  store i16 %80, i16* %14, align 2
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i32, i32* @INCR, align 4
  %84 = load i32, i32* @W8BIT, align 4
  %85 = call i32 @edma_set_src(i32 %81, i64 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* @INCR, align 4
  %89 = load i32, i32* @W8BIT, align 4
  %90 = call i32 @edma_set_dest(i32 %86, i64 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i16, i16* %11, align 2
  %93 = call i32 @edma_set_src_index(i32 %91, i16 zeroext %92, i32 0)
  %94 = load i32, i32* %5, align 4
  %95 = load i16, i16* %12, align 2
  %96 = call i32 @edma_set_dest_index(i32 %94, i16 zeroext %95, i32 0)
  %97 = load i32, i32* %5, align 4
  %98 = load i16, i16* %14, align 2
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @ASYNC, align 4
  %101 = call i32 @edma_set_transfer_params(i32 %97, i16 zeroext %98, i32 %99, i32 1, i32 0, i32 %100)
  %102 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %103 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %107 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp uge i32 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %75
  %117 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %3, align 8
  %118 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %75
  ret void
}

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @edma_set_src(i32, i64, i32, i32) #1

declare dso_local i32 @edma_set_dest(i32, i64, i32, i32) #1

declare dso_local i32 @edma_set_src_index(i32, i16 zeroext, i32) #1

declare dso_local i32 @edma_set_dest_index(i32, i16 zeroext, i32) #1

declare dso_local i32 @edma_set_transfer_params(i32, i16 zeroext, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
