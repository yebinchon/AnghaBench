; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c___ptrace_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c___ptrace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, i32 }

@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ptrace_detach(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %7 = call i32 @__ptrace_unlink(%struct.task_struct* %6)
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EXIT_ZOMBIE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = call i64 @task_detached(%struct.task_struct* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = call i64 @thread_group_empty(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = call i32 @same_thread_group(i32 %24, %struct.task_struct* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @do_notify_parent(%struct.task_struct* %29, i32 %32)
  br label %47

34:                                               ; preds = %21
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ignoring_children(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = call i32 @__wake_up_parent(%struct.task_struct* %41, %struct.task_struct* %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %17, %13
  %49 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %50 = call i64 @task_detached(%struct.task_struct* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @EXIT_DEAD, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @__ptrace_unlink(%struct.task_struct*) #1

declare dso_local i64 @task_detached(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @same_thread_group(i32, %struct.task_struct*) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i64 @ignoring_children(i32) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
