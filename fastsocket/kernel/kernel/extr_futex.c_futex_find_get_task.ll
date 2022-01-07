; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_futex_find_get_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_futex_find_get_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i64, i64 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32)* @futex_find_get_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @futex_find_get_task(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %6, %struct.cred** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.task_struct* @find_task_by_vpid(i32 %8)
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ESRCH, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.task_struct* @ERR_PTR(i32 %14)
  store %struct.task_struct* %15, %struct.task_struct** %3, align 8
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call %struct.cred* @__task_cred(%struct.task_struct* %17)
  store %struct.cred* %18, %struct.cred** %5, align 8
  %19 = load %struct.cred*, %struct.cred** %4, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.cred*, %struct.cred** %4, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cred*, %struct.cred** %5, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @ESRCH, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.task_struct* @ERR_PTR(i32 %36)
  store %struct.task_struct* %37, %struct.task_struct** %3, align 8
  br label %41

38:                                               ; preds = %26, %16
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = call i32 @get_task_struct(%struct.task_struct* %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %12
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %44
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.task_struct* @ERR_PTR(i32) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
