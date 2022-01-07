; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_pollfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_pollfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__add_pollfd(%struct.perf_evlist* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_evlist*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_evlist* %0, %struct.perf_evlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @F_SETFL, align 4
  %7 = load i32, i32* @O_NONBLOCK, align 4
  %8 = call i32 @fcntl(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %11 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %14 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %9, i32* %17, align 4
  %18 = load i32, i32* @POLLIN, align 4
  %19 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %20 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %23 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %18, i32* %26, align 4
  %27 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %28 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
