; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_cancel_breakpoints_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_cancel_breakpoints_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i64, i32 }

@SIGTRAP = common dso_local global i64 0, align 8
@DECR_PC_AFTER_BREAK = common dso_local global i64 0, align 8
@debug_lin_lwp = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CBC: Push back breakpoint for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @cancel_breakpoints_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cancel_breakpoints_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwp_info*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.lwp_info*
  store %struct.lwp_info* %8, %struct.lwp_info** %6, align 8
  %9 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %10 = load %struct.lwp_info*, %struct.lwp_info** %6, align 8
  %11 = icmp eq %struct.lwp_info* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %15 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %13
  %19 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %20 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @WIFSTOPPED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %26 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @WSTOPSIG(i64 %27)
  %29 = load i64, i64* @SIGTRAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %24
  %32 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %33 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @read_pc_pid(i32 %34)
  %36 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i64 @breakpoint_inserted_here_p(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %31
  %41 = load i64, i64* @debug_lin_lwp, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @gdb_stdlog, align 4
  %45 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %46 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @target_pid_to_str(i32 %47)
  %49 = call i32 @fprintf_unfiltered(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %55 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @read_pc_pid(i32 %56)
  %58 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %61 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @write_pc_pid(i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %50
  %65 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %66 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %31, %24, %18, %13
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @WIFSTOPPED(i64) #1

declare dso_local i64 @WSTOPSIG(i64) #1

declare dso_local i64 @breakpoint_inserted_here_p(i64) #1

declare dso_local i64 @read_pc_pid(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @write_pc_pid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
