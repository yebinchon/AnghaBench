; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c___dequeue_rt_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c___dequeue_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32 }
%struct.rt_rq = type { i32, %struct.rt_prio_array }
%struct.rt_prio_array = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*)* @__dequeue_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dequeue_rt_entity(%struct.sched_rt_entity* %0) #0 {
  %2 = alloca %struct.sched_rt_entity*, align 8
  %3 = alloca %struct.rt_rq*, align 8
  %4 = alloca %struct.rt_prio_array*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %2, align 8
  %5 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %6 = call %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* %5)
  store %struct.rt_rq* %6, %struct.rt_rq** %3, align 8
  %7 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %8 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %7, i32 0, i32 1
  store %struct.rt_prio_array* %8, %struct.rt_prio_array** %4, align 8
  %9 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %10 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %9, i32 0, i32 0
  %11 = call i32 @list_del_init(i32* %10)
  %12 = load %struct.rt_prio_array*, %struct.rt_prio_array** %4, align 8
  %13 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %16 = call i64 @rt_se_prio(%struct.sched_rt_entity* %15)
  %17 = add nsw i64 %14, %16
  %18 = call i64 @list_empty(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %22 = call i64 @rt_se_prio(%struct.sched_rt_entity* %21)
  %23 = load %struct.rt_prio_array*, %struct.rt_prio_array** %4, align 8
  %24 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__clear_bit(i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %2, align 8
  %29 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %30 = call i32 @dec_rt_tasks(%struct.sched_rt_entity* %28, %struct.rt_rq* %29)
  %31 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %32 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %37 = call i32 @list_del_leaf_rt_rq(%struct.rt_rq* %36)
  br label %38

38:                                               ; preds = %35, %27
  ret void
}

declare dso_local %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @list_empty(i64) #1

declare dso_local i64 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @dec_rt_tasks(%struct.sched_rt_entity*, %struct.rt_rq*) #1

declare dso_local i32 @list_del_leaf_rt_rq(%struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
