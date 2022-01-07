; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_wakeup_next_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_wakeup_next_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rt_mutex = type { i32 }
%struct.rt_mutex_waiter = type { i32, %struct.rt_mutex*, %struct.task_struct*, i32 }
%struct.task_struct = type { i32, i32, %struct.rt_mutex_waiter* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@RT_MUTEX_OWNER_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_mutex*)* @wakeup_next_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_next_waiter(%struct.rt_mutex* %0) #0 {
  %2 = alloca %struct.rt_mutex*, align 8
  %3 = alloca %struct.rt_mutex_waiter*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rt_mutex_waiter*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %12 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %11)
  store %struct.rt_mutex_waiter* %12, %struct.rt_mutex_waiter** %3, align 8
  %13 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %14 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %13, i32 0, i32 3
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %16 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %15, i32 0, i32 0
  %17 = call i32 @plist_del(i32* %14, i32* %16)
  %18 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %19 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @plist_del(i32* %19, i32* %21)
  %23 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %24 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %23, i32 0, i32 2
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %4, align 8
  %26 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %27 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %26, i32 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %27, align 8
  %28 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = load i32, i32* @RT_MUTEX_OWNER_PENDING, align 4
  %31 = call i32 @rt_mutex_set_owner(%struct.rt_mutex* %28, %struct.task_struct* %29, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 2
  %42 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %41, align 8
  %43 = icmp ne %struct.rt_mutex_waiter* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 2
  %49 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %48, align 8
  %50 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %3, align 8
  %51 = icmp ne %struct.rt_mutex_waiter* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 2
  %56 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %55, align 8
  %57 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %56, i32 0, i32 1
  %58 = load %struct.rt_mutex*, %struct.rt_mutex** %57, align 8
  %59 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %60 = icmp ne %struct.rt_mutex* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 2
  store %struct.rt_mutex_waiter* null, %struct.rt_mutex_waiter** %64, align 8
  %65 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %66 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %1
  %69 = load %struct.rt_mutex*, %struct.rt_mutex** %2, align 8
  %70 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %69)
  store %struct.rt_mutex_waiter* %70, %struct.rt_mutex_waiter** %6, align 8
  %71 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %6, align 8
  %72 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %71, i32 0, i32 0
  %73 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 1
  %75 = call i32 @plist_add(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %68, %1
  %77 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %82 = call i32 @wake_up_process(%struct.task_struct* %81)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @plist_del(i32*, i32*) #1

declare dso_local i32 @rt_mutex_set_owner(%struct.rt_mutex*, %struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @plist_add(i32*, i32*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
