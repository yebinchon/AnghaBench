; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_keep_going.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_keep_going.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i64, i64, i64 }

@prev_pc = common dso_local global i32 0, align 4
@step_sp = common dso_local global i32 0, align 4
@trap_expected = common dso_local global i64 0, align 8
@stop_signal = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@step_resume_breakpoint = common dso_local global i32* null, align 8
@through_sigtramp_breakpoint = common dso_local global i32* null, align 8
@breakpoints_inserted = common dso_local global i32 0, align 4
@breakpoints_failed = common dso_local global i64 0, align 8
@signal_program = common dso_local global i32* null, align 8
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @keep_going to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keep_going(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %3 = call i32 (...) @read_pc()
  store i32 %3, i32* @prev_pc, align 4
  %4 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %5 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @read_sp()
  store i32 %9, i32* @step_sp, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %12 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @trap_expected, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i64, i64* @stop_signal, align 8
  %17 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %21 = call i32 @currently_stepping(%struct.execution_control_state* %20)
  %22 = load i64, i64* @stop_signal, align 8
  %23 = call i32 @resume(i32 %21, i64 %22)
  br label %79

24:                                               ; preds = %15, %10
  %25 = load i32*, i32** @step_resume_breakpoint, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32*, i32** @through_sigtramp_breakpoint, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %32 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %37 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = call i32 (...) @remove_breakpoints()
  store i32 0, i32* @breakpoints_inserted, align 4
  br label %59

39:                                               ; preds = %30, %27, %24
  %40 = load i32, i32* @breakpoints_inserted, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** @through_sigtramp_breakpoint, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %47 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45, %42
  %51 = call i64 (...) @insert_breakpoints()
  store i64 %51, i64* @breakpoints_failed, align 8
  %52 = load i64, i64* @breakpoints_failed, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %56 = call i32 @stop_stepping(%struct.execution_control_state* %55)
  br label %82

57:                                               ; preds = %50
  store i32 1, i32* @breakpoints_inserted, align 4
  br label %58

58:                                               ; preds = %57, %45, %39
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %61 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* @trap_expected, align 8
  %63 = load i64, i64* @stop_signal, align 8
  %64 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** @signal_program, align 8
  %68 = load i64, i64* @stop_signal, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* @TARGET_SIGNAL_0, align 8
  store i64 %73, i64* @stop_signal, align 8
  br label %74

74:                                               ; preds = %72, %66, %59
  %75 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %76 = call i32 @currently_stepping(%struct.execution_control_state* %75)
  %77 = load i64, i64* @stop_signal, align 8
  %78 = call i32 @resume(i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %19
  %80 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %81 = call i32 @prepare_to_wait(%struct.execution_control_state* %80)
  br label %82

82:                                               ; preds = %79, %54
  ret void
}

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @resume(i32, i64) #1

declare dso_local i32 @currently_stepping(%struct.execution_control_state*) #1

declare dso_local i32 @remove_breakpoints(...) #1

declare dso_local i64 @insert_breakpoints(...) #1

declare dso_local i32 @stop_stepping(%struct.execution_control_state*) #1

declare dso_local i32 @prepare_to_wait(%struct.execution_control_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
