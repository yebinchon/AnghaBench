; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_perf_evsel__process_lock_acquired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_perf_evsel__process_lock_acquired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.perf_evsel*, %struct.perf_sample*)* }
%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32 }

@trace_handler = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*)* @perf_evsel__process_lock_acquired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_lock_acquired(%struct.perf_evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_handler, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.perf_evsel*, %struct.perf_sample*)*, i32 (%struct.perf_evsel*, %struct.perf_sample*)** %7, align 8
  %9 = icmp ne i32 (%struct.perf_evsel*, %struct.perf_sample*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_handler, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.perf_evsel*, %struct.perf_sample*)*, i32 (%struct.perf_evsel*, %struct.perf_sample*)** %12, align 8
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %16 = call i32 %13(%struct.perf_evsel* %14, %struct.perf_sample* %15)
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
