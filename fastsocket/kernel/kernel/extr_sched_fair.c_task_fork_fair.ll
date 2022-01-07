; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_task_fork_fair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_task_fork_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i64, %struct.sched_entity* }
%struct.rq = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@sysctl_sched_child_runs_first = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @task_fork_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_fork_fair(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rq*, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.sched_entity* %10, %struct.sched_entity** %4, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %6, align 4
  %12 = call %struct.rq* (...) @this_rq()
  store %struct.rq* %12, %struct.rq** %7, align 8
  %13 = load %struct.rq*, %struct.rq** %7, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rq*, %struct.rq** %7, align 8
  %18 = call i32 @update_rq_clock(%struct.rq* %17)
  %19 = load i32, i32* @current, align 4
  %20 = call %struct.cfs_rq* @task_cfs_rq(i32 %19)
  store %struct.cfs_rq* %20, %struct.cfs_rq** %3, align 8
  %21 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %22 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %21, i32 0, i32 1
  %23 = load %struct.sched_entity*, %struct.sched_entity** %22, align 8
  store %struct.sched_entity* %23, %struct.sched_entity** %5, align 8
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @__set_task_cpu(%struct.task_struct* %25, i32 %26)
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %30 = call i32 @update_curr(%struct.cfs_rq* %29)
  %31 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %32 = icmp ne %struct.sched_entity* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %35 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %38 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %41 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %42 = call i32 @place_entity(%struct.cfs_rq* %40, %struct.sched_entity* %41, i32 1)
  %43 = load i64, i64* @sysctl_sched_child_runs_first, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %47 = icmp ne %struct.sched_entity* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %50 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %51 = call i64 @entity_before(%struct.sched_entity* %49, %struct.sched_entity* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %55 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %58 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @swap(i32 %56, i32 %59)
  %61 = load %struct.rq*, %struct.rq** %7, align 8
  %62 = getelementptr inbounds %struct.rq, %struct.rq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @resched_task(i32 %63)
  br label %65

65:                                               ; preds = %53, %48, %45, %39
  %66 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %67 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %70 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.rq*, %struct.rq** %7, align 8
  %76 = getelementptr inbounds %struct.rq, %struct.rq* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.rq* @this_rq(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local %struct.cfs_rq* @task_cfs_rq(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__set_task_cpu(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @place_entity(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i64 @entity_before(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @resched_task(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
