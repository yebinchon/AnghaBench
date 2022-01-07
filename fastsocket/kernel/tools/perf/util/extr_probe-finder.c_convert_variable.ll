; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Converting variable %s into trace event.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"Failed to find the location of %s at this address.\0A Perhaps, it has been optimized out.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Sorry, we don't support this variable location yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*)* @convert_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable(i32* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.probe_finder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @dwarf_diename(i32* %7)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %12 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %15 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %18 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @convert_variable_location(i32* %10, i32 %13, i32 %16, %struct.TYPE_5__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %27 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %65

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ENOTSUP, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %64

39:                                               ; preds = %32
  %40 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %41 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %49 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %54 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %59 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @convert_variable_fields(i32* %47, i32 %52, i64 %57, i32* %61, i32* %5)
  store i32 %62, i32* %6, align 4
  store i32* %5, i32** %3, align 8
  br label %63

63:                                               ; preds = %46, %39
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64, %25
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %71 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %74 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @convert_variable_type(i32* %69, %struct.TYPE_5__* %72, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %68, %65
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @convert_variable_location(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @convert_variable_fields(i32*, i32, i64, i32*, i32*) #1

declare dso_local i32 @convert_variable_type(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
