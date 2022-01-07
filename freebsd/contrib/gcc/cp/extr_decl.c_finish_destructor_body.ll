; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_destructor_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_destructor_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@LABEL_EXPR = common dso_local global i32 0, align 4
@cdtor_label = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@current_class_type = common dso_local global i32 0, align 4
@DELETE_EXPR = common dso_local global i32 0, align 4
@current_class_ptr = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@current_in_charge_parm = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@RETURN_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish_destructor_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_destructor_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @LABEL_EXPR, align 4
  %6 = load i32, i32* @cdtor_label, align 4
  %7 = call i32 @build_stmt(i32 %5, i32 %6)
  %8 = call i32 @add_stmt(i32 %7)
  %9 = load i32, i32* @current_function_decl, align 4
  %10 = call i64 @DECL_VIRTUAL_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %0
  %13 = load i32, i32* @current_class_type, align 4
  %14 = call i32 @cxx_sizeof(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @DELETE_EXPR, align 4
  %16 = load i32, i32* @current_class_ptr, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = call i32 @build_op_delete_call(i32 %15, i32 %16, i32 %17, i32 0, i32 %18, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = call i32 (...) @begin_if_stmt()
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @BIT_AND_EXPR, align 4
  %23 = load i32, i32* @integer_type_node, align 4
  %24 = load i32, i32* @current_in_charge_parm, align 4
  %25 = load i32, i32* @integer_one_node, align 4
  %26 = call i32 @build2(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @finish_if_stmt_cond(i32 %26, i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @finish_expr_stmt(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @finish_then_clause(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @finish_if_stmt(i32 %33)
  br label %35

35:                                               ; preds = %12, %0
  %36 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %37 = call i64 (...) %36()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32, i32* @current_function_decl, align 4
  %41 = call i32 @DECL_ARGUMENTS(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @MODIFY_EXPR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = load i32, i32* @current_function_decl, align 4
  %46 = call i32 @DECL_RESULT(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @build2(i32 %42, i32 %44, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @RETURN_EXPR, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @build_stmt(i32 %49, i32 %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @add_stmt(i32 %52)
  br label %54

54:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @build_stmt(i32, i32) #1

declare dso_local i64 @DECL_VIRTUAL_P(i32) #1

declare dso_local i32 @cxx_sizeof(i32) #1

declare dso_local i32 @build_op_delete_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @begin_if_stmt(...) #1

declare dso_local i32 @finish_if_stmt_cond(i32, i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @finish_expr_stmt(i32) #1

declare dso_local i32 @finish_then_clause(i32) #1

declare dso_local i32 @finish_if_stmt(i32) #1

declare dso_local i32 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_RESULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
