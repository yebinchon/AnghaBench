; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_output_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime*, %struct.TYPE_2__* }
%struct.snd_rawmidi_runtime = type { %struct.snd_virmidi* }
%struct.snd_virmidi = type { %struct.snd_virmidi_dev*, i32, i32, i32, i32, i32, %struct.snd_rawmidi_substream* }
%struct.snd_virmidi_dev = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.snd_virmidi_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_MIDI_EVENT_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_virmidi_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_virmidi_dev*, align 8
  %5 = alloca %struct.snd_rawmidi_runtime*, align 8
  %6 = alloca %struct.snd_virmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %10, align 8
  store %struct.snd_virmidi_dev* %11, %struct.snd_virmidi_dev** %4, align 8
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %13, align 8
  store %struct.snd_rawmidi_runtime* %14, %struct.snd_rawmidi_runtime** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_virmidi* @kzalloc(i32 40, i32 %15)
  store %struct.snd_virmidi* %16, %struct.snd_virmidi** %6, align 8
  %17 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %18 = icmp eq %struct.snd_virmidi* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %24 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %25 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %24, i32 0, i32 6
  store %struct.snd_rawmidi_substream* %23, %struct.snd_rawmidi_substream** %25, align 8
  %26 = load i32, i32* @MAX_MIDI_EVENT_BUF, align 4
  %27 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %28 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %27, i32 0, i32 5
  %29 = call i64 @snd_midi_event_new(i32 %26, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %33 = call i32 @kfree(%struct.snd_virmidi* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %62

36:                                               ; preds = %22
  %37 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %38 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %41 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %43 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %46 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %48 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %51 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %53 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %54 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %53, i32 0, i32 1
  %55 = call i32 @snd_virmidi_init_event(%struct.snd_virmidi* %52, i32* %54)
  %56 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %57 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %58 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %57, i32 0, i32 0
  store %struct.snd_virmidi_dev* %56, %struct.snd_virmidi_dev** %58, align 8
  %59 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %60, i32 0, i32 0
  store %struct.snd_virmidi* %59, %struct.snd_virmidi** %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %36, %31, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.snd_virmidi* @kzalloc(i32, i32) #1

declare dso_local i64 @snd_midi_event_new(i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_virmidi*) #1

declare dso_local i32 @snd_virmidi_init_event(%struct.snd_virmidi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
