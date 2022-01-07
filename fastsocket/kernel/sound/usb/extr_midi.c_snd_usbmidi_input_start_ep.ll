; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_input_start_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_input_start_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_in_endpoint = type { %struct.TYPE_2__*, %struct.urb** }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@INPUT_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_in_endpoint*)* @snd_usbmidi_input_start_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_input_start_ep(%struct.snd_usb_midi_in_endpoint* %0) #0 {
  %2 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.snd_usb_midi_in_endpoint* %0, %struct.snd_usb_midi_in_endpoint** %2, align 8
  %5 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %2, align 8
  %6 = icmp ne %struct.snd_usb_midi_in_endpoint* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @INPUT_URBS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %2, align 8
  %15 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %14, i32 0, i32 1
  %16 = load %struct.urb**, %struct.urb*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.urb*, %struct.urb** %16, i64 %18
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %4, align 8
  %21 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %2, align 8
  %22 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.urb*, %struct.urb** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @snd_usbmidi_submit_urb(%struct.urb* %28, i32 %29)
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9

34:                                               ; preds = %7, %9
  ret void
}

declare dso_local i32 @snd_usbmidi_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
