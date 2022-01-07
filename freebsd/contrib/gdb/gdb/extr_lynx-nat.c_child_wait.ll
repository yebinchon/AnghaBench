; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lynx-nat.c_child_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lynx-nat.c_child_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i32 }
%union.wait = type { i32 }

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Child process unexpectedly missing: %s.\0A\00", align 1
@TARGET_WAITKIND_SIGNALLED = common dso_local global i8* null, align 8
@TARGET_SIGNAL_UNKNOWN = common dso_local global i8* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i64 0, align 8
@PTRACE_GETTRACESIG = common dso_local global i32 0, align 4
@SIGNEWTHREAD = common dso_local global i32 0, align 4
@TARGET_WAITKIND_SPURIOUS = common dso_local global i8* null, align 8
@TARGET_SIGNAL_0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Signal for unknown thread was not SIGNEWTHREAD\00", align 1
@SIGTHREADEXIT = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@TARGET_WAITKIND_EXITED = common dso_local global i8* null, align 8
@TARGET_WAITKIND_STOPPED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_waitstatus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.wait, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %5, align 8
  br label %13

13:                                               ; preds = %2, %24, %42, %125
  %14 = call i32 (...) @set_sigint_trap()
  %15 = call i32 @wait(%union.wait* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @clear_sigint_trap()
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EINTR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %13

25:                                               ; preds = %20
  %26 = load i32, i32* @gdb_stderr, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @safe_strerror(i32 %27)
  %29 = call i32 @fprintf_unfiltered(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** @TARGET_WAITKIND_SIGNALLED, align 8
  %31 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %32 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @TARGET_SIGNAL_UNKNOWN, align 8
  %34 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %35 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  store i32 -1, i32* %3, align 4
  br label %138

37:                                               ; preds = %13
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @inferior_ptid, align 4
  %40 = call i32 @PIDGET(i32 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %13

43:                                               ; preds = %37
  %44 = bitcast %union.wait* %8 to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @inferior_ptid, align 4
  %47 = call i64 @TIDGET(i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @inferior_ptid, align 4
  %54 = call i32 @PIDGET(i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @MERGEPID(i32 %54, i32 %55)
  store i32 %56, i32* @inferior_ptid, align 4
  %57 = load i32, i32* @inferior_ptid, align 4
  %58 = call i32 @add_thread(i32 %57)
  br label %59

59:                                               ; preds = %52, %49, %43
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @BUILDPID(i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* @inferior_ptid, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds %union.wait, %union.wait* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @WIFSTOPPED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = getelementptr inbounds %union.wait, %union.wait* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @WSTOPSIG(i32 %74)
  %76 = load i64, i64* @SIGTRAP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @in_thread_list(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @PTRACE_GETTRACESIG, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @PIDGET(i32 %84)
  %86 = call i32 @ptrace(i32 %83, i32 %85, i32 0, i32 0)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @SIGNEWTHREAD, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i8*, i8** @TARGET_WAITKIND_SPURIOUS, align 8
  %92 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %93 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @TARGET_SIGNAL_0, align 8
  %95 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %96 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %3, align 4
  br label %138

99:                                               ; preds = %82
  %100 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99
  br label %132

102:                                              ; preds = %78, %72, %67
  %103 = getelementptr inbounds %union.wait, %union.wait* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @WIFSTOPPED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = getelementptr inbounds %union.wait, %union.wait* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @WSTOPSIG(i32 %109)
  %111 = load i64, i64* @SIGTRAP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @in_thread_list(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i32, i32* @PTRACE_GETTRACESIG, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @PIDGET(i32 %119)
  %121 = call i32 @ptrace(i32 %118, i32 %120, i32 0, i32 0)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @SIGTHREADEXIT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load i32, i32* @PTRACE_CONT, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @PIDGET(i32 %127)
  %129 = call i32 @ptrace(i32 %126, i32 %128, i32 0, i32 0)
  br label %13

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %113, %107, %102
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %134 = bitcast %union.wait* %8 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @store_waitstatus(%struct.target_waitstatus* %133, i32 %135)
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %90, %25
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @set_sigint_trap(...) #1

declare dso_local i32 @wait(%union.wait*) #1

declare dso_local i32 @clear_sigint_trap(...) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i64 @TIDGET(i32) #1

declare dso_local i32 @MERGEPID(i32, i32) #1

declare dso_local i32 @add_thread(i32) #1

declare dso_local i32 @BUILDPID(i32, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i64 @in_thread_list(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @store_waitstatus(%struct.target_waitstatus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
