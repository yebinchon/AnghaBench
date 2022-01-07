; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_cpu_map__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_python.c_pyrf_cpu_map__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_cpu_map = type { i32* }

@pyrf_cpu_map__init.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"cpustr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pyrf_cpu_map*, i32*, i32*)* @pyrf_cpu_map__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyrf_cpu_map__init(%struct.pyrf_cpu_map* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pyrf_cpu_map*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.pyrf_cpu_map* %0, %struct.pyrf_cpu_map** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @PyArg_ParseTupleAndKeywords(i32* %9, i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pyrf_cpu_map__init.kwlist, i64 0, i64 0), i8** %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @cpu_map__new(i8* %15)
  %17 = load %struct.pyrf_cpu_map*, %struct.pyrf_cpu_map** %5, align 8
  %18 = getelementptr inbounds %struct.pyrf_cpu_map, %struct.pyrf_cpu_map* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.pyrf_cpu_map*, %struct.pyrf_cpu_map** %5, align 8
  %20 = getelementptr inbounds %struct.pyrf_cpu_map, %struct.pyrf_cpu_map* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %25

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %23, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i8**) #1

declare dso_local i32* @cpu_map__new(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
