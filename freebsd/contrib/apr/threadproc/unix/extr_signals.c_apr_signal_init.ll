; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/threadproc/unix/extr_signals.c_apr_signal_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/threadproc/unix/extr_signals.c_apr_signal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Signal 0\00", align 1
@APR_NUMSIG = common dso_local global i32 0, align 4
@signal_description = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"signal #%d\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGCLD = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGIOT = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@SIGPWR = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGURG = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apr_signal_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @store_desc(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @APR_NUMSIG, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i32**, i32*** @signal_description, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @apr_psprintf(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32**, i32*** @signal_description, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* %19, i32** %23, align 8
  br label %24

24:                                               ; preds = %16, %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @store_desc(i32, i8*) #1

declare dso_local i32* @apr_psprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
