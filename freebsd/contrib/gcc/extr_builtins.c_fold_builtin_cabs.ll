; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_cabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_cabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@flag_trapping_math = common dso_local global i32 0, align 4
@COMPLEX_EXPR = common dso_local global i64 0, align 8
@ABS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i64 0, align 8
@CONJ_EXPR = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i32 0, align 4
@BUILT_IN_SQRT = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @fold_builtin_cabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_cabs(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_CHAIN(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %3
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %4, align 8
  br label %200

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @TREE_VALUE(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @COMPLEX_TYPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @TREE_TYPE(i64 %34)
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @REAL_TYPE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %25
  %41 = load i64, i64* @NULL_TREE, align 8
  store i64 %41, i64* %4, align 8
  br label %200

42:                                               ; preds = %33
  %43 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @COMPLEX_CST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @TREE_REALPART(i64 %51)
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @REAL_CST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @TREE_IMAGPART(i64 %57)
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @REAL_CST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @TREE_REALPART(i64 %63)
  %65 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @TREE_IMAGPART(i64 %68)
  %70 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @TREE_REALPART(i64 %73)
  %75 = call i32 @TREE_REAL_CST(i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @TREE_IMAGPART(i64 %76)
  %78 = call i32 @TREE_REAL_CST(i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @MULT_EXPR, align 4
  %80 = call i32 @real_arithmetic(i32* %9, i32 %79, i32* %9, i32* %9)
  %81 = load i32, i32* @MULT_EXPR, align 4
  %82 = call i32 @real_arithmetic(i32* %10, i32 %81, i32* %10, i32* %10)
  %83 = load i32, i32* @PLUS_EXPR, align 4
  %84 = call i32 @real_arithmetic(i32* %9, i32 %83, i32* %9, i32* %10)
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @TYPE_MODE(i64 %85)
  %87 = call i64 @real_sqrt(i32* %9, i32 %86, i32* %9)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %72
  %90 = load i32, i32* @flag_trapping_math, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %72
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @build_real(i64 %93, i32 %94)
  store i64 %95, i64* %4, align 8
  br label %200

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %67, %62, %56, %50, %45, %42
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @TREE_CODE(i64 %98)
  %100 = load i64, i64* @COMPLEX_EXPR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @TREE_OPERAND(i64 %103, i32 0)
  %105 = call i64 @real_zerop(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @ABS_EXPR, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @TREE_OPERAND(i64 %110, i32 1)
  %112 = call i64 @fold_build1(i32 %108, i64 %109, i64 %111)
  store i64 %112, i64* %4, align 8
  br label %200

113:                                              ; preds = %102, %97
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @TREE_CODE(i64 %114)
  %116 = load i64, i64* @COMPLEX_EXPR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @TREE_OPERAND(i64 %119, i32 1)
  %121 = call i64 @real_zerop(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @ABS_EXPR, align 4
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i64 @TREE_OPERAND(i64 %126, i32 0)
  %128 = call i64 @fold_build1(i32 %124, i64 %125, i64 %127)
  store i64 %128, i64* %4, align 8
  br label %200

129:                                              ; preds = %118, %113
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @TREE_CODE(i64 %130)
  %132 = load i64, i64* @NEGATE_EXPR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @TREE_CODE(i64 %135)
  %137 = load i64, i64* @CONJ_EXPR, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %134, %129
  %140 = load i64, i64* @NULL_TREE, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @TREE_OPERAND(i64 %141, i32 0)
  %143 = call i64 @build_tree_list(i64 %140, i64 %142)
  store i64 %143, i64* %11, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @build_function_call_expr(i64 %144, i64 %145)
  store i64 %146, i64* %4, align 8
  br label %200

147:                                              ; preds = %134
  %148 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %198

150:                                              ; preds = %147
  %151 = load i64, i64* @optimize, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %150
  %154 = load i32, i32* @optimize_size, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %198, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %6, align 8
  %158 = load i32, i32* @BUILT_IN_SQRT, align 4
  %159 = call i64 @mathfn_built_in(i64 %157, i32 %158)
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* @NULL_TREE, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %197

163:                                              ; preds = %156
  %164 = load i64, i64* %8, align 8
  %165 = call i64 @builtin_save_expr(i64 %164)
  store i64 %165, i64* %8, align 8
  %166 = load i32, i32* @REALPART_EXPR, align 4
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @fold_build1(i32 %166, i64 %167, i64 %168)
  store i64 %169, i64* %13, align 8
  %170 = load i32, i32* @IMAGPART_EXPR, align 4
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* %8, align 8
  %173 = call i64 @fold_build1(i32 %170, i64 %171, i64 %172)
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i64 @builtin_save_expr(i64 %174)
  store i64 %175, i64* %13, align 8
  %176 = load i64, i64* %14, align 8
  %177 = call i64 @builtin_save_expr(i64 %176)
  store i64 %177, i64* %14, align 8
  %178 = load i32, i32* @PLUS_EXPR, align 4
  %179 = load i64, i64* %6, align 8
  %180 = load i32, i32* @MULT_EXPR, align 4
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %13, align 8
  %184 = call i64 @fold_build2(i32 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i32, i32* @MULT_EXPR, align 4
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %14, align 8
  %189 = call i64 @fold_build2(i32 %185, i64 %186, i64 %187, i64 %188)
  %190 = call i64 @fold_build2(i32 %178, i64 %179, i64 %184, i64 %189)
  store i64 %190, i64* %15, align 8
  %191 = load i64, i64* @NULL_TREE, align 8
  %192 = load i64, i64* %15, align 8
  %193 = call i64 @build_tree_list(i64 %191, i64 %192)
  store i64 %193, i64* %16, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* %16, align 8
  %196 = call i64 @build_function_call_expr(i64 %194, i64 %195)
  store i64 %196, i64* %4, align 8
  br label %200

197:                                              ; preds = %156
  br label %198

198:                                              ; preds = %197, %153, %150, %147
  %199 = load i64, i64* @NULL_TREE, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %198, %163, %139, %123, %107, %92, %40, %23
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_REALPART(i64) #1

declare dso_local i64 @TREE_IMAGPART(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i32 @real_arithmetic(i32*, i32, i32*, i32*) #1

declare dso_local i64 @real_sqrt(i32*, i32, i32*) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @build_real(i64, i32) #1

declare dso_local i64 @real_zerop(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @mathfn_built_in(i64, i32) #1

declare dso_local i64 @builtin_save_expr(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
