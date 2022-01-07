; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_distribute_real_division.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_distribute_real_division.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MULT_EXPR = common dso_local global i64 0, align 8
@RDIV_EXPR = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@dconst1 = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @distribute_real_division to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @distribute_real_division(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @MULT_EXPR, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @MULT_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @TREE_OPERAND(i32 %28, i32 1)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 1)
  %32 = call i64 @operand_equal_p(i32 %29, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* @MULT_EXPR, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @RDIV_EXPR, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @TREE_OPERAND(i32 %47, i32 0)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 0)
  %51 = call i32 @fold_build2(i64 %45, i32 %46, i32 %48, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 1)
  %54 = call i32 @fold_build2(i64 %42, i32 %43, i32 %51, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %107

55:                                               ; preds = %27, %4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 0)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @TREE_OPERAND(i32 %58, i32 0)
  %60 = call i64 @operand_equal_p(i32 %57, i32 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @REAL_CST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 1)
  %71 = call i64 @TREE_CODE(i32 %70)
  %72 = load i64, i64* @REAL_CST, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @TREE_OPERAND(i32 %75, i32 1)
  %77 = call i32 @TREE_REAL_CST(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @TREE_OPERAND(i32 %78, i32 1)
  %80 = call i32 @TREE_REAL_CST(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i64, i64* @RDIV_EXPR, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @real_arithmetic(i32* %12, i32 %85, i32* @dconst1, i32* %12)
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @RDIV_EXPR, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @real_arithmetic(i32* %13, i32 %92, i32* @dconst1, i32* %13)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @real_arithmetic(i32* %12, i32 %95, i32* %12, i32* %13)
  %97 = load i64, i64* @MULT_EXPR, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @TREE_OPERAND(i32 %99, i32 0)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @build_real(i32 %101, i32 %102)
  %104 = call i32 @fold_build2(i64 %97, i32 %98, i32 %100, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %107

105:                                              ; preds = %68, %62, %55
  %106 = load i32, i32* @NULL_TREE, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %94, %41
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @fold_build2(i64, i32, i32, i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i32 @real_arithmetic(i32*, i32, i32*, i32*) #1

declare dso_local i32 @build_real(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
