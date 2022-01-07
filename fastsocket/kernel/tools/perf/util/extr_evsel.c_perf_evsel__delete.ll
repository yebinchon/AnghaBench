; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.perf_evsel*, i64, %struct.perf_evsel*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__delete(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  %3 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %4 = call i32 @perf_evsel__exit(%struct.perf_evsel* %3)
  %5 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %6 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @close_cgroup(i32 %7)
  %9 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %10 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %9, i32 0, i32 2
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %12 = call i32 @free(%struct.perf_evsel* %11)
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %19 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pevent_free_format(i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %24 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %23, i32 0, i32 0
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %24, align 8
  %26 = call i32 @free(%struct.perf_evsel* %25)
  %27 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %28 = call i32 @free(%struct.perf_evsel* %27)
  ret void
}

declare dso_local i32 @perf_evsel__exit(%struct.perf_evsel*) #1

declare dso_local i32 @close_cgroup(i32) #1

declare dso_local i32 @free(%struct.perf_evsel*) #1

declare dso_local i32 @pevent_free_format(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
