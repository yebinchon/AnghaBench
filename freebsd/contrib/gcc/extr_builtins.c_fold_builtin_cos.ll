; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_cos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@dconst1 = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @fold_builtin_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_cos(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TREE_VALUE(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @REAL_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NULL_TREE, align 4
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @real_zerop(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @dconst1, align 4
  %26 = call i32 @build_real(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @NEGATE_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @NULL_TREE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 0)
  %36 = call i32 @build_tree_list(i32 %33, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @build_function_call_expr(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @NULL_TREE, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %32, %23, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
