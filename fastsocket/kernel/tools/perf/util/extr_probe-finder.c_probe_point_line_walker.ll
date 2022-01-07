; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_line_walker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_probe_point_line_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to find scope of probe point.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*)* @probe_point_line_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_line_walker(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.probe_finder*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.probe_finder*
  store %struct.probe_finder* %15, %struct.probe_finder** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %18 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %24 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strtailcmp(i8* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %32 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %34 = call i32* @find_best_scope(%struct.probe_finder* %33, i32* %12)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %29
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %44 = call i32 @call_probe_finder(i32* %42, %struct.probe_finder* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %37, %28
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @strtailcmp(i8*, i32) #1

declare dso_local i32* @find_best_scope(%struct.probe_finder*, i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
