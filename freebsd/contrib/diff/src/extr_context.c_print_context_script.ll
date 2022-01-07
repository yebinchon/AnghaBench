; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_print_context_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_print_context_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.change = type { i32, %struct.change* }

@ignore_blank_lines = common dso_local global i64 0, align 8
@ignore_regexp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@files = common dso_local global %struct.TYPE_4__* null, align 8
@find_function_last_search = common dso_local global i32 0, align 4
@LIN_MAX = common dso_local global i32 0, align 4
@find_function_last_match = common dso_local global i32 0, align 4
@find_hunk = common dso_local global i32 0, align 4
@pr_unidiff_hunk = common dso_local global i32 0, align 4
@pr_context_hunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_context_script(%struct.change* %0, i32 %1) #0 {
  %3 = alloca %struct.change*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.change*, align 8
  store %struct.change* %0, %struct.change** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @ignore_blank_lines, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ignore_regexp, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = load %struct.change*, %struct.change** %3, align 8
  %13 = call i32 @mark_ignorable(%struct.change* %12)
  br label %27

14:                                               ; preds = %8
  %15 = load %struct.change*, %struct.change** %3, align 8
  store %struct.change* %15, %struct.change** %5, align 8
  br label %16

16:                                               ; preds = %22, %14
  %17 = load %struct.change*, %struct.change** %5, align 8
  %18 = icmp ne %struct.change* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.change*, %struct.change** %5, align 8
  %21 = getelementptr inbounds %struct.change, %struct.change* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.change*, %struct.change** %5, align 8
  %24 = getelementptr inbounds %struct.change, %struct.change* %23, i32 0, i32 1
  %25 = load %struct.change*, %struct.change** %24, align 8
  store %struct.change* %25, %struct.change** %5, align 8
  br label %16

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* @find_function_last_search, align 4
  %33 = load i32, i32* @LIN_MAX, align 4
  store i32 %33, i32* @find_function_last_match, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.change*, %struct.change** %3, align 8
  %38 = load i32, i32* @find_hunk, align 4
  %39 = load i32, i32* @pr_unidiff_hunk, align 4
  %40 = call i32 @print_script(%struct.change* %37, i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %27
  %42 = load %struct.change*, %struct.change** %3, align 8
  %43 = load i32, i32* @find_hunk, align 4
  %44 = load i32, i32* @pr_context_hunk, align 4
  %45 = call i32 @print_script(%struct.change* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @mark_ignorable(%struct.change*) #1

declare dso_local i32 @print_script(%struct.change*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
