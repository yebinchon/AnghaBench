; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_pmu_config_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_pmu_config_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32 }
%struct.parse_events__term = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.perf_pmu__format = type { i32, i32 }

@PARSE_EVENTS__TERM_TYPE_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.perf_event_attr*, %struct.parse_events__term*)* @pmu_config_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_config_term(%struct.list_head* %0, %struct.perf_event_attr* %1, %struct.parse_events__term* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.parse_events__term*, align 8
  %8 = alloca %struct.perf_pmu__format*, align 8
  %9 = alloca i32*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.parse_events__term* %2, %struct.parse_events__term** %7, align 8
  %10 = load %struct.parse_events__term*, %struct.parse_events__term** %7, align 8
  %11 = call i64 @parse_events__is_hardcoded_term(%struct.parse_events__term* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.parse_events__term*, %struct.parse_events__term** %7, align 8
  %16 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PARSE_EVENTS__TERM_TYPE_NUM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.list_head*, %struct.list_head** %5, align 8
  %25 = load %struct.parse_events__term*, %struct.parse_events__term** %7, align 8
  %26 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.perf_pmu__format* @pmu_find_format(%struct.list_head* %24, i32 %27)
  store %struct.perf_pmu__format* %28, %struct.perf_pmu__format** %8, align 8
  %29 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %8, align 8
  %30 = icmp ne %struct.perf_pmu__format* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %8, align 8
  %36 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %47 [
    i32 130, label %38
    i32 129, label %41
    i32 128, label %44
  ]

38:                                               ; preds = %34
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 2
  store i32* %40, i32** %9, align 8
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %43 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %42, i32 0, i32 1
  store i32* %43, i32** %9, align 8
  br label %50

44:                                               ; preds = %34
  %45 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %45, i32 0, i32 0
  store i32* %46, i32** %9, align 8
  br label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %44, %41, %38
  %51 = load %struct.perf_pmu__format*, %struct.perf_pmu__format** %8, align 8
  %52 = getelementptr inbounds %struct.perf_pmu__format, %struct.perf_pmu__format* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.parse_events__term*, %struct.parse_events__term** %7, align 8
  %55 = getelementptr inbounds %struct.parse_events__term, %struct.parse_events__term* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pmu_format_value(i32 %53, i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %47, %31, %20, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @parse_events__is_hardcoded_term(%struct.parse_events__term*) #1

declare dso_local %struct.perf_pmu__format* @pmu_find_format(%struct.list_head*, i32) #1

declare dso_local i32 @pmu_format_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
