; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_build_stack_save_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_build_stack_save_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STACK_SAVE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"saved_stack\00", align 1
@MODIFY_EXPR = common dso_local global i32 0, align 4
@BUILT_IN_STACK_RESTORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @build_stack_save_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_stack_save_restore(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** @implicit_built_in_decls, align 8
  %8 = load i64, i64* @BUILT_IN_STACK_SAVE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NULL_TREE, align 4
  %12 = call i32 @build_function_call_expr(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @ptr_type_node, align 4
  %14 = call i32 @create_tmp_var(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @MODIFY_EXPR, align 4
  %16 = load i32, i32* @ptr_type_node, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @build2(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** @implicit_built_in_decls, align 8
  %22 = load i64, i64* @BUILT_IN_STACK_RESTORE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NULL_TREE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = call i32 @tree_cons(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @build_function_call_expr(i32 %24, i32 %28)
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
