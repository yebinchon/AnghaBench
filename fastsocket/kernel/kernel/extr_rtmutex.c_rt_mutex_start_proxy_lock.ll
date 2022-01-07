; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_start_proxy_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_rt_mutex_start_proxy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_mutex_start_proxy_lock(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt_mutex*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %6, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %12 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %15 = call i32 @mark_rt_mutex_waiters(%struct.rt_mutex* %14)
  %16 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %17 = call i32 @rt_mutex_owner(%struct.rt_mutex* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = call i64 @try_to_steal_lock(%struct.rt_mutex* %20, %struct.task_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %4
  %25 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %26 = call i32 @debug_rt_mutex_lock(%struct.rt_mutex* %25)
  %27 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = call i32 @rt_mutex_set_owner(%struct.rt_mutex* %27, %struct.task_struct* %28, i32 0)
  %30 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %31 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %35 = call i32 @rt_mutex_deadlock_account_lock(%struct.rt_mutex* %33, %struct.task_struct* %34)
  store i32 1, i32* %5, align 4
  br label %57

36:                                               ; preds = %19
  %37 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %38 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @task_blocks_on_rt_mutex(%struct.rt_mutex* %37, %struct.rt_mutex_waiter* %38, %struct.task_struct* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %46 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %44, %36
  %51 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %52 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %55 = call i32 @debug_rt_mutex_print_deadlock(%struct.rt_mutex_waiter* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %24
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mark_rt_mutex_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i64 @try_to_steal_lock(%struct.rt_mutex*, %struct.task_struct*) #1

declare dso_local i32 @debug_rt_mutex_lock(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_set_owner(%struct.rt_mutex*, %struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_deadlock_account_lock(%struct.rt_mutex*, %struct.task_struct*) #1

declare dso_local i32 @task_blocks_on_rt_mutex(%struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*, i32) #1

declare dso_local i32 @debug_rt_mutex_print_deadlock(%struct.rt_mutex_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
