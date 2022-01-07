; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_finish_proxy_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_finish_proxy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.hrtimer_sleeper = type { i32 }
%struct.rt_mutex_waiter = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mutex_finish_proxy_lock(%struct.rt_mutex* %0, %struct.hrtimer_sleeper* %1, %struct.rt_mutex_waiter* %2, i32 %3) #0 {
  %5 = alloca %struct.rt_mutex*, align 8
  %6 = alloca %struct.hrtimer_sleeper*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %5, align 8
  store %struct.hrtimer_sleeper* %1, %struct.hrtimer_sleeper** %6, align 8
  store %struct.rt_mutex_waiter* %2, %struct.rt_mutex_waiter** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %11 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @set_current_state(i32 %13)
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %18 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @__rt_mutex_slowlock(%struct.rt_mutex* %15, i32 %16, %struct.hrtimer_sleeper* %17, %struct.rt_mutex_waiter* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @TASK_RUNNING, align 4
  %22 = call i32 @set_current_state(i32 %21)
  %23 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %24 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %30 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %31 = call i32 @remove_waiter(%struct.rt_mutex* %29, %struct.rt_mutex_waiter* %30)
  br label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %34 = call i32 @fixup_rt_mutex_waiters(%struct.rt_mutex* %33)
  %35 = load %struct.rt_mutex*, %struct.rt_mutex** %5, align 8
  %36 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @rt_mutex_adjust_prio(i32 %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @__rt_mutex_slowlock(%struct.rt_mutex*, i32, %struct.hrtimer_sleeper*, %struct.rt_mutex_waiter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @remove_waiter(%struct.rt_mutex*, %struct.rt_mutex_waiter*) #1

declare dso_local i32 @fixup_rt_mutex_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_adjust_prio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
