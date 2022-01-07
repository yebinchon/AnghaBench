; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_end_sample_processing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_end_sample_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_event = type { i64, i64, i64, i8*, i32, i8* }

@numcpus = common dso_local global i64 0, align 8
@cpus_pstate_state = common dso_local global i64* null, align 8
@cpus_pstate_start_times = common dso_local global i64* null, align 8
@last_time = common dso_local global i8* null, align 8
@PSTATE = common dso_local global i32 0, align 4
@power_events = common dso_local global i8* null, align 8
@first_time = common dso_local global i64 0, align 8
@min_freq = common dso_local global i64 0, align 8
@CSTATE = common dso_local global i32 0, align 4
@cpus_cstate_start_times = common dso_local global i64* null, align 8
@cpus_cstate_state = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @end_sample_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sample_processing() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.power_event*, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %57, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @numcpus, align 8
  %6 = icmp ule i64 %4, %5
  br i1 %6, label %7, label %60

7:                                                ; preds = %3
  %8 = call %struct.power_event* @zalloc(i32 48)
  store %struct.power_event* %8, %struct.power_event** %2, align 8
  %9 = load %struct.power_event*, %struct.power_event** %2, align 8
  %10 = icmp ne %struct.power_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %60

12:                                               ; preds = %7
  %13 = load i64*, i64** @cpus_pstate_state, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.power_event*, %struct.power_event** %2, align 8
  %18 = getelementptr inbounds %struct.power_event, %struct.power_event* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i64*, i64** @cpus_pstate_start_times, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.power_event*, %struct.power_event** %2, align 8
  %24 = getelementptr inbounds %struct.power_event, %struct.power_event* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** @last_time, align 8
  %26 = load %struct.power_event*, %struct.power_event** %2, align 8
  %27 = getelementptr inbounds %struct.power_event, %struct.power_event* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load %struct.power_event*, %struct.power_event** %2, align 8
  %30 = getelementptr inbounds %struct.power_event, %struct.power_event* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @PSTATE, align 4
  %32 = load %struct.power_event*, %struct.power_event** %2, align 8
  %33 = getelementptr inbounds %struct.power_event, %struct.power_event* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @power_events, align 8
  %35 = load %struct.power_event*, %struct.power_event** %2, align 8
  %36 = getelementptr inbounds %struct.power_event, %struct.power_event* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.power_event*, %struct.power_event** %2, align 8
  %38 = getelementptr inbounds %struct.power_event, %struct.power_event* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %12
  %42 = load i64, i64* @first_time, align 8
  %43 = load %struct.power_event*, %struct.power_event** %2, align 8
  %44 = getelementptr inbounds %struct.power_event, %struct.power_event* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %12
  %46 = load %struct.power_event*, %struct.power_event** %2, align 8
  %47 = getelementptr inbounds %struct.power_event, %struct.power_event* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @min_freq, align 8
  %52 = load %struct.power_event*, %struct.power_event** %2, align 8
  %53 = getelementptr inbounds %struct.power_event, %struct.power_event* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.power_event*, %struct.power_event** %2, align 8
  %56 = bitcast %struct.power_event* %55 to i8*
  store i8* %56, i8** @power_events, align 8
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %1, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %1, align 8
  br label %3

60:                                               ; preds = %11, %3
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
