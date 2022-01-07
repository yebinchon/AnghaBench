; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qlen = common dso_local global i64 0, align 8
@SEQ_MAX_QUEUE = common dso_local global i64 0, align 8
@seq_playing = common dso_local global i32 0, align 4
@seq_sleeper = common dso_local global i32 0, align 4
@queue = common dso_local global i32* null, align 8
@qtail = common dso_local global i64 0, align 8
@EV_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @seq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_queue(i8* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i64, i64* @qlen, align 8
  %7 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @seq_playing, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (...) @seq_startplay()
  br label %14

14:                                               ; preds = %12, %9
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i8, i8* %5, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @qlen, align 8
  %20 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = call i32 @waitqueue_active(i32* @seq_sleeper)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @interruptible_sleep_on(i32* @seq_sleeper)
  br label %27

27:                                               ; preds = %25, %22, %18, %15
  %28 = load i64, i64* @qlen, align 8
  %29 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %47

32:                                               ; preds = %27
  %33 = load i32*, i32** @queue, align 8
  %34 = load i64, i64* @qtail, align 8
  %35 = load i64, i64* @EV_SZ, align 8
  %36 = mul i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* @EV_SZ, align 8
  %40 = call i32 @memcpy(i32* %37, i8* %38, i64 %39)
  %41 = load i64, i64* @qtail, align 8
  %42 = add i64 %41, 1
  %43 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %44 = urem i64 %42, %43
  store i64 %44, i64* @qtail, align 8
  %45 = load i64, i64* @qlen, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @qlen, align 8
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @seq_startplay(...) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
