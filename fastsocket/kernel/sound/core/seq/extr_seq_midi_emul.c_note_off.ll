; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_note_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_note_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i32, i32, %struct.snd_midi_channel*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel.0 = type { i32*, i64 }

@SNDRV_MIDI_NOTE_RELEASED = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_SOSTENUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.0*, i32, i32)* @note_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_off(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel.0* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_midi_op*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_midi_channel.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.snd_midi_channel.0* %2, %struct.snd_midi_channel.0** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %12 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %17 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %18 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %16
  store i32 %24, i32* %22, align 4
  br label %69

25:                                               ; preds = %5
  %26 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %27 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SNDRV_MIDI_NOTE_SOSTENUTO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32, i32* @SNDRV_MIDI_NOTE_RELEASED, align 4
  %38 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %39 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %68

46:                                               ; preds = %25
  %47 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %48 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load %struct.snd_midi_op*, %struct.snd_midi_op** %6, align 8
  %54 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %53, i32 0, i32 0
  %55 = load i32 (i8*, i32, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel*)** %54, align 8
  %56 = icmp ne i32 (i8*, i32, i32, %struct.snd_midi_channel*)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.snd_midi_op*, %struct.snd_midi_op** %6, align 8
  %59 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %58, i32 0, i32 0
  %60 = load i32 (i8*, i32, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, i32, %struct.snd_midi_channel*)** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %8, align 8
  %65 = bitcast %struct.snd_midi_channel.0* %64 to %struct.snd_midi_channel*
  %66 = call i32 %60(i8* %61, i32 %62, i32 %63, %struct.snd_midi_channel* %65)
  br label %67

67:                                               ; preds = %57, %46
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
