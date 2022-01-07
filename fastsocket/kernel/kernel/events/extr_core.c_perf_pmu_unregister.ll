; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_pmu_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_pmu_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i64, i32, i32, i32 }

@pmus_lock = common dso_local global i32 0, align 4
@pmus_srcu = common dso_local global i32 0, align 4
@PERF_TYPE_MAX = common dso_local global i64 0, align 8
@pmu_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_pmu_unregister(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %3 = call i32 @mutex_lock(i32* @pmus_lock)
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = getelementptr inbounds %struct.pmu, %struct.pmu* %4, i32 0, i32 3
  %6 = call i32 @list_del_rcu(i32* %5)
  %7 = call i32 @mutex_unlock(i32* @pmus_lock)
  %8 = call i32 @synchronize_srcu(i32* @pmus_srcu)
  %9 = call i32 (...) @synchronize_rcu()
  %10 = load %struct.pmu*, %struct.pmu** %2, align 8
  %11 = getelementptr inbounds %struct.pmu, %struct.pmu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free_percpu(i32 %12)
  %14 = load %struct.pmu*, %struct.pmu** %2, align 8
  %15 = getelementptr inbounds %struct.pmu, %struct.pmu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PERF_TYPE_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pmu*, %struct.pmu** %2, align 8
  %21 = getelementptr inbounds %struct.pmu, %struct.pmu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @idr_remove(i32* @pmu_idr, i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.pmu*, %struct.pmu** %2, align 8
  %26 = getelementptr inbounds %struct.pmu, %struct.pmu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_del(i32 %27)
  %29 = load %struct.pmu*, %struct.pmu** %2, align 8
  %30 = getelementptr inbounds %struct.pmu, %struct.pmu* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @put_device(i32 %31)
  %33 = load %struct.pmu*, %struct.pmu** %2, align 8
  %34 = call i32 @free_pmu_context(%struct.pmu* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @device_del(i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @free_pmu_context(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
