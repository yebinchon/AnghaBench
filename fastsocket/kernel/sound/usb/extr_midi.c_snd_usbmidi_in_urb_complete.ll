; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_in_urb_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_in_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i32, i32, %struct.snd_usb_midi_in_endpoint* }
%struct.snd_usb_midi_in_endpoint = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_usb_midi_in_endpoint*, i32, i32)* }

@.str = private unnamed_addr constant [9 x i8] c"received\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ERROR_DELAY_JIFFIES = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @snd_usbmidi_in_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_in_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 4
  %7 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  store %struct.snd_usb_midi_in_endpoint* %7, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dump_urb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_usb_midi_in_endpoint*, i32, i32)*, i32 (%struct.snd_usb_midi_in_endpoint*, i32, i32)** %25, align 8
  %27 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %26(%struct.snd_usb_midi_in_endpoint* %27, i32 %30, i32 %33)
  br label %60

35:                                               ; preds = %1
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @snd_usbmidi_urb_error(i64 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %49 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %51 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @ERROR_DELAY_JIFFIES, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @mod_timer(i32* %53, i64 %56)
  br label %58

58:                                               ; preds = %47, %42
  br label %71

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %3, align 8
  %62 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.urb*, %struct.urb** %2, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.urb*, %struct.urb** %2, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i32 @snd_usbmidi_submit_urb(%struct.urb* %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %58
  ret void
}

declare dso_local i32 @dump_urb(i8*, i32, i32) #1

declare dso_local i32 @snd_usbmidi_urb_error(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @snd_usbmidi_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
