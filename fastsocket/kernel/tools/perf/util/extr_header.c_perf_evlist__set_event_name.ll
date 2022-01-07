; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_evlist__set_event_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_evlist__set_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evlist*, %struct.perf_evsel*)* @perf_evlist__set_event_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evlist__set_event_name(%struct.perf_evlist* %0, %struct.perf_evsel* %1) #0 {
  %3 = alloca %struct.perf_evlist*, align 8
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %3, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %4, align 8
  %6 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %7 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.perf_evsel* @perf_evlist__find_by_index(%struct.perf_evlist* %12, i32 %15)
  store %struct.perf_evsel* %16, %struct.perf_evsel** %5, align 8
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %18 = icmp ne %struct.perf_evsel* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %33

20:                                               ; preds = %11
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %22 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %33

26:                                               ; preds = %20
  %27 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %28 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @strdup(i64 %29)
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %32 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %25, %19, %10
  ret void
}

declare dso_local %struct.perf_evsel* @perf_evlist__find_by_index(%struct.perf_evlist*, i32) #1

declare dso_local i64 @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
