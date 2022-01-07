; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_baseline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_baseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" %6.2f%%\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__entry_baseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__entry_baseline(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store %struct.perf_hpp* %0, %struct.perf_hpp** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %8 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %9 = call double @baseline_percent(%struct.hist_entry* %8)
  store double %9, double* %6, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %15 = call i64 @hist_entry__has_pairs(%struct.hist_entry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17, %2
  %21 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %22 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %25 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load double, double* %6, align 8
  %29 = call i32 (i32, i32, i8*, ...) @scnprintf(i32 %23, i32 %26, i8* %27, double %28)
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %17
  %31 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %32 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %35 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, i8*, ...) @scnprintf(i32 %33, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local double @baseline_percent(%struct.hist_entry*) #1

declare dso_local i64 @hist_entry__has_pairs(%struct.hist_entry*) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
