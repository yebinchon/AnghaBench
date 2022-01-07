; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_taskstats_tgid_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_taskstats_tgid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i32 }
%struct.task_struct = type { %struct.TYPE_2__*, %struct.signal_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.signal_struct = type { %struct.taskstats* }

@taskstats_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.taskstats* (%struct.task_struct*)* @taskstats_tgid_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.taskstats* @taskstats_tgid_alloc(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.signal_struct*, align 8
  %4 = alloca %struct.taskstats*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 1
  %7 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  store %struct.signal_struct* %7, %struct.signal_struct** %3, align 8
  %8 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %9 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i32 0, i32 0
  %10 = load %struct.taskstats*, %struct.taskstats** %9, align 8
  %11 = icmp ne %struct.taskstats* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = call i64 @thread_group_empty(%struct.task_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %47

17:                                               ; preds = %12
  %18 = load i32, i32* @taskstats_cache, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.taskstats* @kmem_cache_zalloc(i32 %18, i32 %19)
  store %struct.taskstats* %20, %struct.taskstats** %4, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %27 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i32 0, i32 0
  %28 = load %struct.taskstats*, %struct.taskstats** %27, align 8
  %29 = icmp ne %struct.taskstats* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  %32 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %33 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %32, i32 0, i32 0
  store %struct.taskstats* %31, %struct.taskstats** %33, align 8
  store %struct.taskstats* null, %struct.taskstats** %4, align 8
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  %41 = icmp ne %struct.taskstats* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @taskstats_cache, align 4
  %44 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  %45 = call i32 @kmem_cache_free(i32 %43, %struct.taskstats* %44)
  br label %46

46:                                               ; preds = %42, %34
  br label %47

47:                                               ; preds = %46, %16
  %48 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %49 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %48, i32 0, i32 0
  %50 = load %struct.taskstats*, %struct.taskstats** %49, align 8
  ret %struct.taskstats* %50
}

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local %struct.taskstats* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.taskstats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
