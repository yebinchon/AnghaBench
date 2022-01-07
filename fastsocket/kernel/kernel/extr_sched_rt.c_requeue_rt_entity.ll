; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_requeue_rt_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_requeue_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { %struct.rt_prio_array }
%struct.rt_prio_array = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.sched_rt_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_rq*, %struct.sched_rt_entity*, i32)* @requeue_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_rt_entity(%struct.rt_rq* %0, %struct.sched_rt_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.rt_rq*, align 8
  %5 = alloca %struct.sched_rt_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt_prio_array*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.rt_rq* %0, %struct.rt_rq** %4, align 8
  store %struct.sched_rt_entity* %1, %struct.sched_rt_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %5, align 8
  %10 = call i64 @on_rt_rq(%struct.sched_rt_entity* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %14 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %13, i32 0, i32 0
  store %struct.rt_prio_array* %14, %struct.rt_prio_array** %7, align 8
  %15 = load %struct.rt_prio_array*, %struct.rt_prio_array** %7, align 8
  %16 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %15, i32 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %5, align 8
  %19 = call i32 @rt_se_prio(%struct.sched_rt_entity* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 %20
  store %struct.list_head* %21, %struct.list_head** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %5, align 8
  %26 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %8, align 8
  %28 = call i32 @list_move(i32* %26, %struct.list_head* %27)
  br label %34

29:                                               ; preds = %12
  %30 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %5, align 8
  %31 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %8, align 8
  %33 = call i32 @list_move_tail(i32* %31, %struct.list_head* %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %3
  ret void
}

declare dso_local i64 @on_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local i32 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
