; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_add_to_evolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_add_to_evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"(add_to_evolution \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  (loop_nb = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"  (chrec_before = \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c")\0A  (to_add = \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@MINUS_EXPR = common dso_local global i32 0, align 4
@dconstm1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"  (res = \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i64, i64)* @add_to_evolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_to_evolution(i32 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i64 @chrec_type(i64 %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %6, align 8
  br label %98

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @chrec_dont_know, align 8
  store i64 %28, i64* %6, align 8
  br label %98

29:                                               ; preds = %22
  %30 = load i64, i64* @dump_file, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32, i32* @dump_flags, align 4
  %34 = load i32, i32* @TDF_DETAILS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i64, i64* @dump_file, align 8
  %39 = call i32 (i64, i8*, ...) @fprintf(i64 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @dump_file, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i64, i8*, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @dump_file, align 8
  %44 = call i32 (i64, i8*, ...) @fprintf(i64 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i64, i64* @dump_file, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @print_generic_expr(i64 %45, i64 %46, i32 0)
  %48 = load i64, i64* @dump_file, align 8
  %49 = call i32 (i64, i8*, ...) @fprintf(i64 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i64, i64* @dump_file, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @print_generic_expr(i64 %50, i64 %51, i32 0)
  %53 = load i64, i64* @dump_file, align 8
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %37, %32, %29
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MINUS_EXPR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @SCALAR_FLOAT_TYPE_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* @dconstm1, align 4
  %68 = call i32 @build_real(i64 %66, i32 %67)
  br label %72

69:                                               ; preds = %59
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @build_int_cst_type(i64 %70, i32 -1)
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %68, %65 ], [ %71, %69 ]
  %74 = call i64 @chrec_fold_multiply(i64 %60, i64 %61, i32 %73)
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %72, %55
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @add_to_evolution_1(i32 %76, i64 %77, i64 %78, i64 %79)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* @dump_file, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* @dump_flags, align 4
  %85 = load i32, i32* @TDF_DETAILS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i64, i64* @dump_file, align 8
  %90 = call i32 (i64, i8*, ...) @fprintf(i64 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i64, i64* @dump_file, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @print_generic_expr(i64 %91, i64 %92, i32 0)
  %94 = load i64, i64* @dump_file, align 8
  %95 = call i32 (i64, i8*, ...) @fprintf(i64 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %88, %83, %75
  %97 = load i64, i64* %13, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %27, %20
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i64 @chrec_type(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i64 @chrec_fold_multiply(i64, i64, i32) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @build_real(i64, i32) #1

declare dso_local i32 @build_int_cst_type(i64, i32) #1

declare dso_local i64 @add_to_evolution_1(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
