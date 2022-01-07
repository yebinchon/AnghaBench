; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_evsel__prepare_tracepoint_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_evsel__prepare_tracepoint_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.event_format*, i32*, %struct.TYPE_2__ }
%struct.event_format = type { i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.pevent = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.pevent*)* @perf_evsel__prepare_tracepoint_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__prepare_tracepoint_event(%struct.perf_evsel* %0, %struct.pevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.pevent*, align 8
  %6 = alloca %struct.event_format*, align 8
  %7 = alloca [128 x i8], align 16
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.pevent* %1, %struct.pevent** %5, align 8
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %9 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %8, i32 0, i32 0
  %10 = load %struct.event_format*, %struct.event_format** %9, align 8
  %11 = icmp ne %struct.event_format* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.pevent*, %struct.pevent** %5, align 8
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %16 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.event_format* @pevent_find_event(%struct.pevent* %14, i32 %18)
  store %struct.event_format* %19, %struct.event_format** %6, align 8
  %20 = load %struct.event_format*, %struct.event_format** %6, align 8
  %21 = icmp eq %struct.event_format* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %51

23:                                               ; preds = %13
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %25 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %30 = load %struct.event_format*, %struct.event_format** %6, align 8
  %31 = getelementptr inbounds %struct.event_format, %struct.event_format* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.event_format*, %struct.event_format** %6, align 8
  %34 = getelementptr inbounds %struct.event_format, %struct.event_format* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %29, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %35)
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %38 = call i32* @strdup(i8* %37)
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %40 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %42 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %51

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.event_format*, %struct.event_format** %6, align 8
  %49 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %50 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %49, i32 0, i32 0
  store %struct.event_format* %48, %struct.event_format** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %45, %22, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.event_format* @pevent_find_event(%struct.pevent*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
