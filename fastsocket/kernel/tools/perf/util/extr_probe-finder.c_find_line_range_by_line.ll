; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_line_range_by_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_line_range_by_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_finder = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@line_range_walk_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.line_finder*)* @find_line_range_by_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_line_range_by_line(i32* %0, %struct.line_finder* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.line_finder*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.line_finder* %1, %struct.line_finder** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %12

9:                                                ; preds = %2
  %10 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %11 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %10, i32 0, i32 2
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32* [ %6, %8 ], [ %11, %9 ]
  %14 = load i32, i32* @line_range_walk_cb, align 4
  %15 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %16 = call i32 @die_walk_lines(i32* %13, i32 %14, %struct.line_finder* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %21 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %28 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32 1, i32* %5, align 4
  br label %30

29:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %42

31:                                               ; preds = %12
  %32 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %33 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free(i32* %36)
  %38 = load %struct.line_finder*, %struct.line_finder** %4, align 8
  %39 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @die_walk_lines(i32*, i32, %struct.line_finder*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
