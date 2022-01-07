; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_workqueue.c_workqueue_stat_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_workqueue.c_workqueue_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cpu_workqueue_stats = type { i32, i32, i32, i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%3d %6d     %6u       %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @workqueue_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workqueue_stat_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpu_workqueue_stats*, align 8
  %6 = alloca %struct.pid*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cpu_workqueue_stats*
  store %struct.cpu_workqueue_stats* %9, %struct.cpu_workqueue_stats** %5, align 8
  %10 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %11 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pid* @find_get_pid(i32 %12)
  store %struct.pid* %13, %struct.pid** %6, align 8
  %14 = load %struct.pid*, %struct.pid** %6, align 8
  %15 = icmp ne %struct.pid* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load %struct.pid*, %struct.pid** %6, align 8
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call %struct.task_struct* @get_pid_task(%struct.pid* %17, i32 %18)
  store %struct.task_struct* %19, %struct.task_struct** %7, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %25 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %27, i32 0, i32 1
  %29 = call i32 @atomic_read(i32* %28)
  %30 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %31 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %38 = call i32 @put_task_struct(%struct.task_struct* %37)
  br label %39

39:                                               ; preds = %22, %16
  %40 = load %struct.pid*, %struct.pid** %6, align 8
  %41 = call i32 @put_pid(%struct.pid* %40)
  br label %42

42:                                               ; preds = %39, %2
  ret i32 0
}

declare dso_local %struct.pid* @find_get_pid(i32) #1

declare dso_local %struct.task_struct* @get_pid_task(%struct.pid*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
