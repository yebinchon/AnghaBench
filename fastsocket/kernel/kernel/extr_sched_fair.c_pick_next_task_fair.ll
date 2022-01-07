; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_pick_next_task_fair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_pick_next_task_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rq = type { %struct.cfs_rq }
%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*)* @pick_next_task_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_fair(%struct.rq* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cfs_rq*, align 8
  %6 = alloca %struct.sched_entity*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  %7 = load %struct.rq*, %struct.rq** %3, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 0
  store %struct.cfs_rq* %8, %struct.cfs_rq** %5, align 8
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %10 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %37

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %21 = call %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* %20)
  store %struct.sched_entity* %21, %struct.sched_entity** %6, align 8
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %23 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %24 = call i32 @set_next_entity(%struct.cfs_rq* %22, %struct.sched_entity* %23)
  %25 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %26 = call %struct.cfs_rq* @group_cfs_rq(%struct.sched_entity* %25)
  store %struct.cfs_rq* %26, %struct.cfs_rq** %5, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %29 = icmp ne %struct.cfs_rq* %28, null
  br i1 %29, label %19, label %30

30:                                               ; preds = %27
  %31 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %32 = call %struct.task_struct* @task_of(%struct.sched_entity* %31)
  store %struct.task_struct* %32, %struct.task_struct** %4, align 8
  %33 = load %struct.rq*, %struct.rq** %3, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = call i32 @hrtick_start_fair(%struct.rq* %33, %struct.task_struct* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %36, %struct.task_struct** %2, align 8
  br label %37

37:                                               ; preds = %30, %17
  %38 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sched_entity* @pick_next_entity(%struct.cfs_rq*) #1

declare dso_local i32 @set_next_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local %struct.cfs_rq* @group_cfs_rq(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i32 @hrtick_start_fair(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
