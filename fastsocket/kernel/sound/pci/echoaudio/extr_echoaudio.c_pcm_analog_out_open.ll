; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_out_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i64 }
%struct.echoaudio = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"pcm_analog_out_open\0A\00", align 1
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_playback_channels_by_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@hw_rule_playback_format_by_channels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pcm_analog_out_open  cs=%d  oc=%d  r=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_analog_out_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_analog_out_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.echoaudio* %8, %struct.echoaudio** %4, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = call i32 @num_analog_busses_out(%struct.echoaudio* %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @DE_ACT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = call i32 @pcm_open(%struct.snd_pcm_substream* %12, i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %28 = load i32, i32* @hw_rule_playback_channels_by_format, align 4
  %29 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %30 = call i32 @snd_pcm_hw_rule_add(i32 %26, i32 0, i32 %27, i32 %28, i32* null, i32 %29, i32 -1)
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %74

34:                                               ; preds = %23
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %39 = load i32, i32* @hw_rule_playback_format_by_channels, align 4
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %41 = call i32 @snd_pcm_hw_rule_add(i32 %37, i32 0, i32 %38, i32 %39, i32* null, i32 %40, i32 -1)
  store i32 %41, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %34
  %46 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %47 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %46, i32 0, i32 1
  %48 = call i32 @atomic_inc(i32* %47)
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 1
  %51 = call i32 @atomic_read(i32* %50)
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %53, %45
  %62 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %63 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 1
  %67 = call i32 @atomic_read(i32* %66)
  %68 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @DE_HWP(i8* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %43, %32, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @num_analog_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @pcm_open(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DE_HWP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
