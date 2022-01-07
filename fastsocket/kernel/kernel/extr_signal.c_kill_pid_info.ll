; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kill_pid_info(i32 %0, %struct.siginfo* %1, %struct.pid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo*, align 8
  %6 = alloca %struct.pid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.siginfo* %1, %struct.siginfo** %5, align 8
  store %struct.pid* %2, %struct.pid** %6, align 8
  %9 = load i32, i32* @ESRCH, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = call i32 (...) @rcu_read_lock()
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.pid*, %struct.pid** %6, align 8
  %14 = load i32, i32* @PIDTYPE_PID, align 4
  %15 = call %struct.task_struct* @pid_task(%struct.pid* %13, i32 %14)
  store %struct.task_struct* %15, %struct.task_struct** %8, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.siginfo*, %struct.siginfo** %5, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = call i32 @group_send_sig_info(i32 %19, %struct.siginfo* %20, %struct.task_struct* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ESRCH, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %12

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %12
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @group_send_sig_info(i32, %struct.siginfo*, %struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
