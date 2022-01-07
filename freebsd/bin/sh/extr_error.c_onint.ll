; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_error.c_onint.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_error.c_onint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intpending = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@rootshell = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@EXINT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @onint() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @intpending, align 8
  %2 = call i32 @sigemptyset(i32* %1)
  %3 = load i32, i32* @SIG_SETMASK, align 4
  %4 = call i32 @sigprocmask(i32 %3, i32* %1, i32* null)
  %5 = load i64, i64* @rootshell, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i64, i64* @iflag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @EXINT, align 4
  %12 = call i32 @exraise(i32 %11)
  br label %23

13:                                               ; preds = %7, %0
  %14 = load i64, i64* @SIGINT, align 8
  %15 = load i32, i32* @SIG_DFL, align 4
  %16 = call i32 @signal(i64 %14, i32 %15)
  %17 = call i64 (...) @getpid()
  %18 = load i64, i64* @SIGINT, align 8
  %19 = call i32 @kill(i64 %17, i64 %18)
  %20 = load i64, i64* @SIGINT, align 8
  %21 = add nsw i64 128, %20
  %22 = call i32 @_exit(i64 %21) #3
  unreachable

23:                                               ; preds = %10
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @exraise(i32) #1

declare dso_local i32 @signal(i64, i32) #1

declare dso_local i32 @kill(i64, i64) #1

declare dso_local i64 @getpid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
