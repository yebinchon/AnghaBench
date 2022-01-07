; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_lazy_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_lazy_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Probe line found: line:%d addr:0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to find scope of probe point.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i8*)* @probe_point_lazy_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_lazy_walker(i8* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.probe_finder*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.probe_finder*
  store %struct.probe_finder* %15, %struct.probe_finder** %10, align 8
  %16 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %17 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %16, i32 0, i32 3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @line_list__has_line(i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %24 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strtailcmp(i8* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %35 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %38 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %40 = call i32* @find_best_scope(%struct.probe_finder* %39, i32* %12)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %29
  %44 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %29
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %50 = call i32 @call_probe_finder(i32* %48, %struct.probe_finder* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %43, %28
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @line_list__has_line(i32*, i32) #1

declare dso_local i64 @strtailcmp(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32* @find_best_scope(%struct.probe_finder*, i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
