; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_inject_sleeptime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_timekeeping_inject_sleeptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i64, i64 }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timekeeping_inject_sleeptime(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %5 = call i32 @read_persistent_clock(%struct.timespec* %4)
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  br label %24

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %15)
  %17 = call i32 (...) @timekeeping_forward_now()
  %18 = load %struct.timespec*, %struct.timespec** %2, align 8
  %19 = call i32 @__timekeeping_inject_sleeptime(%struct.timespec* %18)
  %20 = call i32 @timekeeping_update(i32 1)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %21)
  %23 = call i32 (...) @clock_was_set()
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @read_persistent_clock(%struct.timespec*) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @timekeeping_forward_now(...) #1

declare dso_local i32 @__timekeeping_inject_sleeptime(%struct.timespec*) #1

declare dso_local i32 @timekeeping_update(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clock_was_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
