; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_syslog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_READ = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_CONSOLE = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @selinux_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_syslog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @cap_syslog(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %22 [
    i32 3, label %13
    i32 10, label %13
    i32 6, label %17
    i32 7, label %17
    i32 8, label %17
    i32 0, label %21
    i32 1, label %21
    i32 2, label %21
    i32 4, label %21
    i32 5, label %21
  ]

13:                                               ; preds = %11, %11
  %14 = load i32, i32* @current, align 4
  %15 = load i32, i32* @SYSTEM__SYSLOG_READ, align 4
  %16 = call i32 @task_has_system(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %11, %11, %11
  %18 = load i32, i32* @current, align 4
  %19 = load i32, i32* @SYSTEM__SYSLOG_CONSOLE, align 4
  %20 = call i32 @task_has_system(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %11, %11, %11, %11, %11
  br label %22

22:                                               ; preds = %11, %21
  %23 = load i32, i32* @current, align 4
  %24 = load i32, i32* @SYSTEM__SYSLOG_MOD, align 4
  %25 = call i32 @task_has_system(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %17, %13
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @cap_syslog(i32) #1

declare dso_local i32 @task_has_system(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
