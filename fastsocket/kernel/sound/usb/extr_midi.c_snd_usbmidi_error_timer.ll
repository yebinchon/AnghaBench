; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_error_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_error_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64, %struct.snd_usb_midi_in_endpoint* }
%struct.snd_usb_midi_in_endpoint = type { %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32 }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@INPUT_URBS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @snd_usbmidi_error_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_error_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_usb_midi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.snd_usb_midi*
  store %struct.snd_usb_midi* %8, %struct.snd_usb_midi** %3, align 8
  %9 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %10 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  br label %101

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %94, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  %26 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %27 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %32, align 8
  store %struct.snd_usb_midi_in_endpoint* %33, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %34 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %35 = icmp ne %struct.snd_usb_midi_in_endpoint* %34, null
  br i1 %35, label %36, label %73

36:                                               ; preds = %25
  %37 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %38 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %43 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %69, %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @INPUT_URBS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %50 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %53 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  %60 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %6, align 8
  %61 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32 @snd_usbmidi_submit_urb(%struct.TYPE_4__* %66, i32 %67)
  br label %69

69:                                               ; preds = %48
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %44

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %36, %25
  %74 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %75 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %85 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @snd_usbmidi_do_output(i64 %91)
  br label %93

93:                                               ; preds = %83, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %21

97:                                               ; preds = %21
  %98 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %3, align 8
  %99 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %16
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_usbmidi_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_usbmidi_do_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
