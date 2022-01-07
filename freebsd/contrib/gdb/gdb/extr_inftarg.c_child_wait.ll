; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inftarg.c_child_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inftarg.c_child_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Child process unexpectedly missing: %s.\0A\00", align 1
@TARGET_WAITKIND_SIGNALLED = common dso_local global i32 0, align 4
@TARGET_SIGNAL_UNKNOWN = common dso_local global i32 0, align 4
@TARGET_WAITKIND_SPURIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @child_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_waitstatus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %5, align 8
  store i8* null, i8** %8, align 8
  br label %14

14:                                               ; preds = %60, %2
  %15 = call i32 (...) @set_sigint_trap()
  %16 = call i32 (...) @set_sigio_trap()
  %17 = load i32, i32* @inferior_ptid, align 4
  %18 = call i32 @ptrace_wait(i32 %17, i32* %7)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @clear_sigio_trap()
  %21 = call i32 (...) @clear_sigint_trap()
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EINTR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %60

29:                                               ; preds = %24
  %30 = load i32, i32* @gdb_stderr, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @safe_strerror(i32 %31)
  %33 = call i32 @fprintf_unfiltered(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @TARGET_WAITKIND_SIGNALLED, align 4
  %35 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %36 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @TARGET_SIGNAL_UNKNOWN, align 4
  %38 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %39 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = call i32 @pid_to_ptid(i32 -1)
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %14
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @target_has_exited(i32 %43, i32 %44, i32* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %60

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @pid_to_ptid(i32 %49)
  %51 = call i32 @target_thread_alive(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @TARGET_WAITKIND_SPURIOUS, align 4
  %55 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %56 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @pid_to_ptid(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %47, %28
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @inferior_ptid, align 4
  %63 = call i32 @PIDGET(i32 %62)
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %14, label %65

65:                                               ; preds = %60
  %66 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @store_waitstatus(%struct.target_waitstatus* %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pid_to_ptid(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %53, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @set_sigint_trap(...) #1

declare dso_local i32 @set_sigio_trap(...) #1

declare dso_local i32 @ptrace_wait(i32, i32*) #1

declare dso_local i32 @clear_sigio_trap(...) #1

declare dso_local i32 @clear_sigint_trap(...) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i64 @target_has_exited(i32, i32, i32*) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @store_waitstatus(%struct.target_waitstatus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
