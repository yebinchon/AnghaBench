; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@SB_OPEN_MIDI_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_output_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_sb8dsp_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb8dsp_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_sb*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.snd_sb*, %struct.snd_sb** %10, align 8
  store %struct.snd_sb* %11, %struct.snd_sb** %6, align 8
  %12 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %20 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %18
  %26 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 2
  %28 = call i32 @init_timer(%struct.TYPE_5__* %27)
  %29 = load i32, i32* @snd_sb8dsp_midi_output_timer, align 4
  %30 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %31 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %34 = ptrtoint %struct.snd_rawmidi_substream* %33 to i64
  %35 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %36 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = add nsw i64 1, %38
  %40 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %41 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %44 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %43, i32 0, i32 2
  %45 = call i32 @add_timer(%struct.TYPE_5__* %44)
  %46 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %47 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %48 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %25, %18
  br label %67

52:                                               ; preds = %2
  %53 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %54 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %63 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %69 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %76 = call i32 @snd_sb8dsp_midi_output_write(%struct.snd_rawmidi_substream* %75)
  br label %77

77:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_sb8dsp_midi_output_write(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
