; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.task_struct* }
%struct.k_itimer = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.task_struct*, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@CPUCLOCK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k_itimer*)* @posix_cpu_timer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_cpu_timer_create(%struct.k_itimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %8 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @CPUCLOCK_PID(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %12 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @CPUCLOCK_WHICH(i32 %13)
  %15 = load i64, i64* @CPUCLOCK_MAX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %96

20:                                               ; preds = %1
  %21 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %22 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %27 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %32 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = call i32 @read_lock(i32* @tasklist_lock)
  %37 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %38 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @CPUCLOCK_PERTHREAD(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %20
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %46, %struct.task_struct** %6, align 8
  br label %59

47:                                               ; preds = %42
  %48 = load i64, i64* %5, align 8
  %49 = call %struct.task_struct* @find_task_by_vpid(i64 %48)
  store %struct.task_struct* %49, %struct.task_struct** %6, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = icmp ne %struct.task_struct* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %55 = call i32 @same_thread_group(%struct.task_struct* %53, %struct.task_struct* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store %struct.task_struct* null, %struct.task_struct** %6, align 8
  br label %58

58:                                               ; preds = %57, %52, %47
  br label %59

59:                                               ; preds = %58, %45
  br label %79

60:                                               ; preds = %20
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load %struct.task_struct*, %struct.task_struct** %65, align 8
  store %struct.task_struct* %66, %struct.task_struct** %6, align 8
  br label %78

67:                                               ; preds = %60
  %68 = load i64, i64* %5, align 8
  %69 = call %struct.task_struct* @find_task_by_vpid(i64 %68)
  store %struct.task_struct* %69, %struct.task_struct** %6, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = icmp ne %struct.task_struct* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %74 = call i32 @thread_group_leader(%struct.task_struct* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store %struct.task_struct* null, %struct.task_struct** %6, align 8
  br label %77

77:                                               ; preds = %76, %72, %67
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %81 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %82 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.task_struct* %80, %struct.task_struct** %84, align 8
  %85 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %86 = icmp ne %struct.task_struct* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %89 = call i32 @get_task_struct(%struct.task_struct* %88)
  br label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = call i32 @read_unlock(i32* @tasklist_lock)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %17
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @CPUCLOCK_PID(i32) #1

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
