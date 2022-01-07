; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_install_in_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_install_in_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { %struct.perf_event_context* }
%struct.perf_event_context = type { %struct.task_struct*, i32 }
%struct.perf_cpu_context = type { %struct.TYPE_2__, %struct.perf_event_context* }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EVENT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_install_in_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_install_in_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.perf_event*
  store %struct.perf_event* %9, %struct.perf_event** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %11, align 8
  store %struct.perf_event_context* %12, %struct.perf_event_context** %4, align 8
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %14 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %13)
  store %struct.perf_cpu_context* %14, %struct.perf_cpu_context** %5, align 8
  %15 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %16 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %15, i32 0, i32 1
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %16, align 8
  store %struct.perf_event_context* %17, %struct.perf_event_context** %6, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %7, align 8
  %19 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %20 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %21 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %19, %struct.perf_event_context* %20)
  %22 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %23 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @perf_pmu_disable(i32 %25)
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %28 = icmp ne %struct.perf_event_context* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %31 = call i32 @task_ctx_sched_out(%struct.perf_event_context* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %33, i32 0, i32 0
  %35 = load %struct.task_struct*, %struct.task_struct** %34, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %40 = icmp ne %struct.perf_event_context* %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %43 = icmp ne %struct.perf_event_context* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %46 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %50 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %49, i32 0, i32 1
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  store %struct.perf_event_context* %52, %struct.perf_event_context** %6, align 8
  br label %53

53:                                               ; preds = %48, %37, %32
  %54 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %55 = icmp ne %struct.perf_event_context* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %58 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %59 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %58, i32 0, i32 1
  store %struct.perf_event_context* %57, %struct.perf_event_context** %59, align 8
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %61 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %60, i32 0, i32 0
  %62 = load %struct.task_struct*, %struct.task_struct** %61, align 8
  store %struct.task_struct* %62, %struct.task_struct** %7, align 8
  br label %63

63:                                               ; preds = %56, %53
  %64 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %65 = load i32, i32* @EVENT_ALL, align 4
  %66 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %64, i32 %65)
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %68 = call i32 @update_context_time(%struct.perf_event_context* %67)
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = call i32 @update_cgrp_time_from_event(%struct.perf_event* %69)
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %73 = call i32 @add_event_to_ctx(%struct.perf_event* %71, %struct.perf_event_context* %72)
  %74 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %75 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %76 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %77 = call i32 @perf_event_sched_in(%struct.perf_cpu_context* %74, %struct.perf_event_context* %75, %struct.task_struct* %76)
  %78 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %79 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @perf_pmu_enable(i32 %81)
  %83 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %84 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %85 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %83, %struct.perf_event_context* %84)
  ret i32 0
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @task_ctx_sched_out(%struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_ctx_sched_out(%struct.perf_cpu_context*, i32) #1

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_event(%struct.perf_event*) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_sched_in(%struct.perf_cpu_context*, %struct.perf_event_context*, %struct.task_struct*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
