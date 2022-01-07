; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_plus_poly_poly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_plus_poly_poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@dconstm1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @chrec_fold_plus_poly_poly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrec_fold_plus_poly_poly(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @chrec_type(i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @chrec_type(i64 %32)
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @chrec_type(i64 %38)
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @CHREC_VARIABLE(i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @CHREC_VARIABLE(i64 %45)
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PLUS_EXPR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @CHREC_VARIABLE(i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @CHREC_LEFT(i64 %57)
  %59 = call i64 @chrec_fold_plus(i64 %55, i64 %56, i64 %58)
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @CHREC_RIGHT(i64 %60)
  %62 = call i64 @build_polynomial_chrec(i64 %54, i64 %59, i64 %61)
  store i64 %62, i64* %5, align 8
  br label %162

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @CHREC_VARIABLE(i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @CHREC_LEFT(i64 %68)
  %70 = call i64 @chrec_fold_minus(i64 %66, i64 %67, i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @CHREC_RIGHT(i64 %72)
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @SCALAR_FLOAT_TYPE_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* @dconstm1, align 4
  %80 = call i32 @build_real(i64 %78, i32 %79)
  br label %84

81:                                               ; preds = %63
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @build_int_cst_type(i64 %82, i32 -1)
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i32 [ %80, %77 ], [ %83, %81 ]
  %86 = call i64 @chrec_fold_multiply(i64 %71, i64 %73, i32 %85)
  %87 = call i64 @build_polynomial_chrec(i64 %65, i64 %70, i64 %86)
  store i64 %87, i64* %5, align 8
  br label %162

88:                                               ; preds = %4
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @CHREC_VARIABLE(i64 %89)
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @CHREC_VARIABLE(i64 %91)
  %93 = icmp sgt i64 %90, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PLUS_EXPR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @CHREC_VARIABLE(i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @CHREC_LEFT(i64 %102)
  %104 = load i64, i64* %9, align 8
  %105 = call i64 @chrec_fold_plus(i64 %101, i64 %103, i64 %104)
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @CHREC_RIGHT(i64 %106)
  %108 = call i64 @build_polynomial_chrec(i64 %100, i64 %105, i64 %107)
  store i64 %108, i64* %5, align 8
  br label %162

109:                                              ; preds = %94
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @CHREC_VARIABLE(i64 %110)
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @CHREC_LEFT(i64 %113)
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @chrec_fold_minus(i64 %112, i64 %114, i64 %115)
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @CHREC_RIGHT(i64 %117)
  %119 = call i64 @build_polynomial_chrec(i64 %111, i64 %116, i64 %118)
  store i64 %119, i64* %5, align 8
  br label %162

120:                                              ; preds = %88
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @PLUS_EXPR, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i64 @CHREC_LEFT(i64 %126)
  %128 = load i64, i64* %9, align 8
  %129 = call i64 @CHREC_LEFT(i64 %128)
  %130 = call i64 @chrec_fold_plus(i64 %125, i64 %127, i64 %129)
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @CHREC_RIGHT(i64 %132)
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @CHREC_RIGHT(i64 %134)
  %136 = call i64 @chrec_fold_plus(i64 %131, i64 %133, i64 %135)
  store i64 %136, i64* %11, align 8
  br label %150

137:                                              ; preds = %120
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @CHREC_LEFT(i64 %139)
  %141 = load i64, i64* %9, align 8
  %142 = call i64 @CHREC_LEFT(i64 %141)
  %143 = call i64 @chrec_fold_minus(i64 %138, i64 %140, i64 %142)
  store i64 %143, i64* %10, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i64 @CHREC_RIGHT(i64 %145)
  %147 = load i64, i64* %9, align 8
  %148 = call i64 @CHREC_RIGHT(i64 %147)
  %149 = call i64 @chrec_fold_minus(i64 %144, i64 %146, i64 %148)
  store i64 %149, i64* %11, align 8
  br label %150

150:                                              ; preds = %137, %124
  %151 = load i64, i64* %11, align 8
  %152 = call i64 @chrec_zerop(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i64, i64* %10, align 8
  store i64 %155, i64* %5, align 8
  br label %162

156:                                              ; preds = %150
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @CHREC_VARIABLE(i64 %157)
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i64 @build_polynomial_chrec(i64 %158, i64 %159, i64 %160)
  store i64 %161, i64* %5, align 8
  br label %162

162:                                              ; preds = %156, %154, %109, %98, %84, %52
  %163 = load i64, i64* %5, align 8
  ret i64 %163
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @chrec_type(i64) #1

declare dso_local i64 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @build_polynomial_chrec(i64, i64, i64) #1

declare dso_local i64 @chrec_fold_plus(i64, i64, i64) #1

declare dso_local i64 @CHREC_LEFT(i64) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

declare dso_local i64 @chrec_fold_minus(i64, i64, i64) #1

declare dso_local i64 @chrec_fold_multiply(i64, i64, i32) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @build_real(i64, i32) #1

declare dso_local i32 @build_int_cst_type(i64, i32) #1

declare dso_local i64 @chrec_zerop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
