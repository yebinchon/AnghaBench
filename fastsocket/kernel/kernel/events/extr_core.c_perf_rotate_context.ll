; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_rotate_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_rotate_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { i32, %struct.perf_event_context*, %struct.perf_event_context }
%struct.perf_event_context = type { i64, i64, i32 }

@EVENT_FLEXIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_cpu_context*)* @perf_rotate_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_rotate_context(%struct.perf_cpu_context* %0) #0 {
  %2 = alloca %struct.perf_cpu_context*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %2, align 8
  store %struct.perf_event_context* null, %struct.perf_event_context** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %7 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %12 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %13 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %25 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %24, i32 0, i32 1
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %25, align 8
  store %struct.perf_event_context* %26, %struct.perf_event_context** %3, align 8
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %28 = icmp ne %struct.perf_event_context* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %31 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %29, %23
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %93

48:                                               ; preds = %44
  %49 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %50 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %51 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %50, i32 0, i32 1
  %52 = load %struct.perf_event_context*, %struct.perf_event_context** %51, align 8
  %53 = call i32 @perf_ctx_lock(%struct.perf_cpu_context* %49, %struct.perf_event_context* %52)
  %54 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %55 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @perf_pmu_disable(i32 %57)
  %59 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %60 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %61 = call i32 @cpu_ctx_sched_out(%struct.perf_cpu_context* %59, i32 %60)
  %62 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %63 = icmp ne %struct.perf_event_context* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %66 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %67 = load i32, i32* @EVENT_FLEXIBLE, align 4
  %68 = call i32 @ctx_sched_out(%struct.perf_event_context* %65, %struct.perf_cpu_context* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %48
  %70 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %71 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %70, i32 0, i32 2
  %72 = call i32 @rotate_ctx(%struct.perf_event_context* %71)
  %73 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %74 = icmp ne %struct.perf_event_context* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %77 = call i32 @rotate_ctx(%struct.perf_event_context* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %80 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %81 = load i32, i32* @current, align 4
  %82 = call i32 @perf_event_sched_in(%struct.perf_cpu_context* %79, %struct.perf_event_context* %80, i32 %81)
  %83 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %84 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @perf_pmu_enable(i32 %86)
  %88 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %89 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %90 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %89, i32 0, i32 1
  %91 = load %struct.perf_event_context*, %struct.perf_event_context** %90, align 8
  %92 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %88, %struct.perf_event_context* %91)
  br label %93

93:                                               ; preds = %78, %47
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %2, align 8
  %98 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %97, i32 0, i32 0
  %99 = call i32 @list_del_init(i32* %98)
  br label %100

100:                                              ; preds = %96, %93
  ret void
}

declare dso_local i32 @perf_ctx_lock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @cpu_ctx_sched_out(%struct.perf_cpu_context*, i32) #1

declare dso_local i32 @ctx_sched_out(%struct.perf_event_context*, %struct.perf_cpu_context*, i32) #1

declare dso_local i32 @rotate_ctx(%struct.perf_event_context*) #1

declare dso_local i32 @perf_event_sched_in(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
