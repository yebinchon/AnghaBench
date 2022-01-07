; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%struct.perf_event_attr = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.perf_event_attr }
%struct.TYPE_3__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PERF_RECORD_HEADER_ATTR = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_attr(%struct.perf_tool* %0, %struct.perf_event_attr* %1, i32 %2, i32* %3, i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)*, align 8
  %12 = alloca %union.perf_event*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %7, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)* %4, i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)** %11, align 8
  store i64 4, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = call i64 @PERF_ALIGN(i64 %15, i32 4)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = load i64, i64* %13, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call %union.perf_event* @malloc(i64 %24)
  store %union.perf_event* %25, %union.perf_event** %12, align 8
  %26 = load %union.perf_event*, %union.perf_event** %12, align 8
  %27 = icmp eq %union.perf_event* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %77

31:                                               ; preds = %5
  %32 = load %union.perf_event*, %union.perf_event** %12, align 8
  %33 = bitcast %union.perf_event* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %36 = bitcast %struct.perf_event_attr* %34 to i8*
  %37 = bitcast %struct.perf_event_attr* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %union.perf_event*, %union.perf_event** %12, align 8
  %39 = bitcast %union.perf_event* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(i32 %41, i32* %42, i32 %46)
  %48 = load i32, i32* @PERF_RECORD_HEADER_ATTR, align 4
  %49 = load %union.perf_event*, %union.perf_event** %12, align 8
  %50 = bitcast %union.perf_event* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load %union.perf_event*, %union.perf_event** %12, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load %union.perf_event*, %union.perf_event** %12, align 8
  %59 = bitcast %union.perf_event* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %31
  %66 = load i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)*, i32 (%struct.perf_tool*, %union.perf_event*, i32*, i32*)** %11, align 8
  %67 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %68 = load %union.perf_event*, %union.perf_event** %12, align 8
  %69 = call i32 %66(%struct.perf_tool* %67, %union.perf_event* %68, i32* null, i32* null)
  store i32 %69, i32* %14, align 4
  br label %73

70:                                               ; preds = %31
  %71 = load i32, i32* @E2BIG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %union.perf_event*, %union.perf_event** %12, align 8
  %75 = call i32 @free(%union.perf_event* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %28
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

declare dso_local %union.perf_event* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @free(%union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
