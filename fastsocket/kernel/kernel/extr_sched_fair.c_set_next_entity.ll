; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_set_next_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_set_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity* }
%struct.sched_entity = type { i64, i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @set_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_next_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %6 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %11 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %12 = call i32 @update_stats_wait_end(%struct.cfs_rq* %10, %struct.sched_entity* %11)
  %13 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %14 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %15 = call i32 @__dequeue_entity(%struct.cfs_rq* %13, %struct.sched_entity* %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %18 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %19 = call i32 @update_stats_curr_start(%struct.cfs_rq* %17, %struct.sched_entity* %18)
  %20 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %21 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %22 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %21, i32 0, i32 0
  store %struct.sched_entity* %20, %struct.sched_entity** %22, align 8
  %23 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %24 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %27 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i32 @update_stats_wait_end(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__dequeue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_stats_curr_start(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
