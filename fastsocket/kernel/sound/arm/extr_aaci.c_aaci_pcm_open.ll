; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.aaci* }
%struct.aaci = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@aaci_rule_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @aaci_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.aaci*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 2
  %8 = load %struct.aaci*, %struct.aaci** %7, align 8
  store %struct.aaci* %8, %struct.aaci** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %13 = load i32, i32* @aaci_rule_channels, align 4
  %14 = load %struct.aaci*, %struct.aaci** %4, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %16 = call i32 @snd_pcm_hw_rule_add(i32 %11, i32 0, i32 %12, i32 %13, %struct.aaci* %14, i32 %15, i32 -1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.aaci*, %struct.aaci** %4, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = load %struct.aaci*, %struct.aaci** %4, align 8
  %31 = getelementptr inbounds %struct.aaci, %struct.aaci* %30, i32 0, i32 1
  %32 = call i32 @__aaci_pcm_open(%struct.aaci* %28, %struct.snd_pcm_substream* %29, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.aaci*, %struct.aaci** %4, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = load %struct.aaci*, %struct.aaci** %4, align 8
  %37 = getelementptr inbounds %struct.aaci, %struct.aaci* %36, i32 0, i32 0
  %38 = call i32 @__aaci_pcm_open(%struct.aaci* %34, %struct.snd_pcm_substream* %35, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.aaci*, i32, i32) #1

declare dso_local i32 @__aaci_pcm_open(%struct.aaci*, %struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
