; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_formula_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_formula_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double }

@.str = private unnamed_addr constant [12 x i8] c"%.0F / %.0F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64)* @formula_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @formula_ratio(%struct.hist_entry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hist_entry*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = call %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry* %11)
  store %struct.hist_entry* %12, %struct.hist_entry** %8, align 8
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  store double %16, double* %9, align 8
  %17 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %18 = icmp ne %struct.hist_entry* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi double [ %23, %19 ], [ 0.000000e+00, %24 ]
  store double %26, double* %10, align 8
  %27 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %28 = icmp ne %struct.hist_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load double, double* %9, align 8
  %34 = load double, double* %10, align 8
  %35 = call i32 @scnprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), double %33, double %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
