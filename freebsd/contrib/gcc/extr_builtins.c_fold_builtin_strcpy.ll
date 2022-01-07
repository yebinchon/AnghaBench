; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i64 0, align 8
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_builtin_strcpy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TREE_CHAIN(i32 %21)
  %23 = call i32 @TREE_VALUE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @operand_equal_p(i32 %24, i32 %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fold_convert(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %83

34:                                               ; preds = %18
  %35 = load i64, i64* @optimize_size, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %83

38:                                               ; preds = %34
  %39 = load i32*, i32** @implicit_built_in_decls, align 8
  %40 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %83

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @c_strlen(i32 %50, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @TREE_SIDE_EFFECTS(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %83

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* @PLUS_EXPR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ssize_int(i32 1)
  %64 = call i32 @size_binop(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @NULL_TREE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @build_tree_list(i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @NULL_TREE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @tree_cons(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @NULL_TREE, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @tree_cons(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @TREE_TYPE(i32 %76)
  %78 = call i32 @TREE_TYPE(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @build_function_call_expr(i32 %79, i32 %80)
  %82 = call i32 @fold_convert(i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %60, %58, %45, %37, %28, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @c_strlen(i32, i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
