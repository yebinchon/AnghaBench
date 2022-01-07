; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_pmu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.perf_pmu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_pmu(%struct.list_head** %0, i32* %1, i8* %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.perf_event_attr, align 4
  %11 = alloca %struct.perf_pmu*, align 8
  store %struct.list_head** %0, %struct.list_head*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.perf_pmu* @perf_pmu__find(i8* %12)
  store %struct.perf_pmu* %13, %struct.perf_pmu** %11, align 8
  %14 = load %struct.perf_pmu*, %struct.perf_pmu** %11, align 8
  %15 = icmp ne %struct.perf_pmu* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.perf_event_attr* %10, i32 0, i32 4)
  %21 = load %struct.perf_pmu*, %struct.perf_pmu** %11, align 8
  %22 = load %struct.list_head*, %struct.list_head** %9, align 8
  %23 = call i64 @perf_pmu__check_alias(%struct.perf_pmu* %21, %struct.list_head* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.list_head*, %struct.list_head** %9, align 8
  %30 = call i32 @config_attr(%struct.perf_event_attr* %10, %struct.list_head* %29, i32 0)
  %31 = load %struct.perf_pmu*, %struct.perf_pmu** %11, align 8
  %32 = load %struct.list_head*, %struct.list_head** %9, align 8
  %33 = call i64 @perf_pmu__config(%struct.perf_pmu* %31, %struct.perf_event_attr* %10, %struct.list_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load %struct.list_head**, %struct.list_head*** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.list_head*, %struct.list_head** %9, align 8
  %42 = call i32 @pmu_event_name(%struct.list_head* %41)
  %43 = load %struct.perf_pmu*, %struct.perf_pmu** %11, align 8
  %44 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__add_event(%struct.list_head** %39, i32* %40, %struct.perf_event_attr* %10, i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %35, %25, %16
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.perf_pmu* @perf_pmu__find(i8*) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @perf_pmu__check_alias(%struct.perf_pmu*, %struct.list_head*) #1

declare dso_local i32 @config_attr(%struct.perf_event_attr*, %struct.list_head*, i32) #1

declare dso_local i64 @perf_pmu__config(%struct.perf_pmu*, %struct.perf_event_attr*, %struct.list_head*) #1

declare dso_local i32 @__add_event(%struct.list_head**, i32*, %struct.perf_event_attr*, i32, i32) #1

declare dso_local i32 @pmu_event_name(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
