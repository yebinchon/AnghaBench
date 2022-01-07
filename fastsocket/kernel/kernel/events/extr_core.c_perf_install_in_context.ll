; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_install_in_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_install_in_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i64, i32, %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.perf_event = type { i32, %struct.perf_event_context* }

@__perf_install_in_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.perf_event*, i32)* @perf_install_in_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_install_in_context(%struct.perf_event_context* %0, %struct.perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 3
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  store %struct.task_struct* %10, %struct.task_struct** %7, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  store %struct.perf_event_context* %14, %struct.perf_event_context** %16, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @__perf_install_in_context, align 4
  %31 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %32 = call i32 @cpu_function_call(i32 %29, i32 %30, %struct.perf_event* %31)
  br label %60

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %49, %33
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = load i32, i32* @__perf_install_in_context, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %38 = call i32 @task_function_call(%struct.task_struct* %35, i32 %36, %struct.perf_event* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %60

41:                                               ; preds = %34
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %43 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %46 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %34

53:                                               ; preds = %41
  %54 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %56 = call i32 @add_event_to_ctx(%struct.perf_event* %54, %struct.perf_event_context* %55)
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %58 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  br label %60

60:                                               ; preds = %53, %40, %28
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cpu_function_call(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.perf_event*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
