; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_line6_midi_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_line6_midi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32 }
%struct.usb_line6 = type { i32, %struct.snd_line6_midi* }
%struct.snd_line6_midi = type { i32, i32, %struct.MidiBuffer }
%struct.MidiBuffer = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_line6* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @line6_midi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_midi_transmit(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.snd_line6_midi*, align 8
  %5 = alloca %struct.MidiBuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %12 = call %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_line6*, %struct.usb_line6** %13, align 8
  store %struct.usb_line6* %14, %struct.usb_line6** %3, align 8
  %15 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %16 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %15, i32 0, i32 1
  %17 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %16, align 8
  store %struct.snd_line6_midi* %17, %struct.snd_line6_midi** %4, align 8
  %18 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %4, align 8
  %19 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %18, i32 0, i32 2
  store %struct.MidiBuffer* %19, %struct.MidiBuffer** %5, align 8
  %20 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %21 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %26 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %27 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %26, i32 0, i32 1
  %28 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %27, align 8
  %29 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %45, %1
  %33 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %34 = call i32 @midibuf_bytes_free(%struct.MidiBuffer* %33)
  %35 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %36 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @min(i32 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %39, i8* %25, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @midibuf_write(%struct.MidiBuffer* %46, i8* %25, i32 %47)
  %49 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %49, i32 %50)
  br label %32

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %70, %69, %52
  %54 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %55 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %56 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @midibuf_read(%struct.MidiBuffer* %54, i8* %25, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %74

62:                                               ; preds = %53
  %63 = load %struct.MidiBuffer*, %struct.MidiBuffer** %5, align 8
  %64 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %4, align 8
  %65 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @midibuf_skip_message(%struct.MidiBuffer* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %53

70:                                               ; preds = %62
  %71 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @send_midi_async(%struct.usb_line6* %71, i8* %25, i32 %72)
  br label %53

74:                                               ; preds = %61
  %75 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %76 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %75, i32 0, i32 1
  %77 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %76, align 8
  %78 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

declare dso_local %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @midibuf_bytes_free(%struct.MidiBuffer*) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @midibuf_write(%struct.MidiBuffer*, i8*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @midibuf_read(%struct.MidiBuffer*, i8*, i32) #1

declare dso_local i64 @midibuf_skip_message(%struct.MidiBuffer*, i32) #1

declare dso_local i32 @send_midi_async(%struct.usb_line6*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
