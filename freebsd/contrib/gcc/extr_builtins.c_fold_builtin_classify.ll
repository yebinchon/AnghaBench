; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_classify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"too few arguments to function %qs\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"too many arguments to function %qs\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"non-floating-point argument to function %qs\00", align 1
@integer_zero_node = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@dconst0 = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@integer_minus_one_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@UNORDERED_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @fold_builtin_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_classify(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @TREE_TYPE(i64 %11)
  %13 = call i64 @TREE_TYPE(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @REAL_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i64 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @DECL_NAME(i64 %23)
  %25 = call i32 @IDENTIFIER_POINTER(i32 %24)
  %26 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @error_mark_node, align 8
  store i64 %27, i64* %4, align 8
  br label %158

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @DECL_NAME(i64 %33)
  %35 = call i32 @IDENTIFIER_POINTER(i32 %34)
  %36 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @error_mark_node, align 8
  store i64 %37, i64* %4, align 8
  br label %158

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @DECL_NAME(i64 %39)
  %41 = call i32 @IDENTIFIER_POINTER(i32 %40)
  %42 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @error_mark_node, align 8
  store i64 %43, i64* %4, align 8
  br label %158

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @TREE_VALUE(i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %156 [
    i32 129, label %48
    i32 130, label %83
    i32 128, label %121
  ]

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = call i32 @TYPE_MODE(i64 %50)
  %52 = call i32 @HONOR_INFINITIES(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @integer_zero_node, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @omit_one_operand(i64 %55, i64 %56, i64 %57)
  store i64 %58, i64* %4, align 8
  br label %158

59:                                               ; preds = %48
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @TREE_CODE(i64 %60)
  %62 = load i32, i32* @REAL_CST, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @TREE_REAL_CST(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = call i32 @real_isinf(i32* %10)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* @GT_EXPR, align 4
  %71 = call i32 @real_compare(i32 %70, i32* %10, i32* @dconst0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @integer_one_node, align 8
  br label %77

75:                                               ; preds = %69
  %76 = load i64, i64* @integer_minus_one_node, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %4, align 8
  br label %158

79:                                               ; preds = %64
  %80 = load i64, i64* @integer_zero_node, align 8
  store i64 %80, i64* %4, align 8
  br label %158

81:                                               ; preds = %59
  %82 = load i64, i64* @NULL_TREE, align 8
  store i64 %82, i64* %4, align 8
  br label %158

83:                                               ; preds = %44
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @TREE_TYPE(i64 %84)
  %86 = call i32 @TYPE_MODE(i64 %85)
  %87 = call i32 @HONOR_NANS(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @TREE_TYPE(i64 %90)
  %92 = call i32 @TYPE_MODE(i64 %91)
  %93 = call i32 @HONOR_INFINITIES(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @integer_one_node, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @omit_one_operand(i64 %96, i64 %97, i64 %98)
  store i64 %99, i64* %4, align 8
  br label %158

100:                                              ; preds = %89, %83
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @TREE_CODE(i64 %101)
  %103 = load i32, i32* @REAL_CST, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @TREE_REAL_CST(i64 %106)
  store i32 %107, i32* %10, align 4
  %108 = call i32 @real_isinf(i32* %10)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = call i32 @real_isnan(i32* %10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %105
  %114 = load i64, i64* @integer_zero_node, align 8
  br label %117

115:                                              ; preds = %110
  %116 = load i64, i64* @integer_one_node, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  store i64 %118, i64* %4, align 8
  br label %158

119:                                              ; preds = %100
  %120 = load i64, i64* @NULL_TREE, align 8
  store i64 %120, i64* %4, align 8
  br label %158

121:                                              ; preds = %44
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @TREE_TYPE(i64 %122)
  %124 = call i32 @TYPE_MODE(i64 %123)
  %125 = call i32 @HONOR_NANS(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @integer_zero_node, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @omit_one_operand(i64 %128, i64 %129, i64 %130)
  store i64 %131, i64* %4, align 8
  br label %158

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @TREE_CODE(i64 %133)
  %135 = load i32, i32* @REAL_CST, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @TREE_REAL_CST(i64 %138)
  store i32 %139, i32* %10, align 4
  %140 = call i32 @real_isnan(i32* %10)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i64, i64* @integer_one_node, align 8
  br label %146

144:                                              ; preds = %137
  %145 = load i64, i64* @integer_zero_node, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i64 [ %143, %142 ], [ %145, %144 ]
  store i64 %147, i64* %4, align 8
  br label %158

148:                                              ; preds = %132
  %149 = load i64, i64* %9, align 8
  %150 = call i64 @builtin_save_expr(i64 %149)
  store i64 %150, i64* %9, align 8
  %151 = load i32, i32* @UNORDERED_EXPR, align 4
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @fold_build2(i32 %151, i64 %152, i64 %153, i64 %154)
  store i64 %155, i64* %4, align 8
  br label %158

156:                                              ; preds = %44
  %157 = call i32 (...) @gcc_unreachable()
  br label %158

158:                                              ; preds = %22, %32, %38, %54, %77, %79, %81, %95, %117, %119, %127, %146, %148, %156
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @validate_arglist(i64, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @HONOR_INFINITIES(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @omit_one_operand(i64, i64, i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i32 @real_isinf(i32*) #1

declare dso_local i32 @real_compare(i32, i32*, i32*) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @real_isnan(i32*) #1

declare dso_local i64 @builtin_save_expr(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
