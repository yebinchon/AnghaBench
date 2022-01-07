; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test__event_st = type { i32 (%struct.perf_evlist*)*, i32 }
%struct.perf_evlist = type opaque
%struct.perf_evlist.0 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to parse event '%s', err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test__event_st*)* @test_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_event(%struct.test__event_st* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test__event_st*, align 8
  %4 = alloca %struct.perf_evlist.0*, align 8
  %5 = alloca i32, align 4
  store %struct.test__event_st* %0, %struct.test__event_st** %3, align 8
  %6 = call %struct.perf_evlist.0* @perf_evlist__new(i32* null, i32* null)
  store %struct.perf_evlist.0* %6, %struct.perf_evlist.0** %4, align 8
  %7 = load %struct.perf_evlist.0*, %struct.perf_evlist.0** %4, align 8
  %8 = icmp eq %struct.perf_evlist.0* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.perf_evlist.0*, %struct.perf_evlist.0** %4, align 8
  %14 = load %struct.test__event_st*, %struct.test__event_st** %3, align 8
  %15 = getelementptr inbounds %struct.test__event_st, %struct.test__event_st* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @parse_events(%struct.perf_evlist.0* %13, i32 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.test__event_st*, %struct.test__event_st** %3, align 8
  %22 = getelementptr inbounds %struct.test__event_st, %struct.test__event_st* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %12
  %28 = load %struct.test__event_st*, %struct.test__event_st** %3, align 8
  %29 = getelementptr inbounds %struct.test__event_st, %struct.test__event_st* %28, i32 0, i32 0
  %30 = load i32 (%struct.perf_evlist*)*, i32 (%struct.perf_evlist*)** %29, align 8
  %31 = load %struct.perf_evlist.0*, %struct.perf_evlist.0** %4, align 8
  %32 = bitcast %struct.perf_evlist.0* %31 to %struct.perf_evlist*
  %33 = call i32 %30(%struct.perf_evlist* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.perf_evlist.0*, %struct.perf_evlist.0** %4, align 8
  %35 = call i32 @perf_evlist__delete(%struct.perf_evlist.0* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %20, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.perf_evlist.0* @perf_evlist__new(i32*, i32*) #1

declare dso_local i32 @parse_events(%struct.perf_evlist.0*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @perf_evlist__delete(%struct.perf_evlist.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
