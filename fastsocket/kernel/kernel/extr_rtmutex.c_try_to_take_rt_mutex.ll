; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_try_to_take_rt_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_try_to_take_rt_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_mutex*)* @try_to_take_rt_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_take_rt_mutex(%struct.rt_mutex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_mutex*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  %4 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %5 = call i32 @mark_rt_mutex_waiters(%struct.rt_mutex* %4)
  %6 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %7 = call i64 @rt_mutex_owner(%struct.rt_mutex* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @try_to_steal_lock(%struct.rt_mutex* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %24

15:                                               ; preds = %9, %1
  %16 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %17 = call i32 @debug_rt_mutex_lock(%struct.rt_mutex* %16)
  %18 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @rt_mutex_set_owner(%struct.rt_mutex* %18, i32 %19, i32 0)
  %21 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @rt_mutex_deadlock_account_lock(%struct.rt_mutex* %21, i32 %22)
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @mark_rt_mutex_waiters(%struct.rt_mutex*) #1

declare dso_local i64 @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @try_to_steal_lock(%struct.rt_mutex*, i32) #1

declare dso_local i32 @debug_rt_mutex_lock(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_set_owner(%struct.rt_mutex*, i32, i32) #1

declare dso_local i32 @rt_mutex_deadlock_account_lock(%struct.rt_mutex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
