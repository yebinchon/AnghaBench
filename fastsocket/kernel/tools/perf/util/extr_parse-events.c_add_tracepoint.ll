; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_add_tracepoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_add_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_evsel = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head**, i32*, i8*, i8*)* @add_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint(%struct.list_head** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.perf_evsel*, align 8
  %11 = alloca %struct.list_head*, align 8
  store %struct.list_head** %0, %struct.list_head*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.list_head**, %struct.list_head*** %6, align 8
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8
  store %struct.list_head* %13, %struct.list_head** %11, align 8
  %14 = load %struct.list_head*, %struct.list_head** %11, align 8
  %15 = icmp ne %struct.list_head* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = call %struct.list_head* @malloc(i32 4)
  store %struct.list_head* %17, %struct.list_head** %11, align 8
  %18 = load %struct.list_head*, %struct.list_head** %11, align 8
  %19 = icmp ne %struct.list_head* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %47

23:                                               ; preds = %16
  %24 = load %struct.list_head*, %struct.list_head** %11, align 8
  %25 = call i32 @INIT_LIST_HEAD(%struct.list_head* %24)
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call %struct.perf_evsel* @perf_evsel__newtp(i8* %27, i8* %28, i32 %30)
  store %struct.perf_evsel* %32, %struct.perf_evsel** %10, align 8
  %33 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %34 = icmp ne %struct.perf_evsel* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.list_head*, %struct.list_head** %11, align 8
  %37 = call i32 @free(%struct.list_head* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %26
  %41 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %42 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %41, i32 0, i32 0
  %43 = load %struct.list_head*, %struct.list_head** %11, align 8
  %44 = call i32 @list_add_tail(i32* %42, %struct.list_head* %43)
  %45 = load %struct.list_head*, %struct.list_head** %11, align 8
  %46 = load %struct.list_head**, %struct.list_head*** %6, align 8
  store %struct.list_head* %45, %struct.list_head** %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %35, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.list_head* @malloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.perf_evsel* @perf_evsel__newtp(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
