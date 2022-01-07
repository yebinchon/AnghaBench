; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_startplay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_startplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qlen = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@qhead = common dso_local global i32 0, align 4
@SEQ_MAX_QUEUE = common dso_local global i32 0, align 4
@seq_playing = common dso_local global i32 0, align 4
@queue = common dso_local global i32* null, align 8
@EV_SZ = common dso_local global i32 0, align 4
@output_threshold = common dso_local global i32 0, align 4
@seq_sleeper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @seq_startplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_startplay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i32, i32* @qlen, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @lock, i64 %8)
  %10 = load i32, i32* @qhead, align 4
  store i32 %10, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* @SEQ_MAX_QUEUE, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* @qhead, align 4
  %14 = load i32, i32* @qlen, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @qlen, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %16)
  store i32 1, i32* @seq_playing, align 4
  %18 = load i32*, i32** @queue, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @EV_SZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = call i32 @play_event(i32* %23)
  store i32 %24, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %7
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @qlen, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @qlen, align 4
  %32 = load i32, i32* %1, align 4
  store i32 %32, i32* @qhead, align 4
  br label %33

33:                                               ; preds = %29, %26
  br label %43

34:                                               ; preds = %7
  br label %4

35:                                               ; preds = %4
  store i32 0, i32* @seq_playing, align 4
  %36 = load i32, i32* @SEQ_MAX_QUEUE, align 4
  %37 = load i32, i32* @qlen, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @output_threshold, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @wake_up(i32* @seq_sleeper)
  br label %43

43:                                               ; preds = %33, %41, %35
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @play_event(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
