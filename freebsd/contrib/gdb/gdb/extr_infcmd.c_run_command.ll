; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_run_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"The program being debugged has been started already.\0AStart it from the beginning? \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Program not restarted.\00", align 1
@event_loop_p = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Asynchronous execution not supported on this target.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Starting program\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"execfile\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"infargs\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@inferior_environ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @run_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @dont_repeat()
  %9 = load i32, i32* @inferior_ptid, align 4
  %10 = load i32, i32* @null_ptid, align 4
  %11 = call i32 @ptid_equal(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @target_has_execution, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 @query(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19, %16
  %25 = call i32 (...) @target_kill()
  %26 = call i32 (...) @init_wait_for_inferior()
  br label %27

27:                                               ; preds = %24, %13, %2
  %28 = call i32 (...) @clear_breakpoint_hit_counts()
  %29 = call i32 (...) @objfile_purge_solibs()
  %30 = call i32 @do_run_cleanups(i32* null)
  %31 = call i32 (...) @reopen_exec_file()
  %32 = call i32 (...) @reread_symbols()
  %33 = call i64 @get_exec_file(i32 0)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* @event_loop_p, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = call i64 (...) @target_can_async_p()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @async_disable_stdin()
  br label %45

45:                                               ; preds = %43, %40, %37
  br label %79

46:                                               ; preds = %27
  %47 = call i32 @strip_bg_char(i8** %3)
  store i32 %47, i32* %6, align 4
  %48 = load i64, i64* @event_loop_p, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = call i64 (...) @target_can_async_p()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53, %50, %46
  %59 = load i64, i64* @event_loop_p, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = call i64 (...) @target_can_async_p()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (...) @async_disable_stdin()
  br label %69

69:                                               ; preds = %67, %64, %61, %58
  %70 = load i8*, i8** %3, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @xstrdup(i8* %73)
  %75 = call i8* @set_inferior_args(i32 %74)
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @xfree(i8* %76)
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %45
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32, i32* @uiout, align 4
  %84 = call i32 @ui_out_field_string(i32 %83, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @uiout, align 4
  %86 = call i32 @ui_out_text(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i8*, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @uiout, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @ui_out_field_string(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* @uiout, align 4
  %95 = call i32 @ui_out_spaces(i32 %94, i32 1)
  %96 = load i32, i32* @uiout, align 4
  %97 = call i8* (...) @get_inferior_args()
  %98 = call i32 @ui_out_field_string(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @uiout, align 4
  %100 = call i32 @ui_out_text(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @uiout, align 4
  %102 = call i32 @ui_out_flush(i32 %101)
  br label %103

103:                                              ; preds = %93, %79
  %104 = load i8*, i8** %5, align 8
  %105 = call i8* (...) @get_inferior_args()
  %106 = load i32, i32* @inferior_environ, align 4
  %107 = call i32 @environ_vector(i32 %106)
  %108 = call i32 @target_create_inferior(i8* %104, i8* %105, i32 %107)
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @query(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @clear_breakpoint_hit_counts(...) #1

declare dso_local i32 @objfile_purge_solibs(...) #1

declare dso_local i32 @do_run_cleanups(i32*) #1

declare dso_local i32 @reopen_exec_file(...) #1

declare dso_local i32 @reread_symbols(...) #1

declare dso_local i64 @get_exec_file(i32) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i32 @async_disable_stdin(...) #1

declare dso_local i32 @strip_bg_char(i8**) #1

declare dso_local i8* @set_inferior_args(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_spaces(i32, i32) #1

declare dso_local i8* @get_inferior_args(...) #1

declare dso_local i32 @ui_out_flush(i32) #1

declare dso_local i32 @target_create_inferior(i8*, i8*, i32) #1

declare dso_local i32 @environ_vector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
