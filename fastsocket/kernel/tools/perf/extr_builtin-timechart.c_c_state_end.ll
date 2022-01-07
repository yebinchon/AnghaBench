; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_c_state_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_c_state_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_event = type { i32, %struct.power_event*, i32, i32, i32, i32 }

@cpus_cstate_state = common dso_local global i32* null, align 8
@cpus_cstate_start_times = common dso_local global i32* null, align 8
@CSTATE = common dso_local global i32 0, align 4
@power_events = common dso_local global %struct.power_event* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @c_state_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_state_end(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_event*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.power_event* @zalloc(i32 32)
  store %struct.power_event* %6, %struct.power_event** %5, align 8
  %7 = load %struct.power_event*, %struct.power_event** %5, align 8
  %8 = icmp ne %struct.power_event* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load i32*, i32** @cpus_cstate_state, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.power_event*, %struct.power_event** %5, align 8
  %17 = getelementptr inbounds %struct.power_event, %struct.power_event* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** @cpus_cstate_start_times, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.power_event*, %struct.power_event** %5, align 8
  %24 = getelementptr inbounds %struct.power_event, %struct.power_event* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.power_event*, %struct.power_event** %5, align 8
  %27 = getelementptr inbounds %struct.power_event, %struct.power_event* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.power_event*, %struct.power_event** %5, align 8
  %30 = getelementptr inbounds %struct.power_event, %struct.power_event* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @CSTATE, align 4
  %32 = load %struct.power_event*, %struct.power_event** %5, align 8
  %33 = getelementptr inbounds %struct.power_event, %struct.power_event* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.power_event*, %struct.power_event** @power_events, align 8
  %35 = load %struct.power_event*, %struct.power_event** %5, align 8
  %36 = getelementptr inbounds %struct.power_event, %struct.power_event* %35, i32 0, i32 1
  store %struct.power_event* %34, %struct.power_event** %36, align 8
  %37 = load %struct.power_event*, %struct.power_event** %5, align 8
  store %struct.power_event* %37, %struct.power_event** @power_events, align 8
  br label %38

38:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
