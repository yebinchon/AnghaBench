; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_find_lively_task_by_vpid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_find_lively_task_by_vpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32)* @find_lively_task_by_vpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @find_lively_task_by_vpid(i32 %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %4, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.task_struct* @find_task_by_vpid(i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %4, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call i32 @get_task_struct(%struct.task_struct* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ESRCH, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.task_struct* @ERR_PTR(i32 %26)
  store %struct.task_struct* %27, %struct.task_struct** %2, align 8
  br label %43

28:                                               ; preds = %20
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = load i32, i32* @PTRACE_MODE_READ, align 4
  %33 = call i32 @ptrace_may_access(%struct.task_struct* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %38

36:                                               ; preds = %28
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %37, %struct.task_struct** %2, align 8
  br label %43

38:                                               ; preds = %35
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = call i32 @put_task_struct(%struct.task_struct* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.task_struct* @ERR_PTR(i32 %41)
  store %struct.task_struct* %42, %struct.task_struct** %2, align 8
  br label %43

43:                                               ; preds = %38, %36, %24
  %44 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.task_struct* @ERR_PTR(i32) #1

declare dso_local i32 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
