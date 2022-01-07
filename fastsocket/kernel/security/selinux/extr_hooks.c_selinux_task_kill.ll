; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_task_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_task_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.siginfo = type { i32 }

@PROCESS__SIGNULL = common dso_local global i64 0, align 8
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.siginfo*, i32, i64)* @selinux_task_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_task_kill(%struct.task_struct* %0, %struct.siginfo* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.siginfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.siginfo* %1, %struct.siginfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @PROCESS__SIGNULL, align 8
  store i64 %14, i64* %9, align 8
  br label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @signal_to_av(i32 %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = call i32 @task_sid(%struct.task_struct* %23)
  %25 = load i32, i32* @SECCLASS_PROCESS, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @avc_has_perm(i64 %22, i32 %24, i32 %25, i64 %26, i32* null)
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @current_has_perm(%struct.task_struct* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i64 @signal_to_av(i32) #1

declare dso_local i32 @avc_has_perm(i64, i32, i32, i64, i32*) #1

declare dso_local i32 @task_sid(%struct.task_struct*) #1

declare dso_local i32 @current_has_perm(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
