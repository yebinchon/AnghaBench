; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_add_to_evolution_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_add_to_evolution_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dconst0 = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @add_to_evolution_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_evolution_1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  switch i32 %15, label %86 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CHREC_VARIABLE(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @chrec_type(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @CHREC_VARIABLE(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @dconst0, align 4
  %37 = call i32 @build_real(i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @build_int_cst(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %37, %34 ], [ %40, %38 ]
  store i32 %42, i32* %12, align 4
  br label %50

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @CHREC_VARIABLE(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @CHREC_LEFT(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @CHREC_RIGHT(i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %43, %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @chrec_convert(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @chrec_convert(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @chrec_fold_plus(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @build_polynomial_chrec(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %103

67:                                               ; preds = %16
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CHREC_LEFT(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @add_to_evolution_1(i32 %68, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @CHREC_RIGHT(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @chrec_type(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @chrec_convert(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @CHREC_VARIABLE(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @build_polynomial_chrec(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %103

86:                                               ; preds = %4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @chrec_dont_know, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @chrec_dont_know, align 4
  store i32 %91, i32* %5, align 4
  br label %103

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @chrec_type(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @chrec_convert(i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @build_polynomial_chrec(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %92, %90, %67, %50
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @chrec_type(i32) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_plus(i32, i32, i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
