; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__color_baseline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__color_baseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" %6.2f%%\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__color_baseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__color_baseline(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca double, align 8
  store %struct.perf_hpp* %0, %struct.perf_hpp** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %8 = call double @baseline_percent(%struct.hist_entry* %7)
  store double %8, double* %6, align 8
  %9 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %10 = call i64 @hist_entry__has_pairs(%struct.hist_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %14 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %17 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load double, double* %6, align 8
  %20 = call i32 @percent_color_snprintf(i32 %15, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %23 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %26 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @scnprintf(i32 %24, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local double @baseline_percent(%struct.hist_entry*) #1

declare dso_local i64 @hist_entry__has_pairs(%struct.hist_entry*) #1

declare dso_local i32 @percent_color_snprintf(i32, i32, i8*, double) #1

declare dso_local i32 @scnprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
