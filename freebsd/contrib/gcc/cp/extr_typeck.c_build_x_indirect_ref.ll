; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_indirect_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_indirect_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_indirect_ref(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @processing_template_decl, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @type_dependent_expression_p(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @INDIRECT_REF, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @build_min_nt(i32 %16, i64 %17)
  store i64 %18, i64* %3, align 8
  br label %49

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @build_non_dependent_expr(i64 %20)
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @INDIRECT_REF, align 4
  %24 = load i32, i32* @LOOKUP_NORMAL, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = call i64 @build_new_op(i32 %23, i32 %24, i64 %25, i32 %26, i32 %27, i32* null)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @build_indirect_ref(i64 %32, i8* %33)
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i64, i64* @processing_template_decl, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @error_mark_node, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @INDIRECT_REF, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @build_min_non_dep(i32 %43, i64 %44, i64 %45)
  store i64 %46, i64* %3, align 8
  br label %49

47:                                               ; preds = %38, %35
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %42, %15
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @build_min_nt(i32, i64) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @build_new_op(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @build_indirect_ref(i64, i8*) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
