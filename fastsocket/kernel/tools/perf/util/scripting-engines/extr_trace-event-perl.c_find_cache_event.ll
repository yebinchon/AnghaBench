; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_find_cache_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-perl.c_find_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_evsel = type { %struct.event_format*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@find_cache_event.ev_name = internal global [256 x i8] zeroinitializer, align 16
@events = common dso_local global %struct.event_format** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_format* (%struct.perf_evsel*)* @find_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_format* @find_cache_event(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.event_format*, align 8
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.event_format*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %3, align 8
  %6 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %7 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.event_format**, %struct.event_format*** @events, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.event_format*, %struct.event_format** %10, i64 %12
  %14 = load %struct.event_format*, %struct.event_format** %13, align 8
  %15 = icmp ne %struct.event_format* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.event_format**, %struct.event_format*** @events, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.event_format*, %struct.event_format** %17, i64 %19
  %21 = load %struct.event_format*, %struct.event_format** %20, align 8
  store %struct.event_format* %21, %struct.event_format** %2, align 8
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %24 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %23, i32 0, i32 0
  %25 = load %struct.event_format*, %struct.event_format** %24, align 8
  store %struct.event_format* %25, %struct.event_format** %4, align 8
  %26 = load %struct.event_format**, %struct.event_format*** @events, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.event_format*, %struct.event_format** %26, i64 %28
  store %struct.event_format* %25, %struct.event_format** %29, align 8
  %30 = load %struct.event_format*, %struct.event_format** %4, align 8
  %31 = icmp ne %struct.event_format* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store %struct.event_format* null, %struct.event_format** %2, align 8
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.event_format*, %struct.event_format** %4, align 8
  %35 = getelementptr inbounds %struct.event_format, %struct.event_format* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.event_format*, %struct.event_format** %4, align 8
  %38 = getelementptr inbounds %struct.event_format, %struct.event_format* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @find_cache_event.ev_name, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39)
  %41 = load %struct.event_format*, %struct.event_format** %4, align 8
  %42 = load %struct.event_format*, %struct.event_format** %4, align 8
  %43 = getelementptr inbounds %struct.event_format, %struct.event_format* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @define_event_symbols(%struct.event_format* %41, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @find_cache_event.ev_name, i64 0, i64 0), i32 %45)
  %47 = load %struct.event_format*, %struct.event_format** %4, align 8
  store %struct.event_format* %47, %struct.event_format** %2, align 8
  br label %48

48:                                               ; preds = %33, %32, %16
  %49 = load %struct.event_format*, %struct.event_format** %2, align 8
  ret %struct.event_format* %49
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @define_event_symbols(%struct.event_format*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
