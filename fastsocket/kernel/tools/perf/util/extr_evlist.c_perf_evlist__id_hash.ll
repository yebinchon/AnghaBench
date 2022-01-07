; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__id_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__id_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32* }
%struct.perf_evsel = type { i32 }
%struct.perf_sample_id = type { i32, i32, %struct.perf_evsel* }

@PERF_EVLIST__HLIST_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evlist*, %struct.perf_evsel*, i32, i32, i32)* @perf_evlist__id_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evlist__id_hash(%struct.perf_evlist* %0, %struct.perf_evsel* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.perf_evlist*, align 8
  %7 = alloca %struct.perf_evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_sample_id*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %6, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.perf_sample_id* @SID(%struct.perf_evsel* %13, i32 %14, i32 %15)
  store %struct.perf_sample_id* %16, %struct.perf_sample_id** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.perf_sample_id*, %struct.perf_sample_id** %12, align 8
  %19 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %21 = load %struct.perf_sample_id*, %struct.perf_sample_id** %12, align 8
  %22 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %21, i32 0, i32 2
  store %struct.perf_evsel* %20, %struct.perf_evsel** %22, align 8
  %23 = load %struct.perf_sample_id*, %struct.perf_sample_id** %12, align 8
  %24 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PERF_EVLIST__HLIST_BITS, align 4
  %27 = call i32 @hash_64(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.perf_sample_id*, %struct.perf_sample_id** %12, align 8
  %29 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %28, i32 0, i32 0
  %30 = load %struct.perf_evlist*, %struct.perf_evlist** %6, align 8
  %31 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @hlist_add_head(i32* %29, i32* %35)
  ret void
}

declare dso_local %struct.perf_sample_id* @SID(%struct.perf_evsel*, i32, i32) #1

declare dso_local i32 @hash_64(i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
