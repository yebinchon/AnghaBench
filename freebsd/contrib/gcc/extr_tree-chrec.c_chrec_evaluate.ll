; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_evaluate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i32)* @chrec_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrec_evaluate(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %28, %4
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @CHREC_VARIABLE(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @CHREC_LEFT(i64 %29)
  store i64 %30, i64* %7, align 8
  br label %16

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @CHREC_VARIABLE(i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @CHREC_RIGHT(i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  %48 = call i64 @chrec_evaluate(i32 %42, i64 %44, i64 %45, i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @chrec_dont_know, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* @chrec_dont_know, align 8
  store i64 %53, i64* %5, align 8
  br label %89

54:                                               ; preds = %41
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @tree_fold_binomial(i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* @chrec_dont_know, align 8
  store i64 %62, i64* %5, align 8
  br label %89

63:                                               ; preds = %54
  %64 = load i32, i32* @MULT_EXPR, align 4
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @CHREC_LEFT(i64 %66)
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @fold_build2(i32 %64, i64 %65, i64 %67, i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @chrec_fold_plus(i64 %70, i64 %71, i64 %72)
  store i64 %73, i64* %5, align 8
  br label %89

74:                                               ; preds = %36, %31
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @tree_fold_binomial(i64 %75, i64 %76, i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* @chrec_dont_know, align 8
  store i64 %82, i64* %5, align 8
  br label %89

83:                                               ; preds = %74
  %84 = load i32, i32* @MULT_EXPR, align 4
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @fold_build2(i32 %84, i64 %85, i64 %86, i64 %87)
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %83, %81, %63, %61, %52
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @CHREC_LEFT(i64) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

declare dso_local i64 @tree_fold_binomial(i64, i64, i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @chrec_fold_plus(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
