; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_dequeue_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_dequeue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, i64, %struct.sched_entity* }
%struct.sched_entity = type { i32, i64, i32, i32 }

@DEQUEUE_SLEEP = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @dequeue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %8 = call i32 @update_curr(%struct.cfs_rq* %7)
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %11 = call i32 @update_stats_dequeue(%struct.cfs_rq* %9, %struct.sched_entity* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DEQUEUE_SLEEP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %19 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %20 = call i32 @clear_buddies(%struct.cfs_rq* %18, %struct.sched_entity* %19)
  %21 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %22, i32 0, i32 2
  %24 = load %struct.sched_entity*, %struct.sched_entity** %23, align 8
  %25 = icmp ne %struct.sched_entity* %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %28 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %29 = call i32 @__dequeue_entity(%struct.cfs_rq* %27, %struct.sched_entity* %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %32 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %34 = call i32 @update_cfs_load(%struct.cfs_rq* %33, i32 0)
  %35 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %37 = call i32 @account_entity_dequeue(%struct.cfs_rq* %35, %struct.sched_entity* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DEQUEUE_SLEEP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %30
  %43 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %44 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %47 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %52

52:                                               ; preds = %42, %30
  %53 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %54 = call i32 @update_min_vruntime(%struct.cfs_rq* %53)
  %55 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %56 = call i32 @update_cfs_shares(%struct.cfs_rq* %55)
  %57 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %58 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %63 = call i32 @return_cfs_rq_runtime(%struct.cfs_rq* %62)
  br label %64

64:                                               ; preds = %61, %52
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @update_stats_dequeue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__dequeue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_cfs_load(%struct.cfs_rq*, i32) #1

declare dso_local i32 @account_entity_dequeue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_min_vruntime(%struct.cfs_rq*) #1

declare dso_local i32 @update_cfs_shares(%struct.cfs_rq*) #1

declare dso_local i32 @return_cfs_rq_runtime(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
