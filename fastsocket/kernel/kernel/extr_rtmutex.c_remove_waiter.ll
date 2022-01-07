; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_remove_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_remove_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32*, i32 }
%struct.rt_mutex = type { i32, i32 }
%struct.rt_mutex_waiter = type { i32, i32*, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_mutex*, %struct.rt_mutex_waiter*)* @remove_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_waiter(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1) #0 {
  %3 = alloca %struct.rt_mutex*, align 8
  %4 = alloca %struct.rt_mutex_waiter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt_mutex_waiter*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %4, align 8
  %10 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %12 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %11)
  %13 = icmp eq %struct.rt_mutex_waiter* %10, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %16 = call %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %15)
  store %struct.task_struct* %16, %struct.task_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %22 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %21, i32 0, i32 2
  %23 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %24 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %23, i32 0, i32 1
  %25 = call i32 @plist_del(i32* %22, i32* %24)
  %26 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %27 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %2
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %39 = icmp ne %struct.task_struct* %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %46 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %45, i32 0, i32 0
  %47 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 2
  %49 = call i32 @plist_del(i32* %46, i32* %48)
  %50 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %51 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %55 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %54)
  store %struct.rt_mutex_waiter* %55, %struct.rt_mutex_waiter** %9, align 8
  %56 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %9, align 8
  %57 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %56, i32 0, i32 0
  %58 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 2
  %60 = call i32 @plist_add(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %53, %40
  %62 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %63 = call i32 @__rt_mutex_adjust_prio(%struct.task_struct* %62)
  %64 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %36, %2
  %75 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %4, align 8
  %76 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %75, i32 0, i32 0
  %77 = call i32 @plist_node_empty(i32* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  br label %98

85:                                               ; preds = %74
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = call i32 @get_task_struct(%struct.task_struct* %86)
  %88 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %89 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %92 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %94 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %91, i32 0, %struct.rt_mutex* %92, i32* null, %struct.task_struct* %93)
  %95 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %96 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  br label %98

98:                                               ; preds = %85, %84
  ret void
}

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @plist_del(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local i32 @plist_add(i32*, i32*) #1

declare dso_local i32 @__rt_mutex_adjust_prio(%struct.task_struct*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @plist_node_empty(i32*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, %struct.rt_mutex*, i32*, %struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
