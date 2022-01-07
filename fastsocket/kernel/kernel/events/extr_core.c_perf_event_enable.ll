; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, %struct.task_struct*, i64 }
%struct.task_struct = type { i32 }

@__perf_event_enable = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ERROR = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_enable(%struct.perf_event* %0) #0 {
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
  %17 = load i32, i32* @__perf_event_enable, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i32 @cpu_function_call(i32 %16, i32 %17, %struct.perf_event* %18)
  br label %82

20:                                               ; preds = %1
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %78

30:                                               ; preds = %20
  %31 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PERF_EVENT_STATE_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %73, %40
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %43 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %48 = call i32 @__perf_event_mark_enabled(%struct.perf_event* %47)
  br label %78

49:                                               ; preds = %41
  %50 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %54 = load i32, i32* @__perf_event_enable, align 4
  %55 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %56 = call i32 @task_function_call(%struct.task_struct* %53, i32 %54, %struct.perf_event* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %82

59:                                               ; preds = %49
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %64 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %75 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %74, i32 0, i32 1
  %76 = load %struct.task_struct*, %struct.task_struct** %75, align 8
  store %struct.task_struct* %76, %struct.task_struct** %4, align 8
  br label %41

77:                                               ; preds = %67, %59
  br label %78

78:                                               ; preds = %77, %46, %29
  %79 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %80 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  br label %82

82:                                               ; preds = %78, %58, %13
  ret void
}

declare dso_local i32 @cpu_function_call(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__perf_event_mark_enabled(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
