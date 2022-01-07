; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_output_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.usbmidi_out_port* }
%struct.usbmidi_out_port = type { i32, %struct.snd_rawmidi_substream* }
%struct.TYPE_5__ = type { %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usbmidi_out_port* }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_usbmidi_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.usbmidi_out_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  store %struct.snd_usb_midi* %13, %struct.snd_usb_midi** %4, align 8
  store %struct.usbmidi_out_port* null, %struct.usbmidi_out_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %70, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %14
  %19 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %20 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %34 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %42, i64 %44
  %46 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %45, i32 0, i32 1
  %47 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %46, align 8
  %48 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %49 = icmp eq %struct.snd_rawmidi_substream* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %32
  %51 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %60, i64 %62
  store %struct.usbmidi_out_port* %63, %struct.usbmidi_out_port** %5, align 8
  br label %68

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %29

68:                                               ; preds = %50, %29
  br label %69

69:                                               ; preds = %68, %18
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %14

73:                                               ; preds = %14
  %74 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %75 = icmp ne %struct.usbmidi_out_port* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = call i32 (...) @snd_BUG()
  %78 = load i32, i32* @ENXIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %101

80:                                               ; preds = %73
  %81 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %82 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @usb_autopm_get_interface(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %101

90:                                               ; preds = %80
  %91 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %92 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %93 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store %struct.usbmidi_out_port* %91, %struct.usbmidi_out_port** %95, align 8
  %96 = load i32, i32* @STATE_UNKNOWN, align 4
  %97 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %98 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %100 = call i32 @substream_open(%struct.snd_rawmidi_substream* %99, i32 1)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %90, %87, %76
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @substream_open(%struct.snd_rawmidi_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
