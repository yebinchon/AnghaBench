; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32* }
%struct.snd_emux_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PAN = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PITCH = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FMMOD = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FM2FRQ2 = common dso_local global i32 0, align 4
@SNDRV_MIDI_MODE_XG = common dso_local global i64 0, align 8
@EMUX_FX_CUTOFF = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_ADD = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_control(i8* %0, i32 %1, %struct.snd_midi_channel* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca %struct.snd_emux_port*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %9, %struct.snd_emux_port** %7, align 8
  %10 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %11 = icmp ne %struct.snd_emux_port* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %14 = icmp ne %struct.snd_midi_channel* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %47 [
    i32 132, label %24
    i32 133, label %24
    i32 130, label %29
    i32 128, label %34
    i32 129, label %35
    i32 131, label %40
    i32 134, label %40
  ]

24:                                               ; preds = %22, %22
  %25 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %26 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %27 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %28 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %25, %struct.snd_midi_channel* %26, i32 %27)
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %31 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %32 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %33 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %30, %struct.snd_midi_channel* %31, i32 %32)
  br label %47

34:                                               ; preds = %22
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %37 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %38 = load i32, i32* @SNDRV_EMUX_UPDATE_PITCH, align 4
  %39 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %36, %struct.snd_midi_channel* %37, i32 %38)
  br label %47

40:                                               ; preds = %22, %22
  %41 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %42 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %43 = load i32, i32* @SNDRV_EMUX_UPDATE_FMMOD, align 4
  %44 = load i32, i32* @SNDRV_EMUX_UPDATE_FM2FRQ2, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %41, %struct.snd_midi_channel* %42, i32 %45)
  br label %47

47:                                               ; preds = %22, %40, %35, %34, %29, %24
  %48 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %49 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SNDRV_MIDI_MODE_XG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %56 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @snd_emux_xg_control(%struct.snd_emux_port* %55, %struct.snd_midi_channel* %56, i32 %57)
  br label %59

59:                                               ; preds = %21, %54, %47
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emux_update_channel(%struct.snd_emux_port*, %struct.snd_midi_channel*, i32) #1

declare dso_local i32 @snd_emux_xg_control(%struct.snd_emux_port*, %struct.snd_midi_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
