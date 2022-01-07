; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondCvtArg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondCvtArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*)* @CondCvtArg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CondCvtArg(i8* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %14, align 8
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 16, i32 10
  %25 = call i64 @strtoul(i8* %17, i8** %6, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %7, align 1
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %16
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ERANGE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 0, %42
  %44 = uitofp i64 %43 to double
  %45 = fneg double %44
  br label %49

46:                                               ; preds = %35
  %47 = load i64, i64* %8, align 8
  %48 = uitofp i64 %47 to double
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi double [ %45, %41 ], [ %48, %46 ]
  store double %50, double* %9, align 8
  br label %78

51:                                               ; preds = %31, %16
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 46
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 101
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8, i8* %7, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 69
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %82

69:                                               ; preds = %63, %59, %55, %51
  %70 = load i8*, i8** %4, align 8
  %71 = call double @strtod(i8* %70, i8** %6)
  store double %71, double* %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %49
  %79 = load double, double* %9, align 8
  %80 = load double*, double** %5, align 8
  store double %79, double* %80, align 8
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %75, %67, %13
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
