; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_end_compound_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_end_compound_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_stmt_list = common dso_local global i64 0, align 8
@BIND_EXPR = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @c_end_compound_stmt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = call i64 (...) @c_dialect_objc()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (...) @objc_clear_super_receiver()
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i32* (...) @pop_scope()
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @pop_stmt_list(i32* %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @c_build_bind_expr(i32* %19, i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i64, i64* @cur_stmt_list, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i64, i64* @cur_stmt_list, align 8
  %26 = call i64 @STATEMENT_LIST_STMT_EXPR(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @TREE_CODE(i32* %29)
  %31 = load i64, i64* @BIND_EXPR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @BIND_EXPR, align 8
  %35 = load i32, i32* @void_type_node, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* @build3(i64 %34, i32 %35, i32* null, i32* %36, i32* null)
  store i32* %37, i32** %3, align 8
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %28, %24, %16
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i32 @objc_clear_super_receiver(...) #1

declare dso_local i32* @pop_scope(...) #1

declare dso_local i32* @pop_stmt_list(i32*) #1

declare dso_local i32* @c_build_bind_expr(i32*, i32*) #1

declare dso_local i64 @STATEMENT_LIST_STMT_EXPR(i64) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @build3(i64, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
