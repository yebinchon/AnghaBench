; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__alloc_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__alloc_id(%struct.perf_evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32* @xyarray__new(i32 %8, i32 %9, i32 4)
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %12 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32* @zalloc(i32 %26)
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %29 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %31 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %36 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @xyarray__delete(i32* %37)
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %40 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %34, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @xyarray__new(i32, i32, i32) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32 @xyarray__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
