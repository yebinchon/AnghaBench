; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evlist = type { %struct.perf_evlist }
%struct.perf_evlist = type { i32, i32 }

@pyrf_evlist__poll.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|i\00", align 1
@PyExc_OSError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evlist*, i32*, i32*)* @pyrf_evlist__poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_evlist__poll(%struct.pyrf_evlist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_evlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pyrf_evlist* %0, %struct.pyrf_evlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pyrf_evlist*, %struct.pyrf_evlist** %5, align 8
  %12 = getelementptr inbounds %struct.pyrf_evlist, %struct.pyrf_evlist* %11, i32 0, i32 0
  store %struct.perf_evlist* %12, %struct.perf_evlist** %8, align 8
  store i32 -1, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @PyArg_ParseTupleAndKeywords(i32* %13, i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pyrf_evlist__poll.kwlist, i64 0, i64 0), i32* %9)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %20 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %23 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @poll(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @PyExc_OSError, align 4
  %31 = call i32 @PyErr_SetFromErrno(i32 %30)
  store i32* null, i32** %4, align 8
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %10, align 4
  %34 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %32, %29, %17
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*) #1

declare dso_local i32 @poll(i32, i32, i32) #1

declare dso_local i32 @PyErr_SetFromErrno(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
