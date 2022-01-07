; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_can_use_analyze_subscript_affine_affine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_can_use_analyze_subscript_affine_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"can_use_subscript_aff_aff_for_symbolic \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @can_use_analyze_subscript_affine_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_use_analyze_subscript_affine_affine(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CHREC_RIGHT(i32 %12)
  %14 = call i64 @chrec_contains_symbols(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CHREC_RIGHT(i32 %18)
  %20 = call i64 @chrec_contains_symbols(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %79

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @chrec_type(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CHREC_LEFT(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CHREC_LEFT(i32 %32)
  %34 = load i32, i32* @NULL_TREE, align 4
  %35 = call i32 @chrec_convert(i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @chrec_fold_minus(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @evolution_function_is_constant_p(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %79

44:                                               ; preds = %23
  %45 = load i64, i64* @dump_file, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @dump_flags, align 4
  %49 = load i32, i32* @TDF_DETAILS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @dump_file, align 8
  %54 = call i32 @fprintf(i64 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47, %44
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CHREC_VARIABLE(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CHREC_RIGHT(i32 %61)
  %63 = call i32 @build_polynomial_chrec(i32 %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CHREC_RIGHT(i32 %67)
  %69 = load i32, i32* @NULL_TREE, align 4
  %70 = call i32 @chrec_convert(i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CHREC_VARIABLE(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @build_int_cst(i32 %74, i32 0)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @build_polynomial_chrec(i32 %73, i32 %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %55, %43, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @chrec_contains_symbols(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @chrec_type(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_minus(i32, i32, i32) #1

declare dso_local i32 @evolution_function_is_constant_p(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
