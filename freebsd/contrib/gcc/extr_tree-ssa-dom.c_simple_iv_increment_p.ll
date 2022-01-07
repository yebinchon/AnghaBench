; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_simple_iv_increment_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_simple_iv_increment_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@PHI_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @simple_iv_increment_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_iv_increment_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @MODIFY_EXPR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_OPERAND(i64 %15, i32 0)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @SSA_NAME, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %70

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_OPERAND(i64 %23, i32 1)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @PLUS_EXPR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @MINUS_EXPR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %70

35:                                               ; preds = %29, %22
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 0)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @SSA_NAME, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %70

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @SSA_NAME_DEF_STMT(i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @PHI_NODE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %70

51:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @PHI_NUM_ARGS(i64 %54)
  %56 = trunc i64 %55 to i32
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @PHI_ARG_DEF(i64 %59, i32 %60)
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %70

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %52

69:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %64, %50, %42, %34, %21, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
