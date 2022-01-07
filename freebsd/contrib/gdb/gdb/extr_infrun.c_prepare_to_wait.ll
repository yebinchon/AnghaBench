; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_prepare_to_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_prepare_to_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execution_control_state = type { i64, i32, i32, i32*, i32 }

@infwait_normal_state = common dso_local global i64 0, align 8
@overlay_cache_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.execution_control_state*)* @prepare_to_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_to_wait(%struct.execution_control_state* %0) #0 {
  %2 = alloca %struct.execution_control_state*, align 8
  store %struct.execution_control_state* %0, %struct.execution_control_state** %2, align 8
  %3 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %4 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @infwait_normal_state, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  store i32 1, i32* @overlay_cache_invalid, align 4
  %9 = call i32 (...) @registers_changed()
  %10 = call i32 @pid_to_ptid(i32 -1)
  %11 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %12 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %14 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %13, i32 0, i32 2
  %15 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %16 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.execution_control_state*, %struct.execution_control_state** %2, align 8
  %19 = getelementptr inbounds %struct.execution_control_state, %struct.execution_control_state* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  ret void
}

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @pid_to_ptid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
