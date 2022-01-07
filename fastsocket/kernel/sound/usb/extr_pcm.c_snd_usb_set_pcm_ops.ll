; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_set_pcm_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_set_pcm_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_usb_playback_ops = common dso_local global i32 0, align 4
@snd_usb_capture_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_set_pcm_ops(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32* @snd_usb_playback_ops, i32* @snd_usb_capture_ops
  %12 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %5, i32 %6, i32* %11)
  ret void
}

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
