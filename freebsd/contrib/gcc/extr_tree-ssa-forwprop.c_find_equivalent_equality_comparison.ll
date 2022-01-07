; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_find_equivalent_equality_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_find_equivalent_equality_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @find_equivalent_equality_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_equivalent_equality_comparison(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @TREE_OPERAND(i32* %11, i32 0)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @TREE_OPERAND(i32* %13, i32 1)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @SSA_NAME_DEF_STMT(i32* %15)
  store i32* %16, i32** %6, align 8
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @TREE_CODE(i32* %21)
  %23 = load i64, i64* @MODIFY_EXPR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @TREE_OPERAND(i32* %26, i32 1)
  %28 = call i64 @TREE_CODE(i32* %27)
  %29 = load i64, i64* @SSA_NAME, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %20, %17
  %32 = phi i1 [ false, %20 ], [ false, %17 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @TREE_OPERAND(i32* %34, i32 1)
  %36 = call i32* @SSA_NAME_DEF_STMT(i32* %35)
  store i32* %36, i32** %6, align 8
  br label %17

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %137

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @TREE_CODE(i32* %41)
  %43 = load i64, i64* @MODIFY_EXPR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %137

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @TREE_OPERAND(i32* %46, i32 1)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @TREE_TYPE(i32* %48)
  %50 = call i64 @POINTER_TYPE_P(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @TREE_TYPE(i32* %53)
  %55 = call i32* @TREE_TYPE(i32* %54)
  %56 = call i64 @TREE_CODE(i32* %55)
  %57 = load i64, i64* @FUNCTION_TYPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %52, %45
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @TREE_TYPE(i32* %60)
  %62 = call i64 @POINTER_TYPE_P(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* @TREE_TYPE(i32* %65)
  %67 = call i32* @TREE_TYPE(i32* %66)
  %68 = call i64 @TREE_CODE(i32* %67)
  %69 = load i64, i64* @FUNCTION_TYPE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %52
  store i32* null, i32** %2, align 8
  br label %138

72:                                               ; preds = %64, %59
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @TREE_CODE(i32* %73)
  %75 = load i64, i64* @NOP_EXPR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @TREE_CODE(i32* %78)
  %80 = load i64, i64* @CONVERT_EXPR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %136

82:                                               ; preds = %77, %72
  %83 = load i32*, i32** %7, align 8
  %84 = call i32* @TREE_OPERAND(i32* %83, i32 0)
  %85 = call i64 @TREE_CODE(i32* %84)
  %86 = load i64, i64* @SSA_NAME, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = call i32* @TREE_OPERAND(i32* %89, i32 0)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32* @TREE_TYPE(i32* %91)
  store i32* %92, i32** %9, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @TYPE_PRECISION(i32* %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32* @TREE_TYPE(i32* %95)
  %97 = call i64 @TYPE_PRECISION(i32* %96)
  %98 = icmp sgt i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  store i32* null, i32** %2, align 8
  br label %138

100:                                              ; preds = %88
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @POINTER_TYPE_P(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  %106 = call i32* @TREE_TYPE(i32* %105)
  %107 = call i64 @TREE_CODE(i32* %106)
  %108 = load i64, i64* @FUNCTION_TYPE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32* null, i32** %2, align 8
  br label %138

111:                                              ; preds = %104, %100
  %112 = load i32*, i32** %7, align 8
  %113 = call i64 @TREE_CODE(i32* %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32* @fold_build1(i64 %113, i32* %114, i32* %115)
  store i32* %116, i32** %10, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @STRIP_USELESS_TYPE_CONVERSION(i32* %117)
  %119 = load i32*, i32** %10, align 8
  %120 = call i64 @is_gimple_val(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %111
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 @tree_int_cst_equal(i32* %123, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @TREE_CODE(i32* %128)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32* @TREE_TYPE(i32* %130)
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = call i32* @build2(i64 %129, i32* %131, i32* %132, i32* %133)
  store i32* %134, i32** %2, align 8
  br label %138

135:                                              ; preds = %122, %111
  br label %136

136:                                              ; preds = %135, %82, %77
  br label %137

137:                                              ; preds = %136, %40, %37
  store i32* null, i32** %2, align 8
  br label %138

138:                                              ; preds = %137, %127, %110, %99, %71
  %139 = load i32*, i32** %2, align 8
  ret i32* %139
}

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @SSA_NAME_DEF_STMT(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i64 @POINTER_TYPE_P(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @TYPE_PRECISION(i32*) #1

declare dso_local i32* @fold_build1(i64, i32*, i32*) #1

declare dso_local i32 @STRIP_USELESS_TYPE_CONVERSION(i32*) #1

declare dso_local i64 @is_gimple_val(i32*) #1

declare dso_local i64 @tree_int_cst_equal(i32*, i32*) #1

declare dso_local i32* @build2(i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
