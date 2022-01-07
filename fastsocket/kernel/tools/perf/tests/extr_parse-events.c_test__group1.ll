; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__group1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__group1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.perf_evsel*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"wrong exclude guest\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"wrong exclude host\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"wrong leader\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evlist*)* @test__group1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__group1(%struct.perf_evlist* %0) #0 {
  %2 = alloca %struct.perf_evlist*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %2, align 8
  %5 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %6 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 2, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %12 = call %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist* %11)
  store %struct.perf_evsel* %12, %struct.perf_evsel** %4, align 8
  store %struct.perf_evsel* %12, %struct.perf_evsel** %3, align 8
  %13 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %15 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @PERF_COUNT_HW_INSTRUCTIONS, align 8
  %22 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %23 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %30 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %35 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %43 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %48 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %56 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %64 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %72 = call i32 @perf_evsel__is_group_member(%struct.perf_evsel* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %78 = call %struct.perf_evsel* @perf_evsel__next(%struct.perf_evsel* %77)
  store %struct.perf_evsel* %78, %struct.perf_evsel** %3, align 8
  %79 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %80 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %81 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* @PERF_COUNT_HW_CPU_CYCLES, align 8
  %88 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %89 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %96 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %104 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %109 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %114 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %119 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %127 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i32
  %132 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  %133 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %134 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %133, i32 0, i32 0
  %135 = load %struct.perf_evsel*, %struct.perf_evsel** %134, align 8
  %136 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %137 = icmp eq %struct.perf_evsel* %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  ret i32 0
}

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist*) #1

declare dso_local i32 @perf_evsel__is_group_member(%struct.perf_evsel*) #1

declare dso_local %struct.perf_evsel* @perf_evsel__next(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
