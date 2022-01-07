; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }
%struct.lwp_info = type { i32, i32, i32, i32 }

@child_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s is a cloned process\00", align 1
@__WCLONE = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i64 0, align 8
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"LLA: waitpid %ld, faking SIGSTOP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @lin_lwp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lin_lwp_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child_ops, i32 0, i32 0), align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 %8(i8* %9, i32 %10)
  %12 = load i32, i32* @inferior_ptid, align 4
  %13 = call i32 @GET_PID(i32 %12)
  %14 = load i32, i32* @inferior_ptid, align 4
  %15 = call i32 @GET_PID(i32 %14)
  %16 = call i32 @BUILD_LWP(i32 %13, i32 %15)
  %17 = call %struct.lwp_info* @add_lwp(i32 %16)
  store %struct.lwp_info* %17, %struct.lwp_info** %5, align 8
  %18 = load i32, i32* @inferior_ptid, align 4
  %19 = call i32 @GET_PID(i32 %18)
  %20 = call i32 @waitpid(i32 %19, i32* %7, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ECHILD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @inferior_ptid, align 4
  %29 = call i32 @target_pid_to_str(i32 %28)
  %30 = call i32 @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @inferior_ptid, align 4
  %32 = call i32 @GET_PID(i32 %31)
  %33 = load i32, i32* @__WCLONE, align 4
  %34 = call i32 @waitpid(i32 %32, i32* %7, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %36 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %27, %23, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @inferior_ptid, align 4
  %40 = call i32 @GET_PID(i32 %39)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @WIFSTOPPED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @WSTOPSIG(i32 %47)
  %49 = load i64, i64* @SIGSTOP, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %46, %42, %37
  %52 = phi i1 [ false, %42 ], [ false, %37 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @gdb_assert(i32 %53)
  %55 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %56 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i64, i64* @SIGSTOP, align 8
  %58 = call i32 @W_STOPCODE(i64 %57)
  %59 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %60 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %62 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load i64, i64* @debug_lin_lwp, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load i32, i32* @gdb_stdlog, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @fprintf_unfiltered(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %65, %51
  ret void
}

declare dso_local %struct.lwp_info* @add_lwp(i32) #1

declare dso_local i32 @BUILD_LWP(i32, i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @W_STOPCODE(i64) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
