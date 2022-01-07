; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_gdb_setup_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_gdb_setup_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event_loop_p = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i8* null, align 8
@gdb_stdlog = common dso_local global i8* null, align 8
@gdb_stdtarg = common dso_local global i8* null, align 8
@instream = common dso_local global i32 0, align 4
@async_command_editing_p = common dso_local global i32 0, align 4
@rl_callback_read_char_wrapper = common dso_local global i32 0, align 4
@call_readline = common dso_local global i32 0, align 4
@gdb_readline2 = common dso_local global i32 0, align 4
@command_line_handler = common dso_local global i32 0, align 4
@input_handler = common dso_local global i32 0, align 4
@rl_instream = common dso_local global i32 0, align 4
@input_fd = common dso_local global i32 0, align 4
@stdin_event_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_setup_readline() #0 {
  %1 = load i64, i64* @event_loop_p, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %25

3:                                                ; preds = %0
  %4 = load i32, i32* @stdout, align 4
  %5 = call i8* @stdio_fileopen(i32 %4)
  store i8* %5, i8** @gdb_stdout, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = call i8* @stdio_fileopen(i32 %6)
  store i8* %7, i8** @gdb_stderr, align 8
  %8 = load i8*, i8** @gdb_stderr, align 8
  store i8* %8, i8** @gdb_stdlog, align 8
  %9 = load i8*, i8** @gdb_stderr, align 8
  store i8* %9, i8** @gdb_stdtarg, align 8
  %10 = load i32, i32* @instream, align 4
  %11 = call i64 @ISATTY(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  store i32 1, i32* @async_command_editing_p, align 4
  %14 = load i32, i32* @rl_callback_read_char_wrapper, align 4
  store i32 %14, i32* @call_readline, align 4
  br label %17

15:                                               ; preds = %3
  store i32 0, i32* @async_command_editing_p, align 4
  %16 = load i32, i32* @gdb_readline2, align 4
  store i32 %16, i32* @call_readline, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* @command_line_handler, align 4
  store i32 %18, i32* @input_handler, align 4
  %19 = load i32, i32* @instream, align 4
  store i32 %19, i32* @rl_instream, align 4
  %20 = load i32, i32* @instream, align 4
  %21 = call i32 @fileno(i32 %20)
  store i32 %21, i32* @input_fd, align 4
  %22 = load i32, i32* @input_fd, align 4
  %23 = load i32, i32* @stdin_event_handler, align 4
  %24 = call i32 @add_file_handler(i32 %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %17, %0
  ret void
}

declare dso_local i8* @stdio_fileopen(i32) #1

declare dso_local i64 @ISATTY(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @add_file_handler(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
