; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_try_to_steal_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_try_to_steal_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32 }
%struct.task_struct = type { i64, i32, i32 }
%struct.rt_mutex_waiter = type { i32, %struct.task_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_mutex*, %struct.task_struct*)* @try_to_steal_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_steal_lock(%struct.rt_mutex* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt_mutex*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  %8 = alloca i64, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %10 = call %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %12 = call i32 @rt_mutex_owner_pending(%struct.rt_mutex* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = icmp eq %struct.task_struct* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %89

20:                                               ; preds = %15
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %89

37:                                               ; preds = %20
  %38 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %39 = call i32 @rt_mutex_has_waiters(%struct.rt_mutex* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 1, i32* %3, align 4
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %52 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %51)
  store %struct.rt_mutex_waiter* %52, %struct.rt_mutex_waiter** %7, align 8
  %53 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %54 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %53, i32 0, i32 0
  %55 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 2
  %57 = call i32 @plist_del(i32* %54, i32* %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %59 = call i32 @__rt_mutex_adjust_prio(%struct.task_struct* %58)
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %65 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %64, i32 0, i32 1
  %66 = load %struct.task_struct*, %struct.task_struct** %65, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %68 = icmp ne %struct.task_struct* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %50
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %78 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %77, i32 0, i32 0
  %79 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 2
  %81 = call i32 @plist_add(i32* %78, i32* %80)
  %82 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %83 = call i32 @__rt_mutex_adjust_prio(%struct.task_struct* %82)
  %84 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 1
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %72, %50
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %45, %32, %19, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @rt_mutex_owner_pending(%struct.rt_mutex*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @plist_del(i32*, i32*) #1

declare dso_local i32 @__rt_mutex_adjust_prio(%struct.task_struct*) #1

declare dso_local i32 @plist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
