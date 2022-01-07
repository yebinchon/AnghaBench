; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@MPU_TXFIFO = common dso_local global i32 0, align 4
@MPU_DATA = common dso_local global i32 0, align 4
@VT1724_IRQ_MPU_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @vt1724_midi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1724_midi_write(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i32], align 16
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %8 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %9 = call %struct.snd_rawmidi_substream* @get_rawmidi_substream(%struct.snd_ice1712* %7, i32 %8)
  store %struct.snd_rawmidi_substream* %9, %struct.snd_rawmidi_substream** %3, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %11 = load i32, i32* @MPU_TXFIFO, align 4
  %12 = call i32 @ICEREG1724(%struct.snd_ice1712* %10, i32 %11)
  %13 = call i32 @inb(i32 %12)
  %14 = sub nsw i32 31, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %18, i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %35, %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %32 = load i32, i32* @MPU_DATA, align 4
  %33 = call i32 @ICEREG1724(%struct.snd_ice1712* %31, i32 %32)
  %34 = call i32 @outb(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %41 = load i32, i32* @VT1724_IRQ_MPU_TX, align 4
  %42 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %43 = call i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @enable_midi_irq(%struct.snd_ice1712* %40, i32 %41, i32 %46)
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @get_rawmidi_substream(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @enable_midi_irq(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_empty(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
