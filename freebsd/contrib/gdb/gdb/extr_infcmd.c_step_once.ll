; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_step_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_step_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation_arg = type { %struct.TYPE_2__, %struct.continuation_arg* }
%struct.TYPE_2__ = type { i32 }
%struct.frame_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"No current frame\00", align 1
@step_frame_id = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i32 0, align 4
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@step_stop_if_no_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot find bounds of current function\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Single stepping until exit from function %s, \0Awhich has no line number information.\0A\00", align 1
@STEP_OVER_NONE = common dso_local global i32 0, align 4
@step_over_calls = common dso_local global i32 0, align 4
@STEP_OVER_ALL = common dso_local global i32 0, align 4
@step_multi = common dso_local global i32 0, align 4
@step_1_continuation = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @step_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @step_once(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.continuation_arg*, align 8
  %8 = alloca %struct.continuation_arg*, align 8
  %9 = alloca %struct.continuation_arg*, align 8
  %10 = alloca %struct.frame_info*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %97

14:                                               ; preds = %3
  %15 = call i32 (...) @clear_proceed_status()
  %16 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %16, %struct.frame_info** %10, align 8
  %17 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %18 = icmp ne %struct.frame_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %23 = call i32 @get_frame_id(%struct.frame_info* %22)
  store i32 %23, i32* @step_frame_id, align 4
  %24 = call i32 (...) @read_sp()
  store i32 %24, i32* @step_sp, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @stop_pc, align 4
  %29 = call i32 @find_pc_line_pc_range(i32 %28, i32* @step_range_start, i32* @step_range_end)
  %30 = load i32, i32* @step_range_end, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* @step_stop_if_no_debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* @step_range_end, align 4
  store i32 1, i32* @step_range_start, align 4
  br label %50

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @step_range_end, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* @stop_pc, align 4
  %41 = call i64 @find_pc_partial_function(i32 %40, i8** %11, i32* @step_range_start, i32* @step_range_end)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = call i32 (...) @target_terminal_ours()
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @printf_filtered(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %36
  br label %50

50:                                               ; preds = %49, %35
  br label %57

51:                                               ; preds = %21
  store i32 1, i32* @step_range_end, align 4
  store i32 1, i32* @step_range_start, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @STEP_OVER_NONE, align 4
  store i32 %55, i32* @step_over_calls, align 4
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @STEP_OVER_ALL, align 4
  store i32 %61, i32* @step_over_calls, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 1
  %65 = zext i1 %64 to i32
  store i32 %65, i32* @step_multi, align 4
  %66 = call i64 @xmalloc(i32 16)
  %67 = inttoptr i64 %66 to %struct.continuation_arg*
  store %struct.continuation_arg* %67, %struct.continuation_arg** %7, align 8
  %68 = call i64 @xmalloc(i32 16)
  %69 = inttoptr i64 %68 to %struct.continuation_arg*
  store %struct.continuation_arg* %69, %struct.continuation_arg** %8, align 8
  %70 = call i64 @xmalloc(i32 16)
  %71 = inttoptr i64 %70 to %struct.continuation_arg*
  store %struct.continuation_arg* %71, %struct.continuation_arg** %9, align 8
  %72 = load %struct.continuation_arg*, %struct.continuation_arg** %8, align 8
  %73 = load %struct.continuation_arg*, %struct.continuation_arg** %7, align 8
  %74 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %73, i32 0, i32 1
  store %struct.continuation_arg* %72, %struct.continuation_arg** %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.continuation_arg*, %struct.continuation_arg** %7, align 8
  %77 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.continuation_arg*, %struct.continuation_arg** %9, align 8
  %80 = load %struct.continuation_arg*, %struct.continuation_arg** %8, align 8
  %81 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %80, i32 0, i32 1
  store %struct.continuation_arg* %79, %struct.continuation_arg** %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.continuation_arg*, %struct.continuation_arg** %8, align 8
  %84 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.continuation_arg*, %struct.continuation_arg** %9, align 8
  %87 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %86, i32 0, i32 1
  store %struct.continuation_arg* null, %struct.continuation_arg** %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.continuation_arg*, %struct.continuation_arg** %9, align 8
  %90 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @step_1_continuation, align 4
  %93 = load %struct.continuation_arg*, %struct.continuation_arg** %7, align 8
  %94 = call i32 @add_intermediate_continuation(i32 %92, %struct.continuation_arg* %93)
  %95 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %96 = call i32 @proceed(i32 -1, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %62, %3
  ret void
}

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @find_pc_line_pc_range(i32, i32*, i32*) #1

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @add_intermediate_continuation(i32, %struct.continuation_arg*) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
