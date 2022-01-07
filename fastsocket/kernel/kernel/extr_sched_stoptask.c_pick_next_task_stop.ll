; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_stoptask.c_pick_next_task_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_stoptask.c_pick_next_task_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.rq = type { %struct.task_struct* }

@TASK_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*)* @pick_next_task_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_stop(%struct.rq* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  %5 = load %struct.rq*, %struct.rq** %3, align 8
  %6 = getelementptr inbounds %struct.rq, %struct.rq* %5, i32 0, i32 0
  %7 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  store %struct.task_struct* %7, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TASK_RUNNING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %17, %struct.task_struct** %2, align 8
  br label %19

18:                                               ; preds = %10, %1
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %19

19:                                               ; preds = %18, %16
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
