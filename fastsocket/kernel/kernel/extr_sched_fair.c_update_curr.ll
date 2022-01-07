; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_update_curr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_update_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity* }
%struct.sched_entity = type { i32, i64 }
%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*)* @update_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_curr(%struct.cfs_rq* %0) #0 {
  %2 = alloca %struct.cfs_rq*, align 8
  %3 = alloca %struct.sched_entity*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %2, align 8
  %7 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %8 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %7, i32 0, i32 0
  %9 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  store %struct.sched_entity* %9, %struct.sched_entity** %3, align 8
  %10 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %11 = call %struct.TYPE_2__* @rq_of(%struct.cfs_rq* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %15 = icmp ne %struct.sched_entity* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %60

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %24 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %32 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @__update_curr(%struct.cfs_rq* %31, %struct.sched_entity* %32, i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %37 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %39 = call i64 @entity_is_task(%struct.sched_entity* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %43 = call %struct.task_struct* @task_of(%struct.sched_entity* %42)
  store %struct.task_struct* %43, %struct.task_struct** %6, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %47 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @trace_sched_stat_runtime(%struct.task_struct* %44, i64 %45, i32 %48)
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @cpuacct_charge(%struct.task_struct* %50, i64 %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @account_group_exec_runtime(%struct.task_struct* %53, i64 %54)
  br label %56

56:                                               ; preds = %41, %30
  %57 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @account_cfs_rq_runtime(%struct.cfs_rq* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %29, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__update_curr(%struct.cfs_rq*, %struct.sched_entity*, i64) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i32 @trace_sched_stat_runtime(%struct.task_struct*, i64, i32) #1

declare dso_local i32 @cpuacct_charge(%struct.task_struct*, i64) #1

declare dso_local i32 @account_group_exec_runtime(%struct.task_struct*, i64) #1

declare dso_local i32 @account_cfs_rq_runtime(%struct.cfs_rq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
