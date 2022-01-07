; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_event = type { i32 }
%struct.snd_seq_event = type { i32 }

@SNDRV_SEQ_EVENT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_midi_event_encode(%struct.snd_midi_event* %0, i8* %1, i64 %2, %struct.snd_seq_event* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_midi_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_seq_event*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.snd_seq_event* %3, %struct.snd_seq_event** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @SNDRV_SEQ_EVENT_NONE, align 4
  %13 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %14 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %40, %4
  %16 = load i64, i64* %8, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %26 = call i32 @snd_midi_event_encode_byte(%struct.snd_midi_event* %20, i32 %24, %struct.snd_seq_event* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  br label %43

34:                                               ; preds = %19
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %5, align 8
  br label %43

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  br label %15

41:                                               ; preds = %15
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i32 @snd_midi_event_encode_byte(%struct.snd_midi_event*, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
