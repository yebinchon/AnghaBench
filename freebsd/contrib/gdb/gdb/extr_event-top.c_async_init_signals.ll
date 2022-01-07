; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_async_init_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_async_init_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@handle_sigint = common dso_local global i32 0, align 4
@async_request_quit = common dso_local global i32 0, align 4
@sigint_token = common dso_local global i8* null, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@handle_sigquit = common dso_local global i32 0, align 4
@async_do_nothing = common dso_local global i32 0, align 4
@sigquit_token = common dso_local global i8* null, align 8
@SIGFPE = common dso_local global i32 0, align 4
@handle_sigfpe = common dso_local global i32 0, align 4
@async_float_handler = common dso_local global i32 0, align 4
@sigfpe_token = common dso_local global i8* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGWINCH_HANDLER = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@async_disconnect = common dso_local global i32 0, align 4
@async_stop_sig = common dso_local global i32 0, align 4
@handle_sighup = common dso_local global i32 0, align 4
@handle_sigwinch = common dso_local global i32 0, align 4
@sighup_token = common dso_local global i8* null, align 8
@sigtstp_token = common dso_local global i8* null, align 8
@sigwinch_token = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_init_signals() #0 {
  %1 = load i32, i32* @SIGINT, align 4
  %2 = load i32, i32* @handle_sigint, align 4
  %3 = call i64 @signal(i32 %1, i32 %2)
  %4 = load i32, i32* @async_request_quit, align 4
  %5 = call i8* @create_async_signal_handler(i32 %4, i32* null)
  store i8* %5, i8** @sigint_token, align 8
  %6 = load i32, i32* @SIGQUIT, align 4
  %7 = load i32, i32* @handle_sigquit, align 4
  %8 = call i64 @signal(i32 %6, i32 %7)
  %9 = load i32, i32* @async_do_nothing, align 4
  %10 = call i8* @create_async_signal_handler(i32 %9, i32* null)
  store i8* %10, i8** @sigquit_token, align 8
  %11 = load i32, i32* @SIGFPE, align 4
  %12 = load i32, i32* @handle_sigfpe, align 4
  %13 = call i64 @signal(i32 %11, i32 %12)
  %14 = load i32, i32* @async_float_handler, align 4
  %15 = call i8* @create_async_signal_handler(i32 %14, i32* null)
  store i8* %15, i8** @sigfpe_token, align 8
  ret void
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i8* @create_async_signal_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
