; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_thread_map__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_thread_map__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_thread_map = type { i32* }

@pyrf_thread_map__init.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"|iii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pyrf_thread_map*, i32*, i32*)* @pyrf_thread_map__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyrf_thread_map__init(%struct.pyrf_thread_map* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pyrf_thread_map*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pyrf_thread_map* %0, %struct.pyrf_thread_map** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* @UINT_MAX, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @PyArg_ParseTupleAndKeywords(i32* %12, i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @pyrf_thread_map__init.kwlist, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32* @thread_map__new(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.pyrf_thread_map*, %struct.pyrf_thread_map** %5, align 8
  %23 = getelementptr inbounds %struct.pyrf_thread_map, %struct.pyrf_thread_map* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.pyrf_thread_map*, %struct.pyrf_thread_map** %5, align 8
  %25 = getelementptr inbounds %struct.pyrf_thread_map, %struct.pyrf_thread_map* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i32* @thread_map__new(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
