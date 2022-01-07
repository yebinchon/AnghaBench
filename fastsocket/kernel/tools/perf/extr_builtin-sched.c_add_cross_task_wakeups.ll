; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_add_cross_task_wakeups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_add_cross_task_wakeups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, %struct.task_desc** }
%struct.task_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @add_cross_task_wakeups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cross_task_wakeups(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  %3 = alloca %struct.task_desc*, align 8
  %4 = alloca %struct.task_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %10 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %15 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %14, i32 0, i32 1
  %16 = load %struct.task_desc**, %struct.task_desc*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %16, i64 %17
  %19 = load %struct.task_desc*, %struct.task_desc** %18, align 8
  store %struct.task_desc* %19, %struct.task_desc** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %24 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %30 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %29, i32 0, i32 1
  %31 = load %struct.task_desc**, %struct.task_desc*** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %31, i64 %32
  %34 = load %struct.task_desc*, %struct.task_desc** %33, align 8
  store %struct.task_desc* %34, %struct.task_desc** %4, align 8
  %35 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %36 = load %struct.task_desc*, %struct.task_desc** %3, align 8
  %37 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %38 = call i32 @add_sched_event_wakeup(%struct.perf_sched* %35, %struct.task_desc* %36, i32 0, %struct.task_desc* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %7

42:                                               ; preds = %7
  ret void
}

declare dso_local i32 @add_sched_event_wakeup(%struct.perf_sched*, %struct.task_desc*, i32, %struct.task_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
