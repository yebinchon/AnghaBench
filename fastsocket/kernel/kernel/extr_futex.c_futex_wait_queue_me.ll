; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_futex_wait_queue_me.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_futex_wait_queue_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_hash_bucket = type { i32 }
%struct.futex_q = type { i32 }
%struct.hrtimer_sleeper = type { i32*, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_hash_bucket*, %struct.futex_q*, %struct.hrtimer_sleeper*)* @futex_wait_queue_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_wait_queue_me(%struct.futex_hash_bucket* %0, %struct.futex_q* %1, %struct.hrtimer_sleeper* %2) #0 {
  %4 = alloca %struct.futex_hash_bucket*, align 8
  %5 = alloca %struct.futex_q*, align 8
  %6 = alloca %struct.hrtimer_sleeper*, align 8
  store %struct.futex_hash_bucket* %0, %struct.futex_hash_bucket** %4, align 8
  store %struct.futex_q* %1, %struct.futex_q** %5, align 8
  store %struct.hrtimer_sleeper* %2, %struct.hrtimer_sleeper** %6, align 8
  %7 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %8 = call i32 @set_current_state(i32 %7)
  %9 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %10 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %11 = call i32 @queue_me(%struct.futex_q* %9, %struct.futex_hash_bucket* %10)
  %12 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %13 = icmp ne %struct.hrtimer_sleeper* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %16 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %15, i32 0, i32 1
  %17 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %18 = call i32 @hrtimer_start_expires(i32* %16, i32 %17)
  %19 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %20 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %19, i32 0, i32 1
  %21 = call i32 @hrtimer_active(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %25 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %14
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %29 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %28, i32 0, i32 0
  %30 = call i32 @plist_node_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %38 = icmp ne %struct.hrtimer_sleeper* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %6, align 8
  %41 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %36
  %45 = call i32 (...) @schedule()
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* @TASK_RUNNING, align 4
  %49 = call i32 @__set_current_state(i32 %48)
  ret void
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @queue_me(%struct.futex_q*, %struct.futex_hash_bucket*) #1

declare dso_local i32 @hrtimer_start_expires(i32*, i32) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @plist_node_empty(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
