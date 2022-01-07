; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_line6_midi_output_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_line6_midi_output_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }
%struct.usb_line6 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.usb_line6* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @line6_midi_output_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_midi_output_drain(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca i32*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = call %struct.TYPE_8__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream* %5)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.usb_line6*, %struct.usb_line6** %7, align 8
  store %struct.usb_line6* %8, %struct.usb_line6** %3, align 8
  %9 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %10 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, %struct.TYPE_7__* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @add_wait_queue(i32* %16, i32* @wait)
  %18 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %35, %1
  %22 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %30 = call i64 @signal_pending(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = call i32 (...) @schedule()
  br label %35

35:                                               ; preds = %33
  br label %21

36:                                               ; preds = %32, %21
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @remove_wait_queue(i32* %40, i32* @wait)
  ret void
}

declare dso_local %struct.TYPE_8__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
