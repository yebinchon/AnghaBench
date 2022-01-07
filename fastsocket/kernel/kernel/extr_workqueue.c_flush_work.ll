; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.cpu_workqueue_struct = type { i32, %struct.list_head, %struct.work_struct*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wq_barrier = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_work(%struct.work_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.wq_barrier, align 4
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %9 = call %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct* %8)
  store %struct.cpu_workqueue_struct* %9, %struct.cpu_workqueue_struct** %4, align 8
  %10 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %11 = icmp ne %struct.cpu_workqueue_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %15 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @lock_map_acquire(i32* %17)
  %19 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %20 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @lock_map_release(i32* %22)
  store %struct.list_head* null, %struct.list_head** %5, align 8
  %24 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %25 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %28 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %27, i32 0, i32 0
  %29 = call i32 @list_empty(%struct.list_head* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %13
  %32 = call i32 (...) @smp_rmb()
  %33 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %34 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %35 = call %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct* %34)
  %36 = icmp ne %struct.cpu_workqueue_struct* %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %43 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %42, i32 0, i32 0
  store %struct.list_head* %43, %struct.list_head** %5, align 8
  br label %54

44:                                               ; preds = %13
  %45 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %46 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %45, i32 0, i32 2
  %47 = load %struct.work_struct*, %struct.work_struct** %46, align 8
  %48 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %49 = icmp ne %struct.work_struct* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %60

51:                                               ; preds = %44
  %52 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %53 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %52, i32 0, i32 1
  store %struct.list_head* %53, %struct.list_head** %5, align 8
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %56 = load %struct.list_head*, %struct.list_head** %5, align 8
  %57 = getelementptr inbounds %struct.list_head, %struct.list_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @insert_wq_barrier(%struct.cpu_workqueue_struct* %55, %struct.wq_barrier* %6, i32 %58)
  br label %60

60:                                               ; preds = %54, %50, %40
  %61 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %62 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load %struct.list_head*, %struct.list_head** %5, align 8
  %65 = icmp ne %struct.list_head* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %70

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %6, i32 0, i32 0
  %69 = call i32 @wait_for_completion(i32* %68)
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %66, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct*) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @insert_wq_barrier(%struct.cpu_workqueue_struct*, %struct.wq_barrier*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
