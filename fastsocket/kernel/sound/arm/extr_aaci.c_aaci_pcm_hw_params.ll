; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.aaci_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.aaci_runtime*, %struct.snd_pcm_hw_params*)* @aaci_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.aaci_runtime* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.aaci_runtime*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.aaci_runtime* %1, %struct.aaci_runtime** %5, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %6, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call i32 @aaci_pcm_hw_free(%struct.snd_pcm_substream* %8)
  %10 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @snd_ac97_pcm_close(%struct.TYPE_5__* %17)
  %19 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %23)
  %25 = call i32 @devdma_hw_alloc(i32* null, %struct.snd_pcm_substream* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %76

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_channels(%struct.snd_pcm_hw_params* %41)
  %43 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_ac97_pcm_open(%struct.TYPE_5__* %38, i32 %40, i32 %42, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %69

52:                                               ; preds = %29
  %53 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = call i32 @params_rate(%struct.snd_pcm_hw_params* %56)
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i32 @params_channels(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %61 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snd_ac97_pcm_open(%struct.TYPE_5__* %55, i32 %57, i32 %59, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %52, %35
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %76

73:                                               ; preds = %69
  %74 = load %struct.aaci_runtime*, %struct.aaci_runtime** %5, align 8
  %75 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %72, %28
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @aaci_pcm_hw_free(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ac97_pcm_close(%struct.TYPE_5__*) #1

declare dso_local i32 @devdma_hw_alloc(i32*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_ac97_pcm_open(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
