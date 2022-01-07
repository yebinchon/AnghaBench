; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_perf_diff__compute_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_perf_diff__compute_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, double }
%struct.TYPE_3__ = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @perf_diff__compute_ratio(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %6 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %7 = call %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry* %6)
  store %struct.hist_entry* %7, %struct.hist_entry** %3, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* %4, align 8
  %12 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %13 = icmp ne %struct.hist_entry* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi double [ %18, %14 ], [ 0.000000e+00, %19 ]
  store double %21, double* %5, align 8
  %22 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %26 = icmp ne %struct.hist_entry* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = fdiv double %28, %29
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi double [ %30, %27 ], [ 0.000000e+00, %31 ]
  %34 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store double %33, double* %36, align 8
  %37 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %38 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  ret double %40
}

declare dso_local %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
