; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_pick_next_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_pick_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_entity* (%struct.cfs_rq*)* @pick_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* %0) #0 {
  %2 = alloca %struct.cfs_rq*, align 8
  %3 = alloca %struct.sched_entity*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %2, align 8
  %6 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %7 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* %6)
  store %struct.sched_entity* %7, %struct.sched_entity** %3, align 8
  %8 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  store %struct.sched_entity* %8, %struct.sched_entity** %4, align 8
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %10 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %9, i32 0, i32 2
  %11 = load %struct.sched_entity*, %struct.sched_entity** %10, align 8
  %12 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %13 = icmp eq %struct.sched_entity* %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %16 = call %struct.sched_entity* @__pick_next_entity(%struct.sched_entity* %15)
  store %struct.sched_entity* %16, %struct.sched_entity** %5, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %18 = icmp ne %struct.sched_entity* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %21 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %22 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %20, %struct.sched_entity* %21)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  store %struct.sched_entity* %25, %struct.sched_entity** %3, align 8
  br label %26

26:                                               ; preds = %24, %19, %14
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %29 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %28, i32 0, i32 1
  %30 = load %struct.sched_entity*, %struct.sched_entity** %29, align 8
  %31 = icmp ne %struct.sched_entity* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %34 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %33, i32 0, i32 1
  %35 = load %struct.sched_entity*, %struct.sched_entity** %34, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %37 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %35, %struct.sched_entity* %36)
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %41 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %40, i32 0, i32 1
  %42 = load %struct.sched_entity*, %struct.sched_entity** %41, align 8
  store %struct.sched_entity* %42, %struct.sched_entity** %3, align 8
  br label %43

43:                                               ; preds = %39, %32, %27
  %44 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %45 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %44, i32 0, i32 0
  %46 = load %struct.sched_entity*, %struct.sched_entity** %45, align 8
  %47 = icmp ne %struct.sched_entity* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %50 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %49, i32 0, i32 0
  %51 = load %struct.sched_entity*, %struct.sched_entity** %50, align 8
  %52 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %53 = call i32 @wakeup_preempt_entity(%struct.sched_entity* %51, %struct.sched_entity* %52)
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %57 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %56, i32 0, i32 0
  %58 = load %struct.sched_entity*, %struct.sched_entity** %57, align 8
  store %struct.sched_entity* %58, %struct.sched_entity** %3, align 8
  br label %59

59:                                               ; preds = %55, %48, %43
  %60 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %61 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %62 = call i32 @clear_buddies(%struct.cfs_rq* %60, %struct.sched_entity* %61)
  %63 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  ret %struct.sched_entity* %63
}

declare dso_local %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq*) #1

declare dso_local %struct.sched_entity* @__pick_next_entity(%struct.sched_entity*) #1

declare dso_local i32 @wakeup_preempt_entity(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
