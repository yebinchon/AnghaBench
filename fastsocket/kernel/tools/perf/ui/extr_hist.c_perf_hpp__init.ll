; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_perf_hpp__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_perf_hpp__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@perf_hpp__format = common dso_local global %struct.TYPE_4__* null, align 8
@PERF_HPP__OVERHEAD_SYS = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_US = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_GUEST_SYS = common dso_local global i64 0, align 8
@PERF_HPP__OVERHEAD_GUEST_US = common dso_local global i64 0, align 8
@PERF_HPP__SAMPLES = common dso_local global i64 0, align 8
@PERF_HPP__PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_hpp__init() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %5 = load i64, i64* @PERF_HPP__OVERHEAD_SYS, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %9 = load i64, i64* @PERF_HPP__OVERHEAD_US, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i64, i64* @perf_guest, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %16 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_SYS, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %20 = load i64, i64* @PERF_HPP__OVERHEAD_GUEST_US, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %14, %3
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %29 = load i64, i64* @PERF_HPP__SAMPLES, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @perf_hpp__format, align 8
  %37 = load i64, i64* @PERF_HPP__PERIOD, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
