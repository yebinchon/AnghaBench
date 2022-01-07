; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_right_hermite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_right_hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lambda_matrix_right_hermite(i64** %0, i32 %1, i32 %2, i64** %3, i64** %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64**, align 8
  %10 = alloca i64**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64** %3, i64*** %9, align 8
  store i64** %4, i64*** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64**, i64*** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @lambda_matrix_copy(i64** %18, i64** %19, i32 %20, i32 %21)
  %23 = load i64**, i64*** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lambda_matrix_id(i64** %23, i32 %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %131, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %134

30:                                               ; preds = %26
  %31 = load i64**, i64*** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @lambda_vector_first_nz(i64* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %130

41:                                               ; preds = %30
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %126, %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %129

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i64**, i64*** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %125

62:                                               ; preds = %51
  %63 = load i64**, i64*** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %63, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %16, align 4
  %74 = load i64**, i64*** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = mul nsw i32 %84, %85
  %87 = icmp slt i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 -1, i32 1
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @abs(i32 %90) #3
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @abs(i32 %92) #3
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sdiv i32 %95, %96
  %98 = mul nsw i32 %94, %97
  store i32 %98, i32* %15, align 4
  %99 = load i64**, i64*** %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @lambda_matrix_row_add(i64** %99, i32 %100, i32 %101, i32 %103, i32 %105)
  %107 = load i64**, i64*** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @lambda_matrix_row_exchange(i64** %107, i32 %108, i32 %110)
  %112 = load i64**, i64*** %10, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 0, %117
  %119 = call i32 @lambda_matrix_row_add(i64** %112, i32 %113, i32 %114, i32 %116, i32 %118)
  %120 = load i64**, i64*** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @lambda_matrix_row_exchange(i64** %120, i32 %121, i32 %123)
  br label %51

125:                                              ; preds = %51
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %11, align 4
  br label %46

129:                                              ; preds = %46
  br label %130

130:                                              ; preds = %129, %30
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %26

134:                                              ; preds = %26
  ret void
}

declare dso_local i32 @lambda_matrix_copy(i64**, i64**, i32, i32) #1

declare dso_local i32 @lambda_matrix_id(i64**, i32) #1

declare dso_local i32 @lambda_vector_first_nz(i64*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @lambda_matrix_row_add(i64**, i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_row_exchange(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
