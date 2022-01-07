; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32, %struct.snd_usb_midi_endpoint* }
%struct.snd_usb_midi_endpoint = type { i64, i64 }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi*)* @snd_usbmidi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_free(%struct.snd_usb_midi* %0) #0 {
  %2 = alloca %struct.snd_usb_midi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_midi_endpoint*, align 8
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %11 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %10, i32 0, i32 1
  %12 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %12, i64 %14
  store %struct.snd_usb_midi_endpoint* %15, %struct.snd_usb_midi_endpoint** %4, align 8
  %16 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %4, align 8
  %22 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @snd_usbmidi_out_endpoint_delete(i64 %23)
  br label %25

25:                                               ; preds = %20, %9
  %26 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %4, align 8
  %32 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_usbmidi_in_endpoint_delete(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  %40 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %41 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %40, i32 0, i32 0
  %42 = call i32 @mutex_destroy(i32* %41)
  %43 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %44 = call i32 @kfree(%struct.snd_usb_midi* %43)
  ret void
}

declare dso_local i32 @snd_usbmidi_out_endpoint_delete(i64) #1

declare dso_local i32 @snd_usbmidi_in_endpoint_delete(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.snd_usb_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
