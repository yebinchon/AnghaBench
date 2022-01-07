; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncpy_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncpy_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRNCPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_builtin_strncpy_chk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @INTEGER_TYPE, align 4
  %15 = load i32, i32* @INTEGER_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  %25 = call i32 @TREE_VALUE(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_CHAIN(i32 %26)
  %28 = call i32 @TREE_CHAIN(i32 %27)
  %29 = call i32 @TREE_VALUE(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_CHAIN(i32 %30)
  %32 = call i32 @TREE_CHAIN(i32 %31)
  %33 = call i32 @TREE_CHAIN(i32 %32)
  %34 = call i32 @TREE_VALUE(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @host_integerp(i32 %35, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %89

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @integer_all_onesp(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @host_integerp(i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NULL_TREE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @host_integerp(i32 %52, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %47
  store i32 0, i32* %3, align 4
  br label %89

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @tree_int_cst_lt(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %89

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* @NULL_TREE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @build_tree_list(i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @tree_cons(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @NULL_TREE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @tree_cons(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32*, i32** @built_in_decls, align 8
  %79 = load i64, i64* @BUILT_IN_STRNCPY, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %89

85:                                               ; preds = %66
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @build_function_call_expr(i32 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %84, %64, %55, %38, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @integer_all_onesp(i32) #1

declare dso_local i64 @tree_int_cst_lt(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
