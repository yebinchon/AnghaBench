; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_posix_timer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_posix_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_timer_event(%struct.k_itimer* %0, i32 %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %10 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %8, i32* %13, align 4
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %16 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call %struct.task_struct* @pid_task(i32 %17, i32 %18)
  store %struct.task_struct* %19, %struct.task_struct** %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %24 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %32 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @send_sigqueue(%struct.TYPE_4__* %33, %struct.task_struct* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %22, %2
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @send_sigqueue(%struct.TYPE_4__*, %struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
