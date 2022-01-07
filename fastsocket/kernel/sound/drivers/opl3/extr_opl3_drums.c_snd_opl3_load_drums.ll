; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_load_drums.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_load_drums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32 }

@bass_op0 = common dso_local global i32 0, align 4
@bass_op1 = common dso_local global i32 0, align 4
@bass_note = common dso_local global i32 0, align 4
@hihat = common dso_local global i32 0, align 4
@snare = common dso_local global i32 0, align 4
@snare_note = common dso_local global i32 0, align 4
@tomtom = common dso_local global i32 0, align 4
@tomtom_note = common dso_local global i32 0, align 4
@cymbal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_load_drums(%struct.snd_opl3* %0) #0 {
  %2 = alloca %struct.snd_opl3*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %2, align 8
  %3 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %4 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %3, i32* @bass_op0)
  %5 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %6 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %5, i32* @bass_op1)
  %7 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %8 = call i32 @snd_opl3_drum_note_set(%struct.snd_opl3* %7, i32* @bass_note)
  %9 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %10 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %9, i32* @hihat)
  %11 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %12 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %11, i32* @snare)
  %13 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %14 = call i32 @snd_opl3_drum_note_set(%struct.snd_opl3* %13, i32* @snare_note)
  %15 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %16 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %15, i32* @tomtom)
  %17 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %18 = call i32 @snd_opl3_drum_note_set(%struct.snd_opl3* %17, i32* @tomtom_note)
  %19 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %20 = call i32 @snd_opl3_drum_voice_set(%struct.snd_opl3* %19, i32* @cymbal)
  ret void
}

declare dso_local i32 @snd_opl3_drum_voice_set(%struct.snd_opl3*, i32*) #1

declare dso_local i32 @snd_opl3_drum_note_set(%struct.snd_opl3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
