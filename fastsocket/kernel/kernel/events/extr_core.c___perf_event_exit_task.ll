; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_exit_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_exit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64 }
%struct.perf_event_context = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*, %struct.task_struct*)* @__perf_event_exit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_exit_task(%struct.perf_event* %0, %struct.perf_event_context* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = call i32 @perf_group_detach(%struct.perf_event* %15)
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  br label %20

20:                                               ; preds = %11, %3
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = call i32 @perf_remove_from_context(%struct.perf_event* %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = call i32 @sync_child_event(%struct.perf_event* %28, %struct.task_struct* %29)
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = call i32 @free_event(%struct.perf_event* %31)
  br label %33

33:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @perf_group_detach(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @perf_remove_from_context(%struct.perf_event*) #1

declare dso_local i32 @sync_child_event(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i32 @free_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
