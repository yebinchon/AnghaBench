; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_put_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_put_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @put_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 2
  %6 = call i32 @atomic_long_dec_and_test(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.task_struct* @ACCESS_ONCE(i32 %13)
  store %struct.task_struct* %14, %struct.task_struct** %3, align 8
  %15 = call i32 (...) @smp_read_barrier_depends()
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i32 @get_task_struct(%struct.task_struct* %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = icmp ne %struct.task_struct* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = call i32 @put_task_struct(%struct.task_struct* %41)
  br label %43

43:                                               ; preds = %37, %21
  %44 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %45 = call i32 @perf_event_release_kernel(%struct.perf_event* %44)
  br label %46

46:                                               ; preds = %43, %8
  ret void
}

declare dso_local i32 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @ACCESS_ONCE(i32) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @perf_event_release_kernel(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
