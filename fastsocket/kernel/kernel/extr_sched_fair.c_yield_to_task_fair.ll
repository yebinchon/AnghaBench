; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_yield_to_task_fair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_yield_to_task_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { %struct.sched_entity }
%struct.sched_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq*, %struct.task_struct*, i32)* @yield_to_task_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yield_to_task_fair(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_entity*, align 8
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.sched_entity* %10, %struct.sched_entity** %8, align 8
  %11 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %12 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %17 = call i32 @cfs_rq_of(%struct.sched_entity* %16)
  %18 = call i64 @throttled_hierarchy(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  %23 = call i32 @set_next_buddy(%struct.sched_entity* %22)
  %24 = load %struct.rq*, %struct.rq** %5, align 8
  %25 = call i32 @yield_task_fair(%struct.rq* %24)
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @throttled_hierarchy(i32) #1

declare dso_local i32 @cfs_rq_of(%struct.sched_entity*) #1

declare dso_local i32 @set_next_buddy(%struct.sched_entity*) #1

declare dso_local i32 @yield_task_fair(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
