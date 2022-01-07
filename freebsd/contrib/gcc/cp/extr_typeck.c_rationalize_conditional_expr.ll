; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_rationalize_conditional_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_rationalize_conditional_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_EXPR = common dso_local global i64 0, align 8
@MAX_EXPR = common dso_local global i64 0, align 8
@LE_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rationalize_conditional_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rationalize_conditional_expr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @MIN_EXPR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @MAX_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @TREE_SIDE_EFFECTS(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @TREE_SIDE_EFFECTS(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i1 [ false, %17 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @MIN_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @LE_EXPR, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @GE_EXPR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @TREE_CODE(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = call i32 @build_x_binary_op(i32 %43, i32 %44, i64 %46, i32 %47, i64 %49, i32* null)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @build_unary_op(i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @build_unary_op(i32 %54, i32 %55, i32 0)
  %57 = call i32 @build_conditional_expr(i32 %50, i32 %53, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %12
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @TREE_OPERAND(i32 %59, i32 0)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 1)
  %64 = call i32 @build_unary_op(i32 %61, i32 %63, i32 0)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @TREE_OPERAND(i32 %66, i32 2)
  %68 = call i32 @build_unary_op(i32 %65, i32 %67, i32 0)
  %69 = call i32 @build_conditional_expr(i32 %60, i32 %64, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @build_conditional_expr(i32, i32, i32) #1

declare dso_local i32 @build_x_binary_op(i32, i32, i64, i32, i64, i32*) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
