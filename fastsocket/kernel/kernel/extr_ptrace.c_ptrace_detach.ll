; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_detach(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @valid_signal(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call i32 @ptrace_disable(%struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %18 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %16, i32 %17)
  %19 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @current, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = call i32 @__ptrace_detach(i32 %28, %struct.task_struct* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @wake_up_process(%struct.task_struct* %36)
  br label %38

38:                                               ; preds = %35, %24
  br label %39

39:                                               ; preds = %38, %13
  %40 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = call i32 @release_task(%struct.task_struct* %45)
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @ptrace_disable(%struct.task_struct*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @__ptrace_detach(i32, %struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @release_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
