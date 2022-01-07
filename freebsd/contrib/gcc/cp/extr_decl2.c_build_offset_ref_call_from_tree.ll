; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_offset_ref_call_from_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_build_offset_ref_call_from_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@DOTSTAR_EXPR = common dso_local global i64 0, align 8
@MEMBER_REF = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@OFFSET_REF = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_offset_ref_call_from_tree(i64 %0, i64 %1) #0 {
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
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_OPERAND(i64 %13, i32 0)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @processing_template_decl, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @DOTSTAR_EXPR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @MEMBER_REF, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @type_dependent_expression_p(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @any_type_dependent_arguments_p(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %27
  %39 = load i32, i32* @CALL_EXPR, align 4
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* @NULL_TREE, align 4
  %43 = call i64 @build_min_nt(i32 %39, i64 %40, i64 %41, i32 %42)
  store i64 %43, i64* %3, align 8
  br label %100

44:                                               ; preds = %34
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @build_non_dependent_args(i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @DOTSTAR_EXPR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @ADDR_EXPR, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @build_unary_op(i32 %52, i64 %53, i32 0)
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @build_non_dependent_expr(i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @tree_cons(i32 %58, i64 %59, i64 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @build_non_dependent_expr(i64 %62)
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %55, %2
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @OFFSET_REF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* @ADDR_EXPR, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @build_unary_op(i32 %70, i64 %71, i32 0)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @TREE_OPERAND(i64 %73, i32 1)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @get_member_function_from_ptrfunc(i64* %10, i64 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @tree_cons(i32 %77, i64 %78, i64 %79)
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %69, %64
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @build_function_call(i64 %82, i64 %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* @processing_template_decl, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @error_mark_node, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @CALL_EXPR, align 4
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @NULL_TREE, align 4
  %97 = call i64 @build_min_non_dep(i32 %92, i64 %93, i64 %94, i64 %95, i32 %96)
  store i64 %97, i64* %3, align 8
  br label %100

98:                                               ; preds = %87, %81
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %98, %91, %38
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @any_type_dependent_arguments_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64, i64, i32) #1

declare dso_local i64 @build_non_dependent_args(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i64 @get_member_function_from_ptrfunc(i64*, i64) #1

declare dso_local i64 @build_function_call(i64, i64) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
