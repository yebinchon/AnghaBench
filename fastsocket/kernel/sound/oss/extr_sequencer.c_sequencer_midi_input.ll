; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_sequencer_midi_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_sequencer_midi_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@seq_time = common dso_local global i32 0, align 4
@prev_input_time = common dso_local global i32 0, align 4
@SEQ_WAIT = common dso_local global i32 0, align 4
@SEQ_MIDIPUTC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @sequencer_midi_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sequencer_midi_input(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 254
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* @jiffies, align 4
  %13 = load i32, i32* @seq_time, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @prev_input_time, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* @SEQ_WAIT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = bitcast i32* %5 to i8*
  %24 = call i32 @seq_copy_to_input(i8* %23, i32 4)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* @prev_input_time, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i8, i8* @SEQ_MIDIPUTC, align 1
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* %4, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %29, i8* %30, align 1
  %31 = load i32, i32* %3, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %36 = call i32 @seq_copy_to_input(i8* %35, i32 4)
  br label %37

37:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @seq_copy_to_input(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
