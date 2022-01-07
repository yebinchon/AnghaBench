; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_find_induction_var_from_exit_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_find_induction_var_from_exit_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*)* @find_induction_var_from_exit_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_induction_var_from_exit_cond(%struct.loop* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  %7 = load %struct.loop*, %struct.loop** %3, align 8
  %8 = call i64 @get_loop_exit_condition(%struct.loop* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NULL_TREE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %2, align 8
  br label %59

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @COND_EXPR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %2, align 8
  br label %59

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_OPERAND(i64 %22, i32 0)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @COMPARISON_CLASS_P(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %2, align 8
  br label %59

29:                                               ; preds = %21
  %30 = load %struct.loop*, %struct.loop** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_OPERAND(i64 %31, i32 0)
  %33 = call i64 @expr_invariant_in_loop_p(%struct.loop* %30, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 1)
  store i64 %37, i64* %5, align 8
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.loop*, %struct.loop** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @TREE_OPERAND(i64 %40, i32 1)
  %42 = call i64 @expr_invariant_in_loop_p(%struct.loop* %39, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 0)
  store i64 %46, i64* %5, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @NULL_TREE, align 8
  store i64 %48, i64* %2, align 8
  br label %59

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @SSA_NAME, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @NULL_TREE, align 8
  store i64 %56, i64* %2, align 8
  br label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %55, %47, %27, %19, %12
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i64 @get_loop_exit_condition(%struct.loop*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @COMPARISON_CLASS_P(i64) #1

declare dso_local i64 @expr_invariant_in_loop_p(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
