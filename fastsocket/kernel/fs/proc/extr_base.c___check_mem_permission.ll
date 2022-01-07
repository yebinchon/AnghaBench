; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c___check_mem_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c___check_mem_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PTRACE_MODE_ATTACH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mm_struct* (%struct.task_struct*)* @__check_mem_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mm_struct* @__check_mem_permission(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %6)
  store %struct.mm_struct* %7, %struct.mm_struct** %4, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = icmp ne %struct.mm_struct* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mm_struct* @ERR_PTR(i32 %12)
  store %struct.mm_struct* %13, %struct.mm_struct** %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp eq %struct.task_struct* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %2, align 8
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call i64 @task_is_stopped_or_traced(%struct.task_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call %struct.task_struct* @tracehook_tracer_task(%struct.task_struct* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %29 = icmp eq %struct.task_struct* %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = load i32, i32* @PTRACE_MODE_ATTACH, align 4
  %37 = call i64 @ptrace_may_access(%struct.task_struct* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %40, %struct.mm_struct** %2, align 8
  br label %48

41:                                               ; preds = %34, %24
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = call i32 @mmput(%struct.mm_struct* %43)
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.mm_struct* @ERR_PTR(i32 %46)
  store %struct.mm_struct* %47, %struct.mm_struct** %2, align 8
  br label %48

48:                                               ; preds = %42, %39, %18, %10
  %49 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  ret %struct.mm_struct* %49
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local %struct.mm_struct* @ERR_PTR(i32) #1

declare dso_local i64 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @tracehook_tracer_task(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
