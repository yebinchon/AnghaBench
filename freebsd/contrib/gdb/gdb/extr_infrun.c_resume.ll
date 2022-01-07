; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cleanup = type { i32 }

@resume_cleanups = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@CANNOT_STEP_HW_WATCHPOINTS = common dso_local global i64 0, align 8
@breakpoints_inserted = common dso_local global i64 0, align 8
@permanent_breakpoint_here = common dso_local global i64 0, align 8
@singlestep_breakpoints_inserted_p = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i8* null, align 8
@singlestep_ptid = common dso_local global i8* null, align 8
@pending_follow = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TARGET_WAITKIND_SPURIOUS = common dso_local global i8* null, align 8
@RESUME_ALL = common dso_local global i8* null, align 8
@stepping_past_singlestep_breakpoint = common dso_local global i64 0, align 8
@scheduler_mode = common dso_local global i64 0, align 8
@schedlock_on = common dso_local global i64 0, align 8
@schedlock_step = common dso_local global i64 0, align 8
@CANNOT_STEP_BREAKPOINT = common dso_local global i64 0, align 8
@DO_DEFERRED_STORES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %8 = load i32, i32* @resume_cleanups, align 4
  %9 = call %struct.cleanup* @make_cleanup(i32 %8, i32 0)
  store %struct.cleanup* %9, %struct.cleanup** %6, align 8
  %10 = load i32, i32* @QUIT, align 4
  %11 = load i64, i64* @CANNOT_STEP_HW_WATCHPOINTS, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* @breakpoints_inserted, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @remove_hw_watchpoints()
  br label %21

21:                                               ; preds = %19, %16, %13, %2
  %22 = call i32 (...) @read_pc()
  %23 = call i64 @breakpoint_here_p(i32 %22)
  %24 = load i64, i64* @permanent_breakpoint_here, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @SKIP_PERMANENT_BREAKPOINT()
  br label %28

28:                                               ; preds = %26, %21
  %29 = call i64 (...) @SOFTWARE_SINGLE_STEP_P()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SOFTWARE_SINGLE_STEP(i32 %35, i32 1)
  store i32 0, i32* %3, align 4
  store i32 1, i32* @singlestep_breakpoints_inserted_p, align 4
  %37 = load i8*, i8** @inferior_ptid, align 8
  store i8* %37, i8** @singlestep_ptid, align 8
  br label %38

38:                                               ; preds = %34, %31, %28
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pending_follow, i32 0, i32 0), align 4
  switch i32 %39, label %50 [
    i32 129, label %40
    i32 128, label %40
    i32 130, label %47
  ]

40:                                               ; preds = %38, %38
  %41 = load i8*, i8** @TARGET_WAITKIND_SPURIOUS, align 8
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pending_follow, i32 0, i32 0), align 4
  %43 = call i32 (...) @follow_fork()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %51

47:                                               ; preds = %38
  %48 = load i8*, i8** @TARGET_WAITKIND_SPURIOUS, align 8
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pending_follow, i32 0, i32 0), align 4
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %47, %46
  %52 = call i32 (...) @target_terminal_inferior()
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %110

55:                                               ; preds = %51
  %56 = load i8*, i8** @RESUME_ALL, align 8
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @singlestep_breakpoints_inserted_p, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59, %55
  %63 = load i64, i64* @stepping_past_singlestep_breakpoint, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @breakpoints_inserted, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = call i32 (...) @read_pc()
  %70 = call i64 @breakpoint_here_p(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %62
  %73 = load i8*, i8** @inferior_ptid, align 8
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %72, %68, %65, %59
  %75 = load i64, i64* @scheduler_mode, align 8
  %76 = load i64, i64* @schedlock_on, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* @scheduler_mode, align 8
  %80 = load i64, i64* @schedlock_step, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @singlestep_breakpoints_inserted_p, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82, %74
  %89 = load i8*, i8** @inferior_ptid, align 8
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %88, %85, %78
  %91 = load i64, i64* @CANNOT_STEP_BREAKPOINT, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i64, i64* @breakpoints_inserted, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = call i32 (...) @read_pc()
  %101 = call i64 @breakpoint_here_p(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %99, %96, %93
  br label %105

105:                                              ; preds = %104, %90
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @target_resume(i8* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %51
  %111 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %112 = call i32 @discard_cleanups(%struct.cleanup* %111)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @remove_hw_watchpoints(...) #1

declare dso_local i64 @breakpoint_here_p(i32) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @SKIP_PERMANENT_BREAKPOINT(...) #1

declare dso_local i64 @SOFTWARE_SINGLE_STEP_P(...) #1

declare dso_local i32 @SOFTWARE_SINGLE_STEP(i32, i32) #1

declare dso_local i32 @follow_fork(...) #1

declare dso_local i32 @target_terminal_inferior(...) #1

declare dso_local i32 @target_resume(i8*, i32, i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
