; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_binary_op_with_conditional_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_binary_op_with_conditional_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i64, i64, i32)* @fold_binary_op_with_conditional_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_binary_op_with_conditional_arg(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  br label %32

29:                                               ; preds = %7
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @TREE_TYPE(i64 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i64 [ %28, %26 ], [ %31, %29 ]
  store i64 %33, i64* %16, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  br label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i64 [ %38, %36 ], [ %41, %39 ]
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* @NULL_TREE, align 8
  store i64 %44, i64* %21, align 8
  %45 = load i64, i64* @NULL_TREE, align 8
  store i64 %45, i64* %22, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @TREE_CONSTANT(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* @NULL_TREE, align 8
  store i64 %50, i64* %8, align 8
  br label %142

51:                                               ; preds = %42
  %52 = load i64, i64* %13, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @COND_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @TREE_OPERAND(i64 %57, i32 0)
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @TREE_OPERAND(i64 %59, i32 1)
  store i64 %60, i64* %19, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @TREE_OPERAND(i64 %61, i32 2)
  store i64 %62, i64* %20, align 8
  %63 = load i64, i64* %19, align 8
  %64 = call i64 @TREE_TYPE(i64 %63)
  %65 = call i64 @VOID_TYPE_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %19, align 8
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i64, i64* %20, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = call i64 @VOID_TYPE_P(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* %20, align 8
  store i64 %75, i64* %22, align 8
  br label %76

76:                                               ; preds = %74, %69
  br label %85

77:                                               ; preds = %51
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @TREE_TYPE(i64 %78)
  store i64 %79, i64* %23, align 8
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %23, align 8
  %82 = call i64 @constant_boolean_node(i32 1, i64 %81)
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %23, align 8
  %84 = call i64 @constant_boolean_node(i32 0, i64 %83)
  store i64 %84, i64* %20, align 8
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @fold_convert(i64 %86, i64 %87)
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %21, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %19, align 8
  %94 = call i64 @fold_convert(i64 %92, i64 %93)
  store i64 %94, i64* %19, align 8
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @fold_build2(i32 %98, i64 %99, i64 %100, i64 %101)
  store i64 %102, i64* %21, align 8
  br label %109

103:                                              ; preds = %91
  %104 = load i32, i32* %9, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %19, align 8
  %108 = call i64 @fold_build2(i32 %104, i64 %105, i64 %106, i64 %107)
  store i64 %108, i64* %21, align 8
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i64, i64* %22, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %110
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i64 @fold_convert(i64 %114, i64 %115)
  store i64 %116, i64* %20, align 8
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i64 @fold_build2(i32 %120, i64 %121, i64 %122, i64 %123)
  store i64 %124, i64* %22, align 8
  br label %131

125:                                              ; preds = %113
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %20, align 8
  %130 = call i64 @fold_build2(i32 %126, i64 %127, i64 %128, i64 %129)
  store i64 %130, i64* %22, align 8
  br label %131

131:                                              ; preds = %125, %119
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i64, i64* @COND_EXPR, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i64 @fold_build3(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %18, align 8
  %141 = call i64 @fold_convert(i64 %139, i64 %140)
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %132, %49
  %143 = load i64, i64* %8, align 8
  ret i64 %143
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_CONSTANT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @constant_boolean_node(i32, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @fold_build3(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
