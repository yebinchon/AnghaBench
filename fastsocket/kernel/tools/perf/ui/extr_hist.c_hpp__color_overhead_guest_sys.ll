; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__color_overhead_guest_sys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__color_overhead_guest_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { %struct.TYPE_3__, %struct.hists* }
%struct.TYPE_3__ = type { double }
%struct.hists = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double }

@.str = private unnamed_addr constant [10 x i8] c" %6.2f%% \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__color_overhead_guest_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__color_overhead_guest_sys(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.perf_hpp*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hists*, align 8
  %6 = alloca double, align 8
  store %struct.perf_hpp* %0, %struct.perf_hpp** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 1
  %9 = load %struct.hists*, %struct.hists** %8, align 8
  store %struct.hists* %9, %struct.hists** %5, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fmul double 1.000000e+02, %13
  %15 = load %struct.hists*, %struct.hists** %5, align 8
  %16 = getelementptr inbounds %struct.hists, %struct.hists* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fdiv double %14, %18
  store double %19, double* %6, align 8
  %20 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %21 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %24 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load double, double* %6, align 8
  %27 = call i32 @percent_color_snprintf(i32 %22, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %26)
  ret i32 %27
}

declare dso_local i32 @percent_color_snprintf(i32, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
