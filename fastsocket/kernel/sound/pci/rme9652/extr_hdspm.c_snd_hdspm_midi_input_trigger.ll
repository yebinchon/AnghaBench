; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hdspm_midi* }
%struct.hdspm_midi = type { i64, %struct.hdspm* }
%struct.hdspm = type { i32, i32 }

@HDSPM_Midi1InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_hdspm_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca %struct.hdspm_midi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hdspm_midi*, %struct.hdspm_midi** %12, align 8
  store %struct.hdspm_midi* %13, %struct.hdspm_midi** %6, align 8
  %14 = load %struct.hdspm_midi*, %struct.hdspm_midi** %6, align 8
  %15 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %14, i32 0, i32 1
  %16 = load %struct.hdspm*, %struct.hdspm** %15, align 8
  store %struct.hdspm* %16, %struct.hdspm** %5, align 8
  %17 = load %struct.hdspm_midi*, %struct.hdspm_midi** %6, align 8
  %18 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @HDSPM_Midi1InterruptEnable, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @HDSPM_Midi0InterruptEnable, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  %34 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %35 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %42 = load %struct.hdspm_midi*, %struct.hdspm_midi** %6, align 8
  %43 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @snd_hdspm_flush_midi_input(%struct.hdspm* %41, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %48 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %40, %33
  br label %59

52:                                               ; preds = %25
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %56 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %51
  %60 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %61 = load i32, i32* @HDSPM_controlRegister, align 4
  %62 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %63 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hdspm_write(%struct.hdspm* %60, i32 %61, i32 %64)
  %66 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %67 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %66, i32 0, i32 1
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_hdspm_flush_midi_input(%struct.hdspm*, i64) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
