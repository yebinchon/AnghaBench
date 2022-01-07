; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_capability.c_cap_get_target_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_capability.c_cap_get_target_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*, i32*)* @cap_get_target_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_get_target_pid(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %16 = call i64 @task_pid_vnr(%struct.task_struct* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = call i32 @read_lock(i32* @tasklist_lock)
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.task_struct* @find_task_by_vpid(i64 %20)
  store %struct.task_struct* %21, %struct.task_struct** %10, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ESRCH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @security_capget(%struct.task_struct* %28, i32* %29, i32* %30, i32* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %41

35:                                               ; preds = %13, %4
  %36 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @security_capget(%struct.task_struct* %36, i32* %37, i32* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i64 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i32 @security_capget(%struct.task_struct*, i32*, i32*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
