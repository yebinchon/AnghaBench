; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_lock_task_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_lock_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i32 }
%struct.task_struct = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_context* (%struct.task_struct*, i32, i64*)* @perf_lock_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  br label %9

9:                                                ; preds = %36, %3
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.perf_event_context* @rcu_dereference(i32 %16)
  store %struct.perf_event_context* %17, %struct.perf_event_context** %7, align 8
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %19 = icmp ne %struct.perf_event_context* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %9
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %22 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %21, i32 0, i32 0
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %22, i64 %24)
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.perf_event_context* @rcu_dereference(i32 %33)
  %35 = icmp ne %struct.perf_event_context* %26, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %20
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %38 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %37, i32 0, i32 0
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %40)
  br label %9

42:                                               ; preds = %20
  %43 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %44 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %43, i32 0, i32 1
  %45 = call i32 @atomic_inc_not_zero(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %49 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %48, i32 0, i32 0
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %51)
  store %struct.perf_event_context* null, %struct.perf_event_context** %7, align 8
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53, %9
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  ret %struct.perf_event_context* %56
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event_context* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
