; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_do_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.utrace = type { i64 }

@TASK_TRACED = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace*)* @utrace_do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utrace_do_stop(%struct.task_struct* %0, %struct.utrace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.utrace* %1, %struct.utrace** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call i64 @task_is_stopped(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i64 @task_is_stopped(%struct.task_struct* %14)
  %16 = call i64 @likely(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load i32, i32* @TASK_TRACED, align 4
  %21 = call i32 @__set_task_state(%struct.task_struct* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.utrace*, %struct.utrace** %4, align 8
  %30 = getelementptr inbounds %struct.utrace, %struct.utrace* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UTRACE_REPORT, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64, i64* @UTRACE_REPORT, align 8
  %36 = load %struct.utrace*, %struct.utrace** %4, align 8
  %37 = getelementptr inbounds %struct.utrace, %struct.utrace* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = call i32 @set_notify_resume(%struct.task_struct* %38)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = call i32 @task_is_traced(%struct.task_struct* %42)
  ret i32 %43
}

declare dso_local i64 @task_is_stopped(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @__set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_notify_resume(%struct.task_struct*) #1

declare dso_local i32 @task_is_traced(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
