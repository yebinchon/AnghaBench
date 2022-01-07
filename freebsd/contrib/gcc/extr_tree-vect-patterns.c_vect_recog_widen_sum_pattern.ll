; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_vect_recog_widen_sum_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-patterns.c_vect_recog_widen_sum_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@vect_reduction_def = common dso_local global i64 0, align 8
@WIDEN_SUM_EXPR = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vect_recog_widen_sum_pattern: detected: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32**)* @vect_recog_widen_sum_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vect_recog_widen_sum_pattern(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @vinfo_for_stmt(i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @TREE_CODE(i32* %18)
  %20 = load i64, i64* @MODIFY_EXPR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %89

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @TREE_OPERAND(i32* %24, i32 1)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32* @TREE_TYPE(i32* %26)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @TREE_CODE(i32* %28)
  %30 = load i64, i64* @PLUS_EXPR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %89

33:                                               ; preds = %23
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @STMT_VINFO_DEF_TYPE(i32 %34)
  %36 = load i64, i64* @vect_reduction_def, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %89

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = call i32* @TREE_OPERAND(i32* %40, i32 0)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @TREE_OPERAND(i32* %42, i32 1)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @TREE_TYPE(i32* %44)
  %46 = call i64 @TYPE_MAIN_VARIANT(i32* %45)
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @TYPE_MAIN_VARIANT(i32* %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %39
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @TREE_TYPE(i32* %51)
  %53 = call i64 @TYPE_MAIN_VARIANT(i32* %52)
  %54 = load i32*, i32** %13, align 8
  %55 = call i64 @TYPE_MAIN_VARIANT(i32* %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %39
  store i32* null, i32** %4, align 8
  br label %89

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @widened_name_p(i32* %59, i32* %60, i32** %14, i32** %8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32* null, i32** %4, align 8
  br label %89

64:                                               ; preds = %58
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @TREE_OPERAND(i32* %65, i32 1)
  %67 = call i32* @TREE_OPERAND(i32* %66, i32 0)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32**, i32*** %6, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32**, i32*** %7, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @WIDEN_SUM_EXPR, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32* @build2(i32 %72, i32* %73, i32* %74, i32* %75)
  store i32* %76, i32** %15, align 8
  %77 = load i32, i32* @REPORT_DETAILS, align 4
  %78 = call i64 @vect_print_dump_info(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %64
  %81 = load i32, i32* @vect_dump, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @vect_dump, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* @TDF_SLIM, align 4
  %86 = call i32 @print_generic_expr(i32 %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %64
  %88 = load i32*, i32** %15, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %87, %63, %57, %38, %32, %22
  %90 = load i32*, i32** %4, align 8
  ret i32* %90
}

declare dso_local i32 @vinfo_for_stmt(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @STMT_VINFO_DEF_TYPE(i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32*) #1

declare dso_local i32 @widened_name_p(i32*, i32*, i32**, i32**) #1

declare dso_local i32* @build2(i32, i32*, i32*, i32*) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_expr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
