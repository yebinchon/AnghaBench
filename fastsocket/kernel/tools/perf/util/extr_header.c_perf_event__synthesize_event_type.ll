; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_event_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_event_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %union.perf_event*, i32 }
%struct.machine = type { i32 }

@MAX_EVENT_NAME = common dso_local global i32 0, align 4
@PERF_RECORD_HEADER_EVENT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_event_type(%struct.perf_tool* %0, i32 %1, i8* %2, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %3, %struct.machine* %4) #0 {
  %6 = alloca %struct.perf_tool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca %union.perf_event, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %3, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %9, align 8
  store %struct.machine* %4, %struct.machine** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @memset(%union.perf_event* %11, i32 0, i32 24)
  %15 = load i32, i32* %7, align 4
  %16 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %union.perf_event*, %union.perf_event** %21, align 8
  %23 = load i32, i32* @MAX_EVENT_NAME, align 4
  %24 = call i32 @memset(%union.perf_event* %22, i32 0, i32 %23)
  %25 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %union.perf_event*, %union.perf_event** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @MAX_EVENT_NAME, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @strncpy(%union.perf_event* %28, i8* %29, i32 %31)
  %33 = load i32, i32* @PERF_RECORD_HEADER_EVENT_TYPE, align 4
  %34 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %union.perf_event*, %union.perf_event** %39, align 8
  %41 = call i64 @strlen(%union.perf_event* %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @PERF_ALIGN(i64 %42, i32 4)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub i64 8, %44
  %46 = sub i64 24, %45
  %47 = trunc i64 %46 to i32
  %48 = bitcast %union.perf_event* %11 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %9, align 8
  %52 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %53 = load %struct.machine*, %struct.machine** %10, align 8
  %54 = call i32 %51(%struct.perf_tool* %52, %union.perf_event* %11, i32* null, %struct.machine* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%union.perf_event*, i32, i32) #1

declare dso_local i32 @strncpy(%union.perf_event*, i8*, i32) #1

declare dso_local i64 @strlen(%union.perf_event*) #1

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
