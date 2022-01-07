; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_copysign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@ABS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @fold_builtin_copysign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_copysign(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @REAL_TYPE, align 4
  %15 = load i32, i32* @REAL_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i64 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %4, align 8
  br label %90

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_VALUE(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @TREE_CHAIN(i64 %24)
  %26 = call i64 @TREE_VALUE(i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @operand_equal_p(i64 %27, i64 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @fold_convert(i64 %32, i64 %33)
  store i64 %34, i64* %4, align 8
  br label %90

35:                                               ; preds = %21
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @REAL_CST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @REAL_CST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @TREE_REAL_CST(i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @TREE_REAL_CST(i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = call i32 @real_copysign(i32* %11, i32* %12)
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @build_real(i64 %59, i32 %60)
  store i64 %61, i64* %4, align 8
  br label %90

62:                                               ; preds = %49, %45, %40, %35
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @tree_expr_nonnegative_p(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @ABS_EXPR, align 4
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @fold_build1(i32 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @omit_one_operand(i64 %67, i32 %71, i64 %72)
  store i64 %73, i64* %4, align 8
  br label %90

74:                                               ; preds = %62
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @fold_strip_sign_ops(i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i64, i64* @NULL_TREE, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @TREE_CHAIN(i64 %82)
  %84 = call i64 @tree_cons(i64 %80, i64 %81, i64 %83)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @build_function_call_expr(i64 %85, i64 %86)
  store i64 %87, i64* %4, align 8
  br label %90

88:                                               ; preds = %74
  %89 = load i64, i64* @NULL_TREE, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %79, %66, %53, %31, %19
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i32 @real_copysign(i32*, i32*) #1

declare dso_local i64 @build_real(i64, i32) #1

declare dso_local i64 @tree_expr_nonnegative_p(i64) #1

declare dso_local i64 @omit_one_operand(i64, i32, i64) #1

declare dso_local i32 @fold_build1(i32, i64, i64) #1

declare dso_local i64 @fold_strip_sign_ops(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
