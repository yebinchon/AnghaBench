; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_fold_used_pointer_cast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_fold_used_pointer_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_used_pointer_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_used_pointer_cast(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @NOP_EXPR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @CONVERT_EXPR, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @INTEGRAL_TYPE_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @TYPE_PRECISION(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @TYPE_PRECISION(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %27
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @CHREC_VARIABLE(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @CHREC_LEFT(i32 %47)
  %49 = load i32, i32* @NULL_TREE, align 4
  %50 = call i32 @chrec_convert(i32 %46, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @CHREC_RIGHT(i32 %52)
  %54 = load i32, i32* @NULL_TREE, align 4
  %55 = call i32 @chrec_convert(i32 %51, i32 %53, i32 %54)
  %56 = call i32 @build_polynomial_chrec(i32 %45, i32 %50, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %41, %25, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
