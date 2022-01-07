; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__bp_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__bp_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, i8*, i64)* @perf_evsel__bp_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__bp_name(%struct.perf_evsel* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %10 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %9, i32 0, i32 0
  store %struct.perf_event_attr* %10, %struct.perf_event_attr** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__perf_evsel__bp_name(i8* %11, i64 %12, i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = call i32 @perf_evsel__add_modifiers(%struct.perf_evsel* %21, i8* %25, i64 %29)
  %31 = add nsw i32 %20, %30
  ret i32 %31
}

declare dso_local i32 @__perf_evsel__bp_name(i8*, i64, i32, i32) #1

declare dso_local i32 @perf_evsel__add_modifiers(%struct.perf_evsel*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
