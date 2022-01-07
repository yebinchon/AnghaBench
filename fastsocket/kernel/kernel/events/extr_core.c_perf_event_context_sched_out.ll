; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_context_sched_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_context_sched_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.perf_event_context** }
%struct.perf_event_context = type { i32, %struct.task_struct*, i32 }
%struct.perf_cpu_context = type { i32* }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EVENT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.task_struct*)* @perf_event_context_sched_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_context_sched_out(%struct.task_struct* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca %struct.perf_event_context*, align 8
  %9 = alloca %struct.perf_event_context*, align 8
  %10 = alloca %struct.perf_cpu_context*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.perf_event_context**, %struct.perf_event_context*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %14, i64 %16
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %17, align 8
  store %struct.perf_event_context* %18, %struct.perf_event_context** %7, align 8
  store i32 1, i32* %11, align 4
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %20 = icmp ne %struct.perf_event_context* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %119

26:                                               ; preds = %3
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %28 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %27)
  store %struct.perf_cpu_context* %28, %struct.perf_cpu_context** %10, align 8
  %29 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %10, align 8
  %30 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %119

34:                                               ; preds = %26
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %37 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.perf_event_context* @rcu_dereference(i32 %38)
  store %struct.perf_event_context* %39, %struct.perf_event_context** %9, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load %struct.perf_event_context**, %struct.perf_event_context*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %42, i64 %44
  %46 = load %struct.perf_event_context*, %struct.perf_event_context** %45, align 8
  store %struct.perf_event_context* %46, %struct.perf_event_context** %8, align 8
  %47 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %48 = icmp ne %struct.perf_event_context* %47, null
  br i1 %48, label %49, label %102

49:                                               ; preds = %34
  %50 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %51 = icmp ne %struct.perf_event_context* %50, null
  br i1 %51, label %52, label %102

52:                                               ; preds = %49
  %53 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %54 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.perf_event_context* @rcu_dereference(i32 %55)
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %58 = icmp eq %struct.perf_event_context* %56, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %52
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %61 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %64 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %63, i32 0, i32 0
  %65 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %66 = call i32 @spin_lock_nested(i32* %64, i32 %65)
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %68 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %69 = call i64 @context_equiv(%struct.perf_event_context* %67, %struct.perf_event_context* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %59
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  %75 = load %struct.perf_event_context**, %struct.perf_event_context*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %75, i64 %77
  store %struct.perf_event_context* %72, %struct.perf_event_context** %78, align 8
  %79 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = load %struct.perf_event_context**, %struct.perf_event_context*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %82, i64 %84
  store %struct.perf_event_context* %79, %struct.perf_event_context** %85, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %88 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %87, i32 0, i32 1
  store %struct.task_struct* %86, %struct.task_struct** %88, align 8
  %89 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %90 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %91 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %90, i32 0, i32 1
  store %struct.task_struct* %89, %struct.task_struct** %91, align 8
  store i32 0, i32* %11, align 4
  %92 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %93 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %94 = call i32 @perf_event_sync_stat(%struct.perf_event_context* %92, %struct.perf_event_context* %93)
  br label %95

95:                                               ; preds = %71, %59
  %96 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %97 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %100 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  br label %102

102:                                              ; preds = %95, %52, %49, %34
  %103 = call i32 (...) @rcu_read_unlock()
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %108 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %111 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %10, align 8
  %112 = load i32, i32* @EVENT_ALL, align 4
  %113 = call i32 @ctx_sched_out(%struct.perf_event_context* %110, %struct.perf_cpu_context* %111, i32 %112)
  %114 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %10, align 8
  %115 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %117 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  br label %119

119:                                              ; preds = %25, %33, %106, %102
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event_context* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i64 @context_equiv(%struct.perf_event_context*, %struct.perf_event_context*) #1

declare dso_local i32 @perf_event_sync_stat(%struct.perf_event_context*, %struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ctx_sched_out(%struct.perf_event_context*, %struct.perf_cpu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
