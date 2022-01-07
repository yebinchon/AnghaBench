; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32, i32 }

@VT1724_IRQ_MPU_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @vt1724_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1724_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %22 = call i32 @vt1724_midi_write(%struct.snd_ice1712* %21)
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %27 = load i32, i32* @VT1724_IRQ_MPU_TX, align 4
  %28 = call i32 @enable_midi_irq(%struct.snd_ice1712* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vt1724_midi_write(%struct.snd_ice1712*) #1

declare dso_local i32 @enable_midi_irq(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
