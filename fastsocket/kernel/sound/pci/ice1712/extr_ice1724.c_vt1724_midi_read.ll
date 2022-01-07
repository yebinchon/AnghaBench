; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_vt1724_midi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@MPU_RXFIFO = common dso_local global i32 0, align 4
@MPU_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @vt1724_midi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt1724_midi_read(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8*], align 16
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %8 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %9 = call %struct.snd_rawmidi_substream* @get_rawmidi_substream(%struct.snd_ice1712* %7, i32 %8)
  store %struct.snd_rawmidi_substream* %9, %struct.snd_rawmidi_substream** %3, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %11 = load i32, i32* @MPU_RXFIFO, align 4
  %12 = call i32 @ICEREG1724(%struct.snd_ice1712* %10, i32 %11)
  %13 = call i8* @inb(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @min(i32 %18, i32 32)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %26 = load i32, i32* @MPU_DATA, align 4
  %27 = call i32 @ICEREG1724(%struct.snd_ice1712* %25, i32 %26)
  %28 = call i8* @inb(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 %30
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %37 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %36, i8** %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @get_rawmidi_substream(%struct.snd_ice1712*, i32) #1

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
