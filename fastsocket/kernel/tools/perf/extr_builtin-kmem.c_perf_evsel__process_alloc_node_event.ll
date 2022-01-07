; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_perf_evsel__process_alloc_node_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_perf_evsel__process_alloc_node_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i64 }

@cpunode_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@nr_cross_allocs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*)* @perf_evsel__process_alloc_node_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_alloc_node_event(%struct.perf_evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %9 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %10 = call i32 @perf_evsel__process_alloc_event(%struct.perf_evsel* %8, %struct.perf_sample* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** @cpunode_map, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %16 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %21 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %22 = call i32 @perf_evsel__intval(%struct.perf_evsel* %20, %struct.perf_sample* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* @nr_cross_allocs, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @nr_cross_allocs, align 4
  br label %29

29:                                               ; preds = %26, %13
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @perf_evsel__process_alloc_event(%struct.perf_evsel*, %struct.perf_sample*) #1

declare dso_local i32 @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
