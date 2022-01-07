; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_account_entity_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_account_entity_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, i32 }
%struct.sched_entity = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @account_entity_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_entity_dequeue(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %6 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %5, i32 0, i32 1
  %7 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %8 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @update_load_sub(i32* %6, i32 %10)
  %12 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %13 = call i32 @parent_entity(%struct.sched_entity* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %17 = call i32 @rq_of(%struct.cfs_rq* %16)
  %18 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %19 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dec_cpu_load(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %25 = call i64 @entity_is_task(%struct.sched_entity* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %29 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %30 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @add_cfs_task_weight(%struct.cfs_rq* %28, i32 %33)
  %35 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %36 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %35, i32 0, i32 0
  %37 = call i32 @list_del_init(i32* %36)
  br label %38

38:                                               ; preds = %27, %23
  %39 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %40 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @update_load_sub(i32*, i32) #1

declare dso_local i32 @parent_entity(%struct.sched_entity*) #1

declare dso_local i32 @dec_cpu_load(i32, i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local i32 @add_cfs_task_weight(%struct.cfs_rq*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
