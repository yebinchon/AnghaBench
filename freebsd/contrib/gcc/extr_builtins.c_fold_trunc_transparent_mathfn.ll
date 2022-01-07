; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_trunc_transparent_mathfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_trunc_transparent_mathfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@flag_errno_math = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_trunc_transparent_mathfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_trunc_transparent_mathfn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DECL_FUNCTION_CODE(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @REAL_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @builtin_mathfn_code(i32 %24)
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %20
  %30 = load i32, i32* @flag_errno_math, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @integer_valued_real_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %32, %29
  %39 = load i64, i64* @optimize, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @strip_float_extensions(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_TYPE(i32 %44)
  %46 = call i32 @TREE_TYPE(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @TREE_TYPE(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @TYPE_PRECISION(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @TYPE_PRECISION(i32 %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @mathfn_built_in(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i32, i32* @NULL_TREE, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @fold_convert(i32 %61, i32 %62)
  %64 = call i32 @build_tree_list(i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @build_function_call_expr(i32 %66, i32 %67)
  %69 = call i32 @fold_convert(i32 %65, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %54, %41
  br label %71

71:                                               ; preds = %70, %38
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %59, %36, %27, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @DECL_FUNCTION_CODE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @builtin_mathfn_code(i32) #1

declare dso_local i64 @integer_valued_real_p(i32) #1

declare dso_local i32 @strip_float_extensions(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @mathfn_built_in(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
