; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_c_p_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_c_p_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_event = type { i64, %struct.power_event*, i64, i32, i32, i32 }

@power_events = common dso_local global %struct.power_event* null, align 8
@CSTATE = common dso_local global i64 0, align 8
@PSTATE = common dso_local global i64 0, align 8
@min_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_c_p_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_c_p_states() #0 {
  %1 = alloca %struct.power_event*, align 8
  %2 = load %struct.power_event*, %struct.power_event** @power_events, align 8
  store %struct.power_event* %2, %struct.power_event** %1, align 8
  br label %3

3:                                                ; preds = %26, %0
  %4 = load %struct.power_event*, %struct.power_event** %1, align 8
  %5 = icmp ne %struct.power_event* %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load %struct.power_event*, %struct.power_event** %1, align 8
  %8 = getelementptr inbounds %struct.power_event, %struct.power_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CSTATE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load %struct.power_event*, %struct.power_event** %1, align 8
  %14 = getelementptr inbounds %struct.power_event, %struct.power_event* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.power_event*, %struct.power_event** %1, align 8
  %17 = getelementptr inbounds %struct.power_event, %struct.power_event* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.power_event*, %struct.power_event** %1, align 8
  %20 = getelementptr inbounds %struct.power_event, %struct.power_event* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.power_event*, %struct.power_event** %1, align 8
  %23 = getelementptr inbounds %struct.power_event, %struct.power_event* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @svg_cstate(i32 %15, i32 %18, i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %12, %6
  %27 = load %struct.power_event*, %struct.power_event** %1, align 8
  %28 = getelementptr inbounds %struct.power_event, %struct.power_event* %27, i32 0, i32 1
  %29 = load %struct.power_event*, %struct.power_event** %28, align 8
  store %struct.power_event* %29, %struct.power_event** %1, align 8
  br label %3

30:                                               ; preds = %3
  %31 = load %struct.power_event*, %struct.power_event** @power_events, align 8
  store %struct.power_event* %31, %struct.power_event** %1, align 8
  br label %32

32:                                               ; preds = %64, %30
  %33 = load %struct.power_event*, %struct.power_event** %1, align 8
  %34 = icmp ne %struct.power_event* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %32
  %36 = load %struct.power_event*, %struct.power_event** %1, align 8
  %37 = getelementptr inbounds %struct.power_event, %struct.power_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PSTATE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.power_event*, %struct.power_event** %1, align 8
  %43 = getelementptr inbounds %struct.power_event, %struct.power_event* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @min_freq, align 8
  %48 = load %struct.power_event*, %struct.power_event** %1, align 8
  %49 = getelementptr inbounds %struct.power_event, %struct.power_event* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.power_event*, %struct.power_event** %1, align 8
  %52 = getelementptr inbounds %struct.power_event, %struct.power_event* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.power_event*, %struct.power_event** %1, align 8
  %55 = getelementptr inbounds %struct.power_event, %struct.power_event* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.power_event*, %struct.power_event** %1, align 8
  %58 = getelementptr inbounds %struct.power_event, %struct.power_event* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.power_event*, %struct.power_event** %1, align 8
  %61 = getelementptr inbounds %struct.power_event, %struct.power_event* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @svg_pstate(i32 %53, i32 %56, i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %50, %35
  %65 = load %struct.power_event*, %struct.power_event** %1, align 8
  %66 = getelementptr inbounds %struct.power_event, %struct.power_event* %65, i32 0, i32 1
  %67 = load %struct.power_event*, %struct.power_event** %66, align 8
  store %struct.power_event* %67, %struct.power_event** %1, align 8
  br label %32

68:                                               ; preds = %32
  ret void
}

declare dso_local i32 @svg_cstate(i32, i32, i32, i64) #1

declare dso_local i32 @svg_pstate(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
