; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@DOTSTAR_EXPR = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@warn_parentheses = common dso_local global i64 0, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_binary_op(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %11, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* @processing_template_decl, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %6
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @type_dependent_expression_p(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @type_dependent_expression_p(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @build_min_nt(i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %7, align 8
  br label %98

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @build_non_dependent_expr(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @build_non_dependent_expr(i64 %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %34, %6
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DOTSTAR_EXPR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @build_m_component_ref(i64 %44, i64 %45)
  store i64 %46, i64* %16, align 8
  br label %55

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @LOOKUP_NORMAL, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @NULL_TREE, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @build_new_op(i32 %48, i32 %49, i64 %50, i64 %51, i32 %52, i32* %53)
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %47, %43
  %56 = load i64, i64* @warn_parentheses, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i64, i64* @processing_template_decl, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @error_operand_p(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @error_operand_p(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @LSHIFT_EXPR, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @TREE_TYPE(i64 %74)
  %76 = call i32 @IS_AGGR_TYPE(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @warn_about_parentheses(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73, %65, %61, %58, %55
  %84 = load i64, i64* @processing_template_decl, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* @error_mark_node, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i64 @build_min_non_dep(i32 %91, i64 %92, i64 %93, i64 %94)
  store i64 %95, i64* %7, align 8
  br label %98

96:                                               ; preds = %86, %83
  %97 = load i64, i64* %16, align 8
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %96, %90, %29
  %99 = load i64, i64* %7, align 8
  ret i64 %99
}

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64, i64) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @build_m_component_ref(i64, i64) #1

declare dso_local i64 @build_new_op(i32, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @error_operand_p(i64) #1

declare dso_local i32 @IS_AGGR_TYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @warn_about_parentheses(i32, i32, i32) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
