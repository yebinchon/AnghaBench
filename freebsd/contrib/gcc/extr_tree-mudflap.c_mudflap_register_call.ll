; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mudflap_register_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mudflap_register_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@mf_register_fndecl = common dso_local global i32 0, align 4
@enqueued_call_stmt_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mudflap_register_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mudflap_register_call(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @NULL_TREE, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NULL_TREE, align 4
  %13 = call i32 @tree_cons(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = call i32 @build_int_cst(i32 %14, i32 4)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @NULL_TREE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @tree_cons(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @size_type_node, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @convert(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @tree_cons(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @ADDR_EXPR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @build_pointer_type(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @build1(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ptr_type_node, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @convert(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @NULL_TREE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @tree_cons(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @mf_register_fndecl, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @build_function_call_expr(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @append_to_statement_list(i32 %43, i32* @enqueued_call_stmt_chain)
  ret void
}

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @append_to_statement_list(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
