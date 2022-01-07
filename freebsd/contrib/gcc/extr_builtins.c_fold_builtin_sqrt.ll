; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@flag_trapping_math = common dso_local global i32 0, align 4
@flag_errno_math = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4
@dconsthalf = common dso_local global i32 0, align 4
@BUILT_IN_POW = common dso_local global i32 0, align 4
@dconstthird = common dso_local global i32 0, align 4
@BUILT_IN_POWF = common dso_local global i32 0, align 4
@BUILT_IN_POWL = common dso_local global i32 0, align 4
@ABS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_builtin_sqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_sqrt(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TREE_VALUE(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @REAL_TYPE, align 4
  %23 = load i32, i32* @VOID_TYPE, align 4
  %24 = call i32 @validate_arglist(i64 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* @NULL_TREE, align 8
  store i64 %27, i64* %3, align 8
  br label %182

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @REAL_CST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @TREE_REAL_CST(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @TYPE_MODE(i64 %40)
  %42 = call i64 @real_sqrt(i32* %8, i32 %41, i32* %9)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @flag_trapping_math, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @flag_errno_math, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47, %37
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @build_real(i64 %51, i32 %52)
  store i64 %53, i64* %3, align 8
  br label %182

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %54, %33, %28
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @builtin_mathfn_code(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @BUILTIN_EXPONENT_P(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @TREE_OPERAND(i64 %65, i32 0)
  %67 = call i64 @TREE_OPERAND(i64 %66, i32 0)
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* @MULT_EXPR, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @TREE_OPERAND(i64 %70, i32 1)
  %72 = call i64 @TREE_VALUE(i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = load i32, i32* @dconsthalf, align 4
  %75 = call i64 @build_real(i64 %73, i32 %74)
  %76 = call i64 @fold_build2(i32 %68, i64 %69, i64 %72, i64 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* @NULL_TREE, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @build_tree_list(i64 %77, i64 %78)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @build_function_call_expr(i64 %80, i64 %81)
  store i64 %82, i64* %3, align 8
  br label %182

83:                                               ; preds = %60, %55
  %84 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @BUILTIN_ROOT_P(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @BUILT_IN_POW, align 4
  %93 = call i64 @mathfn_built_in(i64 %91, i32 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %90
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @TREE_OPERAND(i64 %97, i32 1)
  %99 = call i64 @TREE_VALUE(i64 %98)
  store i64 %99, i64* %12, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @BUILTIN_SQRT_P(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @dconsthalf, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @dconstthird, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %14, align 4
  %109 = call i64 @REAL_EXP(i32* %14)
  %110 = sub nsw i64 %109, 1
  %111 = call i32 @SET_REAL_EXP(i32* %14, i64 %110)
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @TYPE_MODE(i64 %112)
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @real_value_truncate(i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i64 @build_real(i64 %116, i32 %117)
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* @NULL_TREE, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* @NULL_TREE, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @build_tree_list(i64 %121, i64 %122)
  %124 = call i64 @tree_cons(i64 %119, i64 %120, i64 %123)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %4, align 8
  %127 = call i64 @build_function_call_expr(i64 %125, i64 %126)
  store i64 %127, i64* %3, align 8
  br label %182

128:                                              ; preds = %90
  br label %129

129:                                              ; preds = %128, %86, %83
  %130 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %180

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @BUILT_IN_POW, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @BUILT_IN_POWF, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @BUILT_IN_POWL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %180

144:                                              ; preds = %140, %136, %132
  %145 = load i64, i64* %7, align 8
  %146 = call i64 @TREE_OPERAND(i64 %145, i32 0)
  %147 = call i64 @TREE_OPERAND(i64 %146, i32 0)
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @TREE_OPERAND(i64 %148, i32 1)
  %150 = call i64 @TREE_VALUE(i64 %149)
  store i64 %150, i64* %16, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @TREE_OPERAND(i64 %151, i32 1)
  %153 = call i64 @TREE_CHAIN(i64 %152)
  %154 = call i64 @TREE_VALUE(i64 %153)
  store i64 %154, i64* %17, align 8
  %155 = load i64, i64* %16, align 8
  %156 = call i32 @tree_expr_nonnegative_p(i64 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %144
  %159 = load i32, i32* @ABS_EXPR, align 4
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* %16, align 8
  %162 = call i64 @build1(i32 %159, i64 %160, i64 %161)
  store i64 %162, i64* %16, align 8
  br label %163

163:                                              ; preds = %158, %144
  %164 = load i32, i32* @MULT_EXPR, align 4
  %165 = load i64, i64* %5, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %5, align 8
  %168 = load i32, i32* @dconsthalf, align 4
  %169 = call i64 @build_real(i64 %167, i32 %168)
  %170 = call i64 @fold_build2(i32 %164, i64 %165, i64 %166, i64 %169)
  store i64 %170, i64* %18, align 8
  %171 = load i64, i64* @NULL_TREE, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* @NULL_TREE, align 8
  %174 = load i64, i64* %18, align 8
  %175 = call i64 @build_tree_list(i64 %173, i64 %174)
  %176 = call i64 @tree_cons(i64 %171, i64 %172, i64 %175)
  store i64 %176, i64* %4, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %4, align 8
  %179 = call i64 @build_function_call_expr(i64 %177, i64 %178)
  store i64 %179, i64* %3, align 8
  br label %182

180:                                              ; preds = %140, %129
  %181 = load i64, i64* @NULL_TREE, align 8
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %180, %163, %107, %64, %50, %26
  %183 = load i64, i64* %3, align 8
  ret i64 %183
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @validate_arglist(i64, i32, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i64 @real_sqrt(i32*, i32, i32*) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @build_real(i64, i32) #1

declare dso_local i32 @builtin_mathfn_code(i64) #1

declare dso_local i64 @BUILTIN_EXPONENT_P(i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @BUILTIN_ROOT_P(i32) #1

declare dso_local i64 @mathfn_built_in(i64, i32) #1

declare dso_local i64 @BUILTIN_SQRT_P(i32) #1

declare dso_local i32 @SET_REAL_EXP(i32*, i64) #1

declare dso_local i64 @REAL_EXP(i32*) #1

declare dso_local i32 @real_value_truncate(i32, i32) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @tree_expr_nonnegative_p(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
