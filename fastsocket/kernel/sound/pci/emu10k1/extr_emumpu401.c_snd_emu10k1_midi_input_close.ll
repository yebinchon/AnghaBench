; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_input_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_midi = type { i32, i32, i32*, i32, %struct.snd_emu10k1* }

@ENXIO = common dso_local global i32 0, align 4
@EMU10K1_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@EMU10K1_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@MPU401_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_emu10k1_midi_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_midi_input_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_midi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.snd_emu10k1_midi*
  store %struct.snd_emu10k1_midi* %13, %struct.snd_emu10k1_midi** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %14, i32 0, i32 4
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %15, align 8
  store %struct.snd_emu10k1* %16, %struct.snd_emu10k1** %4, align 8
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %18 = icmp ne %struct.snd_emu10k1* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %27, i32 0, i32 1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %32 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %31, i32 %34)
  %36 = load i32, i32* @EMU10K1_MIDI_MODE_INPUT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EMU10K1_MIDI_MODE_OUTPUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %26
  %51 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %51, i32 0, i32 1
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %56 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %57 = load i32, i32* @MPU401_RESET, align 4
  %58 = call i32 @snd_emu10k1_midi_cmd(%struct.snd_emu10k1* %55, %struct.snd_emu10k1_midi* %56, i32 %57, i32 0)
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %26
  %60 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %60, i32 0, i32 1
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_midi_cmd(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
