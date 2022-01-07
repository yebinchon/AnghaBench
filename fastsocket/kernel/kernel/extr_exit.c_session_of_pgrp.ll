; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_session_of_pgrp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_session_of_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PGID = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid* @session_of_pgrp(%struct.pid* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.pid*, align 8
  store %struct.pid* %0, %struct.pid** %2, align 8
  store %struct.pid* null, %struct.pid** %4, align 8
  %5 = load %struct.pid*, %struct.pid** %2, align 8
  %6 = load i32, i32* @PIDTYPE_PGID, align 4
  %7 = call %struct.task_struct* @pid_task(%struct.pid* %5, i32 %6)
  store %struct.task_struct* %7, %struct.task_struct** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = icmp eq %struct.task_struct* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pid*, %struct.pid** %2, align 8
  %12 = load i32, i32* @PIDTYPE_PID, align 4
  %13 = call %struct.task_struct* @pid_task(%struct.pid* %11, i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %3, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call %struct.pid* @task_session(%struct.task_struct* %18)
  store %struct.pid* %19, %struct.pid** %4, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.pid*, %struct.pid** %4, align 8
  ret %struct.pid* %21
}

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local %struct.pid* @task_session(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
