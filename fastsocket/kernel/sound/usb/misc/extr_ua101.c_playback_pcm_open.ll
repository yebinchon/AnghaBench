; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_playback_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_playback_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__*, %struct.ua101* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ua101 = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.snd_pcm_substream* }

@ALSA_CAPTURE_OPEN = common dso_local global i32 0, align 4
@ALSA_PLAYBACK_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @playback_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.ua101*, %struct.ua101** %7, align 8
  store %struct.ua101* %8, %struct.ua101** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.ua101*, %struct.ua101** %4, align 8
  %11 = getelementptr inbounds %struct.ua101, %struct.ua101* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %12, align 8
  %13 = load %struct.ua101*, %struct.ua101** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = load %struct.ua101*, %struct.ua101** %4, align 8
  %16 = getelementptr inbounds %struct.ua101, %struct.ua101* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_stream_hw(%struct.ua101* %13, %struct.snd_pcm_substream* %14, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = load %struct.ua101*, %struct.ua101** %4, align 8
  %26 = getelementptr inbounds %struct.ua101, %struct.ua101* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ua101*, %struct.ua101** %4, align 8
  %29 = getelementptr inbounds %struct.ua101, %struct.ua101* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %27, %31
  %33 = load %struct.ua101*, %struct.ua101** %4, align 8
  %34 = getelementptr inbounds %struct.ua101, %struct.ua101* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DIV_ROUND_CLOSEST(i32 %32, i32 %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load %struct.ua101*, %struct.ua101** %4, align 8
  %43 = getelementptr inbounds %struct.ua101, %struct.ua101* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.ua101*, %struct.ua101** %4, align 8
  %46 = call i32 @start_usb_capture(%struct.ua101* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  br label %70

50:                                               ; preds = %24
  %51 = load %struct.ua101*, %struct.ua101** %4, align 8
  %52 = call i32 @start_usb_playback(%struct.ua101* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* @ALSA_CAPTURE_OPEN, align 4
  %57 = load %struct.ua101*, %struct.ua101** %4, align 8
  %58 = getelementptr inbounds %struct.ua101, %struct.ua101* %57, i32 0, i32 2
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load %struct.ua101*, %struct.ua101** %4, align 8
  %63 = call i32 @stop_usb_capture(%struct.ua101* %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %70

65:                                               ; preds = %50
  %66 = load i32, i32* @ALSA_PLAYBACK_OPEN, align 4
  %67 = load %struct.ua101*, %struct.ua101** %4, align 8
  %68 = getelementptr inbounds %struct.ua101, %struct.ua101* %67, i32 0, i32 2
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %64, %49
  %71 = load %struct.ua101*, %struct.ua101** %4, align 8
  %72 = getelementptr inbounds %struct.ua101, %struct.ua101* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @set_stream_hw(%struct.ua101*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @start_usb_capture(%struct.ua101*) #1

declare dso_local i32 @start_usb_playback(%struct.ua101*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @stop_usb_capture(%struct.ua101*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
