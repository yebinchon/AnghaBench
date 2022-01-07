; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_stabilize_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_stabilize_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stabilize_expr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_SIDE_EFFECTS(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @NULL_TREE, align 4
  store i32 %10, i32* %5, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @real_lvalue_p(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i32 @TYPE_NEEDS_CONSTRUCTING(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @get_target_expr(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @TARGET_EXPR_SLOT(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %15
  %26 = load i32, i32* @ADDR_EXPR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @build_unary_op(i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @get_target_expr(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TARGET_EXPR_SLOT(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @build_indirect_ref(i32 %33, i32 0)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %20
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @TREE_SIDE_EFFECTS(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @real_lvalue_p(i32) #1

declare dso_local i32 @TYPE_NEEDS_CONSTRUCTING(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @get_target_expr(i32) #1

declare dso_local i32 @TARGET_EXPR_SLOT(i32) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i32 @build_indirect_ref(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
