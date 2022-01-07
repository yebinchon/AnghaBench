; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sleep/extr_sleep.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sleep/extr_sleep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double, i32 }

@.str = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%lf%1s\00", align 1
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@SIGINFO = common dso_local global i32 0, align 4
@report_request = common dso_local global i32 0, align 4
@report_requested = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"about %d second(s) left out of the original %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"nanosleep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [2 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i64 (...) @caph_limit_stdio()
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i64 (...) @caph_enter()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %27 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double* %7, i8* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %22
  %32 = load double, double* %7, align 8
  %33 = load double, double* @INT_MAX, align 8
  %34 = fcmp ogt double %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %31
  %38 = load double, double* %7, align 8
  %39 = fcmp ole double %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %76

41:                                               ; preds = %37
  %42 = load double, double* %7, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store double %42, double* %43, align 8
  store double %42, double* %8, align 8
  %44 = load double, double* %7, align 8
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fsub double %44, %46
  %48 = fmul double 1.000000e+09, %47
  %49 = fptosi double %48 to i32
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @SIGINFO, align 4
  %52 = load i32, i32* @report_request, align 4
  %53 = call i32 @signal(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %74, %41
  %55 = call i64 @nanosleep(%struct.timespec* %6, %struct.timespec* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i64, i64* @report_requested, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fptosi double %62 to i32
  %64 = load double, double* %8, align 8
  %65 = fptosi double %64 to i32
  %66 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  store i64 0, i64* @report_requested, align 8
  br label %74

67:                                               ; preds = %57
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %60
  br label %54

75:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sscanf(i8*, i8*, double*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @nanosleep(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
