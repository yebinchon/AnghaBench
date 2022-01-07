; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_all_sounds_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_all_sounds_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i32, %struct.snd_midi_channel*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel.0 = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.0*)* @all_sounds_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_sounds_off(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel.0* %2) #0 {
  %4 = alloca %struct.snd_midi_op*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_midi_channel.0*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.snd_midi_channel.0* %2, %struct.snd_midi_channel.0** %6, align 8
  %8 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %9 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %8, i32 0, i32 0
  %10 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %9, align 8
  %11 = icmp ne i32 (i8*, i32, %struct.snd_midi_channel*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %45

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %6, align 8
  %19 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %28 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %27, i32 0, i32 0
  %29 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %6, align 8
  %33 = bitcast %struct.snd_midi_channel.0* %32 to %struct.snd_midi_channel*
  %34 = call i32 %29(i8* %30, i32 %31, %struct.snd_midi_channel* %33)
  %35 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %6, align 8
  %36 = getelementptr inbounds %struct.snd_midi_channel.0, %struct.snd_midi_channel.0* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %26, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %12, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
