; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_handle_step_into_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_handle_step_into_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i64 }
%struct.symtab_and_line = type { i64 }

@step_over_calls = common dso_local global i64 0, align 8
@STEP_OVER_NONE = common dso_local global i64 0, align 8
@step_range_end = common dso_local global i32 0, align 4
@prev_pc = common dso_local global i32 0, align 4
@stop_step = common dso_local global i32 0, align 4
@END_STEPPING_RANGE = common dso_local global i32 0, align 4
@STEP_OVER_ALL = common dso_local global i64 0, align 8
@stop_pc = common dso_local global i32 0, align 4
@step_frame_id = common dso_local global i32 0, align 4
@null_frame_id = common dso_local global i32 0, align 4
@STEP_OVER_UNDEBUGGABLE = common dso_local global i64 0, align 8
@step_stop_if_no_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @handle_step_into_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_step_into_function(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.symtab_and_line, align 8
  %5 = alloca %struct.symtab_and_line, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %6 = load i64, i64* @step_over_calls, align 8
  %7 = load i64, i64* @STEP_OVER_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @step_range_end, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* @prev_pc, align 4
  %14 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %15 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @in_prologue(i32 %13, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12, %1
  store i32 1, i32* @stop_step, align 4
  %20 = load i32, i32* @END_STEPPING_RANGE, align 4
  %21 = call i32 @print_stop_reason(i32 %20, i32 0)
  %22 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %23 = call i32 @stop_stepping(%struct.execution_control_state* %22)
  br label %95

24:                                               ; preds = %12, %9
  %25 = load i64, i64* @step_over_calls, align 8
  %26 = load i64, i64* @STEP_OVER_ALL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @stop_pc, align 4
  %30 = call i64 @IGNORE_HELPER_CALL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @stop_pc, align 4
  %34 = call i64 @pc_in_sigtramp(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @step_frame_id, align 4
  %38 = call i32 (...) @read_sp()
  %39 = call i32 @frame_id_build(i32 %38, i32 0)
  %40 = call i64 @frame_id_inner(i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @null_frame_id, align 4
  store i32 %43, i32* @step_frame_id, align 4
  br label %44

44:                                               ; preds = %42, %36, %32
  %45 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %46 = call i32 @step_over_function(%struct.execution_control_state* %45)
  %47 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %48 = call i32 @keep_going(%struct.execution_control_state* %47)
  br label %95

49:                                               ; preds = %28
  %50 = load i32, i32* @stop_pc, align 4
  %51 = call i64 @skip_language_trampoline(i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @stop_pc, align 4
  %56 = call i64 @SKIP_TRAMPOLINE_CODE(i32 %55)
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %63 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %66 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @find_pc_line(i64 %67, i32 0)
  %69 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = bitcast %struct.symtab_and_line* %4 to i8*
  %71 = bitcast %struct.symtab_and_line* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %77 = call i32 @step_into_function(%struct.execution_control_state* %76)
  br label %95

78:                                               ; preds = %64
  %79 = load i64, i64* @step_over_calls, align 8
  %80 = load i64, i64* @STEP_OVER_UNDEBUGGABLE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* @step_stop_if_no_debug, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  store i32 1, i32* @stop_step, align 4
  %86 = load i32, i32* @END_STEPPING_RANGE, align 4
  %87 = call i32 @print_stop_reason(i32 %86, i32 0)
  %88 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %89 = call i32 @stop_stepping(%struct.execution_control_state* %88)
  br label %95

90:                                               ; preds = %82, %78
  %91 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %92 = call i32 @step_over_function(%struct.execution_control_state* %91)
  %93 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %94 = call i32 @keep_going(%struct.execution_control_state* %93)
  br label %95

95:                                               ; preds = %90, %85, %75, %44, %19
  ret void
}

declare dso_local i64 @in_prologue(i32, i64) #1

declare dso_local i32 @print_stop_reason(i32, i32) #1

declare dso_local i32 @stop_stepping(%struct.execution_control_state*) #1

declare dso_local i64 @IGNORE_HELPER_CALL(i32) #1

declare dso_local i64 @pc_in_sigtramp(i32) #1

declare dso_local i64 @frame_id_inner(i32, i32) #1

declare dso_local i32 @frame_id_build(i32, i32) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @step_over_function(%struct.execution_control_state*) #1

declare dso_local i32 @keep_going(%struct.execution_control_state*) #1

declare dso_local i64 @skip_language_trampoline(i32) #1

declare dso_local i64 @SKIP_TRAMPOLINE_CODE(i32) #1

declare dso_local i64 @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @step_into_function(%struct.execution_control_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
