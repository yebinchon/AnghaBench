; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_task_sched_runtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_task_sched_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_sched_runtime(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rq*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.rq* @task_rq_lock(%struct.task_struct* %6, i64* %3)
  store %struct.rq* %7, %struct.rq** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = call i64 @do_task_delta_exec(%struct.task_struct* %12, %struct.rq* %13)
  %15 = add i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.rq*, %struct.rq** %4, align 8
  %17 = call i32 @task_rq_unlock(%struct.rq* %16, i64* %3)
  %18 = load i64, i64* %5, align 8
  ret i64 %18
}

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, i64*) #1

declare dso_local i64 @do_task_delta_exec(%struct.task_struct*, %struct.rq*) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
