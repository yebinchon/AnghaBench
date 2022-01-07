; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_attach_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_attach_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i32 }

@blocked_mask = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[New %s]\0A\00", align 1
@PTRACE_ATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't attach %s: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"LLAL: PTRACE_ATTACH %s, 0, 0 (OK)\0A\00", align 1
@ECHILD = common dso_local global i64 0, align 8
@__WCLONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"LLAL: waitpid %s received %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lin_lwp_attach_lwp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @is_lwp(i32 %8)
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load i32, i32* @SIGCHLD, align 4
  %12 = call i32 @sigismember(i32* @blocked_mask, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @SIGCHLD, align 4
  %16 = call i32 @sigaddset(i32* @blocked_mask, i32 %15)
  %17 = load i32, i32* @SIG_BLOCK, align 4
  %18 = call i32 @sigprocmask(i32 %17, i32* @blocked_mask, i32* null)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @target_pid_to_str(i32 %23)
  %25 = call i32 @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.lwp_info* @find_lwp_pid(i32 %27)
  store %struct.lwp_info* %28, %struct.lwp_info** %5, align 8
  %29 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %30 = icmp eq %struct.lwp_info* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.lwp_info* @add_lwp(i32 %32)
  store %struct.lwp_info* %33, %struct.lwp_info** %5, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @GET_LWP(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @GET_PID(i32 %37)
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %108

40:                                               ; preds = %34
  %41 = load i32, i32* @PTRACE_ATTACH, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @GET_LWP(i32 %42)
  %44 = call i64 @ptrace(i32 %41, i32 %43, i32 0, i32 0)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @target_pid_to_str(i32 %47)
  %49 = load i64, i64* @errno, align 8
  %50 = call i8* @safe_strerror(i64 %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64, i64* @debug_lin_lwp, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @gdb_stdlog, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @target_pid_to_str(i32 %57)
  %59 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @GET_LWP(i32 %61)
  %63 = call i32 @waitpid(i32 %62, i32* %7, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ECHILD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @GET_LWP(i32 %71)
  %73 = load i32, i32* @__WCLONE, align 4
  %74 = call i32 @waitpid(i32 %72, i32* %7, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %76 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %66, %60
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @GET_LWP(i32 %79)
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @WIFSTOPPED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @WSTOPSIG(i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %82, %77
  %91 = phi i1 [ false, %82 ], [ false, %77 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @gdb_assert(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @child_post_attach(i32 %94)
  %96 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %97 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load i64, i64* @debug_lin_lwp, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load i32, i32* @gdb_stdlog, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @target_pid_to_str(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @status_to_str(i32 %104)
  %106 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %100, %90
  br label %111

108:                                              ; preds = %34
  %109 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %110 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %107
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @is_lwp(i32) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local %struct.lwp_info* @find_lwp_pid(i32) #1

declare dso_local %struct.lwp_info* @add_lwp(i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @child_post_attach(i32) #1

declare dso_local i32 @status_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
