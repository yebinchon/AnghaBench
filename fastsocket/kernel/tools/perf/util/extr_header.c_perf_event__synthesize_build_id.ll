; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_build_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%struct.dso = type { i32, i32, i32, i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.machine = type { i32 }

@NAME_ALIGN = common dso_local global i32 0, align 4
@PERF_RECORD_HEADER_BUILD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_build_id(%struct.perf_tool* %0, %struct.dso* %1, i32 %2, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %3, %struct.machine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %struct.dso*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca %union.perf_event, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %7, align 8
  store %struct.dso* %1, %struct.dso** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %3, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %10, align 8
  store %struct.machine* %4, %struct.machine** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.dso*, %struct.dso** %8, align 8
  %16 = getelementptr inbounds %struct.dso, %struct.dso* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %6, align 4
  br label %70

21:                                               ; preds = %5
  %22 = call i32 @memset(%union.perf_event* %12, i32 0, i32 24)
  %23 = load %struct.dso*, %struct.dso** %8, align 8
  %24 = getelementptr inbounds %struct.dso, %struct.dso* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32, i32* @NAME_ALIGN, align 4
  %30 = call i64 @PERF_ALIGN(i64 %28, i32 %29)
  store i64 %30, i64* %13, align 8
  %31 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.dso*, %struct.dso** %8, align 8
  %34 = getelementptr inbounds %struct.dso, %struct.dso* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %32, i32 %35, i32 4)
  %37 = load i32, i32* @PERF_RECORD_HEADER_BUILD_ID, align 4
  %38 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.machine*, %struct.machine** %11, align 8
  %46 = getelementptr inbounds %struct.machine, %struct.machine* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %13, align 8
  %51 = add i64 24, %50
  %52 = trunc i64 %51 to i32
  %53 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = bitcast %union.perf_event* %12 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.dso*, %struct.dso** %8, align 8
  %59 = getelementptr inbounds %struct.dso, %struct.dso* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dso*, %struct.dso** %8, align 8
  %62 = getelementptr inbounds %struct.dso, %struct.dso* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32* %57, i32 %60, i32 %63)
  %65 = load i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %10, align 8
  %66 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %67 = load %struct.machine*, %struct.machine** %11, align 8
  %68 = call i32 %65(%struct.perf_tool* %66, %union.perf_event* %12, i32* null, %struct.machine* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %21, %19
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%union.perf_event*, i32, i32) #1

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
