; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.cpu_map = type { i32 }
%struct.thread_map = type { i32 }

@PERF_EVLIST__HLIST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__init(%struct.perf_evlist* %0, %struct.cpu_map* %1, %struct.thread_map* %2) #0 {
  %4 = alloca %struct.perf_evlist*, align 8
  %5 = alloca %struct.cpu_map*, align 8
  %6 = alloca %struct.thread_map*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_evlist* %0, %struct.perf_evlist** %4, align 8
  store %struct.cpu_map* %1, %struct.cpu_map** %5, align 8
  store %struct.thread_map* %2, %struct.thread_map** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PERF_EVLIST__HLIST_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %14 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @INIT_HLIST_HEAD(i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %25 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %28 = load %struct.cpu_map*, %struct.cpu_map** %5, align 8
  %29 = load %struct.thread_map*, %struct.thread_map** %6, align 8
  %30 = call i32 @perf_evlist__set_maps(%struct.perf_evlist* %27, %struct.cpu_map* %28, %struct.thread_map* %29)
  %31 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %32 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @perf_evlist__set_maps(%struct.perf_evlist*, %struct.cpu_map*, %struct.thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
