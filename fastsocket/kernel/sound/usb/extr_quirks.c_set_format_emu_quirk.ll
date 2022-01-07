; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_set_format_emu_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_set_format_emu_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.audioformat = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EMU_QUIRK_SR_48000HZ = common dso_local global i8 0, align 1
@EMU_QUIRK_SR_88200HZ = common dso_local global i8 0, align 1
@EMU_QUIRK_SR_96000HZ = common dso_local global i8 0, align 1
@EMU_QUIRK_SR_176400HZ = common dso_local global i8 0, align 1
@EMU_QUIRK_SR_192000HZ = common dso_local global i8 0, align 1
@EMU_QUIRK_SR_44100HZ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.audioformat*)* @set_format_emu_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_format_emu_quirk(%struct.snd_usb_substream* %0, %struct.audioformat* %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca %struct.audioformat*, align 8
  %5 = alloca i8, align 1
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store %struct.audioformat* %1, %struct.audioformat** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %48

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.audioformat*, %struct.audioformat** %4, align 8
  %26 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 48000, label %28
    i32 88200, label %30
    i32 96000, label %32
    i32 176400, label %34
    i32 192000, label %36
  ]

28:                                               ; preds = %24
  %29 = load i8, i8* @EMU_QUIRK_SR_48000HZ, align 1
  store i8 %29, i8* %5, align 1
  br label %40

30:                                               ; preds = %24
  %31 = load i8, i8* @EMU_QUIRK_SR_88200HZ, align 1
  store i8 %31, i8* %5, align 1
  br label %40

32:                                               ; preds = %24
  %33 = load i8, i8* @EMU_QUIRK_SR_96000HZ, align 1
  store i8 %33, i8* %5, align 1
  br label %40

34:                                               ; preds = %24
  %35 = load i8, i8* @EMU_QUIRK_SR_176400HZ, align 1
  store i8 %35, i8* %5, align 1
  br label %40

36:                                               ; preds = %24
  %37 = load i8, i8* @EMU_QUIRK_SR_192000HZ, align 1
  store i8 %37, i8* %5, align 1
  br label %40

38:                                               ; preds = %24
  %39 = load i8, i8* @EMU_QUIRK_SR_44100HZ, align 1
  store i8 %39, i8* %5, align 1
  br label %40

40:                                               ; preds = %38, %36, %34, %32, %30, %28
  %41 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @snd_emuusb_set_samplerate(i32 %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @snd_emuusb_set_samplerate(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
