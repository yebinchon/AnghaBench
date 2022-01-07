; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_set_stream_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_set_stream_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BLOCK_TRANSFER = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_FIFO_IN_FRAMES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*, %struct.snd_pcm_substream*, i32)* @set_stream_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_stream_hw(%struct.ua101* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ua101*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %10 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SNDRV_PCM_INFO_BLOCK_TRANSFER, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SNDRV_PCM_INFO_FIFO_IN_FRAMES, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 8
  %25 = load %struct.ua101*, %struct.ua101** %5, align 8
  %26 = getelementptr inbounds %struct.ua101, %struct.ua101* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 11
  store i32 %27, i32* %32, align 4
  %33 = load %struct.ua101*, %struct.ua101** %5, align 8
  %34 = getelementptr inbounds %struct.ua101, %struct.ua101* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_pcm_rate_to_rate_bit(i32 %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 10
  store i32 %36, i32* %41, align 8
  %42 = load %struct.ua101*, %struct.ua101** %5, align 8
  %43 = getelementptr inbounds %struct.ua101, %struct.ua101* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 9
  store i32 %44, i32* %49, align 4
  %50 = load %struct.ua101*, %struct.ua101** %5, align 8
  %51 = getelementptr inbounds %struct.ua101, %struct.ua101* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  store i32 %52, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32 46080000, i32* %74, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  %80 = load i8*, i8** @UINT_MAX, align 8
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 7
  store i8* %80, i8** %85, align 8
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  store i32 2, i32* %90, align 4
  %91 = load i8*, i8** @UINT_MAX, align 8
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  store i8* %91, i8** %96, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %101 = load %struct.ua101*, %struct.ua101** %5, align 8
  %102 = getelementptr inbounds %struct.ua101, %struct.ua101* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 1500000, %103
  %105 = call i32 @snd_pcm_hw_constraint_minmax(%struct.TYPE_5__* %99, i32 %100, i32 %104, i32 8192000)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %3
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %116

110:                                              ; preds = %3
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @snd_pcm_hw_constraint_msbits(%struct.TYPE_5__* %113, i32 0, i32 32, i32 24)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %108
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
