; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_cpu_workqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_cpu_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i64, i32, i32, i32* }
%struct.wq_barrier = type { i32 }

@current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_workqueue_struct*)* @flush_cpu_workqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_cpu_workqueue(%struct.cpu_workqueue_struct* %0) #0 {
  %2 = alloca %struct.cpu_workqueue_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wq_barrier, align 4
  store %struct.cpu_workqueue_struct* %0, %struct.cpu_workqueue_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %6 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @current, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %16 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %15, i32 0, i32 2
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %21 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %1
  %25 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %26 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %27 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %26, i32 0, i32 2
  %28 = call i32 @insert_wq_barrier(%struct.cpu_workqueue_struct* %25, %struct.wq_barrier* %4, i32* %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %2, align 8
  %31 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %4, i32 0, i32 0
  %37 = call i32 @wait_for_completion(i32* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @insert_wq_barrier(%struct.cpu_workqueue_struct*, %struct.wq_barrier*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
