; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_print_ifdef_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.change = type { i32 }

@files = common dso_local global %struct.TYPE_2__* null, align 8
@next_line1 = common dso_local global i32 0, align 4
@next_line0 = common dso_local global i32 0, align 4
@find_change = common dso_local global i32 0, align 4
@print_ifdef_hunk = common dso_local global i32 0, align 4
@group_format = common dso_local global i32* null, align 8
@UNCHANGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ifdef_script(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* @next_line1, align 4
  store i32 %7, i32* @next_line0, align 4
  %8 = load %struct.change*, %struct.change** %2, align 8
  %9 = load i32, i32* @find_change, align 4
  %10 = load i32, i32* @print_ifdef_hunk, align 4
  %11 = call i32 @print_script(%struct.change* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @next_line0, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @next_line1, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %18, %1
  %26 = call i32 (...) @begin_output()
  %27 = load i32*, i32** @group_format, align 8
  %28 = load i64, i64* @UNCHANGED, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @next_line0, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @next_line1, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @format_ifdef(i32 %30, i32 %31, i32 %35, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @print_script(%struct.change*, i32, i32) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @format_ifdef(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
