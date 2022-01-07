; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_event_process_midi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_event_process_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, i32 }
%struct.seq_midisynth = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_rawmidi_substream* }
%struct.snd_rawmidi_substream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"seq_midi: invalid sysex event flags = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, i32, i8*, i32, i32)* @event_process_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_process_midi(%struct.snd_seq_event* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.seq_midisynth*, align 8
  %13 = alloca [10 x i8], align 1
  %14 = alloca %struct.snd_rawmidi_substream*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %17, %struct.seq_midisynth** %12, align 8
  %18 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %19 = icmp ne %struct.seq_midisynth* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %95

27:                                               ; preds = %5
  %28 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %29 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %30, align 8
  store %struct.snd_rawmidi_substream* %31, %struct.snd_rawmidi_substream** %14, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %14, align 8
  %33 = icmp eq %struct.snd_rawmidi_substream* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %95

37:                                               ; preds = %27
  %38 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %39 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SNDRV_SEQ_EVENT_SYSEX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %45 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %53 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_printd(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  br label %95

56:                                               ; preds = %43
  %57 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %58 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %14, align 8
  %59 = call i32 @snd_seq_dump_var_event(%struct.snd_seq_event* %57, i32 ptrtoint (i64 (%struct.snd_rawmidi_substream*, i8*, i32)* @dump_midi to i32), %struct.snd_rawmidi_substream* %58)
  %60 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %61 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @snd_midi_event_reset_decode(i32* %62)
  br label %94

64:                                               ; preds = %37
  %65 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %66 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %95

72:                                               ; preds = %64
  %73 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %74 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %77 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %78 = call i32 @snd_midi_event_decode(i32* %75, i8* %76, i32 10, %struct.snd_seq_event* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %95

82:                                               ; preds = %72
  %83 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %14, align 8
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @dump_midi(%struct.snd_rawmidi_substream* %83, i8* %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.seq_midisynth*, %struct.seq_midisynth** %12, align 8
  %90 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @snd_midi_event_reset_decode(i32* %91)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %56
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %81, %69, %51, %34, %24
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_printd(i8*, i32) #1

declare dso_local i32 @snd_seq_dump_var_event(%struct.snd_seq_event*, i32, %struct.snd_rawmidi_substream*) #1

declare dso_local i64 @dump_midi(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_midi_event_reset_decode(i32*) #1

declare dso_local i32 @snd_midi_event_decode(i32*, i8*, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
