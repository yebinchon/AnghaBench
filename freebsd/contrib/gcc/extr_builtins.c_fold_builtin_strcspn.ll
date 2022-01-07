; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcspn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_strcspn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strcspn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_CHAIN(i32 %21)
  %23 = call i32 @TREE_VALUE(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @c_getstr(i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @c_getstr(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %18
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcspn(i8* %34, i8* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @size_int(i64 %37)
  store i32 %38, i32* %2, align 4
  br label %76

39:                                               ; preds = %30, %18
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @integer_type_node, align 4
  %49 = load i32, i32* @integer_zero_node, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @omit_one_operand(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %42, %39
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* @NULL_TREE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @build_tree_list(i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** @implicit_built_in_decls, align 8
  %65 = load i64, i64* @BUILT_IN_STRLEN, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %76

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @build_function_call_expr(i32 %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %55, %52
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %71, %70, %47, %33, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @size_int(i64) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
