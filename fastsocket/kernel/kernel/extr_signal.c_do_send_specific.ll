; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_send_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_send_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.siginfo*)* @do_send_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_send_specific(i64 %0, i64 %1, i32 %2, %struct.siginfo* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siginfo*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.siginfo* %3, %struct.siginfo** %8, align 8
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.task_struct* @find_task_by_vpid(i64 %14)
  store %struct.task_struct* %15, %struct.task_struct** %9, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %23 = call i64 @task_tgid_vnr(%struct.task_struct* %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.siginfo*, %struct.siginfo** %8, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %30 = call i32 @check_kill_permission(i32 %27, %struct.siginfo* %28, %struct.task_struct* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.siginfo*, %struct.siginfo** %8, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %40 = call i32 @do_send_sig_info(i32 %37, %struct.siginfo* %38, %struct.task_struct* %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ESRCH, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %33, %26
  br label %51

51:                                               ; preds = %50, %21, %4
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i64 @task_tgid_vnr(%struct.task_struct*) #1

declare dso_local i32 @check_kill_permission(i32, %struct.siginfo*, %struct.task_struct*) #1

declare dso_local i32 @do_send_sig_info(i32, %struct.siginfo*, %struct.task_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
