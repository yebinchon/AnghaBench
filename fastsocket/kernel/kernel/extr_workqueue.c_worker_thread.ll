; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_worker_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpu_workqueue_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cpu_workqueue_struct*
  store %struct.cpu_workqueue_struct* %5, %struct.cpu_workqueue_struct** %3, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %9 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @set_freezable()
  br label %16

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %43, %16
  %18 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %19 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %18, i32 0, i32 0
  %20 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %21 = call i32 @prepare_to_wait(i32* %19, i32* @wait, i32 %20)
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @freezing(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %30 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %29, i32 0, i32 1
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @schedule()
  br label %35

35:                                               ; preds = %33, %28, %25, %17
  %36 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %37 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %36, i32 0, i32 0
  %38 = call i32 @finish_wait(i32* %37, i32* @wait)
  %39 = call i32 (...) @try_to_freeze()
  %40 = call i64 (...) @kthread_should_stop()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %45 = call i32 @run_workqueue(%struct.cpu_workqueue_struct* %44)
  br label %17

46:                                               ; preds = %42
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @freezing(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @run_workqueue(%struct.cpu_workqueue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
