; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_expr_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_expr_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i32* null, align 8
@extra_warnings = common dso_local global i64 0, align 8
@warn_unused_value = common dso_local global i64 0, align 8
@OPT_Wextra = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"statement with no effect\00", align 1
@input_location = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @gimplify_expr_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_expr_stmt(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32* @EXPR_STMT_EXPR(i32* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** @error_mark_node, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %3, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i64, i64* @extra_warnings, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @warn_unused_value, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @TREE_SIDE_EFFECTS(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @IS_EMPTY_STMT(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @TREE_TYPE(i32* %29)
  %31 = call i32 @VOID_TYPE_P(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @TREE_NO_WARNING(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @OPT_Wextra, align 4
  %39 = call i32 @warning(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33, %28, %24
  br label %49

41:                                               ; preds = %20
  %42 = load i64, i64* @warn_unused_value, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @input_location, align 4
  %47 = call i32 @warn_if_unused_value(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %17, %11
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** @NULL_TREE, align 8
  %53 = icmp eq i32* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32* (...) @alloc_stmt_list()
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32*, i32** %3, align 8
  %58 = load i32**, i32*** %2, align 8
  store i32* %57, i32** %58, align 8
  ret void
}

declare dso_local i32* @EXPR_STMT_EXPR(i32*) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32*) #1

declare dso_local i32 @IS_EMPTY_STMT(i32*) #1

declare dso_local i32 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32 @TREE_NO_WARNING(i32*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @warn_if_unused_value(i32*, i32) #1

declare dso_local i32* @alloc_stmt_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
