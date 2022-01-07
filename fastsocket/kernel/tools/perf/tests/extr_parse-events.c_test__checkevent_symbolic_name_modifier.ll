; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_modifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__checkevent_symbolic_name_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"wrong exclude_user\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"wrong exclude_kernel\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"wrong exclude_hv\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong precise_ip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evlist*)* @test__checkevent_symbolic_name_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_symbolic_name_modifier(%struct.perf_evlist* %0) #0 {
  %2 = alloca %struct.perf_evlist*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %2, align 8
  %4 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %5 = call %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist* %4)
  store %struct.perf_evsel* %5, %struct.perf_evsel** %3, align 8
  %6 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %7 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %12 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %17 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %25 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.perf_evlist*, %struct.perf_evlist** %2, align 8
  %33 = call i32 @test__checkevent_symbolic_name(%struct.perf_evlist* %32)
  ret i32 %33
}

declare dso_local %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

declare dso_local i32 @test__checkevent_symbolic_name(%struct.perf_evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
