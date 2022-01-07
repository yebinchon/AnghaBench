; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_schedule_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_schedule_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_wqueues = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_schedule_timeout(%struct.poll_wqueues* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.poll_wqueues*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.poll_wqueues* %0, %struct.poll_wqueues** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @EINTR, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @set_current_state(i32 %12)
  %14 = load %struct.poll_wqueues*, %struct.poll_wqueues** %5, align 8
  %15 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %22 = call i32 @schedule_hrtimeout_range(i32* %19, i64 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i32, i32* @TASK_RUNNING, align 4
  %25 = call i32 @__set_current_state(i32 %24)
  %26 = load %struct.poll_wqueues*, %struct.poll_wqueues** %5, align 8
  %27 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_mb(i32 %28, i32 0)
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout_range(i32*, i64, i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @set_mb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
