; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evlist = type { %struct.perf_evlist }
%struct.perf_evlist = type { i32 }

@pyrf_evlist__open.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"|OOii\00", align 1
@PyExc_OSError = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evlist*, i32*, i32*)* @pyrf_evlist__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_evlist__open(%struct.pyrf_evlist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_evlist*, align 8
  %9 = alloca i32, align 4
  store %struct.pyrf_evlist* %0, %struct.pyrf_evlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pyrf_evlist*, %struct.pyrf_evlist** %5, align 8
  %11 = getelementptr inbounds %struct.pyrf_evlist, %struct.pyrf_evlist* %10, i32 0, i32 0
  store %struct.perf_evlist* %11, %struct.perf_evlist** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @PyArg_ParseTupleAndKeywords(i32* %12, i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pyrf_evlist__open.kwlist, i64 0, i64 0), i32* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %22 = call i32 @perf_evlist__set_leader(%struct.perf_evlist* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %25 = call i64 @perf_evlist__open(%struct.perf_evlist* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @PyExc_OSError, align 4
  %29 = call i32 @PyErr_SetFromErrno(i32 %28)
  store i32* null, i32** %4, align 8
  br label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** @Py_None, align 8
  %32 = call i32 @Py_INCREF(i32* %31)
  %33 = load i32*, i32** @Py_None, align 8
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %30, %27, %16
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*) #1

declare dso_local i32 @perf_evlist__set_leader(%struct.perf_evlist*) #1

declare dso_local i64 @perf_evlist__open(%struct.perf_evlist*) #1

declare dso_local i32 @PyErr_SetFromErrno(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
