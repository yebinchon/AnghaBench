; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_util..perf.h_perf_mmap__write_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_util..perf.h_perf_mmap__write_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_mmap = type { %struct.perf_event_mmap_page* }
%struct.perf_event_mmap_page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_mmap*, i64)* @perf_mmap__write_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_mmap__write_tail(%struct.perf_mmap* %0, i64 %1) #0 {
  %3 = alloca %struct.perf_mmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_event_mmap_page*, align 8
  store %struct.perf_mmap* %0, %struct.perf_mmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.perf_mmap*, %struct.perf_mmap** %3, align 8
  %7 = getelementptr inbounds %struct.perf_mmap, %struct.perf_mmap* %6, i32 0, i32 0
  %8 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %7, align 8
  store %struct.perf_event_mmap_page* %8, %struct.perf_event_mmap_page** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event_mmap_page, %struct.perf_event_mmap_page* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
