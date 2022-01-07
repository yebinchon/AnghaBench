; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fold_builtin_strncpy(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @POINTER_TYPE, align 4
  %15 = load i32, i32* @INTEGER_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i64 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %90

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @TREE_VALUE(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_CHAIN(i64 %23)
  %25 = call i64 @TREE_VALUE(i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_CHAIN(i64 %26)
  %28 = call i64 @TREE_CHAIN(i64 %27)
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @integer_zerop(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_TYPE(i64 %34)
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @omit_one_operand(i64 %36, i64 %37, i64 %38)
  store i64 %39, i64* %4, align 8
  br label %90

40:                                               ; preds = %20
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @INTEGER_CST, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %40
  store i64 0, i64* %4, align 8
  br label %90

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @c_strlen(i64 %53, i32 1)
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @INTEGER_CST, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %55
  store i64 0, i64* %4, align 8
  br label %90

64:                                               ; preds = %58
  %65 = load i32, i32* @PLUS_EXPR, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @ssize_int(i32 1)
  %68 = call i64 @size_binop(i32 %65, i64 %66, i32 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @tree_int_cst_lt(i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i64 0, i64* %4, align 8
  br label %90

74:                                               ; preds = %64
  %75 = load i64*, i64** @implicit_built_in_decls, align 8
  %76 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i64 0, i64* %4, align 8
  br label %90

82:                                               ; preds = %74
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @TREE_TYPE(i64 %83)
  %85 = call i64 @TREE_TYPE(i64 %84)
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @build_function_call_expr(i64 %86, i64 %87)
  %89 = call i64 @fold_convert(i64 %85, i32 %88)
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %82, %81, %73, %63, %48, %33, %19
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @omit_one_operand(i64, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @size_binop(i32, i64, i32) #1

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i32) #1

declare dso_local i32 @build_function_call_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
