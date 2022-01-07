; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_check_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_check_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@CPUCLOCK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @CPUCLOCK_PID(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @CPUCLOCK_WHICH(i32 %9)
  %11 = load i64, i64* @CPUCLOCK_MAX, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %45

20:                                               ; preds = %16
  %21 = call i32 @read_lock(i32* @tasklist_lock)
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.task_struct* @find_task_by_vpid(i64 %22)
  store %struct.task_struct* %23, %struct.task_struct** %5, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @CPUCLOCK_PERTHREAD(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @same_thread_group(%struct.task_struct* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %39

35:                                               ; preds = %26
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = call i32 @thread_group_leader(%struct.task_struct* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %30, %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %35, %30
  %43 = call i32 @read_unlock(i32* @tasklist_lock)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %19, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @CPUCLOCK_PID(i32) #1

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
