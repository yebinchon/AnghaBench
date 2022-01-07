; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_convert_aggressive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_convert_aggressive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @chrec_convert_aggressive(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @automatically_generated_chrec_p(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %3, align 8
  br label %69

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TYPE_PRECISION(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TYPE_PRECISION(i64 %26)
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %3, align 8
  br label %69

31:                                               ; preds = %21
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @avoid_arithmetics_in_type_p(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @NULL_TREE, align 8
  store i64 %36, i64* %3, align 8
  br label %69

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @CHREC_LEFT(i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @CHREC_RIGHT(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @chrec_convert_aggressive(i64 %42, i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @NULL_TREE, align 8
  %51 = call i64 @chrec_convert(i64 %48, i64 %49, i64 %50)
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %47, %37
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @chrec_convert_aggressive(i64 %53, i64 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @NULL_TREE, align 8
  %62 = call i64 @chrec_convert(i64 %59, i64 %60, i64 %61)
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @CHREC_VARIABLE(i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i64 @build_polynomial_chrec(i32 %65, i64 %66, i64 %67)
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %63, %35, %29, %19
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i64 @automatically_generated_chrec_p(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @avoid_arithmetics_in_type_p(i64) #1

declare dso_local i64 @CHREC_LEFT(i64) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

declare dso_local i64 @chrec_convert(i64, i64, i64) #1

declare dso_local i64 @build_polynomial_chrec(i32, i64, i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
