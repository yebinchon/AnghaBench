; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_context_sched_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_context_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i64 }
%struct.task_struct = type { i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }

@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.task_struct*)* @perf_event_context_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_context_sched_in(%struct.perf_event_context* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %7 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %6)
  store %struct.perf_cpu_context* %7, %struct.perf_cpu_context** %5, align 8
  %8 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %9 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %8, i32 0, i32 0
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %12 = icmp eq %struct.perf_event_context* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %17 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %15, %struct.perf_event_context* %16)
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @perf_pmu_disable(i32 %20)
  %22 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %23 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %24 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %22, i32 %23)
  %25 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %31 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %32 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %31, i32 0, i32 0
  store %struct.perf_event_context* %30, %struct.perf_event_context** %32, align 8
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %35 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %36 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %35, i32 0, i32 0
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %36, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call i32 @perf_event_sched_in(%struct.perf_cpu_context* %34, %struct.perf_event_context* %37, %struct.task_struct* %38)
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @perf_pmu_enable(i32 %42)
  %44 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %46 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %44, %struct.perf_event_context* %45)
  %47 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @perf_pmu_rotate_start(i32 %49)
  br label %51

51:                                               ; preds = %33, %13
  ret void
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @cpu_ctx_sched_out(%struct.perf_cpu_context*, i32) #1

declare dso_local i32 @perf_event_sched_in(%struct.perf_cpu_context*, %struct.perf_event_context*, %struct.task_struct*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_rotate_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
