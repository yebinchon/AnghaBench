; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_fprintf_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_fprintf_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSEC_PER_MSEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PERF_COLOR_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%6.3f ms\00", align 1
@PERF_COLOR_YELLOW = common dso_local global i32 0, align 4
@PERF_COLOR_NORMAL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @fprintf_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fprintf_duration(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = uitofp i64 %7 to double
  %9 = load double, double* @NSEC_PER_MSEC, align 8
  %10 = fdiv double %8, %9
  store double %10, double* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @fprintf(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %6, align 8
  %13 = load double, double* %5, align 8
  %14 = fcmp oge double %13, 1.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @PERF_COLOR_RED, align 4
  %18 = load double, double* %5, align 8
  %19 = call i64 @color_fprintf(i32* %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %18)
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %6, align 8
  br label %40

22:                                               ; preds = %2
  %23 = load double, double* %5, align 8
  %24 = fcmp oge double %23, 1.000000e-02
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @PERF_COLOR_YELLOW, align 4
  %28 = load double, double* %5, align 8
  %29 = call i64 @color_fprintf(i32* %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %28)
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %39

32:                                               ; preds = %22
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @PERF_COLOR_NORMAL, align 4
  %35 = load double, double* %5, align 8
  %36 = call i64 @color_fprintf(i32* %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %35)
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** @stdout, align 8
  %43 = call i64 @fprintf(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = add i64 %41, %43
  ret i64 %44
}

declare dso_local i64 @fprintf(i32*, i8*) #1

declare dso_local i64 @color_fprintf(i32*, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
