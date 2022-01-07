; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_digital_out_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_digital_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32 }
%struct.echoaudio = type { i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"pcm_digital_out_open\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@ECHOCARD_HAS_ADAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_playback_channels_by_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@hw_rule_playback_format_by_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_digital_out_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_digital_out_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.echoaudio* %7, %struct.echoaudio** %3, align 8
  %8 = call i32 @DE_ACT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %10 = call i32 @num_digital_busses_out(%struct.echoaudio* %9)
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pcm_open(%struct.snd_pcm_substream* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ECHOCARD_HAS_ADAT, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @pcm_open(%struct.snd_pcm_substream* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %74

37:                                               ; preds = %33
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %42 = load i32, i32* @hw_rule_playback_channels_by_format, align 4
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %44 = call i32 @snd_pcm_hw_rule_add(i32 %40, i32 0, i32 %41, i32 %42, i32* null, i32 %43, i32 -1)
  store i32 %44, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %74

47:                                               ; preds = %37
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %52 = load i32, i32* @hw_rule_playback_format_by_channels, align 4
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %54 = call i32 @snd_pcm_hw_rule_add(i32 %50, i32 0, i32 %51, i32 %52, i32* null, i32 %53, i32 -1)
  store i32 %54, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %74

57:                                               ; preds = %47
  %58 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 4
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 4
  %63 = call i32 @atomic_read(i32* %62)
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %72 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %65, %57
  br label %74

74:                                               ; preds = %73, %56, %46, %36
  %75 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %76 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @num_digital_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcm_open(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
