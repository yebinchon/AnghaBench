; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_pitch_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_pitch_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32, i32, %struct.snd_opl3_voice* }
%struct.snd_opl3_voice = type { i64, %struct.snd_midi_channel* }
%struct.snd_midi_channel = type { i64 }

@SNDRV_OPL3_MODE_SEQ = common dso_local global i64 0, align 8
@MAX_OPL3_VOICES = common dso_local global i64 0, align 8
@snd_opl3_oss_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, %struct.snd_midi_channel*)* @snd_opl3_pitch_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_pitch_ctrl(%struct.snd_opl3* %0, %struct.snd_midi_channel* %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_midi_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_opl3_voice*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store %struct.snd_midi_channel* %1, %struct.snd_midi_channel** %4, align 8
  %8 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %9 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %13 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_OPL3_MODE_SEQ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %26 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %25, i32 0, i32 3
  %27 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %27, i64 %29
  store %struct.snd_opl3_voice* %30, %struct.snd_opl3_voice** %6, align 8
  %31 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %6, align 8
  %32 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %6, align 8
  %37 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %36, i32 0, i32 1
  %38 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %37, align 8
  %39 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %40 = icmp eq %struct.snd_midi_channel* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @snd_opl3_update_pitch(%struct.snd_opl3* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %18

49:                                               ; preds = %18
  br label %67

50:                                               ; preds = %2
  %51 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %52 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MAX_OPL3_VOICES, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i32*, i32** @snd_opl3_oss_map, align 8
  %58 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %59 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @snd_opl3_update_pitch(%struct.snd_opl3* %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %50
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %69 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %68, i32 0, i32 2
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_opl3_update_pitch(%struct.snd_opl3*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
