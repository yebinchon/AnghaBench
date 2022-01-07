; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_kill_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_kill_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32 }

@errno = common dso_local global i64 0, align 8
@PTRACE_KILL = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"KC:  PTRACE_KILL %s, 0, 0 (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @kill_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* @errno, align 8
  %5 = load i32, i32* @PTRACE_KILL, align 4
  %6 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %7 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GET_LWP(i32 %8)
  %10 = call i32 @ptrace(i32 %5, i32 %9, i32 0, i32 0)
  %11 = load i64, i64* @debug_lin_lwp, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @gdb_stdlog, align 4
  %15 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %16 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @target_pid_to_str(i32 %17)
  %19 = load i64, i64* @errno, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i64, i64* @errno, align 8
  %23 = call i8* @safe_strerror(i64 %22)
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i8* [ %23, %21 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = call i32 @fprintf_unfiltered(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %26)
  br label %28

28:                                               ; preds = %25, %2
  ret i32 0
}

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i8*) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i8* @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
