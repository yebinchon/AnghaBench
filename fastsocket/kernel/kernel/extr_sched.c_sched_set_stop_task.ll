; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_set_stop_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_set_stop_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }
%struct.sched_param = type { i32 }
%struct.TYPE_2__ = type { %struct.task_struct* }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@stop_sched_class = common dso_local global i32 0, align 4
@rt_sched_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_set_stop_task(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.sched_param, align 4
  %6 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %8 = load i32, i32* @MAX_RT_PRIO, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_2__* @cpu_rq(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  store %struct.task_struct* %13, %struct.task_struct** %6, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load i32, i32* @SCHED_FIFO, align 4
  %19 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* %17, i32 %18, %struct.sched_param* %5)
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  store i32* @stop_sched_class, i32** %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.TYPE_2__* @cpu_rq(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.task_struct* %23, %struct.task_struct** %26, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = icmp ne %struct.task_struct* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  store i32* @rt_sched_class, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %22
  ret void
}

declare dso_local %struct.TYPE_2__* @cpu_rq(i32) #1

declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct*, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
