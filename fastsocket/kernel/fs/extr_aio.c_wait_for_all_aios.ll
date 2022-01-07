; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_wait_for_all_aios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_wait_for_all_aios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kioctx = type { i32, i32, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*)* @wait_for_all_aios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_all_aios(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %4, %struct.task_struct** %3, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, %struct.task_struct* %6)
  %8 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %9 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %12 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %18 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %17, i32 0, i32 1
  %19 = call i32 @add_wait_queue(i32* %18, i32* @wait)
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %22 = call i32 @set_task_state(%struct.task_struct* %20, i32 %21)
  br label %23

23:                                               ; preds = %28, %16
  %24 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %25 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %30 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = call i32 (...) @io_schedule()
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %35 = call i32 @set_task_state(%struct.task_struct* %33, i32 %34)
  %36 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %37 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = load i32, i32* @TASK_RUNNING, align 4
  %42 = call i32 @__set_task_state(%struct.task_struct* %40, i32 %41)
  %43 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %44 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %43, i32 0, i32 1
  %45 = call i32 @remove_wait_queue(i32* %44, i32* @wait)
  br label %46

46:                                               ; preds = %39, %15
  %47 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %48 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @__set_task_state(%struct.task_struct*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
