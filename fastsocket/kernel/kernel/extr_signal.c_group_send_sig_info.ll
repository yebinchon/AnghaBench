; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_group_send_sig_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_group_send_sig_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @group_send_sig_info(i32 %0, %struct.siginfo* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.siginfo* %1, %struct.siginfo** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.siginfo*, %struct.siginfo** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = call i32 @check_kill_permission(i32 %8, %struct.siginfo* %9, %struct.task_struct* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.siginfo*, %struct.siginfo** %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = call i32 @do_send_sig_info(i32 %18, %struct.siginfo* %19, %struct.task_struct* %20, i32 1)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %14, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @check_kill_permission(i32, %struct.siginfo*, %struct.task_struct*) #1

declare dso_local i32 @do_send_sig_info(i32, %struct.siginfo*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
