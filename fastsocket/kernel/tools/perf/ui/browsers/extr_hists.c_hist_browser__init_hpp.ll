; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__init_hpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__init_hpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hist_browser__hpp_color_overhead = common dso_local global i32 0, align 4
@perf_hpp__format = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_HPP__OVERHEAD = common dso_local global i64 0, align 8
@hist_browser__hpp_color_overhead_sys = common dso_local global i32 0, align 4
@PERF_HPP__OVERHEAD_SYS = common dso_local global i64 0, align 8
@hist_browser__hpp_color_overhead_us = common dso_local global i32 0, align 4
@PERF_HPP__OVERHEAD_US = common dso_local global i64 0, align 8
@hist_browser__hpp_color_overhead_guest_sys = common dso_local global i32 0, align 4
@PERF_HPP__OVERHEAD_GUEST_SYS = common dso_local global i64 0, align 8
@hist_browser__hpp_color_overhead_guest_us = common dso_local global i32 0, align 4
@PERF_HPP__OVERHEAD_GUEST_US = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hist_browser__init_hpp() #0 {
  %1 = call i32 (...) @perf_hpp__init()
  %2 = load i32, i32* @hist_browser__hpp_color_overhead, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_hpp__format, align 8
  %4 = load i64, i64* @PERF_HPP__OVERHEAD, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @hist_browser__hpp_color_overhead_sys, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_hpp__format, align 8
  %9 = load i64, i64* @PERF_HPP__OVERHEAD_SYS, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @hist_browser__hpp_color_overhead_us, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_hpp__format, align 8
  %14 = load i64, i64* @PERF_HPP__OVERHEAD_US, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @hist_browser__hpp_color_overhead_guest_sys, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_hpp__format, align 8
  %19 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_SYS, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @hist_browser__hpp_color_overhead_guest_us, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_hpp__format, align 8
  %24 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_US, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  ret void
}

declare dso_local i32 @perf_hpp__init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
