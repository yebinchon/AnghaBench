; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_clone_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_clone_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__, i64, %struct.task_struct* }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @ptrace_clone_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_clone_attach(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ptrace_attach_task(%struct.task_struct* %9, i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @WARN_ON(i32 1)
  br label %58

16:                                               ; preds = %2
  %17 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 3
  %20 = load %struct.task_struct*, %struct.task_struct** %19, align 8
  store %struct.task_struct* %20, %struct.task_struct** %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PF_EXITING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %16
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = call i32 @__ptrace_link(%struct.task_struct* %38, %struct.task_struct* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %32, %27, %16
  %42 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %48 = call i32 @ptrace_abort_attach(%struct.task_struct* %47)
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @SIGSTOP, align 4
  %54 = call i32 @sigaddset(i32* %52, i32 %53)
  %55 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %56 = load i32, i32* @TIF_SIGPENDING, align 4
  %57 = call i32 @set_tsk_thread_flag(%struct.task_struct* %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %46, %14
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ptrace_attach_task(%struct.task_struct*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @__ptrace_link(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @ptrace_abort_attach(%struct.task_struct*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
