; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_check_sigtramp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_check_sigtramp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i32, i32 }
%struct.symtab_and_line = type { i32, i32 }

@trap_expected = common dso_local global i64 0, align 8
@stop_pc = common dso_local global i32 0, align 4
@prev_pc = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@null_frame_id = common dso_local global i32 0, align 4
@bp_through_sigtramp = common dso_local global i32 0, align 4
@through_sigtramp_breakpoint = common dso_local global i32 0, align 4
@breakpoints_inserted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @check_sigtramp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sigtramp2(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  %3 = alloca %struct.symtab_and_line, align 4
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %4 = load i64, i64* @trap_expected, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = load i32, i32* @stop_pc, align 4
  %8 = call i64 @pc_in_sigtramp(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load i32, i32* @prev_pc, align 4
  %12 = call i64 @pc_in_sigtramp(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = call i32 (...) @read_sp()
  %16 = load i32, i32* @step_sp, align 4
  %17 = call i64 @INNER_THAN(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = call i32 @init_sal(%struct.symtab_and_line* %3)
  %21 = load i32, i32* @prev_pc, align 4
  %22 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @find_pc_overlay(i32 %24)
  %26 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @null_frame_id, align 4
  %28 = load i32, i32* @bp_through_sigtramp, align 4
  %29 = bitcast %struct.symtab_and_line* %3 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @set_momentary_breakpoint(i64 %30, i32 %27, i32 %28)
  store i32 %31, i32* @through_sigtramp_breakpoint, align 4
  %32 = load i64, i64* @breakpoints_inserted, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = call i32 (...) @insert_breakpoints()
  br label %36

36:                                               ; preds = %34, %19
  %37 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %38 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %40 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %14, %10, %6, %1
  ret void
}

declare dso_local i64 @pc_in_sigtramp(i32) #1

declare dso_local i64 @INNER_THAN(i32, i32) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local i32 @find_pc_overlay(i32) #1

declare dso_local i32 @set_momentary_breakpoint(i64, i32, i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
