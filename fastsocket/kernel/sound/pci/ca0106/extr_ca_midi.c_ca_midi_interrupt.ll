; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca_midi.c_ca_midi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca_midi = type { i32, i32, i32, i32, i32, i32, i32 (%struct.snd_ca_midi*, i32)*, i64, i32, i64, i32* }

@CA_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca_midi*, i32)* @ca_midi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca_midi_interrupt(%struct.snd_ca_midi* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ca_midi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.snd_ca_midi* %0, %struct.snd_ca_midi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %6, i32 0, i32 10
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %11, i32 0, i32 6
  %13 = load i32 (%struct.snd_ca_midi*, i32)*, i32 (%struct.snd_ca_midi*, i32)** %12, align 8
  %14 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %15 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %19 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = call i32 %13(%struct.snd_ca_midi* %14, i32 %21)
  br label %107

23:                                               ; preds = %2
  %24 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %24, i32 0, i32 8
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %23
  %34 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %35 = call i64 @ca_midi_input_avail(%struct.snd_ca_midi* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CA_MIDI_MODE_INPUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %46 = call i32 @ca_midi_clear_rx(%struct.snd_ca_midi* %45)
  br label %60

47:                                               ; preds = %37
  %48 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %49 = call zeroext i8 @ca_midi_read_data(%struct.snd_ca_midi* %48)
  store i8 %49, i8* %5, align 1
  %50 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %51 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %56 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @snd_rawmidi_receive(i64 %57, i8* %5, i32 1)
  br label %59

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %33, %23
  %62 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %62, i32 0, i32 8
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %65, i32 0, i32 5
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %70 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %61
  %75 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %76 = call i64 @ca_midi_output_ready(%struct.snd_ca_midi* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %80 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %85 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @snd_rawmidi_transmit(i64 %86, i8* %5, i32 1)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %91 = load i8, i8* %5, align 1
  %92 = call i32 @ca_midi_write_data(%struct.snd_ca_midi* %90, i8 zeroext %91)
  br label %102

93:                                               ; preds = %83, %78
  %94 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %95 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %94, i32 0, i32 6
  %96 = load i32 (%struct.snd_ca_midi*, i32)*, i32 (%struct.snd_ca_midi*, i32)** %95, align 8
  %97 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %98 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %96(%struct.snd_ca_midi* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %89
  br label %103

103:                                              ; preds = %102, %74, %61
  %104 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %3, align 8
  %105 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %104, i32 0, i32 5
  %106 = call i32 @spin_unlock(i32* %105)
  br label %107

107:                                              ; preds = %103, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ca_midi_input_avail(%struct.snd_ca_midi*) #1

declare dso_local i32 @ca_midi_clear_rx(%struct.snd_ca_midi*) #1

declare dso_local zeroext i8 @ca_midi_read_data(%struct.snd_ca_midi*) #1

declare dso_local i32 @snd_rawmidi_receive(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ca_midi_output_ready(%struct.snd_ca_midi*) #1

declare dso_local i32 @snd_rawmidi_transmit(i64, i8*, i32) #1

declare dso_local i32 @ca_midi_write_data(%struct.snd_ca_midi*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
