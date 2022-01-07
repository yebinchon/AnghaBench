; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_midi = type { i32, i32, i32, %struct.snd_emu10k1* }

@EMU10K1_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_emu10k1_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_midi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_emu10k1_midi*
  store %struct.snd_emu10k1_midi* %15, %struct.snd_emu10k1_midi** %6, align 8
  %16 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %16, i32 0, i32 3
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %17, align 8
  store %struct.snd_emu10k1* %18, %struct.snd_emu10k1** %5, align 8
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = icmp ne %struct.snd_emu10k1* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %83

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %26
  store i32 4, i32* %8, align 4
  %30 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %30, i32 0, i32 2
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %66, %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %39 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %40 = call i64 @mpu401_output_ready(%struct.snd_emu10k1* %38, %struct.snd_emu10k1_midi* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EMU10K1_MIDI_MODE_OUTPUT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %51 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %50, i8* %9, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %42
  %54 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %54, i32 0, i32 2
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %83

58:                                               ; preds = %49
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %60 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %61 = load i8, i8* %9, align 1
  %62 = call i32 @mpu401_write_data(%struct.snd_emu10k1* %59, %struct.snd_emu10k1_midi* %60, i8 zeroext %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  br label %66

65:                                               ; preds = %37
  br label %67

66:                                               ; preds = %58
  br label %34

67:                                               ; preds = %65, %34
  %68 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %68, i32 0, i32 2
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %73 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %72, i32 %75)
  br label %83

77:                                               ; preds = %26
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %79 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %78, i32 %81)
  br label %83

83:                                               ; preds = %25, %53, %77, %67
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mpu401_output_ready(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpu401_write_data(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i8 zeroext) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
