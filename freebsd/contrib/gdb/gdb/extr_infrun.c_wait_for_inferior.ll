; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_wait_for_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_wait_for_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.execution_control_state = type { i32, i32, i32, i32 }

@delete_step_resume_breakpoint = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global i32 0, align 4
@delete_breakpoint_current_contents = common dso_local global i32 0, align 4
@through_sigtramp_breakpoint = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@previous_inferior_ptid = common dso_local global i32 0, align 4
@overlay_cache_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_for_inferior() #0 {
  %1 = alloca %struct.cleanup*, align 8
  %2 = alloca %struct.execution_control_state, align 4
  %3 = alloca %struct.execution_control_state*, align 8
  %4 = load i32, i32* @delete_step_resume_breakpoint, align 4
  %5 = call %struct.cleanup* @make_cleanup(i32 %4, i32* @step_resume_breakpoint)
  store %struct.cleanup* %5, %struct.cleanup** %1, align 8
  %6 = load i32, i32* @delete_breakpoint_current_contents, align 4
  %7 = call %struct.cleanup* @make_cleanup(i32 %6, i32* @through_sigtramp_breakpoint)
  store %struct.execution_control_state* %2, %struct.execution_control_state** %3, align 8
  %8 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %9 = call i32 @init_execution_control_state(%struct.execution_control_state* %8)
  %10 = load i32, i32* @inferior_ptid, align 4
  store i32 %10, i32* @previous_inferior_ptid, align 4
  store i32 1, i32* @overlay_cache_invalid, align 4
  %11 = call i32 (...) @registers_changed()
  br label %12

12:                                               ; preds = %0, %41
  br i1 true, label %13, label %23

13:                                               ; preds = %12
  %14 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %15 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %18 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @target_wait_hook(i32 %16, i32 %19)
  %21 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %22 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %33

23:                                               ; preds = %12
  %24 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %25 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %28 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @target_wait(i32 %26, i32 %29)
  %31 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %32 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %35 = call i32 @handle_inferior_event(%struct.execution_control_state* %34)
  %36 = load %struct.execution_control_state*, %struct.execution_control_state** %3, align 8
  %37 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %33
  br label %12

42:                                               ; preds = %40
  %43 = load %struct.cleanup*, %struct.cleanup** %1, align 8
  %44 = call i32 @do_cleanups(%struct.cleanup* %43)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @init_execution_control_state(%struct.execution_control_state*) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @target_wait_hook(i32, i32) #1

declare dso_local i32 @target_wait(i32, i32) #1

declare dso_local i32 @handle_inferior_event(%struct.execution_control_state*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
