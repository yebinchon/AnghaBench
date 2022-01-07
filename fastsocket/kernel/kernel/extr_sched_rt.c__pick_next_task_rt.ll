; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c__pick_next_task_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c__pick_next_task_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rq = type { i32, i32, %struct.rt_rq }
%struct.rt_rq = type { i32 }
%struct.sched_rt_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*)* @_pick_next_task_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @_pick_next_task_rt(%struct.rq* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.sched_rt_entity*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.rt_rq*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  %7 = load %struct.rq*, %struct.rq** %3, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 2
  store %struct.rt_rq* %8, %struct.rt_rq** %6, align 8
  %9 = load %struct.rt_rq*, %struct.rt_rq** %6, align 8
  %10 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.rt_rq*, %struct.rt_rq** %6, align 8
  %20 = call i64 @rt_rq_throttled(%struct.rt_rq* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.rq*, %struct.rq** %3, align 8
  %24 = getelementptr inbounds %struct.rq, %struct.rq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @task_has_rt_policy(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %54

29:                                               ; preds = %22, %18
  br label %30

30:                                               ; preds = %41, %29
  %31 = load %struct.rq*, %struct.rq** %3, align 8
  %32 = load %struct.rt_rq*, %struct.rt_rq** %6, align 8
  %33 = call %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rq* %31, %struct.rt_rq* %32)
  store %struct.sched_rt_entity* %33, %struct.sched_rt_entity** %4, align 8
  %34 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %4, align 8
  %35 = icmp ne %struct.sched_rt_entity* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %4, align 8
  %40 = call %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity* %39)
  store %struct.rt_rq* %40, %struct.rt_rq** %6, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load %struct.rt_rq*, %struct.rt_rq** %6, align 8
  %43 = icmp ne %struct.rt_rq* %42, null
  br i1 %43, label %30, label %44

44:                                               ; preds = %41
  %45 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %4, align 8
  %46 = call %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* %45)
  store %struct.task_struct* %46, %struct.task_struct** %5, align 8
  %47 = load %struct.rq*, %struct.rq** %3, align 8
  %48 = getelementptr inbounds %struct.rq, %struct.rq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %53, %struct.task_struct** %2, align 8
  br label %54

54:                                               ; preds = %44, %28, %17
  %55 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rt_rq_throttled(%struct.rt_rq*) #1

declare dso_local i32 @task_has_rt_policy(i32) #1

declare dso_local %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rq*, %struct.rt_rq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local %struct.task_struct* @rt_task_of(%struct.sched_rt_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
