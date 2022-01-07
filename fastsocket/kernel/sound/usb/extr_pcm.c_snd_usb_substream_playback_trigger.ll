; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_substream_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_substream_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }

@prepare_playback_urb = common dso_local global i32* null, align 8
@retire_playback_urb = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_usb_substream_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_substream_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %10, align 8
  store %struct.snd_usb_substream* %11, %struct.snd_usb_substream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %42 [
    i32 129, label %13
    i32 130, label %13
    i32 128, label %26
    i32 131, label %31
  ]

13:                                               ; preds = %2, %2
  %14 = load i32*, i32** @prepare_playback_urb, align 8
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32* %14, i32** %18, align 8
  %19 = load i32*, i32** @retire_playback_urb, align 8
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %19, i32** %23, align 8
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %28 = call i32 @stop_endpoints(%struct.snd_usb_substream* %27, i32 0, i32 0, i32 0)
  %29 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %30 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %37 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %41 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %31, %26, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
