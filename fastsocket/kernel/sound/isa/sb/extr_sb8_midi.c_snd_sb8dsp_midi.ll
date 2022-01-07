; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, %struct.snd_rawmidi*, i32 }
%struct.snd_rawmidi = type { i32, %struct.snd_sb*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"SB8 MIDI\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SB_HW_20 = common dso_local global i64 0, align 8
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_midi(%struct.snd_sb* %0, i32 %1, %struct.snd_rawmidi** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi**, align 8
  %8 = alloca %struct.snd_rawmidi*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_rawmidi** %2, %struct.snd_rawmidi*** %7, align 8
  %10 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  %11 = icmp ne %struct.snd_rawmidi** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* null, %struct.snd_rawmidi** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %16 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_rawmidi_new(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 1, i32 1, %struct.snd_rawmidi** %8)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %14
  %24 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %29 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %30 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %28, i32 %29, i32* @snd_sb8dsp_midi_output)
  %31 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %32 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %33 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %31, i32 %32, i32* @snd_sb8dsp_midi_input)
  %34 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %35 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %38 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SB_HW_20, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %48 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %23
  %53 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %54 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %55 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %54, i32 0, i32 1
  store %struct.snd_sb* %53, %struct.snd_sb** %55, align 8
  %56 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %57 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %58 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %57, i32 0, i32 1
  store %struct.snd_rawmidi* %56, %struct.snd_rawmidi** %58, align 8
  %59 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  %60 = icmp ne %struct.snd_rawmidi** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %63 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* %62, %struct.snd_rawmidi** %63, align 8
  br label %64

64:                                               ; preds = %61, %52
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
