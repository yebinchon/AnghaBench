; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_cleanup_workqueue_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_cleanup_workqueue_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_workqueue_struct*)* @cleanup_workqueue_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_workqueue_thread(%struct.cpu_workqueue_struct* %0) #0 {
  %2 = alloca %struct.cpu_workqueue_struct*, align 8
  store %struct.cpu_workqueue_struct* %0, %struct.cpu_workqueue_struct** %2, align 8
  %3 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %4 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %10 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @lock_map_acquire(i32* %12)
  %14 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %15 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @lock_map_release(i32* %17)
  %19 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %20 = call i32 @flush_cpu_workqueue(%struct.cpu_workqueue_struct* %19)
  %21 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %22 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @trace_workqueue_destruction(i32* %23)
  %25 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %26 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kthread_stop(i32* %27)
  %29 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %30 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i32 @flush_cpu_workqueue(%struct.cpu_workqueue_struct*) #1

declare dso_local i32 @trace_workqueue_destruction(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
