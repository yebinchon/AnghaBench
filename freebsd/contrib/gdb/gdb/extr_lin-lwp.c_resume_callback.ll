; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_resume_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_resume_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i64, i64, i64, i32 }
%struct.thread_info = type { i32 }

@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RC:  PTRACE_CONT %s, 0, 0 (resume sibling)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @resume_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.thread_info*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %7 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %12 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %17 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GET_LWP(i32 %18)
  %20 = call i32 @pid_to_ptid(i32 %19)
  %21 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %22 = call i32 @child_resume(i32 %20, i32 0, i32 %21)
  %23 = load i64, i64* @debug_lin_lwp, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load i32, i32* @gdb_stdlog, align 4
  %27 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %28 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @target_pid_to_str(i32 %29)
  %31 = call i32 @fprintf_unfiltered(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %34 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %36 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %10, %2
  ret i32 0
}

declare dso_local i32 @child_resume(i32, i32, i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
