; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_project_to_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-mat.c_lambda_matrix_project_to_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lambda_matrix_project_to_null(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @lambda_matrix_new(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @lambda_matrix_transpose(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @lambda_matrix_new(i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lambda_matrix_mult(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @lambda_matrix_new(i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @lambda_matrix_inverse(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @lambda_matrix_mult(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @lambda_matrix_mult(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @lambda_matrix_negate(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @lambda_matrix_new(i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @lambda_matrix_id(i32 %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @lambda_matrix_add_mc(i32 %66, i32 %67, i32 %68, i32 1, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @lambda_matrix_get_column(i32 %73, i32 %74, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @lambda_matrix_new(i32, i32) #1

declare dso_local i32 @lambda_matrix_transpose(i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_mult(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_inverse(i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_negate(i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_id(i32, i32) #1

declare dso_local i32 @lambda_matrix_add_mc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lambda_matrix_get_column(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
