; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDT_DMISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i64, i64)* @pfprint_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_fp(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca x86_fp80, align 16
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = sitofp i64 %18 to double
  store double %19, double* %16, align 8
  %20 = load i64, i64* %15, align 8
  %21 = sitofp i64 %20 to x86_fp80
  store x86_fp80 %21, x86_fp80* %17, align 16
  %22 = load i64, i64* %14, align 8
  switch i64 %22, label %56 [
    i64 4, label %23
    i64 8, label %35
    i64 16, label %46
  ]

23:                                               ; preds = %7
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to float*
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = load double, double* %16, align 8
  %32 = fdiv double %30, %31
  %33 = fpext double %32 to x86_fp80
  %34 = call i32 @dt_printf(i32* %24, i32* %25, i8* %26, x86_fp80 %33)
  store i32 %34, i32* %8, align 4
  br label %60

35:                                               ; preds = %7
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = bitcast i8* %39 to double*
  %41 = load double, double* %40, align 8
  %42 = load double, double* %16, align 8
  %43 = fdiv double %41, %42
  %44 = fpext double %43 to x86_fp80
  %45 = call i32 @dt_printf(i32* %36, i32* %37, i8* %38, x86_fp80 %44)
  store i32 %45, i32* %8, align 4
  br label %60

46:                                               ; preds = %7
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = bitcast i8* %50 to x86_fp80*
  %52 = load x86_fp80, x86_fp80* %51, align 16
  %53 = load x86_fp80, x86_fp80* %17, align 16
  %54 = fdiv x86_fp80 %52, %53
  %55 = call i32 @dt_printf(i32* %47, i32* %48, i8* %49, x86_fp80 %54)
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %7
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @EDT_DMISMATCH, align 4
  %59 = call i32 @dt_set_errno(i32* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %46, %35, %23
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @dt_printf(i32*, i32*, i8*, x86_fp80) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
