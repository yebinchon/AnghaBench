; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i64, i32, i32 }

@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SC:  kill %s **<SIGSTOP>**\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@SIGSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SC:  lwp kill %d %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ERRNO-OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @stop_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %7 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %2
  %11 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %12 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @debug_lin_lwp, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @gdb_stdlog, align 4
  %20 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %21 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @target_pid_to_str(i32 %22)
  %24 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  store i64 0, i64* @errno, align 8
  %26 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %27 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @GET_LWP(i32 %28)
  %30 = load i32, i32* @SIGSTOP, align 4
  %31 = call i32 @kill_lwp(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* @debug_lin_lwp, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load i32, i32* @gdb_stdlog, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* @errno, align 8
  %41 = call i8* @safe_strerror(i64 %40)
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i8* [ %41, %39 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %42 ]
  %45 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %44)
  br label %46

46:                                               ; preds = %43, %25
  %47 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %48 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %50 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @gdb_assert(i32 %53)
  br label %55

55:                                               ; preds = %46, %10, %2
  ret i32 0
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @kill_lwp(i32, i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
