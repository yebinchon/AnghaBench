; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_fold_non_dependent_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_fold_non_dependent_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@tf_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_non_dependent_expr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load i64, i64* @processing_template_decl, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @type_dependent_expression_p(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @value_dependent_expression_p(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @processing_template_decl, align 8
  store i64 %22, i64* %4, align 8
  store i64 0, i64* @processing_template_decl, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @NULL_TREE, align 8
  %25 = load i32, i32* @tf_error, align 4
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = call i64 @tsubst_copy_and_build(i64 %23, i64 %24, i32 %25, i64 %26, i32 0, i32 1)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* @processing_template_decl, align 8
  br label %29

29:                                               ; preds = %21, %17, %13, %10
  %30 = load i64, i64* %3, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %8
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @type_dependent_expression_p(i64) #1

declare dso_local i32 @value_dependent_expression_p(i64) #1

declare dso_local i64 @tsubst_copy_and_build(i64, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
