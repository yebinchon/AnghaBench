; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_exponent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@dconst1 = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@dconste = common dso_local global i32 0, align 4
@BUILT_IN_LOG = common dso_local global i32 0, align 4
@BUILT_IN_LOGF = common dso_local global i32 0, align 4
@BUILT_IN_LOGL = common dso_local global i32 0, align 4
@dconst2 = common dso_local global i32 0, align 4
@BUILT_IN_LOG2 = common dso_local global i32 0, align 4
@BUILT_IN_LOG2F = common dso_local global i32 0, align 4
@BUILT_IN_LOG2L = common dso_local global i32 0, align 4
@dconst10 = common dso_local global i32 0, align 4
@BUILT_IN_LOG10 = common dso_local global i32 0, align 4
@BUILT_IN_LOG10F = common dso_local global i32 0, align 4
@BUILT_IN_LOG10L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @fold_builtin_exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_exponent(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @REAL_TYPE, align 4
  %18 = load i32, i32* @VOID_TYPE, align 4
  %19 = call i64 @validate_arglist(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %139

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = call i32 @TREE_TYPE(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @TREE_VALUE(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @real_zerop(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @dconst1, align 4
  %33 = call i32 @build_real(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %140

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @real_onep(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TYPE_MODE(i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @real_convert(i32* %10, i32 %40, i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @build_real(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %140

46:                                               ; preds = %34
  %47 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @REAL_CST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @TREE_REAL_CST(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = call i64 @real_to_integer(i32* %12)
  store i64 %61, i64* %13, align 8
  %62 = load i32, i32* @VOIDmode, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp slt i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 -1, i32 0
  %68 = call i32 @real_from_integer(i32* %11, i32 %62, i64 %63, i32 %67, i32 0)
  %69 = call i64 @real_identical(i32* %12, i32* %11)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TYPE_MODE(i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @real_powi(i32* %14, i32 %73, i32* %74, i64 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @build_real(i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %140

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %54, %49, %46
  %82 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @builtin_mathfn_code(i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = icmp eq i32* %87, @dconste
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @BUILT_IN_LOG, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %131, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @BUILT_IN_LOGF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %131, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @BUILT_IN_LOGL, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %131, label %101

101:                                              ; preds = %97, %84
  %102 = load i32*, i32** %7, align 8
  %103 = icmp eq i32* %102, @dconst2
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @BUILT_IN_LOG2, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %131, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @BUILT_IN_LOG2F, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %131, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @BUILT_IN_LOG2L, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %131, label %116

116:                                              ; preds = %112, %101
  %117 = load i32*, i32** %7, align 8
  %118 = icmp eq i32* %117, @dconst10
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @BUILT_IN_LOG10, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @BUILT_IN_LOG10F, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @BUILT_IN_LOG10L, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127, %123, %119, %112, %108, %104, %97, %93, %89
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @TREE_OPERAND(i32 %133, i32 1)
  %135 = call i32 @TREE_VALUE(i32 %134)
  %136 = call i32 @fold_convert(i32 %132, i32 %135)
  store i32 %136, i32* %4, align 4
  br label %140

137:                                              ; preds = %127, %116
  br label %138

138:                                              ; preds = %137, %81
  br label %139

139:                                              ; preds = %138, %3
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %131, %71, %38, %30
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @validate_arglist(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i64 @real_onep(i32) #1

declare dso_local i32 @real_convert(i32*, i32, i32*) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i64 @real_to_integer(i32*) #1

declare dso_local i32 @real_from_integer(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @real_identical(i32*, i32*) #1

declare dso_local i32 @real_powi(i32*, i32, i32*, i64) #1

declare dso_local i32 @builtin_mathfn_code(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
