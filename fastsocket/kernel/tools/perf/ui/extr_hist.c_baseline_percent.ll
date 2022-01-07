; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_baseline_percent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_baseline_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__, %struct.hists* }
%struct.TYPE_4__ = type { double }
%struct.hists = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.hist_entry*)* @baseline_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @baseline_percent(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.hists*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %9 = call %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry* %8)
  store %struct.hist_entry* %9, %struct.hist_entry** %3, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %11 = icmp ne %struct.hist_entry* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 1
  %15 = load %struct.hists*, %struct.hists** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.hists* [ %15, %12 ], [ null, %16 ]
  store %struct.hists* %18, %struct.hists** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %19 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %20 = icmp ne %struct.hist_entry* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.hists*, %struct.hists** %4, align 8
  %23 = getelementptr inbounds %struct.hists, %struct.hists* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  store double %25, double* %6, align 8
  %26 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %7, align 8
  %30 = load double, double* %7, align 8
  %31 = fmul double 1.000000e+02, %30
  %32 = load double, double* %6, align 8
  %33 = fdiv double %31, %32
  store double %33, double* %5, align 8
  br label %34

34:                                               ; preds = %21, %17
  %35 = load double, double* %5, align 8
  ret double %35
}

declare dso_local %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
