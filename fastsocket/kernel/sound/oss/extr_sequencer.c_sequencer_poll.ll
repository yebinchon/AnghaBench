; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_sequencer_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_sequencer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@lock = common dso_local global i32 0, align 4
@midi_sleeper = common dso_local global i32 0, align 4
@iqlen = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@seq_sleeper = common dso_local global i32 0, align 4
@SEQ_MAX_QUEUE = common dso_local global i64 0, align 8
@qlen = common dso_local global i64 0, align 8
@output_threshold = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_poll(i32 %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @lock, i64 %11)
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @poll_wait(%struct.file* %13, i32* @midi_sleeper, i32* %14)
  %16 = load i64, i64* @iqlen, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @POLLIN, align 4
  %20 = load i32, i32* @POLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @poll_wait(%struct.file* %25, i32* @seq_sleeper, i32* %26)
  %28 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %29 = load i64, i64* @qlen, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* @output_threshold, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* @POLLOUT, align 4
  %35 = load i32, i32* @POLLWRNORM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
