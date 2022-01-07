; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_thread_get_thread_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_thread_get_thread_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"__pthread_sig_restart\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"__pthread_sig_cancel\00", align 1
@sigchld_handler = common dso_local global i32 0, align 4
@blocked_mask = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@suspend_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lin_thread_get_thread_signals(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @sigemptyset(i32* %6)
  %8 = call i32 @get_signo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = call i32 @get_signo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %37

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sigaddset(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sigaddset(i32* %21, i32 %22)
  %24 = load i32, i32* @sigchld_handler, align 4
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %27 = call i32 @sigemptyset(i32* %26)
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sigaction(i32 %29, %struct.sigaction* %3, i32* null)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sigaddset(i32* @blocked_mask, i32 %31)
  %33 = load i32, i32* @SIG_BLOCK, align 4
  %34 = call i32 @sigprocmask(i32 %33, i32* @blocked_mask, i32* null)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sigdelset(i32* @suspend_mask, i32 %35)
  br label %37

37:                                               ; preds = %17, %16, %11
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @get_signo(i8*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
