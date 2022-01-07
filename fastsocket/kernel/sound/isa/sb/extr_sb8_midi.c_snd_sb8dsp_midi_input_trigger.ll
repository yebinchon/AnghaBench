; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i32, i64, i32 }

@SB_OPEN_MIDI_INPUT_TRIGGER = common dso_local global i32 0, align 4
@SB_HW_20 = common dso_local global i64 0, align 8
@SB_DSP_MIDI_INPUT_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_sb8dsp_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb8dsp_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_sb*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_sb*, %struct.snd_sb** %10, align 8
  store %struct.snd_sb* %11, %struct.snd_sb** %6, align 8
  %12 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %20 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SB_OPEN_MIDI_INPUT_TRIGGER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %18
  %26 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SB_HW_20, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %33 = load i32, i32* @SB_DSP_MIDI_INPUT_IRQ, align 4
  %34 = call i32 @snd_sbdsp_command(%struct.snd_sb* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @SB_OPEN_MIDI_INPUT_TRIGGER, align 4
  %37 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %38 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %18
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %44 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SB_OPEN_MIDI_INPUT_TRIGGER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %51 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SB_HW_20, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %57 = load i32, i32* @SB_DSP_MIDI_INPUT_IRQ, align 4
  %58 = call i32 @snd_sbdsp_command(%struct.snd_sb* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* @SB_OPEN_MIDI_INPUT_TRIGGER, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %63 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %42
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %69 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %68, i32 0, i32 2
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
