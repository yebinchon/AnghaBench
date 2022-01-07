; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_clock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.timespec = type { i32 }
%union.cpu_time_count = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @posix_cpu_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_cpu_clock_get(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.cpu_time_count, align 4
  %9 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @CPUCLOCK_PID(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @CPUCLOCK_PERTHREAD(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %23 = call i32 @cpu_clock_sample(i32 %21, %struct.task_struct* %22, %union.cpu_time_count* %8)
  store i32 %23, i32* %7, align 4
  br label %30

24:                                               ; preds = %16
  %25 = call i32 @read_lock(i32* @tasklist_lock)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %28 = call i32 @cpu_clock_sample_group(i32 %26, %struct.task_struct* %27, %union.cpu_time_count* %8)
  store i32 %28, i32* %7, align 4
  %29 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %30

30:                                               ; preds = %24, %20
  br label %70

31:                                               ; preds = %2
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.task_struct* @find_task_by_vpid(i64 %33)
  store %struct.task_struct* %34, %struct.task_struct** %9, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @CPUCLOCK_PERTHREAD(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %44 = call i64 @same_thread_group(%struct.task_struct* %42, %struct.task_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %49 = call i32 @cpu_clock_sample(i32 %47, %struct.task_struct* %48, %union.cpu_time_count* %8)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %67

51:                                               ; preds = %37
  %52 = call i32 @read_lock(i32* @tasklist_lock)
  %53 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %54 = call i64 @thread_group_leader(%struct.task_struct* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %64 = call i32 @cpu_clock_sample_group(i32 %62, %struct.task_struct* %63, %union.cpu_time_count* %8)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %56, %51
  %66 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %67

67:                                               ; preds = %65, %50
  br label %68

68:                                               ; preds = %67, %31
  %69 = call i32 (...) @rcu_read_unlock()
  br label %70

70:                                               ; preds = %68, %30
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.timespec*, %struct.timespec** %5, align 8
  %78 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sample_to_timespec(i32 %76, i32 %79, %struct.timespec* %77)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %73
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @CPUCLOCK_PID(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_clock_sample(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @cpu_clock_sample_group(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sample_to_timespec(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
