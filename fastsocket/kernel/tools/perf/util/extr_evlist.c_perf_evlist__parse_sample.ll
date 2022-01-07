; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__parse_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__parse_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_evsel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__parse_sample(%struct.perf_evlist* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.perf_evlist*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %8 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %9 = call %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist* %8)
  store %struct.perf_evsel* %9, %struct.perf_evsel** %7, align 8
  %10 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %11 = load %union.perf_event*, %union.perf_event** %5, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %13 = call i32 @perf_evsel__parse_sample(%struct.perf_evsel* %10, %union.perf_event* %11, %struct.perf_sample* %12)
  ret i32 %13
}

declare dso_local %struct.perf_evsel* @perf_evlist__first(%struct.perf_evlist*) #1

declare dso_local i32 @perf_evsel__parse_sample(%struct.perf_evsel*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
