; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@EP1_CMD_MIDI_WRITE = common dso_local global i32 0, align 4
@EP1_BUFSIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"snd_usb_caiaq_midi_send(%p): usb_submit_urb() failed,ret=%d, len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.snd_rawmidi_substream*)* @snd_usb_caiaq_midi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_caiaq_midi_send(%struct.snd_usb_caiaqdev* %0, %struct.snd_rawmidi_substream* %1) #0 {
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %3, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %4, align 8
  %7 = load i32, i32* @EP1_CMD_MIDI_WRITE, align 4
  %8 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %9 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %17 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i64, i64* @EP1_BUFSIZE, align 8
  %22 = sub nsw i64 %21, 3
  %23 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %16, i32* %20, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %52

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 3
  %35 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %36 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %39 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %38, i32 0, i32 2
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i32 @usb_submit_urb(%struct.TYPE_2__* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.snd_rawmidi_substream* %45, i32 %46, i32 %47)
  br label %52

49:                                               ; preds = %27
  %50 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %51 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %26, %49, %44
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @log(i8*, %struct.snd_rawmidi_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
