; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_context_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@prev_pc = common dso_local global i32 0, align 4
@trap_expected = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global i32 0, align 4
@through_sigtramp_breakpoint = common dso_local global i32 0, align 4
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@step_frame_id = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @context_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_switch(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %3 = load i32, i32* @inferior_ptid, align 4
  %4 = call i64 @in_thread_list(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %1
  %7 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %8 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @in_thread_list(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = load i32, i32* @prev_pc, align 4
  %15 = load i32, i32* @trap_expected, align 4
  %16 = load i32, i32* @step_resume_breakpoint, align 4
  %17 = load i32, i32* @through_sigtramp_breakpoint, align 4
  %18 = load i32, i32* @step_range_start, align 4
  %19 = load i32, i32* @step_range_end, align 4
  %20 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %21 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %24 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %27 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %30 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %33 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %36 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %39 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @step_sp, align 4
  %42 = call i32 @save_infrun_state(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32* @step_frame_id, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %44 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %47 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %46, i32 0, i32 7
  %48 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %49 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %48, i32 0, i32 6
  %50 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %51 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %50, i32 0, i32 5
  %52 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %53 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %52, i32 0, i32 4
  %54 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %55 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %54, i32 0, i32 3
  %56 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %57 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %56, i32 0, i32 2
  %58 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %59 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %58, i32 0, i32 1
  %60 = call i32 @load_infrun_state(i32 %45, i32* @prev_pc, i32* @trap_expected, i32* @step_resume_breakpoint, i32* @through_sigtramp_breakpoint, i32* @step_range_start, i32* @step_range_end, i32* @step_frame_id, i32* %47, i32* %49, i32* %51, i32* %53, i32* %55, i32* %57, i32* %59, i32* @step_sp)
  br label %61

61:                                               ; preds = %12, %6, %1
  %62 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %63 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* @inferior_ptid, align 4
  ret void
}

declare dso_local i64 @in_thread_list(i32) #1

declare dso_local i32 @save_infrun_state(i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @load_infrun_state(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
