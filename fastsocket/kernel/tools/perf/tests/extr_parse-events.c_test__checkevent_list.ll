; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wrong config1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wrong config2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"wrong sample_type\00", align 1
@PERF_TP_SAMPLE_TYPE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"wrong sample_period\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evlist*)* @test__checkevent_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_list(%struct.perf_evlist* %0) #0 {
  %2 = alloca %struct.perf_evlist*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %2, align 8
  %4 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %5 = call %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist* %4)
  store %struct.perf_evsel* %5, %struct.perf_evsel** %3, align 8
  %6 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %7 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 3, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @PERF_TYPE_RAW, align 4
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %21 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 1, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %28 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %35 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %42 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %50 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %58 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %66 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %74 = call %struct.perf_evsel* @perf_evsel__next(%struct.perf_evsel* %73)
  store %struct.perf_evsel* %74, %struct.perf_evsel** %3, align 8
  %75 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %76 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %77 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %75, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* @PERF_TP_SAMPLE_TYPE, align 8
  %84 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %85 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %92 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 1, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %96)
  %98 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %99 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %104 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %112 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %117 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %125 = call %struct.perf_evsel* @perf_evsel__next(%struct.perf_evsel* %124)
  store %struct.perf_evsel* %125, %struct.perf_evsel** %3, align 8
  %126 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %127 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 1, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %134 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 1, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %141 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %146 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %151 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %159 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  ret i32 0
}

declare dso_local %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local %struct.perf_evsel* @perf_evsel__next(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
