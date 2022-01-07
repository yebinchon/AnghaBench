; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_input_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i64, i32, i32, %struct.snd_rawmidi_substream* }

@SB_HW_20 = common dso_local global i64 0, align 8
@SB_OPEN_MIDI_OUTPUT = common dso_local global i32 0, align 4
@SB_OPEN_MIDI_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SB_OPEN_MIDI_INPUT = common dso_local global i32 0, align 4
@SB_DSP_MIDI_UART_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_sb8dsp_midi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8dsp_midi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_sb*, %struct.snd_sb** %10, align 8
  store %struct.snd_sb* %11, %struct.snd_sb** %5, align 8
  %12 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SB_HW_20, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @SB_OPEN_MIDI_OUTPUT, align 4
  %19 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %20 = or i32 %18, %19
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %6, align 4
  %24 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %25 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %24, i32 0, i32 2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %29 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %37 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %36, i32 0, i32 2
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %80

42:                                               ; preds = %22
  %43 = load i32, i32* @SB_OPEN_MIDI_INPUT, align 4
  %44 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %45 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %49 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 3
  store %struct.snd_rawmidi_substream* %48, %struct.snd_rawmidi_substream** %50, align 8
  %51 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %52 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SB_OPEN_MIDI_OUTPUT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %42
  %58 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %59 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %58, i32 0, i32 2
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %63 = call i32 @snd_sbdsp_reset(%struct.snd_sb* %62)
  %64 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %65 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SB_HW_20, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %71 = load i32, i32* @SB_DSP_MIDI_UART_IRQ, align 4
  %72 = call i32 @snd_sbdsp_command(%struct.snd_sb* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %57
  br label %79

74:                                               ; preds = %42
  %75 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %76 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %75, i32 0, i32 2
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %73
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %35
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_reset(%struct.snd_sb*) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
