; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c___set_special_pids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c___set_special_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.pid = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PIDTYPE_SID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_special_pids(%struct.pid* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.pid* %0, %struct.pid** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call %struct.pid* @task_session(%struct.task_struct* %7)
  %9 = load %struct.pid*, %struct.pid** %2, align 8
  %10 = icmp ne %struct.pid* %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load i32, i32* @PIDTYPE_SID, align 4
  %14 = load %struct.pid*, %struct.pid** %2, align 8
  %15 = call i32 @change_pid(%struct.task_struct* %12, i32 %13, %struct.pid* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call %struct.pid* @task_pgrp(%struct.task_struct* %17)
  %19 = load %struct.pid*, %struct.pid** %2, align 8
  %20 = icmp ne %struct.pid* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load i32, i32* @PIDTYPE_PGID, align 4
  %24 = load %struct.pid*, %struct.pid** %2, align 8
  %25 = call i32 @change_pid(%struct.task_struct* %22, i32 %23, %struct.pid* %24)
  br label %26

26:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.pid* @task_session(%struct.task_struct*) #1

declare dso_local i32 @change_pid(%struct.task_struct*, i32, %struct.pid*) #1

declare dso_local %struct.pid* @task_pgrp(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
