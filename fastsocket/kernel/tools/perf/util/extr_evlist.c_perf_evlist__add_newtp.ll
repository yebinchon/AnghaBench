; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_newtp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_newtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__add_newtp(%struct.perf_evlist* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.perf_evlist*, %struct.perf_evlist** %6, align 8
  %14 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.perf_evsel* @perf_evsel__newtp(i8* %11, i8* %12, i32 %15)
  store %struct.perf_evsel* %16, %struct.perf_evsel** %10, align 8
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %18 = icmp eq %struct.perf_evsel* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %23 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.perf_evlist*, %struct.perf_evlist** %6, align 8
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %27 = call i32 @perf_evlist__add(%struct.perf_evlist* %25, %struct.perf_evsel* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.perf_evsel* @perf_evsel__newtp(i8*, i8*, i32) #1

declare dso_local i32 @perf_evlist__add(%struct.perf_evlist*, %struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
