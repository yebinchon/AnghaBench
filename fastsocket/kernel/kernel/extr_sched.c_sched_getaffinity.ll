; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_getaffinity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_getaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.task_struct = type { i32 }
%struct.rq = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sched_getaffinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rq*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  %9 = call i32 (...) @get_online_cpus()
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.task_struct* @find_process_by_pid(i32 %13)
  store %struct.task_struct* %14, %struct.task_struct** %5, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = call i32 @security_task_getscheduler(%struct.task_struct* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %34

24:                                               ; preds = %18
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call %struct.rq* @task_rq_lock(%struct.task_struct* %25, i64* %6)
  store %struct.rq* %26, %struct.rq** %7, align 8
  %27 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* @cpu_online_mask, align 4
  %31 = call i32 @cpumask_and(%struct.cpumask* %27, i32* %29, i32 %30)
  %32 = load %struct.rq*, %struct.rq** %7, align 8
  %33 = call i32 @task_rq_unlock(%struct.rq* %32, i64* %6)
  br label %34

34:                                               ; preds = %24, %23, %17
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = call i32 (...) @put_online_cpus()
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  ret i64 %38
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_process_by_pid(i32) #1

declare dso_local i32 @security_task_getscheduler(%struct.task_struct*) #1

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, i64*) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32*, i32) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
