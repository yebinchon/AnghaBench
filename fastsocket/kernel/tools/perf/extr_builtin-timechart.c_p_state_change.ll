; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_p_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_p_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_event = type { i32, i32, i32, i32, %struct.power_event*, i32 }

@cpus_pstate_state = common dso_local global i32* null, align 8
@cpus_pstate_start_times = common dso_local global i32* null, align 8
@PSTATE = common dso_local global i32 0, align 4
@power_events = common dso_local global %struct.power_event* null, align 8
@first_time = common dso_local global i32 0, align 4
@max_freq = common dso_local global i32 0, align 4
@min_freq = common dso_local global i32 0, align 4
@turbo_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @p_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_state_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.power_event*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 8000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %84

11:                                               ; preds = %3
  %12 = call %struct.power_event* @zalloc(i32 32)
  store %struct.power_event* %12, %struct.power_event** %7, align 8
  %13 = load %struct.power_event*, %struct.power_event** %7, align 8
  %14 = icmp ne %struct.power_event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %84

16:                                               ; preds = %11
  %17 = load i32*, i32** @cpus_pstate_state, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.power_event*, %struct.power_event** %7, align 8
  %23 = getelementptr inbounds %struct.power_event, %struct.power_event* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** @cpus_pstate_start_times, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.power_event*, %struct.power_event** %7, align 8
  %30 = getelementptr inbounds %struct.power_event, %struct.power_event* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.power_event*, %struct.power_event** %7, align 8
  %33 = getelementptr inbounds %struct.power_event, %struct.power_event* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.power_event*, %struct.power_event** %7, align 8
  %36 = getelementptr inbounds %struct.power_event, %struct.power_event* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PSTATE, align 4
  %38 = load %struct.power_event*, %struct.power_event** %7, align 8
  %39 = getelementptr inbounds %struct.power_event, %struct.power_event* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.power_event*, %struct.power_event** @power_events, align 8
  %41 = load %struct.power_event*, %struct.power_event** %7, align 8
  %42 = getelementptr inbounds %struct.power_event, %struct.power_event* %41, i32 0, i32 4
  store %struct.power_event* %40, %struct.power_event** %42, align 8
  %43 = load %struct.power_event*, %struct.power_event** %7, align 8
  %44 = getelementptr inbounds %struct.power_event, %struct.power_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %16
  %48 = load i32, i32* @first_time, align 4
  %49 = load %struct.power_event*, %struct.power_event** %7, align 8
  %50 = getelementptr inbounds %struct.power_event, %struct.power_event* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %16
  %52 = load %struct.power_event*, %struct.power_event** %7, align 8
  store %struct.power_event* %52, %struct.power_event** @power_events, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** @cpus_pstate_state, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @cpus_pstate_start_times, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @max_freq, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @max_freq, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @min_freq, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @min_freq, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* @min_freq, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @max_freq, align 4
  %80 = sub nsw i32 %79, 1000
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @max_freq, align 4
  store i32 %83, i32* @turbo_frequency, align 4
  br label %84

84:                                               ; preds = %10, %15, %82, %77
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
