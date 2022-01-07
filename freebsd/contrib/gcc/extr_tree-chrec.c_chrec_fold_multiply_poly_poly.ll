; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_multiply_poly_poly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_multiply_poly_poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@dconst2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @chrec_fold_multiply_poly_poly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrec_fold_multiply_poly_poly(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @chrec_type(i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @chrec_type(i64 %32)
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @chrec_type(i64 %38)
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @CHREC_VARIABLE(i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @CHREC_VARIABLE(i64 %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %3
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @CHREC_VARIABLE(i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @CHREC_LEFT(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @chrec_fold_multiply(i64 %51, i64 %53, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @CHREC_RIGHT(i64 %56)
  %58 = call i64 @build_polynomial_chrec(i32 %50, i64 %55, i64 %57)
  store i64 %58, i64* %4, align 8
  br label %137

59:                                               ; preds = %3
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @CHREC_VARIABLE(i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @CHREC_VARIABLE(i64 %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @CHREC_VARIABLE(i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @CHREC_LEFT(i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @chrec_fold_multiply(i64 %68, i64 %70, i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @CHREC_RIGHT(i64 %73)
  %75 = call i64 @build_polynomial_chrec(i32 %67, i64 %72, i64 %74)
  store i64 %75, i64* %4, align 8
  br label %137

76:                                               ; preds = %59
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @CHREC_LEFT(i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @CHREC_LEFT(i64 %80)
  %82 = call i64 @chrec_fold_multiply(i64 %77, i64 %79, i64 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @CHREC_LEFT(i64 %84)
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @CHREC_RIGHT(i64 %86)
  %88 = call i64 @chrec_fold_multiply(i64 %83, i64 %85, i64 %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @CHREC_RIGHT(i64 %92)
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @CHREC_LEFT(i64 %94)
  %96 = call i64 @chrec_fold_multiply(i64 %91, i64 %93, i64 %95)
  %97 = call i64 @chrec_fold_plus(i64 %89, i64 %90, i64 %96)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @CHREC_RIGHT(i64 %101)
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @CHREC_RIGHT(i64 %103)
  %105 = call i64 @chrec_fold_multiply(i64 %100, i64 %102, i64 %104)
  %106 = call i64 @chrec_fold_plus(i64 %98, i64 %99, i64 %105)
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @CHREC_RIGHT(i64 %108)
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @CHREC_RIGHT(i64 %110)
  %112 = call i64 @chrec_fold_multiply(i64 %107, i64 %109, i64 %111)
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @SCALAR_FLOAT_TYPE_P(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %76
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @dconst2, align 4
  %120 = call i64 @build_real(i64 %118, i32 %119)
  br label %124

121:                                              ; preds = %76
  %122 = load i64, i64* %5, align 8
  %123 = call i64 @build_int_cst(i64 %122, i32 2)
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i64 [ %120, %117 ], [ %123, %121 ]
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @chrec_fold_multiply(i64 %113, i64 %125, i64 %126)
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @CHREC_VARIABLE(i64 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i64, i64* %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i64 @build_polynomial_chrec(i32 %132, i64 %133, i64 %134)
  %136 = call i64 @build_polynomial_chrec(i32 %130, i64 %131, i64 %135)
  store i64 %136, i64* %4, align 8
  br label %137

137:                                              ; preds = %124, %65, %48
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @chrec_type(i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @build_polynomial_chrec(i32, i64, i64) #1

declare dso_local i64 @chrec_fold_multiply(i64, i64, i64) #1

declare dso_local i64 @CHREC_LEFT(i64) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

declare dso_local i64 @chrec_fold_plus(i64, i64, i64) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i64 @build_real(i64, i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
