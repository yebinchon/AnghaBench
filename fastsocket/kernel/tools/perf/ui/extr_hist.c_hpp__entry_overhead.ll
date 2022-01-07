; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_overhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { %struct.TYPE_4__, %struct.hists* }
%struct.TYPE_4__ = type { double }
%struct.hists = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }

@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" %6.2f%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__entry_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__entry_overhead(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.perf_hpp*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hists*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store %struct.perf_hpp* %0, %struct.perf_hpp** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 1
  %10 = load %struct.hists*, %struct.hists** %9, align 8
  store %struct.hists* %10, %struct.hists** %5, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fmul double 1.000000e+02, %14
  %16 = load %struct.hists*, %struct.hists** %5, align 8
  %17 = getelementptr inbounds %struct.hists, %struct.hists* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fdiv double %15, %19
  store double %20, double* %6, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  store i8* %24, i8** %7, align 8
  %25 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %26 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %29 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load double, double* %6, align 8
  %33 = call i32 @scnprintf(i32 %27, i32 %30, i8* %31, double %32)
  ret i32 %33
}

declare dso_local i32 @scnprintf(i32, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
