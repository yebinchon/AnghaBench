; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_create_workqueue_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_create_workqueue_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { %struct.task_struct*, %struct.workqueue_struct* }
%struct.task_struct = type { i32 }
%struct.workqueue_struct = type { i64, i32 }
%struct.sched_param = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@worker_thread = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_workqueue_struct*, i32)* @create_workqueue_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_workqueue_thread(%struct.cpu_workqueue_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca %struct.workqueue_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.task_struct*, align 8
  store %struct.cpu_workqueue_struct* %0, %struct.cpu_workqueue_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  %11 = load i32, i32* @MAX_RT_PRIO, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %13, i32 0, i32 1
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %14, align 8
  store %struct.workqueue_struct* %15, %struct.workqueue_struct** %7, align 8
  %16 = load %struct.workqueue_struct*, %struct.workqueue_struct** %7, align 8
  %17 = call i64 @is_wq_single_threaded(%struct.workqueue_struct* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* @worker_thread, align 4
  %22 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.workqueue_struct*, %struct.workqueue_struct** %7, align 8
  %25 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.task_struct* @kthread_create(i32 %21, %struct.cpu_workqueue_struct* %22, i8* %23, i32 %26, i32 %27)
  store %struct.task_struct* %28, %struct.task_struct** %9, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %30 = call i64 @IS_ERR(%struct.task_struct* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = call i32 @PTR_ERR(%struct.task_struct* %33)
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %37 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %36, i32 0, i32 1
  %38 = load %struct.workqueue_struct*, %struct.workqueue_struct** %37, align 8
  %39 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %44 = load i32, i32* @SCHED_FIFO, align 4
  %45 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* %43, i32 %44, %struct.sched_param* %6)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %49 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %48, i32 0, i32 0
  store %struct.task_struct* %47, %struct.task_struct** %49, align 8
  %50 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %51 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %50, i32 0, i32 0
  %52 = load %struct.task_struct*, %struct.task_struct** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @trace_workqueue_creation(%struct.task_struct* %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %46, %32
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @is_wq_single_threaded(%struct.workqueue_struct*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.cpu_workqueue_struct*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct*, i32, %struct.sched_param*) #1

declare dso_local i32 @trace_workqueue_creation(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
