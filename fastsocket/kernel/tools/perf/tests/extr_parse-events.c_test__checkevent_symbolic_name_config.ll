; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"wrong period\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wrong config1\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"wrong config2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evlist*)* @test__checkevent_symbolic_name_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_symbolic_name_config(%struct.perf_evlist* %0) #0 {
  %2 = alloca %struct.perf_evlist*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %2, align 8
  %4 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %5 = call %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist* %4)
  store %struct.perf_evsel* %5, %struct.perf_evsel** %3, align 8
  %6 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %7 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 1, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %22 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %29 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 100000, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %36 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %43 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 1, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  ret i32 0
}

declare dso_local %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
