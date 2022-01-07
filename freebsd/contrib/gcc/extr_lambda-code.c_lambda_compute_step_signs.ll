; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_compute_step_signs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_compute_step_signs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @lambda_compute_step_signs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lambda_compute_step_signs(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32** @LTM_MATRIX(i32 %15)
  store i32** %16, i32*** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @LTM_ROWSIZE(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32** @lambda_matrix_new(i32 %19, i32 %20)
  store i32** %21, i32*** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @lambda_vector_new(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @lambda_vector_copy(i32* %24, i32* %25, i32 %26)
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @lambda_matrix_copy(i32** %28, i32** %29, i32 %30, i32 %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %132, %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %135

37:                                               ; preds = %33
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %14, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %61, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32**, i32*** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @lambda_matrix_col_negate(i32** %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %44

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %130, %64
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @lambda_vector_first_nz(i32* %66, i32 %67, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @lambda_vector_min_nz(i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @lambda_matrix_col_exchange(i32** %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %127, %73
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %113, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32**, i32*** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 -1, %124
  %126 = call i32 @lambda_matrix_col_add(i32** %120, i32 %121, i32 %122, i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %104

130:                                              ; preds = %104
  br label %65

131:                                              ; preds = %65
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %33

135:                                              ; preds = %33
  %136 = load i32*, i32** %8, align 8
  ret i32* %136
}

declare dso_local i32** @LTM_MATRIX(i32) #1

declare dso_local i32 @LTM_ROWSIZE(i32) #1

declare dso_local i32** @lambda_matrix_new(i32, i32) #1

declare dso_local i32* @lambda_vector_new(i32) #1

declare dso_local i32 @lambda_vector_copy(i32*, i32*, i32) #1

declare dso_local i32 @lambda_matrix_copy(i32**, i32**, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_negate(i32**, i32, i32) #1

declare dso_local i32 @lambda_vector_first_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_vector_min_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_exchange(i32**, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_add(i32**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
