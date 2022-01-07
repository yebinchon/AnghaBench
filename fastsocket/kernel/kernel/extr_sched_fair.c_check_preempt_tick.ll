; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_check_preempt_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_check_preempt_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@WAKEUP_PREEMPT = common dso_local global i32 0, align 4
@sysctl_sched_min_granularity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @check_preempt_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_preempt_tick(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sched_entity*, align 8
  %8 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %11 = call i64 @sched_slice(%struct.cfs_rq* %9, %struct.sched_entity* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %13 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %16 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %24 = call %struct.TYPE_2__* @rq_of(%struct.cfs_rq* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @resched_task(i32 %26)
  %28 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %29 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %30 = call i32 @clear_buddies(%struct.cfs_rq* %28, %struct.sched_entity* %29)
  br label %70

31:                                               ; preds = %2
  %32 = load i32, i32* @WAKEUP_PREEMPT, align 4
  %33 = call i32 @sched_feat(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %70

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @sysctl_sched_min_granularity, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %70

41:                                               ; preds = %36
  %42 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %43 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %48 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* %47)
  store %struct.sched_entity* %48, %struct.sched_entity** %7, align 8
  %49 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %50 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %53 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %70

59:                                               ; preds = %46
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %65 = call %struct.TYPE_2__* @rq_of(%struct.cfs_rq* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @resched_task(i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %22, %35, %40, %58, %69, %41
  ret void
}

declare dso_local i64 @sched_slice(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @resched_task(i32) #1

declare dso_local %struct.TYPE_2__* @rq_of(%struct.cfs_rq*) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @sched_feat(i32) #1

declare dso_local %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
