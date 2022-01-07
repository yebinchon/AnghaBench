; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_arg_to_ellipsis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_arg_to_ellipsis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@skip_evaluation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"cannot pass objects of non-POD type %q#T through %<...%>; call will abort at runtime\00", align 1
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_arg_to_ellipsis(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @decay_conversion(i64 %3)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @TREE_TYPE(i64 %5)
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @REAL_TYPE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @TREE_TYPE(i64 %11)
  %13 = call i64 @TYPE_PRECISION(i32 %12)
  %14 = load i32, i32* @double_type_node, align 4
  %15 = call i64 @TYPE_PRECISION(i32 %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @double_type_node, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @convert_to_real(i32 %18, i64 %19)
  store i64 %20, i64* %2, align 8
  br label %30

21:                                               ; preds = %10, %1
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @TREE_TYPE(i64 %22)
  %24 = call i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @perform_integral_promotions(i64 %27)
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i64, i64* %2, align 8
  %32 = call i64 @require_complete_type(i64 %31)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @error_mark_node, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @TREE_TYPE(i64 %37)
  %39 = call i32 @pod_type_p(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @skip_evaluation, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @TREE_TYPE(i64 %45)
  %47 = call i32 @warning(i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = call i64 (...) @call_builtin_trap()
  store i64 %49, i64* %2, align 8
  %50 = load i32, i32* @COMPOUND_EXPR, align 4
  %51 = load i32, i32* @integer_type_node, align 4
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* @integer_zero_node, align 4
  %54 = call i64 @build2(i32 %50, i32 %51, i64 %52, i32 %53)
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %48, %36, %30
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i64 @convert_to_real(i32, i64) #1

declare dso_local i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32) #1

declare dso_local i64 @perform_integral_promotions(i64) #1

declare dso_local i64 @require_complete_type(i64) #1

declare dso_local i32 @pod_type_p(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i64 @call_builtin_trap(...) #1

declare dso_local i64 @build2(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
