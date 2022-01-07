; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_x_va_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_x_va_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@VA_ARG_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"cannot receive objects of non-POD type %q#T through %<...%>; call will abort at runtime\00", align 1
@null_node = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_va_arg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @processing_template_decl, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @VA_ARG_EXPR, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @build_min(i32 %10, i64 %11, i64 %12)
  store i64 %13, i64* %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @NULL_TREE, align 4
  %17 = call i64 @complete_type_or_else(i64 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %14
  %25 = load i64, i64* @error_mark_node, align 8
  store i64 %25, i64* %3, align 8
  br label %52

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @pod_type_p(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @non_reference(i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @warning(i32 0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @build_pointer_type(i64 %35)
  %37 = load i32, i32* @null_node, align 4
  %38 = call i64 @convert(i32 %36, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* @COMPOUND_EXPR, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @TREE_TYPE(i64 %40)
  %42 = call i32 (...) @call_builtin_trap()
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @build2(i32 %39, i32 %41, i32 %42, i64 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @build_indirect_ref(i64 %45, i32* null)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %3, align 8
  br label %52

48:                                               ; preds = %26
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @build_va_arg(i64 %49, i64 %50)
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %48, %30, %24, %9
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @build_min(i32, i64, i64) #1

declare dso_local i64 @complete_type_or_else(i64, i32) #1

declare dso_local i32 @pod_type_p(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @convert(i32, i32) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @build2(i32, i32, i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @call_builtin_trap(...) #1

declare dso_local i64 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @build_va_arg(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
