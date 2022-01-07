; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_out_urb_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_out_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.out_urb_context* }
%struct.out_urb_context = type { %struct.snd_usb_midi_out_endpoint* }
%struct.snd_usb_midi_out_endpoint = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.out_urb_context* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ERROR_DELAY_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @snd_usbmidi_out_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_out_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.out_urb_context*, align 8
  %4 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.out_urb_context*, %struct.out_urb_context** %8, align 8
  store %struct.out_urb_context* %9, %struct.out_urb_context** %3, align 8
  %10 = load %struct.out_urb_context*, %struct.out_urb_context** %3, align 8
  %11 = getelementptr inbounds %struct.out_urb_context, %struct.out_urb_context* %10, i32 0, i32 0
  %12 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %11, align 8
  store %struct.snd_usb_midi_out_endpoint* %12, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %13 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.out_urb_context*, %struct.out_urb_context** %3, align 8
  %17 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %17, i32 0, i32 5
  %19 = load %struct.out_urb_context*, %struct.out_urb_context** %18, align 8
  %20 = ptrtoint %struct.out_urb_context* %16 to i64
  %21 = ptrtoint %struct.out_urb_context* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %29 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %33 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %42 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %45, i32 0, i32 4
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %37, %1
  %49 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %50 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %48
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @snd_usbmidi_urb_error(i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %70 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* @ERROR_DELAY_JIFFIES, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @mod_timer(i32* %72, i64 %75)
  br label %77

77:                                               ; preds = %68, %63
  br label %82

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %4, align 8
  %81 = call i32 @snd_usbmidi_do_output(%struct.snd_usb_midi_out_endpoint* %80)
  br label %82

82:                                               ; preds = %79, %77
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_usbmidi_urb_error(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @snd_usbmidi_do_output(%struct.snd_usb_midi_out_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
