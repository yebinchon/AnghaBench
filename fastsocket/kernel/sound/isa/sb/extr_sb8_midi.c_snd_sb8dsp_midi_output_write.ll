; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i64, i32, i32, i32 }

@SB_OPEN_MIDI_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@SB_HW_20 = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@SB_DSP_MIDI_OUTPUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @snd_sb8dsp_midi_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb8dsp_midi_output_write(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  store i32 32, i32* %6, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_sb*, %struct.snd_sb** %11, align 8
  store %struct.snd_sb* %12, %struct.snd_sb** %4, align 8
  br label %13

13:                                               ; preds = %81, %1
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %19 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %23 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %22, i8* %5, i32 1)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load i32, i32* @SB_OPEN_MIDI_OUTPUT_TRIGGER, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %29 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %33 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %32, i32 0, i32 2
  %34 = call i32 @del_timer(i32* %33)
  %35 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %36 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %35, i32 0, i32 1
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %88

39:                                               ; preds = %17
  %40 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %41 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SB_HW_20, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  store i32 8, i32* %7, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %48 = load i32, i32* @STATUS, align 4
  %49 = call i32 @SBP(%struct.snd_sb* %47, i32 %48)
  %50 = call i32 @inb(i32 %49)
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i1 [ false, %46 ], [ %56, %53 ]
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %46

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %65 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %64, i32 0, i32 1
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %88

68:                                               ; preds = %60
  %69 = load i8, i8* %5, align 1
  %70 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %71 = load i32, i32* @WRITE, align 4
  %72 = call i32 @SBP(%struct.snd_sb* %70, i32 %71)
  %73 = call i32 @outb(i8 signext %69, i32 %72)
  br label %81

74:                                               ; preds = %39
  %75 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %76 = load i8, i8* @SB_DSP_MIDI_OUTPUT, align 1
  %77 = call i32 @snd_sbdsp_command(%struct.snd_sb* %75, i8 signext %76)
  %78 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %79 = load i8, i8* %5, align 1
  %80 = call i32 @snd_sbdsp_command(%struct.snd_sb* %78, i8 signext %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %83 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %82, i32 1)
  %84 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %85 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %84, i32 0, i32 1
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %13

88:                                               ; preds = %63, %25, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SBP(%struct.snd_sb*, i32) #1

declare dso_local i32 @outb(i8 signext, i32) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i8 signext) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
