; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_midi_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_midi_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i64, %struct.seq_midisynth* }
%struct.seq_midisynth = type { i32, i32, i32* }
%struct.snd_seq_event = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @snd_midi_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_midi_input_event(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_rawmidi_runtime*, align 8
  %4 = alloca %struct.seq_midisynth*, align 8
  %5 = alloca %struct.snd_seq_event, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %11 = icmp eq %struct.snd_rawmidi_substream* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %15, align 8
  store %struct.snd_rawmidi_runtime* %16, %struct.snd_rawmidi_runtime** %3, align 8
  %17 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %17, i32 0, i32 1
  %19 = load %struct.seq_midisynth*, %struct.seq_midisynth** %18, align 8
  store %struct.seq_midisynth* %19, %struct.seq_midisynth** %4, align 8
  %20 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %21 = icmp eq %struct.seq_midisynth* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %85

23:                                               ; preds = %13
  %24 = call i32 @memset(%struct.snd_seq_event* %5, i32 0, i32 16)
  br label %25

25:                                               ; preds = %84, %42, %36, %23
  %26 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %3, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %85

30:                                               ; preds = %25
  %31 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %33 = call i64 @snd_rawmidi_kernel_read(%struct.snd_rawmidi_substream* %31, i8* %32, i32 16)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %25

37:                                               ; preds = %30
  %38 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %39 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %25

43:                                               ; preds = %37
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %44, i8** %7, align 8
  br label %45

45:                                               ; preds = %83, %43
  %46 = load i64, i64* %8, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %50 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @snd_midi_event_encode(i32* %51, i8* %52, i64 %53, %struct.snd_seq_event* %5)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %84

58:                                               ; preds = %48
  %59 = load i64, i64* %9, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %71 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %5, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %76 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %5, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %79 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @snd_seq_kernel_client_dispatch(i32 %80, %struct.snd_seq_event* %5, i32 1, i32 0)
  %82 = call i32 @memset(%struct.snd_seq_event* %5, i32 0, i32 16)
  br label %83

83:                                               ; preds = %69, %58
  br label %45

84:                                               ; preds = %57, %45
  br label %25

85:                                               ; preds = %12, %22, %25
  ret void
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i64 @snd_rawmidi_kernel_read(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i64 @snd_midi_event_encode(i32*, i8*, i64, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
