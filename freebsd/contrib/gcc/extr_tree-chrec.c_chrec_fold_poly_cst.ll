; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_poly_cst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_poly_cst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @chrec_fold_poly_cst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrec_fold_poly_cst(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i64, i64* %9, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @is_not_constant_evolution(i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @chrec_type(i64 %29)
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %71 [
    i32 128, label %35
    i32 130, label %46
    i32 129, label %57
  ]

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @CHREC_VARIABLE(i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @CHREC_LEFT(i64 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @chrec_fold_plus(i64 %38, i32 %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @CHREC_RIGHT(i64 %43)
  %45 = call i64 @build_polynomial_chrec(i32 %37, i32 %42, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %73

46:                                               ; preds = %4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @CHREC_VARIABLE(i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @CHREC_LEFT(i64 %50)
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @chrec_fold_minus(i64 %49, i32 %51, i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @CHREC_RIGHT(i64 %54)
  %56 = call i64 @build_polynomial_chrec(i32 %48, i32 %53, i32 %55)
  store i64 %56, i64* %5, align 8
  br label %73

57:                                               ; preds = %4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @CHREC_VARIABLE(i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @CHREC_LEFT(i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @chrec_fold_multiply(i64 %60, i32 %62, i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @CHREC_RIGHT(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @chrec_fold_multiply(i64 %65, i32 %67, i64 %68)
  %70 = call i64 @build_polynomial_chrec(i32 %59, i32 %64, i32 %69)
  store i64 %70, i64* %5, align 8
  br label %73

71:                                               ; preds = %4
  %72 = load i64, i64* @chrec_dont_know, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %57, %46, %35
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @is_not_constant_evolution(i64) #1

declare dso_local i64 @chrec_type(i64) #1

declare dso_local i64 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i32 @chrec_fold_plus(i64, i32, i64) #1

declare dso_local i32 @CHREC_LEFT(i64) #1

declare dso_local i32 @CHREC_RIGHT(i64) #1

declare dso_local i32 @chrec_fold_minus(i64, i32, i64) #1

declare dso_local i32 @chrec_fold_multiply(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
