; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_signbit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_signbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@REAL_CST = common dso_local global i64 0, align 8
@integer_one_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@dconst0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_signbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_signbit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i32 @TREE_TYPE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @REAL_TYPE, align 4
  %15 = load i32, i32* @VOID_TYPE, align 4
  %16 = call i32 @validate_arglist(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @NULL_TREE, align 4
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @REAL_CST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TREE_REAL_CST(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @REAL_VALUE_NEGATIVE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @integer_one_node, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @integer_zero_node, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @fold_convert(i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %27, %20
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @tree_expr_nonnegative_p(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @integer_zero_node, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @omit_one_operand(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = call i32 @TYPE_MODE(i32 %57)
  %59 = call i32 @HONOR_SIGNED_ZEROS(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @LT_EXPR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @TREE_TYPE(i32 %65)
  %67 = load i32, i32* @dconst0, align 4
  %68 = call i32 @build_real(i32 %66, i32 %67)
  %69 = call i32 @fold_build2(i32 %62, i32 %63, i32 %64, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @NULL_TREE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %61, %50, %41, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i64 @REAL_VALUE_NEGATIVE(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i64 @tree_expr_nonnegative_p(i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i32 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
