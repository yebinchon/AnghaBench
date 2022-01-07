; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_gdb_has_a_terminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_gdb_has_a_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_has_a_terminal_flag = common dso_local global i32 0, align 4
@stdin_serial = common dso_local global i32* null, align 8
@our_ttystate = common dso_local global i32* null, align 8
@F_GETFL = common dso_local global i32 0, align 4
@TIOCGPGRP = common dso_local global i32 0, align 4
@our_process_group = common dso_local global i32 0, align 4
@tflags_ours = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_has_a_terminal() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @gdb_has_a_terminal_flag, align 4
  switch i32 %2, label %20 [
    i32 128, label %3
    i32 129, label %4
    i32 130, label %5
  ]

3:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %21

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

5:                                                ; preds = %0
  store i32 129, i32* @gdb_has_a_terminal_flag, align 4
  %6 = call i32* @serial_fdopen(i32 0)
  store i32* %6, i32** @stdin_serial, align 8
  %7 = load i32*, i32** @stdin_serial, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32*, i32** @stdin_serial, align 8
  %11 = call i32* @serial_get_tty_state(i32* %10)
  store i32* %11, i32** @our_ttystate, align 8
  %12 = load i32*, i32** @our_ttystate, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 128, i32* @gdb_has_a_terminal_flag, align 4
  br label %15

15:                                               ; preds = %14, %9
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i32, i32* @gdb_has_a_terminal_flag, align 4
  %18 = icmp eq i32 %17, 128
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %21

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %16, %4, %3
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32* @serial_fdopen(i32) #1

declare dso_local i32* @serial_get_tty_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
