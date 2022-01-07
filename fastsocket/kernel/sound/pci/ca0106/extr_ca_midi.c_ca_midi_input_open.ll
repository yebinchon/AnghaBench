; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_input_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ca_midi* }
%struct.snd_ca_midi = type { i32, i32, i32, i32, %struct.snd_rawmidi_substream*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@CA_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@CA_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @ca_midi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca_midi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_ca_midi*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %9, align 8
  store %struct.snd_ca_midi* %10, %struct.snd_ca_midi** %4, align 8
  %11 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* @CA_MIDI_MODE_INPUT, align 4
  %28 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %33 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %33, i32 0, i32 4
  store %struct.snd_rawmidi_substream* %32, %struct.snd_rawmidi_substream** %34, align 8
  %35 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CA_MIDI_MODE_OUTPUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %22
  %42 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %47 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ca_midi_cmd(%struct.snd_ca_midi* %46, i32 %49, i32 1)
  %51 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %52 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ca_midi_cmd(%struct.snd_ca_midi* %51, i32 %54, i32 1)
  br label %61

56:                                               ; preds = %22
  %57 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %57, i32 0, i32 1
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %41
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ca_midi_cmd(%struct.snd_ca_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
