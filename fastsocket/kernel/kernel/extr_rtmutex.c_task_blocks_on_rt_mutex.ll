; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_task_blocks_on_rt_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex.c_task_blocks_on_rt_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32, i32 }
%struct.rt_mutex_waiter = type { i32, i32, %struct.rt_mutex*, %struct.task_struct* }
%struct.task_struct = type { i32, %struct.rt_mutex_waiter*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*, i32)* @task_blocks_on_rt_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_blocks_on_rt_mutex(%struct.rt_mutex* %0, %struct.rt_mutex_waiter* %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt_mutex*, align 8
  %7 = alloca %struct.rt_mutex_waiter*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.rt_mutex_waiter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %6, align 8
  store %struct.rt_mutex_waiter* %1, %struct.rt_mutex_waiter** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %16 = call %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex* %15)
  store %struct.task_struct* %16, %struct.task_struct** %10, align 8
  %17 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  store %struct.rt_mutex_waiter* %17, %struct.rt_mutex_waiter** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call i32 @__rt_mutex_adjust_prio(%struct.task_struct* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %25 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %26 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %25, i32 0, i32 3
  store %struct.task_struct* %24, %struct.task_struct** %26, align 8
  %27 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %28 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %29 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %28, i32 0, i32 2
  store %struct.rt_mutex* %27, %struct.rt_mutex** %29, align 8
  %30 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %31 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %30, i32 0, i32 1
  %32 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @plist_node_init(i32* %31, i32 %34)
  %36 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %37 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %36, i32 0, i32 0
  %38 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @plist_node_init(i32* %37, i32 %40)
  %42 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %43 = call i64 @rt_mutex_has_waiters(%struct.rt_mutex* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %47 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %46)
  store %struct.rt_mutex_waiter* %47, %struct.rt_mutex_waiter** %11, align 8
  br label %48

48:                                               ; preds = %45, %4
  %49 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %50 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %49, i32 0, i32 1
  %51 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %52 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %51, i32 0, i32 1
  %53 = call i32 @plist_add(i32* %50, i32* %52)
  %54 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 1
  store %struct.rt_mutex_waiter* %54, %struct.rt_mutex_waiter** %56, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %62 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %63 = call %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex* %62)
  %64 = icmp eq %struct.rt_mutex_waiter* %61, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %48
  %66 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %11, align 8
  %71 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %70, i32 0, i32 0
  %72 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 2
  %74 = call i32 @plist_del(i32* %71, i32* %73)
  %75 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %76 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %75, i32 0, i32 0
  %77 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 2
  %79 = call i32 @plist_add(i32* %76, i32* %78)
  %80 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %81 = call i32 @__rt_mutex_adjust_prio(%struct.task_struct* %80)
  %82 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 1
  %84 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %83, align 8
  %85 = icmp ne %struct.rt_mutex_waiter* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 0
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %99

92:                                               ; preds = %48
  %93 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @debug_rt_mutex_detect_deadlock(%struct.rt_mutex_waiter* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %99

99:                                               ; preds = %98, %87
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %119

103:                                              ; preds = %99
  %104 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %105 = call i32 @get_task_struct(%struct.task_struct* %104)
  %106 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %107 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %112 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %7, align 8
  %113 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %114 = call i32 @rt_mutex_adjust_prio_chain(%struct.task_struct* %109, i32 %110, %struct.rt_mutex* %111, %struct.rt_mutex_waiter* %112, %struct.task_struct* %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.rt_mutex*, %struct.rt_mutex** %6, align 8
  %116 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %115, i32 0, i32 0
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %103, %102
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rt_mutex_adjust_prio(%struct.task_struct*) #1

declare dso_local i32 @plist_node_init(i32*, i32) #1

declare dso_local i64 @rt_mutex_has_waiters(%struct.rt_mutex*) #1

declare dso_local %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex*) #1

declare dso_local i32 @plist_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @plist_del(i32*, i32*) #1

declare dso_local i64 @debug_rt_mutex_detect_deadlock(%struct.rt_mutex_waiter*, i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rt_mutex_adjust_prio_chain(%struct.task_struct*, i32, %struct.rt_mutex*, %struct.rt_mutex_waiter*, %struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
