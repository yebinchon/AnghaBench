; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_browser.c_perf_gtk__get_percent_color.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_browser.c_perf_gtk__get_percent_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_RED = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [21 x i8] c"<span fgcolor='red'>\00", align 1
@MIN_GREEN = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"<span fgcolor='dark green'>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double)* @perf_gtk__get_percent_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @perf_gtk__get_percent_color(double %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = load double, double* @MIN_RED, align 8
  %6 = fcmp oge double %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = load double, double* @MIN_GREEN, align 8
  %11 = fcmp oge double %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %14

13:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %14

14:                                               ; preds = %13, %12, %7
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
