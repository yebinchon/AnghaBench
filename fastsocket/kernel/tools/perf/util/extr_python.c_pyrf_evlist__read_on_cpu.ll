; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__read_on_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_evlist__read_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_evlist = type { %struct.perf_evlist }
%struct.perf_evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.pyrf_event = type { i32 }

@pyrf_evlist__read_on_cpu.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sample_id_all\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i|i\00", align 1
@PyExc_OSError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"perf: can't parse sample, err=%d\00", align 1
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_evlist*, i32*, i32*)* @pyrf_evlist__read_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_evlist__read_on_cpu(%struct.pyrf_evlist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pyrf_evlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.perf_evlist*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pyrf_event*, align 8
  store %struct.pyrf_evlist* %0, %struct.pyrf_evlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.pyrf_evlist*, %struct.pyrf_evlist** %5, align 8
  %16 = getelementptr inbounds %struct.pyrf_evlist, %struct.pyrf_evlist* %15, i32 0, i32 0
  store %struct.perf_evlist* %16, %struct.perf_evlist** %8, align 8
  store i32 1, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @PyArg_ParseTupleAndKeywords(i32* %17, i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pyrf_evlist__read_on_cpu.kwlist, i64 0, i64 0), i32* %11, i32* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %union.perf_event* @perf_evlist__mmap_read(%struct.perf_evlist* %23, i32 %24)
  store %union.perf_event* %25, %union.perf_event** %9, align 8
  %26 = load %union.perf_event*, %union.perf_event** %9, align 8
  %27 = icmp ne %union.perf_event* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load %union.perf_event*, %union.perf_event** %9, align 8
  %30 = call i32* @pyrf_event__new(%union.perf_event* %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = bitcast i32* %31 to %struct.pyrf_event*
  store %struct.pyrf_event* %32, %struct.pyrf_event** %14, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32* (...) @PyErr_NoMemory()
  store i32* %36, i32** %4, align 8
  br label %55

37:                                               ; preds = %28
  %38 = load %struct.perf_evlist*, %struct.perf_evlist** %8, align 8
  %39 = load %union.perf_event*, %union.perf_event** %9, align 8
  %40 = load %struct.pyrf_event*, %struct.pyrf_event** %14, align 8
  %41 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %40, i32 0, i32 0
  %42 = call i32 @perf_evlist__parse_sample(%struct.perf_evlist* %38, %union.perf_event* %39, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @PyExc_OSError, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32* @PyErr_Format(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32* %48, i32** %4, align 8
  br label %55

49:                                               ; preds = %37
  %50 = load i32*, i32** %13, align 8
  store i32* %50, i32** %4, align 8
  br label %55

51:                                               ; preds = %22
  %52 = load i32*, i32** @Py_None, align 8
  %53 = call i32 @Py_INCREF(i32* %52)
  %54 = load i32*, i32** @Py_None, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %51, %49, %45, %35, %21
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32*) #1

declare dso_local %union.perf_event* @perf_evlist__mmap_read(%struct.perf_evlist*, i32) #1

declare dso_local i32* @pyrf_event__new(%union.perf_event*) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32 @perf_evlist__parse_sample(%struct.perf_evlist*, %union.perf_event*, i32*) #1

declare dso_local i32* @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
