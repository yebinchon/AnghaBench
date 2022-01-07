; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_fork-child.c_startup_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_fork-child.c_startup_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STARTUP_WITH_SHELL = common dso_local global i64 0, align 8
@inferior_ignoring_startup_exec_events = common dso_local global i32 0, align 4
@inferior_ignoring_leading_exec_events = common dso_local global i64 0, align 8
@STOP_QUIETLY = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@stop_signal = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startup_inferior(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @clear_proceed_status()
  %7 = call i32 (...) @init_wait_for_inferior()
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* @STARTUP_WITH_SHELL, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @inferior_ignoring_startup_exec_events, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* @inferior_ignoring_startup_exec_events, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = call i64 (...) @target_reported_exec_events_per_exec_call()
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* @inferior_ignoring_leading_exec_events, align 8
  br label %16

16:                                               ; preds = %13, %40
  %17 = load i32, i32* @STOP_QUIETLY, align 4
  store i32 %17, i32* @stop_soon, align 4
  %18 = call i32 (...) @wait_for_inferior()
  %19 = load i64, i64* @stop_signal, align 8
  %20 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* @stop_signal, align 8
  %24 = call i32 @resume(i32 0, i64 %23)
  br label %40

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @target_terminal_init()
  %30 = call i32 (...) @target_terminal_inferior()
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @TARGET_SIGNAL_0, align 8
  %39 = call i32 @resume(i32 0, i64 %38)
  br label %40

40:                                               ; preds = %37, %22
  br label %16

41:                                               ; preds = %36
  %42 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %42, i32* @stop_soon, align 4
  ret void
}

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i64 @target_reported_exec_events_per_exec_call(...) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i32 @resume(i32, i64) #1

declare dso_local i32 @target_terminal_init(...) #1

declare dso_local i32 @target_terminal_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
