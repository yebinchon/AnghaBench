; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_terminate_note1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_terminate_note1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, %struct.snd_emux_voice* }
%struct.snd_emux_voice = type { i32, %struct.snd_midi_channel*, i32 }
%struct.snd_midi_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, i32, %struct.snd_midi_channel*, i32)* @terminate_note1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_note1(%struct.snd_emux* %0, i32 %1, %struct.snd_midi_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_midi_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_emux_voice*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %13 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %12, i32 0, i32 1
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %52, %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %23, i32 0, i32 2
  %25 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %25, i64 %27
  store %struct.snd_emux_voice* %28, %struct.snd_emux_voice** %10, align 8
  %29 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %10, align 8
  %30 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @STATE_IS_PLAYING(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %22
  %35 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %10, align 8
  %36 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %35, i32 0, i32 1
  %37 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %36, align 8
  %38 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %39 = icmp eq %struct.snd_midi_channel* %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %10, align 8
  %42 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %48 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @terminate_voice(%struct.snd_emux* %47, %struct.snd_emux_voice* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %40, %34, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %56, i32 0, i32 1
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @STATE_IS_PLAYING(i32) #1

declare dso_local i32 @terminate_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
