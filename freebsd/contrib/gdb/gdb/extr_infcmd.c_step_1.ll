; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_step_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_step_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.cleanup = type { i32 }

@ERROR_NO_INFERIOR = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Asynchronous execution not supported on this target.\00", align 1
@disable_longjmp_breakpoint_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No current frame\00", align 1
@step_frame_id = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i32 0, align 4
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot find bounds of current function\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Single stepping until exit from function %s, \0Awhich has no line number information.\0A\00", align 1
@STEP_OVER_NONE = common dso_local global i32 0, align 4
@step_over_calls = common dso_local global i32 0, align 4
@STEP_OVER_ALL = common dso_local global i32 0, align 4
@step_multi = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@stop_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @step_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @step_1(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.frame_info*, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  store %struct.cleanup* null, %struct.cleanup** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @ERROR_NO_INFERIOR, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @strip_bg_char(i8** %6)
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i64, i64* @event_loop_p, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i64 (...) @target_can_async_p()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23, %20, %17
  %29 = load i64, i64* @event_loop_p, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = call i64 (...) @target_can_async_p()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @async_disable_stdin()
  br label %39

39:                                               ; preds = %37, %34, %31, %28
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @parse_and_eval_long(i8* %43)
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %45 ]
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50, %46
  %54 = call i32 (...) @enable_longjmp_breakpoint()
  %55 = load i64, i64* @event_loop_p, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i64 (...) @target_can_async_p()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @disable_longjmp_breakpoint_cleanup, align 4
  %62 = call %struct.cleanup* @make_cleanup(i32 %61, i32 0)
  store %struct.cleanup* %62, %struct.cleanup** %9, align 8
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @disable_longjmp_breakpoint_cleanup, align 4
  %65 = call i32 @make_exec_cleanup(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i64, i64* @event_loop_p, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i64 (...) @target_can_async_p()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %140, label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %127, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %74
  %78 = call i32 (...) @clear_proceed_status()
  %79 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %79, %struct.frame_info** %8, align 8
  %80 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %81 = icmp ne %struct.frame_info* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %86 = call i32 @get_frame_id(%struct.frame_info* %85)
  store i32 %86, i32* @step_frame_id, align 4
  %87 = call i32 (...) @read_sp()
  store i32 %87, i32* @step_sp, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @stop_pc, align 4
  %92 = call i32 @find_pc_line_pc_range(i32 %91, i32* @step_range_start, i32* @step_range_end)
  %93 = load i32, i32* @step_range_end, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i32, i32* @stop_pc, align 4
  %97 = call i64 @find_pc_partial_function(i32 %96, i8** %11, i32* @step_range_start, i32* @step_range_end)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = call i32 (...) @target_terminal_ours()
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @printf_filtered(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %90
  br label %112

106:                                              ; preds = %84
  store i32 1, i32* @step_range_end, align 4
  store i32 1, i32* @step_range_start, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @STEP_OVER_NONE, align 4
  store i32 %110, i32* @step_over_calls, align 4
  br label %111

111:                                              ; preds = %109, %106
  br label %112

112:                                              ; preds = %111, %105
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @STEP_OVER_ALL, align 4
  store i32 %116, i32* @step_over_calls, align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %118, 1
  %120 = zext i1 %119 to i32
  store i32 %120, i32* @step_multi, align 4
  %121 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %122 = call i32 @proceed(i32 -1, i32 %121, i32 1)
  %123 = load i32, i32* @stop_step, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  br label %130

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %7, align 4
  br label %74

130:                                              ; preds = %125, %74
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133, %130
  %137 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %138 = call i32 @do_cleanups(%struct.cleanup* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %152

140:                                              ; preds = %70
  %141 = load i64, i64* @event_loop_p, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = call i64 (...) @target_can_async_p()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @step_once(i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %143, %140
  br label %152

152:                                              ; preds = %139, %151
  ret void
}

declare dso_local i32 @strip_bg_char(i8**) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @async_disable_stdin(...) #1

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local i32 @enable_longjmp_breakpoint(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @make_exec_cleanup(i32, i32) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @find_pc_line_pc_range(i32, i32*, i32*) #1

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @step_once(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
