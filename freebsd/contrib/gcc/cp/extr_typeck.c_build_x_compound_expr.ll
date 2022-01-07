; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_compound_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_compound_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_compound_expr(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @processing_template_decl, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @type_dependent_expression_p(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @type_dependent_expression_p(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @COMPOUND_EXPR, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @build_min_nt(i32 %22, i64 %23, i64 %24)
  store i64 %25, i64* %3, align 8
  br label %59

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @build_non_dependent_expr(i64 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @build_non_dependent_expr(i64 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @COMPOUND_EXPR, align 4
  %33 = load i32, i32* @LOOKUP_NORMAL, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @NULL_TREE, align 4
  %37 = call i64 @build_new_op(i32 %32, i32 %33, i64 %34, i64 %35, i32 %36, i32* null)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @build_compound_expr(i64 %41, i64 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i64, i64* @processing_template_decl, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @error_mark_node, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @COMPOUND_EXPR, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @build_min_non_dep(i32 %52, i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %3, align 8
  br label %59

57:                                               ; preds = %47, %44
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %57, %51, %21
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64, i64) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @build_new_op(i32, i32, i64, i64, i32, i32*) #1

declare dso_local i64 @build_compound_expr(i64, i64) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
