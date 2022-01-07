; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_hermite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lambda_matrix_hermite(i32** %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @lambda_matrix_copy(i32** %14, i32** %15, i32 %16, i32 %17)
  %19 = load i32**, i32*** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @lambda_matrix_id(i32** %19, i32 %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %124, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %22
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %62, %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @lambda_matrix_col_negate(i32** %45, i32 %46, i32 %47)
  %49 = load i32**, i32*** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @lambda_vector_negate(i32* %53, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %44, %37
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %33

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %122, %65
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @lambda_vector_first_nz(i32* %67, i32 %68, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %66
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @lambda_vector_min_nz(i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32**, i32*** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @lambda_matrix_col_exchange(i32** %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @lambda_matrix_row_exchange(i32** %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %119, %74
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %99, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32**, i32*** %7, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 -1, %110
  %112 = call i32 @lambda_matrix_col_add(i32** %106, i32 %107, i32 %108, i32 %109, i32 %111)
  %113 = load i32**, i32*** %8, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @lambda_matrix_row_add(i32** %113, i32 %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %94
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %90

122:                                              ; preds = %90
  br label %66

123:                                              ; preds = %66
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %22

127:                                              ; preds = %22
  ret void
}

declare dso_local i32 @lambda_matrix_copy(i32**, i32**, i32, i32) #1

declare dso_local i32 @lambda_matrix_id(i32**, i32) #1

declare dso_local i32 @lambda_matrix_col_negate(i32**, i32, i32) #1

declare dso_local i32 @lambda_vector_negate(i32*, i32*, i32) #1

declare dso_local i32 @lambda_vector_first_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_vector_min_nz(i32*, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_exchange(i32**, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_row_exchange(i32**, i32, i32) #1

declare dso_local i32 @lambda_matrix_col_add(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_row_add(i32**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
