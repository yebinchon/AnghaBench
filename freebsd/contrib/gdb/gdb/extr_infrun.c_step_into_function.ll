; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_step_into_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_step_into_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.symtab = type { i64 }
%struct.symtab_and_line = type { i64, i32 }

@stop_pc = common dso_local global i64 0, align 8
@language_asm = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@stop_step = common dso_local global i32 0, align 4
@END_STEPPING_RANGE = common dso_local global i32 0, align 4
@null_frame_id = common dso_local global i32 0, align 4
@bp_step_resume = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global i32 0, align 4
@breakpoints_inserted = common dso_local global i64 0, align 8
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @step_into_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @step_into_function(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca %struct.symtab_and_line, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %6 = load i64, i64* @stop_pc, align 8
  %7 = call %struct.symtab* @find_pc_symtab(i64 %6)
  store %struct.symtab* %7, %struct.symtab** %3, align 8
  %8 = load %struct.symtab*, %struct.symtab** %3, align 8
  %9 = icmp ne %struct.symtab* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.symtab*, %struct.symtab** %3, align 8
  %12 = getelementptr inbounds %struct.symtab, %struct.symtab* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @language_asm, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %18 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @SKIP_PROLOGUE(i64 %19)
  %21 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %22 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %16, %10, %1
  %24 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %25 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %24, i32 0, i32 2
  %26 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %27 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call { i64, i64 } @find_pc_line(i64 %28, i32 0)
  %30 = bitcast %struct.TYPE_2__* %5 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.TYPE_2__* %25 to i8*
  %36 = bitcast %struct.TYPE_2__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %38 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %23
  %43 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %44 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %48 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %53 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %57 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %62 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %66 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %51, %42, %23
  %68 = load i32, i32* @current_gdbarch, align 4
  %69 = call i64 @gdbarch_adjust_breakpoint_address_p(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* @current_gdbarch, align 4
  %73 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %74 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @gdbarch_adjust_breakpoint_address(i32 %72, i64 %75)
  %77 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %78 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %67
  %80 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %81 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @stop_pc, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  store i32 1, i32* @stop_step, align 4
  %86 = load i32, i32* @END_STEPPING_RANGE, align 4
  %87 = call i32 @print_stop_reason(i32 %86, i32 0)
  %88 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %89 = call i32 @stop_stepping(%struct.execution_control_state* %88)
  br label %119

90:                                               ; preds = %79
  %91 = call i32 @init_sal(%struct.symtab_and_line* %4)
  %92 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %93 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %97 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @find_pc_overlay(i64 %98)
  %100 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %4, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  %101 = call i32 (...) @check_for_old_step_resume_breakpoint()
  %102 = load i32, i32* @null_frame_id, align 4
  %103 = load i32, i32* @bp_step_resume, align 4
  %104 = bitcast %struct.symtab_and_line* %4 to { i64, i32 }*
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %104, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @set_momentary_breakpoint(i64 %106, i32 %108, i32 %102, i32 %103)
  store i32 %109, i32* @step_resume_breakpoint, align 4
  %110 = load i64, i64* @breakpoints_inserted, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = call i32 (...) @insert_breakpoints()
  br label %114

114:                                              ; preds = %112, %90
  %115 = load i32, i32* @step_range_start, align 4
  store i32 %115, i32* @step_range_end, align 4
  br label %116

116:                                              ; preds = %114
  %117 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %118 = call i32 @keep_going(%struct.execution_control_state* %117)
  br label %119

119:                                              ; preds = %116, %85
  ret void
}

declare dso_local %struct.symtab* @find_pc_symtab(i64) #1

declare dso_local i64 @SKIP_PROLOGUE(i64) #1

declare dso_local { i64, i64 } @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @gdbarch_adjust_breakpoint_address_p(i32) #1

declare dso_local i64 @gdbarch_adjust_breakpoint_address(i32, i64) #1

declare dso_local i32 @print_stop_reason(i32, i32) #1

declare dso_local i32 @stop_stepping(%struct.execution_control_state*) #1

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i32 @find_pc_overlay(i64) #1

declare dso_local i32 @check_for_old_step_resume_breakpoint(...) #1

declare dso_local i32 @set_momentary_breakpoint(i64, i32, i32, i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i32 @keep_going(%struct.execution_control_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
