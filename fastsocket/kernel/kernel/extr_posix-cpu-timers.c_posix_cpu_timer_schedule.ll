; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.task_struct* }
%struct.TYPE_4__ = type { i64 }
%struct.task_struct = type { i32, i32* }
%union.cpu_time_count = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posix_cpu_timer_schedule(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %union.cpu_time_count, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %5 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %6 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp eq %struct.task_struct* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %18 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @CPUCLOCK_PERTHREAD(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %24 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i32 @cpu_clock_sample(i32 %25, %struct.task_struct* %26, %union.cpu_time_count* %4)
  %28 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %29 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bump_cpu_timer(%struct.k_itimer* %28, i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %39 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clear_dead_task(%struct.k_itimer* %38, i32 %40)
  br label %98

42:                                               ; preds = %22
  %43 = call i32 @read_lock(i32* @tasklist_lock)
  br label %91

44:                                               ; preds = %16
  %45 = call i32 @read_lock(i32* @tasklist_lock)
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %55 = call i32 @put_task_struct(%struct.task_struct* %54)
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  %56 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %57 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %59, align 8
  %60 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %61 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %96

65:                                               ; preds = %44
  %66 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = call i64 @thread_group_empty(%struct.task_struct* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %77 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clear_dead_task(%struct.k_itimer* %76, i32 %78)
  br label %96

80:                                               ; preds = %71, %65
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %83 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %86 = call i32 @cpu_timer_sample_group(i32 %84, %struct.task_struct* %85, %union.cpu_time_count* %4)
  %87 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %88 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bump_cpu_timer(%struct.k_itimer* %87, i32 %89)
  br label %91

91:                                               ; preds = %81, %42
  %92 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %93 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @arm_timer(%struct.k_itimer* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %75, %53
  %97 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %98

98:                                               ; preds = %96, %37, %15
  %99 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %100 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %103 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %105 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  %106 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %107 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_clock_sample(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i32 @bump_cpu_timer(%struct.k_itimer*, i32) #1

declare dso_local i32 @clear_dead_task(%struct.k_itimer*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @cpu_timer_sample_group(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i32 @arm_timer(%struct.k_itimer*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
