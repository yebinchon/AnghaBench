; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_register_dtor_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_register_dtor_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@void_zero_node = common dso_local global i32 0, align 4
@dk_no_check = common dso_local global i32 0, align 4
@BCS_FN_BODY = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@flag_use_cxa_atexit = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@null_pointer_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_dtor_fn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  %10 = call i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @void_zero_node, align 4
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @build_cleanup(i32 %15)
  %17 = call i32 (...) @start_cleanup_fn()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @dk_no_check, align 4
  %19 = call i32 @push_deferring_access_checks(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @build_cleanup(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = call i32 (...) @pop_deferring_access_checks()
  %23 = load i32, i32* @BCS_FN_BODY, align 4
  %24 = call i32 @begin_compound_stmt(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @finish_expr_stmt(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @finish_compound_stmt(i32 %27)
  %29 = call i32 (...) @end_cleanup_fn()
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @cxx_mark_addressable(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mark_used(i32 %32)
  %34 = load i32, i32* @ADDR_EXPR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @build_unary_op(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @flag_use_cxa_atexit, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %14
  %40 = load i32, i32* @NULL_TREE, align 4
  %41 = load i32, i32* @ADDR_EXPR, align 4
  %42 = call i32 (...) @get_dso_handle_node()
  %43 = call i32 @build_unary_op(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @NULL_TREE, align 4
  %45 = call i32 @tree_cons(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %47 = call i64 (...) %46()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i32, i32* @NULL_TREE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tree_cons(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @NULL_TREE, align 4
  %55 = load i32, i32* @null_pointer_node, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @tree_cons(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %67

58:                                               ; preds = %39
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = load i32, i32* @null_pointer_node, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @tree_cons(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @NULL_TREE, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @tree_cons(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %58, %49
  br label %73

68:                                               ; preds = %14
  %69 = load i32, i32* @NULL_TREE, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @NULL_TREE, align 4
  %72 = call i32 @tree_cons(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %67
  %74 = call i32 (...) @get_atexit_node()
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @build_function_call(i32 %74, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_cleanup(i32) #1

declare dso_local i32 @start_cleanup_fn(...) #1

declare dso_local i32 @push_deferring_access_checks(i32) #1

declare dso_local i32 @pop_deferring_access_checks(...) #1

declare dso_local i32 @begin_compound_stmt(i32) #1

declare dso_local i32 @finish_expr_stmt(i32) #1

declare dso_local i32 @finish_compound_stmt(i32) #1

declare dso_local i32 @end_cleanup_fn(...) #1

declare dso_local i32 @cxx_mark_addressable(i32) #1

declare dso_local i32 @mark_used(i32) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @get_dso_handle_node(...) #1

declare dso_local i32 @build_function_call(i32, i32) #1

declare dso_local i32 @get_atexit_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
