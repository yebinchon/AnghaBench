; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_perf_evsel__cpus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_perf_evsel__cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.cpu_map* }
%struct.cpu_map = type { i32 }
%struct.perf_evsel = type { %struct.cpu_map* }

@target = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@evsel_list = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_map* (%struct.perf_evsel*)* @perf_evsel__cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_map* @perf_evsel__cpus(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  %3 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %4 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %3, i32 0, i32 0
  %5 = load %struct.cpu_map*, %struct.cpu_map** %4, align 8
  %6 = icmp ne %struct.cpu_map* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @target, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %12 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %11, i32 0, i32 0
  %13 = load %struct.cpu_map*, %struct.cpu_map** %12, align 8
  br label %18

14:                                               ; preds = %7, %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @evsel_list, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.cpu_map*, %struct.cpu_map** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi %struct.cpu_map* [ %13, %10 ], [ %17, %14 ]
  ret %struct.cpu_map* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
