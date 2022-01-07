; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_to_nonsharp_ineq_using_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_to_nonsharp_ineq_using_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LT_EXPR = common dso_local global i64 0, align 8
@GT_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_to_nonsharp_ineq_using_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_to_nonsharp_ineq_using_bound(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @LT_EXPR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_OPERAND(i64 %19, i32 0)
  store i64 %20, i64* %6, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @GT_EXPR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TREE_OPERAND(i64 %27, i32 1)
  store i64 %28, i64* %6, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %3, align 8
  br label %91

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_TYPE(i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @INTEGRAL_TYPE_P(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @POINTER_TYPE_P(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @NULL_TREE, align 8
  store i64 %43, i64* %3, align 8
  br label %91

44:                                               ; preds = %38, %32
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @LT_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_OPERAND(i64 %50, i32 1)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TREE_OPERAND(i64 %52, i32 0)
  store i64 %53, i64* %11, align 8
  br label %67

54:                                               ; preds = %44
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @TREE_CODE(i64 %55)
  %57 = load i64, i64* @GT_EXPR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @TREE_OPERAND(i64 %60, i32 0)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TREE_OPERAND(i64 %62, i32 1)
  store i64 %63, i64* %11, align 8
  br label %66

64:                                               ; preds = %54
  %65 = load i64, i64* @NULL_TREE, align 8
  store i64 %65, i64* %3, align 8
  br label %91

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @TREE_TYPE(i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @NULL_TREE, align 8
  store i64 %73, i64* %3, align 8
  br label %91

74:                                               ; preds = %67
  %75 = load i32, i32* @MINUS_EXPR, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @fold_build2(i32 %75, i64 %76, i64 %77, i64 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @integer_onep(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = load i64, i64* @NULL_TREE, align 8
  store i64 %84, i64* %3, align 8
  br label %91

85:                                               ; preds = %74
  %86 = load i32, i32* @GE_EXPR, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @fold_build2(i32 %86, i64 %87, i64 %88, i64 %89)
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %85, %83, %72, %64, %42, %29
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @integer_onep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
