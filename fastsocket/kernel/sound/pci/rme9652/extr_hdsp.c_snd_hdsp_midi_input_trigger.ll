; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hdsp = type { i32, i32, i32 }
%struct.hdsp_midi = type { i64, %struct.hdsp* }

@HDSP_Midi1InterruptEnable = common dso_local global i32 0, align 4
@HDSP_Midi0InterruptEnable = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_hdsp_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdsp_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca %struct.hdsp_midi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hdsp_midi*
  store %struct.hdsp_midi* %14, %struct.hdsp_midi** %6, align 8
  %15 = load %struct.hdsp_midi*, %struct.hdsp_midi** %6, align 8
  %16 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %15, i32 0, i32 1
  %17 = load %struct.hdsp*, %struct.hdsp** %16, align 8
  store %struct.hdsp* %17, %struct.hdsp** %5, align 8
  %18 = load %struct.hdsp_midi*, %struct.hdsp_midi** %6, align 8
  %19 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @HDSP_Midi1InterruptEnable, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @HDSP_Midi0InterruptEnable, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %36 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %34
  %42 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %43 = load %struct.hdsp_midi*, %struct.hdsp_midi** %6, align 8
  %44 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @snd_hdsp_flush_midi_input(%struct.hdsp* %42, i64 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %49 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %34
  br label %63

53:                                               ; preds = %26
  %54 = load i32, i32* %8, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %57 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 2
  %62 = call i32 @tasklet_kill(i32* %61)
  br label %63

63:                                               ; preds = %53, %52
  %64 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %65 = load i32, i32* @HDSP_controlRegister, align 4
  %66 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hdsp_write(%struct.hdsp* %64, i32 %65, i32 %68)
  %70 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %71 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %70, i32 0, i32 1
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_hdsp_flush_midi_input(%struct.hdsp*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
