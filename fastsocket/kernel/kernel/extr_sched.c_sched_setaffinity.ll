; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_setaffinity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_sched_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sched_setaffinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %10 = call i32 (...) @get_online_cpus()
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.task_struct* @find_process_by_pid(i32 %12)
  store %struct.task_struct* %13, %struct.task_struct** %8, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = call i32 (...) @put_online_cpus()
  %19 = load i64, i64* @ESRCH, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call i32 @get_task_struct(%struct.task_struct* %22)
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @alloc_cpumask_var(i32* %6, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %89

31:                                               ; preds = %21
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @alloc_cpumask_var(i32* %7, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %86

38:                                               ; preds = %31
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %42 = call i32 @check_same_owner(%struct.task_struct* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @CAP_SYS_NICE, align 4
  %46 = call i32 @capable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %83

49:                                               ; preds = %44, %38
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = call i32 @security_task_setscheduler(%struct.task_struct* %50, i32 0, i32* null)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %83

55:                                               ; preds = %49
  %56 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @cpuset_cpus_allowed(%struct.task_struct* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @cpumask_and(i32 %59, %struct.cpumask* %60, i32 %61)
  br label %63

63:                                               ; preds = %77, %55
  %64 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %63
  %70 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @cpuset_cpus_allowed(%struct.task_struct* %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @cpumask_subset(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @cpumask_copy(i32 %78, i32 %79)
  br label %63

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %54, %48
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @free_cpumask_var(i32 %84)
  br label %86

86:                                               ; preds = %83, %35
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @free_cpumask_var(i32 %87)
  br label %89

89:                                               ; preds = %86, %28
  %90 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %91 = call i32 @put_task_struct(%struct.task_struct* %90)
  %92 = call i32 (...) @put_online_cpus()
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %89, %16
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_process_by_pid(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @check_same_owner(%struct.task_struct*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_task_setscheduler(%struct.task_struct*, i32, i32*) #1

declare dso_local i32 @cpuset_cpus_allowed(%struct.task_struct*, i32) #1

declare dso_local i32 @cpumask_and(i32, %struct.cpumask*, i32) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @cpumask_subset(i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
