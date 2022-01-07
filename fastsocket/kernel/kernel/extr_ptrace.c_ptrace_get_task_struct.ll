; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_get_task_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace.c_ptrace_get_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32)* @ptrace_get_task_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @ptrace_get_task_struct(i32 %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.task_struct* @find_task_by_vpid(i32 %6)
  store %struct.task_struct* %7, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = icmp ne %struct.task_struct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i32 @get_task_struct(%struct.task_struct* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ESRCH, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.task_struct* @ERR_PTR(i32 %19)
  store %struct.task_struct* %20, %struct.task_struct** %2, align 8
  br label %23

21:                                               ; preds = %13
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %22, %struct.task_struct** %2, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.task_struct* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
