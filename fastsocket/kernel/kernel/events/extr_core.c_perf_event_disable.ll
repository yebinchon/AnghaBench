; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@__perf_event_disable = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_disable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 2
  %7 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  store %struct.perf_event_context* %7, %struct.perf_event_context** %3, align 8
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 1
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  store %struct.task_struct* %10, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @__perf_event_disable, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i32 @cpu_function_call(i32 %16, i32 %17, %struct.perf_event* %18)
  br label %60

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %37, %20
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = load i32, i32* @__perf_event_disable, align 4
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = call i32 @task_function_call(%struct.task_struct* %22, i32 %23, %struct.perf_event* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %60

28:                                               ; preds = %21
  %29 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %41, i32 0, i32 1
  %43 = load %struct.task_struct*, %struct.task_struct** %42, align 8
  store %struct.task_struct* %43, %struct.task_struct** %4, align 8
  br label %21

44:                                               ; preds = %28
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %52 = call i32 @update_group_times(%struct.perf_event* %51)
  %53 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %58 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  br label %60

60:                                               ; preds = %56, %27, %13
  ret void
}

declare dso_local i32 @cpu_function_call(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.perf_event*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @update_group_times(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
