; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_snd_line6_new_midi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_snd_line6_new_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_midi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_rawmidi = type { i32, i32, i32, %struct.snd_line6_midi* }

@.str = private unnamed_addr constant [11 x i8] c"Line6 MIDI\00", align 1
@line6_cleanup_midi = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@line6_midi_output_ops = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@line6_midi_input_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_line6_midi*)* @snd_line6_new_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_new_midi(%struct.snd_line6_midi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_line6_midi*, align 8
  %4 = alloca %struct.snd_rawmidi*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_line6_midi* %0, %struct.snd_line6_midi** %3, align 8
  %6 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %3, align 8
  %7 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_rawmidi** %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %3, align 8
  %18 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %18, i32 0, i32 3
  store %struct.snd_line6_midi* %17, %struct.snd_line6_midi** %19, align 8
  %20 = load i32, i32* @line6_cleanup_midi, align 4
  %21 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %3, align 8
  %27 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %25, i32 %32)
  %34 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %35 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %42 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %43 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %41, i32 %42, i32* @line6_midi_output_ops)
  %44 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %45 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %46 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %44, i32 %45, i32* @line6_midi_input_ops)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
