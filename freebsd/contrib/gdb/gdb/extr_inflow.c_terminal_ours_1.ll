; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_terminal_ours_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_terminal_ours_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_thisrun_terminal = common dso_local global i64 0, align 8
@terminal_is_ours = common dso_local global i32 0, align 4
@inferior_ttystate = common dso_local global i64 0, align 8
@stdin_serial = common dso_local global i32 0, align 4
@our_ttystate = common dso_local global i32 0, align 4
@job_control = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@TIOCGPGRP = common dso_local global i32 0, align 4
@TIOCSPGRP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@inferior_process_group = common dso_local global i32 0, align 4
@our_process_group = common dso_local global i32 0, align 4
@tflags_inferior = common dso_local global i8* null, align 8
@tflags_ours = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @terminal_ours_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_ours_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @inferior_thisrun_terminal, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @gdb_has_a_terminal()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %37

10:                                               ; preds = %6
  %11 = load i32, i32* @terminal_is_ours, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  store i32 1, i32* @terminal_is_ours, align 4
  %14 = load i64, i64* @inferior_ttystate, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @inferior_ttystate, align 8
  %18 = call i32 @xfree(i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @stdin_serial, align 4
  %21 = call i64 @serial_get_tty_state(i32 %20)
  store i64 %21, i64* @inferior_ttystate, align 8
  %22 = load i32, i32* @stdin_serial, align 4
  %23 = load i32, i32* @our_ttystate, align 4
  %24 = load i64, i64* @inferior_ttystate, align 8
  %25 = call i32 @serial_noflush_set_tty_state(i32 %22, i32 %23, i64 %24)
  %26 = load i64, i64* @job_control, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i64, i64* @job_control, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @SIGINT, align 4
  %34 = call i64 @signal(i32 %33, void (...)* @sigint_ours)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %9, %35, %10
  ret void
}

declare dso_local i64 @gdb_has_a_terminal(...) #1

declare dso_local i32 @xfree(i64) #1

declare dso_local i64 @serial_get_tty_state(i32) #1

declare dso_local i32 @serial_noflush_set_tty_state(i32, i32, i64) #1

declare dso_local i64 @signal(i32, void (...)*) #1

declare dso_local void @sigint_ours(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
