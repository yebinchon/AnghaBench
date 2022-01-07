; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.echoaudio* }
%struct.echoaudio = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 (i64)* }

@.str = private unnamed_addr constant [34 x i8] c"snd_echo_midi_output_trigger(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Timer removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_echo_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_echo_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.echoaudio*, %struct.echoaudio** %9, align 8
  store %struct.echoaudio* %10, %struct.echoaudio** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @DE_MID(i8* %13)
  %15 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 3
  %28 = call i32 @init_timer(%struct.TYPE_5__* %27)
  %29 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 (i64)* @snd_echo_midi_output_write, i32 (i64)** %31, align 8
  %32 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %33 = ptrtoint %struct.echoaudio* %32 to i64
  %34 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %25, %20
  br label %56

40:                                               ; preds = %2
  %41 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %47 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %52 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %51, i32 0, i32 3
  %53 = call i32 @del_timer_sync(%struct.TYPE_5__* %52)
  %54 = call i32 @DE_MID(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %71

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %69 = ptrtoint %struct.echoaudio* %68 to i64
  %70 = call i32 @snd_echo_midi_output_write(i64 %69)
  br label %71

71:                                               ; preds = %45, %67, %62, %56
  ret void
}

declare dso_local i32 @DE_MID(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_echo_midi_output_write(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
