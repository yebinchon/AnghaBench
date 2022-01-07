; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_fill_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_fill_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.taskstats = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@TASKSTATS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*, %struct.taskstats*)* @fill_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_pid(i32 %0, %struct.task_struct* %1, %struct.taskstats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.taskstats*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.taskstats* %2, %struct.taskstats** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.task_struct* @find_task_by_vpid(i32 %13)
  store %struct.task_struct* %14, %struct.task_struct** %6, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call i32 @get_task_struct(%struct.task_struct* %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ESRCH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %3
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = call i32 @get_task_struct(%struct.task_struct* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %33 = call i32 @memset(%struct.taskstats* %32, i32 0, i32 12)
  %34 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = call i32 @delayacct_add_tsk(%struct.taskstats* %34, %struct.task_struct* %35)
  %37 = load i32, i32* @TASKSTATS_VERSION, align 4
  %38 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %39 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %44 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %49 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = call i32 @bacct_add_tsk(%struct.taskstats* %50, %struct.task_struct* %51)
  %53 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %55 = call i32 @xacct_add_tsk(%struct.taskstats* %53, %struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = call i32 @put_task_struct(%struct.task_struct* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %31, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memset(%struct.taskstats*, i32, i32) #1

declare dso_local i32 @delayacct_add_tsk(%struct.taskstats*, %struct.task_struct*) #1

declare dso_local i32 @bacct_add_tsk(%struct.taskstats*, %struct.task_struct*) #1

declare dso_local i32 @xacct_add_tsk(%struct.taskstats*, %struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
