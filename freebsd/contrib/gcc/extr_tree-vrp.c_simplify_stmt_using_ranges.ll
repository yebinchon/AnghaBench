; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_simplify_stmt_using_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_simplify_stmt_using_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@ABS_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simplify_stmt_using_ranges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @MODIFY_EXPR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_OPERAND(i32 %10, i32 1)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18, %9
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i64 @INTEGRAL_TYPE_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 1)
  %31 = call i64 @integer_pow2p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @simplify_div_or_mod_using_ranges(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28, %22, %18
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ABS_EXPR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @TREE_OPERAND(i32 %43, i32 0)
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @SSA_NAME, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 0)
  %51 = call i32 @TREE_TYPE(i32 %50)
  %52 = call i64 @INTEGRAL_TYPE_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @simplify_abs_using_ranges(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48, %42, %38
  br label %73

59:                                               ; preds = %1
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @TREE_CODE(i32 %60)
  %62 = load i64, i64* @COND_EXPR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @COND_EXPR_COND(i32 %65)
  %67 = call i64 @COMPARISON_CLASS_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @simplify_cond_using_ranges(i32 %70)
  br label %72

72:                                               ; preds = %69, %64, %59
  br label %73

73:                                               ; preds = %72, %58
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @integer_pow2p(i32) #1

declare dso_local i32 @simplify_div_or_mod_using_ranges(i32, i32, i32) #1

declare dso_local i32 @simplify_abs_using_ranges(i32, i32) #1

declare dso_local i64 @COMPARISON_CLASS_P(i32) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @simplify_cond_using_ranges(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
