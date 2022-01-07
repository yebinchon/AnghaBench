; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_ctx_sched_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_ctx_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i32, i32 }
%struct.perf_cpu_context = type { i32 }
%struct.task_struct = type { i32 }

@EVENT_PINNED = common dso_local global i32 0, align 4
@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.perf_cpu_context*, i32, %struct.task_struct*)* @ctx_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_sched_in(%struct.perf_event_context* %0, %struct.perf_cpu_context* %1, i32 %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event_context* %0, %struct.perf_event_context** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %20 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %63

28:                                               ; preds = %4
  %29 = call i32 (...) @perf_clock()
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %35 = call i32 @perf_cgroup_set_timestamp(%struct.task_struct* %33, %struct.perf_event_context* %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EVENT_PINNED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EVENT_PINNED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %47 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %48 = call i32 @ctx_pinned_sched_in(%struct.perf_event_context* %46, %struct.perf_cpu_context* %47)
  br label %49

49:                                               ; preds = %45, %40, %28
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %61 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %62 = call i32 @ctx_flexible_sched_in(%struct.perf_event_context* %60, %struct.perf_cpu_context* %61)
  br label %63

63:                                               ; preds = %27, %59, %54, %49
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @perf_clock(...) #1

declare dso_local i32 @perf_cgroup_set_timestamp(%struct.task_struct*, %struct.perf_event_context*) #1

declare dso_local i32 @ctx_pinned_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*) #1

declare dso_local i32 @ctx_flexible_sched_in(%struct.perf_event_context*, %struct.perf_cpu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
