; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_evsel__add_hist_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_evsel__add_hist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.addr_location = type { i32 }
%struct.perf_sample = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_entry* (%struct.perf_evsel*, %struct.addr_location*, %struct.perf_sample*)* @perf_evsel__add_hist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_entry* @perf_evsel__add_hist_entry(%struct.perf_evsel* %0, %struct.addr_location* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.hist_entry*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store %struct.addr_location* %1, %struct.addr_location** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %9 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %10 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %9, i32 0, i32 0
  %11 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hist_entry* @__hists__add_entry(i32* %10, %struct.addr_location* %11, i32* null, i32 %14)
  store %struct.hist_entry* %15, %struct.hist_entry** %8, align 8
  %16 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %17 = icmp eq %struct.hist_entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.hist_entry* null, %struct.hist_entry** %4, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %21 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %20, i32 0, i32 0
  %22 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %23 = call i32 @hists__inc_nr_events(i32* %21, i32 %22)
  %24 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  store %struct.hist_entry* %24, %struct.hist_entry** %4, align 8
  br label %25

25:                                               ; preds = %19, %18
  %26 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  ret %struct.hist_entry* %26
}

declare dso_local %struct.hist_entry* @__hists__add_entry(i32*, %struct.addr_location*, i32*, i32) #1

declare dso_local i32 @hists__inc_nr_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
