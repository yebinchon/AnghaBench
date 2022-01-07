; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_conditional_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_conditional_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_conditional_expr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @processing_template_decl, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @type_dependent_expression_p(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @type_dependent_expression_p(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @type_dependent_expression_p(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %24, %17
  %33 = load i32, i32* @COND_EXPR, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @build_min_nt(i32 %33, i64 %34, i64 %35, i64 %36)
  store i64 %37, i64* %4, align 8
  br label %69

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @build_non_dependent_expr(i64 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @build_non_dependent_expr(i64 %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @build_non_dependent_expr(i64 %47)
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %46, %3
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @build_conditional_expr(i64 %50, i64 %51, i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* @processing_template_decl, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @error_mark_node, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* @COND_EXPR, align 4
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @build_min_non_dep(i32 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  store i64 %66, i64* %4, align 8
  br label %69

67:                                               ; preds = %56, %49
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %67, %60, %32
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64, i64, i64) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @build_conditional_expr(i64, i64, i64) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
