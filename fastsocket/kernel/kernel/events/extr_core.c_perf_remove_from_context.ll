; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_remove_from_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_remove_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i64, i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@__perf_remove_from_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_remove_from_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_remove_from_context(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  %7 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  store %struct.perf_event_context* %7, %struct.perf_event_context** %3, align 8
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 3
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  store %struct.task_struct* %10, %struct.task_struct** %4, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @__perf_remove_from_context, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = call i32 @cpu_function_call(i32 %19, i32 %20, %struct.perf_event* %21)
  br label %50

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %39, %23
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = load i32, i32* @__perf_remove_from_context, align 4
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = call i32 @task_function_call(%struct.task_struct* %25, i32 %26, %struct.perf_event* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %50

31:                                               ; preds = %24
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  br label %24

43:                                               ; preds = %31
  %44 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %46 = call i32 @list_del_event(%struct.perf_event* %44, %struct.perf_event_context* %45)
  %47 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  br label %50

50:                                               ; preds = %43, %30, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cpu_function_call(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.perf_event*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_del_event(%struct.perf_event*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
