; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ca_midi* }
%struct.snd_ca_midi = type { i32, i32, i32 (%struct.snd_ca_midi*, i32)*, i32 (%struct.snd_ca_midi*, i32)*, i32, i32 }

@CA_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @ca_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ca_midi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %12, align 8
  store %struct.snd_ca_midi* %13, %struct.snd_ca_midi** %5, align 8
  %14 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %84

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  store i32 4, i32* %7, align 4
  %27 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %61, %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %36 = call i64 @ca_midi_output_ready(%struct.snd_ca_midi* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CA_MIDI_MODE_OUTPUT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %47 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %46, i8* %8, i32 1)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %38
  %50 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %51 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %50, i32 0, i32 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %84

54:                                               ; preds = %45
  %55 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %56 = load i8, i8* %8, align 1
  %57 = call i32 @ca_midi_write_data(%struct.snd_ca_midi* %55, i8 zeroext %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %34
  br label %62

61:                                               ; preds = %54
  br label %31

62:                                               ; preds = %60, %31
  %63 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %64 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %63, i32 0, i32 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %67, i32 0, i32 3
  %69 = load i32 (%struct.snd_ca_midi*, i32)*, i32 (%struct.snd_ca_midi*, i32)** %68, align 8
  %70 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %71 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %72 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %69(%struct.snd_ca_midi* %70, i32 %73)
  br label %84

75:                                               ; preds = %23
  %76 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %77 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %76, i32 0, i32 2
  %78 = load i32 (%struct.snd_ca_midi*, i32)*, i32 (%struct.snd_ca_midi*, i32)** %77, align 8
  %79 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %80 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %78(%struct.snd_ca_midi* %79, i32 %82)
  br label %84

84:                                               ; preds = %22, %49, %75, %62
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ca_midi_output_ready(%struct.snd_ca_midi*) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ca_midi_write_data(%struct.snd_ca_midi*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
