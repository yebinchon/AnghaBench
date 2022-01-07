; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_currently_stepping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_currently_stepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i64, i32 }

@through_sigtramp_breakpoint = common dso_local global i32* null, align 8
@step_range_end = common dso_local global i64 0, align 8
@step_resume_breakpoint = common dso_local global i32* null, align 8
@trap_expected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.execution_control_state*)* @currently_stepping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @currently_stepping(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %3 = load i32*, i32** @through_sigtramp_breakpoint, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %7 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load i64, i64* @step_range_end, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @step_resume_breakpoint, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @trap_expected, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %5, %1
  %20 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %21 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i64 (...) @bpstat_should_step()
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %19, %16, %13
  %28 = phi i1 [ true, %19 ], [ true, %16 ], [ true, %13 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @bpstat_should_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
