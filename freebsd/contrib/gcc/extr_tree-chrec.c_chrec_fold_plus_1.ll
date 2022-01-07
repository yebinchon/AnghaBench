; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_plus_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_plus_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4
@dconstm1 = common dso_local global i32 0, align 4
@PARAM_SCEV_MAX_EXPR_SIZE = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @chrec_fold_plus_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chrec_fold_plus_1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @automatically_generated_chrec_p(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @automatically_generated_chrec_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @chrec_fold_automatically_generated_operands(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %139

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TREE_CODE(i32 %23)
  switch i32 %24, label %60 [
    i32 128, label %25
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @TREE_CODE(i32 %26)
  switch i32 %27, label %34 [
    i32 128, label %28
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @chrec_fold_plus_poly_poly(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %139

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PLUS_EXPR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @CHREC_VARIABLE(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @CHREC_LEFT(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @chrec_fold_plus(i32 %41, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @CHREC_RIGHT(i32 %46)
  %48 = call i32 @build_polynomial_chrec(i32 %40, i32 %45, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %139

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @CHREC_VARIABLE(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @CHREC_LEFT(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @chrec_fold_minus(i32 %52, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @CHREC_RIGHT(i32 %57)
  %59 = call i32 @build_polynomial_chrec(i32 %51, i32 %56, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %139

60:                                               ; preds = %22
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TREE_CODE(i32 %61)
  switch i32 %62, label %103 [
    i32 128, label %63
  ]

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PLUS_EXPR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @CHREC_VARIABLE(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @CHREC_LEFT(i32 %72)
  %74 = call i32 @chrec_fold_plus(i32 %70, i32 %71, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @CHREC_RIGHT(i32 %75)
  %77 = call i32 @build_polynomial_chrec(i32 %69, i32 %74, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %139

78:                                               ; preds = %63
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @CHREC_VARIABLE(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @CHREC_LEFT(i32 %83)
  %85 = call i32 @chrec_fold_minus(i32 %81, i32 %82, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @CHREC_RIGHT(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @dconstm1, align 4
  %95 = call i32 @build_real(i32 %93, i32 %94)
  br label %99

96:                                               ; preds = %78
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @build_int_cst_type(i32 %97, i32 -1)
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i32 [ %95, %92 ], [ %98, %96 ]
  %101 = call i32 @chrec_fold_multiply(i32 %86, i32 %88, i32 %100)
  %102 = call i32 @build_polynomial_chrec(i32 %80, i32 %85, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %139

103:                                              ; preds = %60
  store i32 0, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @tree_contains_chrecs(i32 %104, i32* %10)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @tree_contains_chrecs(i32 %108, i32* %10)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @PARAM_SCEV_MAX_EXPR_SIZE, align 4
  %114 = call i32 @PARAM_VALUE(i32 %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @build2(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %5, align 4
  br label %139

122:                                              ; preds = %111, %107
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @PARAM_SCEV_MAX_EXPR_SIZE, align 4
  %125 = call i32 @PARAM_VALUE(i32 %124)
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @fold_convert(i32 %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @fold_convert(i32 %133, i32 %134)
  %136 = call i32 @fold_build2(i32 %128, i32 %129, i32 %132, i32 %135)
  store i32 %136, i32* %5, align 4
  br label %139

137:                                              ; preds = %122
  %138 = load i32, i32* @chrec_dont_know, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %127, %116, %99, %67, %49, %38, %28, %18
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i32 @chrec_fold_automatically_generated_operands(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @chrec_fold_plus_poly_poly(i32, i32, i32, i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @chrec_fold_plus(i32, i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @chrec_fold_minus(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_multiply(i32, i32, i32) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @build_int_cst_type(i32, i32) #1

declare dso_local i32 @tree_contains_chrecs(i32, i32*) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
