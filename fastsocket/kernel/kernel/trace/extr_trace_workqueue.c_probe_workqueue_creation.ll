; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_workqueue.c_probe_workqueue_creation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_workqueue.c_probe_workqueue_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cpu_workqueue_stats = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"trace_workqueue: not enough memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @probe_workqueue_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_workqueue_creation(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_workqueue_stats*, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.cpu_workqueue_stats* @kzalloc(i32 16, i32 %11)
  store %struct.cpu_workqueue_stats* %12, %struct.cpu_workqueue_stats** %5, align 8
  %13 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %14 = icmp ne %struct.cpu_workqueue_stats* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %19 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %22 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %21, i32 0, i32 3
  %23 = call i32 @kref_init(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %26 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %31 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.TYPE_2__* @workqueue_cpu_stat(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.cpu_workqueue_stats*, %struct.cpu_workqueue_stats** %5, align 8
  %38 = getelementptr inbounds %struct.cpu_workqueue_stats, %struct.cpu_workqueue_stats* %37, i32 0, i32 1
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.TYPE_2__* @workqueue_cpu_stat(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %38, i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call %struct.TYPE_2__* @workqueue_cpu_stat(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.cpu_workqueue_stats* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @workqueue_cpu_stat(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
