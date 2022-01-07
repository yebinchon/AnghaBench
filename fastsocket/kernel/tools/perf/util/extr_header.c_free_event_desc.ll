; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_free_event_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_free_event_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.perf_evsel*, %struct.perf_evsel*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evsel*)* @free_event_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_event_desc(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  %4 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %5 = icmp ne %struct.perf_evsel* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  store %struct.perf_evsel* %8, %struct.perf_evsel** %3, align 8
  br label %9

9:                                                ; preds = %36, %7
  %10 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %11 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %17 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %16, i32 0, i32 1
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %17, align 8
  %19 = icmp ne %struct.perf_evsel* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %22 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %21, i32 0, i32 1
  %23 = load %struct.perf_evsel*, %struct.perf_evsel** %22, align 8
  %24 = call i32 @free(%struct.perf_evsel* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %27 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %26, i32 0, i32 0
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %27, align 8
  %29 = icmp ne %struct.perf_evsel* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %32 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %31, i32 0, i32 0
  %33 = load %struct.perf_evsel*, %struct.perf_evsel** %32, align 8
  %34 = call i32 @free(%struct.perf_evsel* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %38 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %37, i32 1
  store %struct.perf_evsel* %38, %struct.perf_evsel** %3, align 8
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %41 = call i32 @free(%struct.perf_evsel* %40)
  br label %42

42:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @free(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
