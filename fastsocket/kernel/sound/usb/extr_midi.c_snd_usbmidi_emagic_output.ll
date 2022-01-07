; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { i32, i32, %struct.usbmidi_out_port* }
%struct.usbmidi_out_port = type { i32, i64 }
%struct.urb = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*, %struct.urb*)* @snd_usbmidi_emagic_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_emagic_output(%struct.snd_usb_midi_out_endpoint* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usbmidi_out_port*, align 8
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %12 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %101, %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %104

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = and i32 %27, 15
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %29, i32 0, i32 2
  %31 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %31, i64 %33
  store %struct.usbmidi_out_port* %34, %struct.usbmidi_out_port** %11, align 8
  %35 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %11, align 8
  %36 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  br label %101

40:                                               ; preds = %24
  %41 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %11, align 8
  %42 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @snd_rawmidi_transmit_peek(i32 %43, i32* %44, i32 1)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %11, align 8
  %49 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %101

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %53 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %104

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %63 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 245, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = and i32 %67, 15
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %60, %50
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %104

79:                                               ; preds = %75
  %80 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %11, align 8
  %81 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @snd_rawmidi_transmit(i32 %82, i32* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %104

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %79
  br label %101

101:                                              ; preds = %100, %47, %39
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %21

104:                                              ; preds = %98, %78, %59, %21
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %107 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %6, align 8
  store i32 255, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %110, %104
  %118 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %119 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load %struct.urb*, %struct.urb** %4, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit_peek(i32, i32*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
