; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32, i32, i32, i32, %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__init(%struct.perf_evsel* %0, %struct.perf_event_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %9 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %11 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %10, i32 0, i32 4
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %13 = bitcast %struct.perf_event_attr* %11 to i8*
  %14 = bitcast %struct.perf_event_attr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %16 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %19 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %18, i32 0, i32 2
  %20 = call i32 @hists__init(i32* %19)
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__perf_evsel__sample_size(i32 %23)
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %26 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @hists__init(i32*) #2

declare dso_local i32 @__perf_evsel__sample_size(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
