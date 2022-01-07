; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_ui_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_ui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_HPP__OVERHEAD = common dso_local global i32 0, align 4
@PERF_HPP__BASELINE = common dso_local global i32 0, align 4
@compute = common dso_local global i32 0, align 4
@PERF_HPP__DELTA = common dso_local global i32 0, align 4
@PERF_HPP__RATIO = common dso_local global i32 0, align 4
@PERF_HPP__WEIGHTED_DIFF = common dso_local global i32 0, align 4
@show_displacement = common dso_local global i64 0, align 8
@PERF_HPP__DISPL = common dso_local global i32 0, align 4
@show_formula = common dso_local global i64 0, align 8
@PERF_HPP__FORMULA = common dso_local global i32 0, align 4
@show_period = common dso_local global i64 0, align 8
@PERF_HPP__PERIOD = common dso_local global i32 0, align 4
@PERF_HPP__PERIOD_BASELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ui_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_init() #0 {
  %1 = call i32 (...) @perf_hpp__init()
  %2 = load i32, i32* @PERF_HPP__OVERHEAD, align 4
  %3 = call i32 @perf_hpp__column_enable(i32 %2, i32 0)
  %4 = load i32, i32* @PERF_HPP__BASELINE, align 4
  %5 = call i32 @perf_hpp__column_enable(i32 %4, i32 1)
  %6 = load i32, i32* @compute, align 4
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %0
  %8 = load i32, i32* @PERF_HPP__DELTA, align 4
  %9 = call i32 @perf_hpp__column_enable(i32 %8, i32 1)
  br label %18

10:                                               ; preds = %0
  %11 = load i32, i32* @PERF_HPP__RATIO, align 4
  %12 = call i32 @perf_hpp__column_enable(i32 %11, i32 1)
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @PERF_HPP__WEIGHTED_DIFF, align 4
  %15 = call i32 @perf_hpp__column_enable(i32 %14, i32 1)
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @BUG_ON(i32 1)
  br label %18

18:                                               ; preds = %16, %13, %10, %7
  %19 = load i64, i64* @show_displacement, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @PERF_HPP__DISPL, align 4
  %23 = call i32 @perf_hpp__column_enable(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @show_formula, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @PERF_HPP__FORMULA, align 4
  %29 = call i32 @perf_hpp__column_enable(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @show_period, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @PERF_HPP__PERIOD, align 4
  %35 = call i32 @perf_hpp__column_enable(i32 %34, i32 1)
  %36 = load i32, i32* @PERF_HPP__PERIOD_BASELINE, align 4
  %37 = call i32 @perf_hpp__column_enable(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @perf_hpp__init(...) #1

declare dso_local i32 @perf_hpp__column_enable(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
