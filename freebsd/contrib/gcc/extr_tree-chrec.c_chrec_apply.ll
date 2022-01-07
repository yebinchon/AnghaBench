; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chrec_dont_know = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(chrec_apply \0A\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"  (varying_loop = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c")\0A  (chrec = \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c")\0A  (x = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c")\0A  (res = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chrec_apply(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @chrec_type(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @chrec_dont_know, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @automatically_generated_chrec_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @automatically_generated_chrec_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @chrec_contains_symbols_defined_in_loop(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %16, %3
  %26 = load i32, i32* @chrec_dont_know, align 4
  store i32 %26, i32* %4, align 4
  br label %132

27:                                               ; preds = %20
  %28 = load i64, i64* @dump_file, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* @dump_flags, align 4
  %32 = load i32, i32* @TDF_DETAILS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @dump_file, align 8
  %37 = call i32 (i64, i8*, ...) @fprintf(i64 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30, %27
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @INTEGER_CST, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @SCALAR_FLOAT_TYPE_P(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @build_real_from_int_cst(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %43, %38
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @evolution_function_is_affine_p(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = call i32 @chrec_convert(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @CHREC_RIGHT(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @chrec_fold_multiply(i32 %60, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @CHREC_LEFT(i32 %65)
  %67 = call i32 @integer_zerop(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @CHREC_LEFT(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @chrec_fold_plus(i32 %70, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %55
  br label %101

76:                                               ; preds = %51
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @TREE_CODE(i32 %77)
  %79 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %9, align 4
  br label %100

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @TREE_CODE(i32 %84)
  %86 = load i64, i64* @INTEGER_CST, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @tree_int_cst_sgn(i32 %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @chrec_evaluate(i32 %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %9, align 4
  br label %99

97:                                               ; preds = %88, %83
  %98 = load i32, i32* @chrec_dont_know, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i64, i64* @dump_file, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %101
  %105 = load i32, i32* @dump_flags, align 4
  %106 = load i32, i32* @TDF_DETAILS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i64, i64* @dump_file, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i64, i8*, ...) @fprintf(i64 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* @dump_file, align 8
  %114 = call i32 (i64, i8*, ...) @fprintf(i64 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i64, i64* @dump_file, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @print_generic_expr(i64 %115, i32 %116, i32 0)
  %118 = load i64, i64* @dump_file, align 8
  %119 = call i32 (i64, i8*, ...) @fprintf(i64 %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i64, i64* @dump_file, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @print_generic_expr(i64 %120, i32 %121, i32 0)
  %123 = load i64, i64* @dump_file, align 8
  %124 = call i32 (i64, i8*, ...) @fprintf(i64 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i64, i64* @dump_file, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @print_generic_expr(i64 %125, i32 %126, i32 0)
  %128 = load i64, i64* @dump_file, align 8
  %129 = call i32 (i64, i8*, ...) @fprintf(i64 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %109, %104, %101
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %25
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @chrec_type(i32) #1

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i64 @chrec_contains_symbols_defined_in_loop(i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i32 @build_real_from_int_cst(i32, i32) #1

declare dso_local i64 @evolution_function_is_affine_p(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_multiply(i32, i32, i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @chrec_fold_plus(i32, i32, i32) #1

declare dso_local i32 @tree_int_cst_sgn(i32) #1

declare dso_local i32 @chrec_evaluate(i32, i32, i32, i32) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
