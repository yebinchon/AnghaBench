; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c___enqueue_rt_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c___enqueue_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32 }
%struct.rt_rq = type { i32, %struct.rt_prio_array }
%struct.rt_prio_array = type { i32, %struct.list_head* }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, i32)* @__enqueue_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enqueue_rt_entity(%struct.sched_rt_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_rq*, align 8
  %6 = alloca %struct.rt_prio_array*, align 8
  %7 = alloca %struct.rt_rq*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %10 = call %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* %9)
  store %struct.rt_rq* %10, %struct.rt_rq** %5, align 8
  %11 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %12 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %11, i32 0, i32 1
  store %struct.rt_prio_array* %12, %struct.rt_prio_array** %6, align 8
  %13 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %14 = call %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity* %13)
  store %struct.rt_rq* %14, %struct.rt_rq** %7, align 8
  %15 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %16 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %15, i32 0, i32 1
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %19 = call i32 @rt_se_prio(%struct.sched_rt_entity* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 %20
  store %struct.list_head* %21, %struct.list_head** %8, align 8
  %22 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %23 = icmp ne %struct.rt_rq* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %26 = call i64 @rt_rq_throttled(%struct.rt_rq* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.rt_rq*, %struct.rt_rq** %7, align 8
  %30 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %24
  br label %65

34:                                               ; preds = %28, %2
  %35 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %36 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %41 = call i32 @list_add_leaf_rt_rq(%struct.rt_rq* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %47 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %46, i32 0, i32 0
  %48 = load %struct.list_head*, %struct.list_head** %8, align 8
  %49 = call i32 @list_add(i32* %47, %struct.list_head* %48)
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %52 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %51, i32 0, i32 0
  %53 = load %struct.list_head*, %struct.list_head** %8, align 8
  %54 = call i32 @list_add_tail(i32* %52, %struct.list_head* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %57 = call i32 @rt_se_prio(%struct.sched_rt_entity* %56)
  %58 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %59 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %63 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %64 = call i32 @inc_rt_tasks(%struct.sched_rt_entity* %62, %struct.rt_rq* %63)
  br label %65

65:                                               ; preds = %55, %33
  ret void
}

declare dso_local %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity*) #1

declare dso_local %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local i32 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i64 @rt_rq_throttled(%struct.rt_rq*) #1

declare dso_local i32 @list_add_leaf_rt_rq(%struct.rt_rq*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @inc_rt_tasks(%struct.sched_rt_entity*, %struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
