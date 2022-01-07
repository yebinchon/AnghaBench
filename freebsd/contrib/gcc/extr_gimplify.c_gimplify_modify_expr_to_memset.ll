; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_modify_expr_to_memset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_modify_expr_to_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i32* null, align 8
@implicit_built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_MEMSET = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@GS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @gimplify_modify_expr_to_memset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_modify_expr_to_memset(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = call i32* @TREE_OPERAND(i32* %12, i32 0)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @tree_cons(i32* null, i32* %14, i32* null)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** @integer_zero_node, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @tree_cons(i32* null, i32* %16, i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @build_fold_addr_expr(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @tree_cons(i32* null, i32* %21, i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32**, i32*** @implicit_built_in_decls, align 8
  %25 = load i64, i64* @BUILT_IN_MEMSET, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @build_function_call_expr(i32* %28, i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load i32, i32* @NOP_EXPR, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @TREE_TYPE(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @build1(i32 %34, i32 %36, i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* @INDIRECT_REF, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @TREE_TYPE(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @build1(i32 %39, i32 %41, i32* %42)
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %33, %3
  %45 = load i32*, i32** %8, align 8
  %46 = load i32**, i32*** %4, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* @GS_OK, align 4
  ret i32 %47
}

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

declare dso_local i32* @build_fold_addr_expr(i32*) #1

declare dso_local i32* @build_function_call_expr(i32*, i32*) #1

declare dso_local i32* @build1(i32, i32, i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
