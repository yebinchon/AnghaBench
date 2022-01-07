; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_step_over_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_step_over_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.execution_control_state = type { i32 }
%struct.symtab_and_line = type { i8*, i32 }

@bp_step_resume = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global %struct.TYPE_3__* null, align 8
@step_frame_id = common dso_local global i32 0, align 4
@breakpoints_inserted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @step_over_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @step_over_function(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  %3 = alloca %struct.symtab_and_line, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %4 = call i32 @init_sal(%struct.symtab_and_line* %3)
  %5 = call i64 (...) @DEPRECATED_SAVED_PC_AFTER_CALL_P()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = call i32 (...) @get_current_frame()
  %9 = call i32 @DEPRECATED_SAVED_PC_AFTER_CALL(i32 %8)
  %10 = call i8* @ADDR_BITS_REMOVE(i32 %9)
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  br label %17

12:                                               ; preds = %1
  %13 = call i32 (...) @get_current_frame()
  %14 = call i32 @frame_pc_unwind(i32 %13)
  %15 = call i8* @ADDR_BITS_REMOVE(i32 %14)
  %16 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @find_pc_overlay(i8* %19)
  %21 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = call i32 (...) @check_for_old_step_resume_breakpoint()
  %23 = call i32 (...) @get_current_frame()
  %24 = call i32 @get_frame_id(i32 %23)
  %25 = load i32, i32* @bp_step_resume, align 4
  %26 = bitcast %struct.symtab_and_line* %3 to { i8*, i32 }*
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %26, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_3__* @set_momentary_breakpoint(i8* %28, i32 %30, i32 %24, i32 %25)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** @step_resume_breakpoint, align 8
  %32 = load i32, i32* @step_frame_id, align 4
  %33 = call i64 @frame_id_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @IN_SOLIB_DYNSYM_RESOLVE_CODE(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @step_frame_id, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @step_resume_breakpoint, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35, %17
  %45 = load i64, i64* @breakpoints_inserted, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @insert_breakpoints()
  br label %49

49:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i64 @DEPRECATED_SAVED_PC_AFTER_CALL_P(...) #1

declare dso_local i8* @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @DEPRECATED_SAVED_PC_AFTER_CALL(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i32 @frame_pc_unwind(i32) #1

declare dso_local i32 @find_pc_overlay(i8*) #1

declare dso_local i32 @check_for_old_step_resume_breakpoint(...) #1

declare dso_local %struct.TYPE_3__* @set_momentary_breakpoint(i8*, i32, i32, i32) #1

declare dso_local i32 @get_frame_id(i32) #1

declare dso_local i64 @frame_id_p(i32) #1

declare dso_local i32 @IN_SOLIB_DYNSYM_RESOLVE_CODE(i8*) #1

declare dso_local i32 @insert_breakpoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
