; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_snd_emux_nrpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_snd_emux_nrpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32* }
%struct.snd_midi_channel_set = type { i32 }
%struct.snd_emux_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MIDI_CTL_NONREG_PARM_NUM_MSB = common dso_local global i64 0, align 8
@MIDI_CTL_NONREG_PARM_NUM_LSB = common dso_local global i64 0, align 8
@MIDI_CTL_MSB_DATA_ENTRY = common dso_local global i64 0, align 8
@MIDI_CTL_LSB_DATA_ENTRY = common dso_local global i64 0, align 8
@awe_effects = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_SET = common dso_local global i32 0, align 4
@SNDRV_MIDI_MODE_GS = common dso_local global i64 0, align 8
@gs_effects = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_nrpn(i8* %0, %struct.snd_midi_channel* %1, %struct.snd_midi_channel_set* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_midi_channel*, align 8
  %6 = alloca %struct.snd_midi_channel_set*, align 8
  %7 = alloca %struct.snd_emux_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snd_midi_channel* %1, %struct.snd_midi_channel** %5, align 8
  store %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel_set** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %11, %struct.snd_emux_port** %7, align 8
  %12 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %13 = icmp ne %struct.snd_emux_port* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %16 = icmp ne %struct.snd_midi_channel* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %107

24:                                               ; preds = %18
  %25 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %26 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_MSB, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 127
  br i1 %31, label %32, label %71

32:                                               ; preds = %24
  %33 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %34 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_LSB, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 26
  br i1 %39, label %40, label %71

40:                                               ; preds = %32
  %41 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %42 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MIDI_CTL_MSB_DATA_ENTRY, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 7
  %48 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %49 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @MIDI_CTL_LSB_DATA_ENTRY, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %47, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 8192
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @awe_effects, align 4
  %58 = load i32, i32* @awe_effects, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %61 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %62 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %63 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_LSB, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @EMUX_FX_FLAG_SET, align 4
  %70 = call i32 @send_converted_effect(i32 %57, i32 %59, %struct.snd_emux_port* %60, %struct.snd_midi_channel* %61, i32 %67, i32 %68, i32 %69)
  br label %107

71:                                               ; preds = %32, %24
  %72 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %73 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SNDRV_MIDI_MODE_GS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %71
  %79 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %80 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_MSB, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %107

86:                                               ; preds = %78
  %87 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %88 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @MIDI_CTL_MSB_DATA_ENTRY, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @gs_effects, align 4
  %94 = load i32, i32* @gs_effects, align 4
  %95 = call i32 @ARRAY_SIZE(i32 %94)
  %96 = load %struct.snd_emux_port*, %struct.snd_emux_port** %7, align 8
  %97 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %98 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %99 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_LSB, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @EMUX_FX_FLAG_ADD, align 4
  %106 = call i32 @send_converted_effect(i32 %93, i32 %95, %struct.snd_emux_port* %96, %struct.snd_midi_channel* %97, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %23, %40, %86, %78, %71
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @send_converted_effect(i32, i32, %struct.snd_emux_port*, %struct.snd_midi_channel*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
