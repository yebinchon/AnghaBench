; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_multiply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_fold_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chrec_fold_multiply(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @automatically_generated_chrec_p(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @automatically_generated_chrec_p(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @chrec_fold_automatically_generated_operands(i8* %16, i8* %17)
  store i8* %18, i8** %4, align 8
  br label %106

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @TREE_CODE(i8* %20)
  switch i32 %21, label %57 [
    i32 128, label %22
  ]

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @TREE_CODE(i8* %23)
  switch i32 %24, label %30 [
    i32 128, label %25
  ]

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @chrec_fold_multiply_poly_poly(i8* %26, i8* %27, i8* %28)
  store i8* %29, i8** %4, align 8
  br label %106

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @integer_onep(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %4, align 8
  br label %106

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @integer_zerop(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @build_int_cst(i8* %41, i32 0)
  store i8* %42, i8** %4, align 8
  br label %106

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @CHREC_VARIABLE(i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @CHREC_LEFT(i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @chrec_fold_multiply(i8* %46, i8* %48, i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @CHREC_RIGHT(i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @chrec_fold_multiply(i8* %51, i8* %53, i8* %54)
  %56 = call i8* @build_polynomial_chrec(i32 %45, i8* %50, i8* %55)
  store i8* %56, i8** %4, align 8
  br label %106

57:                                               ; preds = %19
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @integer_onep(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %4, align 8
  br label %106

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @integer_zerop(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @build_int_cst(i8* %68, i32 0)
  store i8* %69, i8** %4, align 8
  br label %106

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @TREE_CODE(i8* %71)
  switch i32 %72, label %87 [
    i32 128, label %73
  ]

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @CHREC_VARIABLE(i8* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @CHREC_LEFT(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @chrec_fold_multiply(i8* %76, i8* %78, i8* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @CHREC_RIGHT(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @chrec_fold_multiply(i8* %81, i8* %83, i8* %84)
  %86 = call i8* @build_polynomial_chrec(i32 %75, i8* %80, i8* %85)
  store i8* %86, i8** %4, align 8
  br label %106

87:                                               ; preds = %70
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @integer_onep(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %4, align 8
  br label %106

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @integer_zerop(i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @build_int_cst(i8* %98, i32 0)
  store i8* %99, i8** %4, align 8
  br label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @MULT_EXPR, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i8* @fold_build2(i32 %101, i8* %102, i8* %103, i8* %104)
  store i8* %105, i8** %4, align 8
  br label %106

106:                                              ; preds = %100, %97, %91, %73, %67, %61, %43, %40, %34, %25, %15
  %107 = load i8*, i8** %4, align 8
  ret i8* %107
}

declare dso_local i64 @automatically_generated_chrec_p(i8*) #1

declare dso_local i8* @chrec_fold_automatically_generated_operands(i8*, i8*) #1

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i8* @chrec_fold_multiply_poly_poly(i8*, i8*, i8*) #1

declare dso_local i32 @integer_onep(i8*) #1

declare dso_local i32 @integer_zerop(i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i8* @build_polynomial_chrec(i32, i8*, i8*) #1

declare dso_local i32 @CHREC_VARIABLE(i8*) #1

declare dso_local i8* @CHREC_LEFT(i8*) #1

declare dso_local i8* @CHREC_RIGHT(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
