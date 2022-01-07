; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__newtp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__newtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.perf_evsel*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32 }

@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_evsel* @perf_evsel__newtp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca %struct.perf_event_attr, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.perf_evsel* @zalloc(i32 16)
  store %struct.perf_evsel* %10, %struct.perf_evsel** %8, align 8
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %12 = icmp ne %struct.perf_evsel* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  %15 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %16 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 3
  %25 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %27 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %26, i32 0, i32 0
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @asprintf(%struct.perf_evsel** %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  br label %58

33:                                               ; preds = %13
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct.TYPE_2__* @event_format__new(i8* %34, i8* %35)
  %37 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %38 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %40 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp eq %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %58

44:                                               ; preds = %33
  %45 = call i32 @event_attr_init(%struct.perf_event_attr* %9)
  %46 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %47 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @perf_evsel__init(%struct.perf_evsel* %53, %struct.perf_event_attr* %9, i32 %54)
  br label %56

56:                                               ; preds = %44, %3
  %57 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  store %struct.perf_evsel* %57, %struct.perf_evsel** %4, align 8
  br label %65

58:                                               ; preds = %43, %32
  %59 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %60 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %59, i32 0, i32 0
  %61 = load %struct.perf_evsel*, %struct.perf_evsel** %60, align 8
  %62 = call i32 @free(%struct.perf_evsel* %61)
  %63 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %64 = call i32 @free(%struct.perf_evsel* %63)
  store %struct.perf_evsel* null, %struct.perf_evsel** %4, align 8
  br label %65

65:                                               ; preds = %58, %56
  %66 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  ret %struct.perf_evsel* %66
}

declare dso_local %struct.perf_evsel* @zalloc(i32) #1

declare dso_local i64 @asprintf(%struct.perf_evsel**, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @event_format__new(i8*, i8*) #1

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local i32 @perf_evsel__init(%struct.perf_evsel*, %struct.perf_event_attr*, i32) #1

declare dso_local i32 @free(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
