; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_..perf.h_perf_mmap__read_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_..perf.h_perf_mmap__read_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_mmap = type { %struct.perf_event_mmap_page* }
%struct.perf_event_mmap_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_mmap*)* @perf_mmap__read_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_mmap__read_head(%struct.perf_mmap* %0) #0 {
  %2 = alloca %struct.perf_mmap*, align 8
  %3 = alloca %struct.perf_event_mmap_page*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_mmap* %0, %struct.perf_mmap** %2, align 8
  %5 = load %struct.perf_mmap*, %struct.perf_mmap** %2, align 8
  %6 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %5, i32 0, i32 0
  %7 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %6, align 8
  store %struct.perf_event_mmap_page* %7, %struct.perf_event_mmap_page** %3, align 8
  %8 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @rmb()
  %12 = load i32, i32* %4, align 4
  ret i32 %12
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
