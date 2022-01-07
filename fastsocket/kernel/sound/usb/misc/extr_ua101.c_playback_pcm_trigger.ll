; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_playback_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_playback_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.ua101* }
%struct.ua101 = type { i32 }

@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ALSA_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @playback_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ua101*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.ua101*, %struct.ua101** %8, align 8
  store %struct.ua101* %9, %struct.ua101** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %30 [
    i32 129, label %11
    i32 128, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %13 = load %struct.ua101*, %struct.ua101** %6, align 8
  %14 = getelementptr inbounds %struct.ua101, %struct.ua101* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %11
  %21 = load i32, i32* @ALSA_PLAYBACK_RUNNING, align 4
  %22 = load %struct.ua101*, %struct.ua101** %6, align 8
  %23 = getelementptr inbounds %struct.ua101, %struct.ua101* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  store i32 0, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @ALSA_PLAYBACK_RUNNING, align 4
  %27 = load %struct.ua101*, %struct.ua101** %6, align 8
  %28 = getelementptr inbounds %struct.ua101, %struct.ua101* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %25, %20, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
