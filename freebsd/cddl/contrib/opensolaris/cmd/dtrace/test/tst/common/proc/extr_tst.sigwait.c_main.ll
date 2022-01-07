; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/proc/extr_tst.sigwait.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/proc/extr_tst.sigwait.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32, i32 }
%struct.itimerspec = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: cannot create CLOCK_HIGHRES timer: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@TIMER_RELTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: timer_settime() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigevent, align 4
  %7 = alloca %struct.itimerspec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @SIGEV_SIGNAL, align 4
  %16 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @CLOCK_REALTIME, align 4
  %20 = call i32 @timer_create(i32 %19, %struct.sigevent* %6, i32* %9)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %2
  %31 = call i32 @sigemptyset(i32* %8)
  %32 = load i32, i32* @SIGUSR1, align 4
  %33 = call i32 @sigaddset(i32* %8, i32 %32)
  %34 = load i32, i32* @SIG_BLOCK, align 4
  %35 = call i32 @sigprocmask(i32 %34, i32* %8, i32* null)
  %36 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @NANOSEC, align 4
  %43 = sdiv i32 %42, 2
  %44 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @TIMER_RELTIME, align 4
  %48 = call i32 @timer_settime(i32 %46, i32 %47, %struct.itimerspec* %7, i32* null)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %30
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %54)
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %61, %58
  %60 = call i32 @sigwait(i32* %8, i32* %11)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SIGUSR1, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %59, label %65

65:                                               ; preds = %61
  ret i32 0
}

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

declare dso_local i32 @sigwait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
