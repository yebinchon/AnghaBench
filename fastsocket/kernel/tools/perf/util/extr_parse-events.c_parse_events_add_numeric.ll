; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_numeric.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_numeric(%struct.list_head** %0, i32* %1, i32 %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.perf_event_attr, align 4
  store %struct.list_head** %0, %struct.list_head*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %13 = call i32 @memset(%struct.perf_event_attr* %12, i32 0, i32 8)
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.list_head*, %struct.list_head** %11, align 8
  %19 = icmp ne %struct.list_head* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.list_head*, %struct.list_head** %11, align 8
  %22 = call i64 @config_attr(%struct.perf_event_attr* %12, %struct.list_head* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %20, %5
  %28 = load %struct.list_head**, %struct.list_head*** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @add_event(%struct.list_head** %28, i32* %29, %struct.perf_event_attr* %12, i32* null)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @config_attr(%struct.perf_event_attr*, %struct.list_head*, i32) #1

declare dso_local i32 @add_event(%struct.list_head**, i32*, %struct.perf_event_attr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
