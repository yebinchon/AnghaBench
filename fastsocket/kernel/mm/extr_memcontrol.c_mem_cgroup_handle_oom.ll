; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_handle_oom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_handle_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i64 }
%struct.oom_wait_info = type { %struct.TYPE_3__, %struct.mem_cgroup* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@memcg_oom_wake_function = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@memcg_oom_lock = common dso_local global i32 0, align 4
@memcg_oom_waitq = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@TIF_MEMDIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_handle_oom(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.oom_wait_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %10 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 1
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %10, align 8
  %11 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @memcg_oom_wake_function, align 4
  %14 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @current, align 4
  %17 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  store i32 1, i32* %8, align 4
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %23 = call i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup* %22)
  %24 = call i32 @spin_lock(i32* @memcg_oom_lock)
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %26 = call i32 @mem_cgroup_oom_lock(%struct.mem_cgroup* %25)
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %28 = load i32, i32* @TASK_KILLABLE, align 4
  %29 = call i32 @prepare_to_wait(i32* @memcg_oom_waitq, %struct.TYPE_3__* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %34 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %2
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %43 = call i32 @mem_cgroup_oom_notify(%struct.mem_cgroup* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i32 @spin_unlock(i32* @memcg_oom_lock)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %50 = call i32 @finish_wait(i32* @memcg_oom_waitq, %struct.TYPE_3__* %49)
  %51 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mem_cgroup_out_of_memory(%struct.mem_cgroup* %51, i32 %52)
  br label %58

54:                                               ; preds = %44
  %55 = call i32 (...) @schedule()
  %56 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %6, i32 0, i32 0
  %57 = call i32 @finish_wait(i32* @memcg_oom_waitq, %struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = call i32 @spin_lock(i32* @memcg_oom_lock)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %64 = call i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %67 = call i32 @memcg_wakeup_oom(%struct.mem_cgroup* %66)
  %68 = call i32 @spin_unlock(i32* @memcg_oom_lock)
  %69 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %70 = call i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup* %69)
  %71 = load i32, i32* @TIF_MEMDIE, align 4
  %72 = call i64 @test_thread_flag(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @current, align 4
  %76 = call i64 @fatal_signal_pending(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %65
  store i32 0, i32* %3, align 4
  br label %81

79:                                               ; preds = %74
  %80 = call i32 @schedule_timeout_uninterruptible(i32 1)
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mem_cgroup_oom_lock(%struct.mem_cgroup*) #1

declare dso_local i32 @prepare_to_wait(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mem_cgroup_oom_notify(%struct.mem_cgroup*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @finish_wait(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mem_cgroup_out_of_memory(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup*) #1

declare dso_local i32 @memcg_wakeup_oom(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
