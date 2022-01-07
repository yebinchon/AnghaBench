; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_zap_pid_ns_processes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_zap_pid_ns_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pid_namespace = type { i64 }
%struct.task_struct = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zap_pid_ns_processes(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  %6 = call i32 @read_lock(i32* @tasklist_lock)
  %7 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %8 = call i32 @next_pidmap(%struct.pid_namespace* %7, i32 1)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @find_vpid(i32 %14)
  %16 = load i32, i32* @PIDTYPE_PID, align 4
  %17 = call %struct.task_struct* @pid_task(i32 %15, i32 %16)
  store %struct.task_struct* %17, %struct.task_struct** %5, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @SIGKILL, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = call i32 @force_sig(i32 %21, %struct.task_struct* %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @next_pidmap(%struct.pid_namespace* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  %30 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %31

31:                                               ; preds = %36, %29
  %32 = load i32, i32* @TIF_SIGPENDING, align 4
  %33 = call i32 @clear_thread_flag(i32 %32)
  %34 = load i32, i32* @__WALL, align 4
  %35 = call i32 @sys_wait4(i32 -1, i32* null, i32 %34, i32* null)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ECHILD, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %31, label %41

41:                                               ; preds = %36
  %42 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %43 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %48 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %56 = call i32 @acct_exit_ns(%struct.pid_namespace* %55)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @next_pidmap(%struct.pid_namespace*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @find_vpid(i32) #1

declare dso_local i32 @force_sig(i32, %struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @sys_wait4(i32, i32*, i32, i32*) #1

declare dso_local i32 @acct_exit_ns(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
