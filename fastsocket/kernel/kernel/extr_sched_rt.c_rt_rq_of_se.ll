; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_rt_rq_of_se.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_rt_rq_of_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { i32 }
%struct.sched_rt_entity = type { i32 }
%struct.task_struct = type { i32 }
%struct.rq = type { %struct.rt_rq }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt_rq* (%struct.sched_rt_entity*)* @rt_rq_of_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* %0) #0 {
  %2 = alloca %struct.sched_rt_entity*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.rq*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %2, align 8
  %5 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %6 = call %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* %5)
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call %struct.rq* @task_rq(%struct.task_struct* %7)
  store %struct.rq* %8, %struct.rq** %4, align 8
  %9 = load %struct.rq*, %struct.rq** %4, align 8
  %10 = getelementptr inbounds %struct.rq, %struct.rq* %9, i32 0, i32 0
  ret %struct.rt_rq* %10
}

declare dso_local %struct.task_struct* @rt_task_of(%struct.sched_rt_entity*) #1

declare dso_local %struct.rq* @task_rq(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
