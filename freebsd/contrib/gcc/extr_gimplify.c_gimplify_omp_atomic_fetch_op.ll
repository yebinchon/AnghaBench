; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_fetch_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_omp_atomic_fetch_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUILT_IN_FETCH_AND_ADD_N = common dso_local global i32 0, align 4
@sync_add_optab = common dso_local global i32* null, align 8
@BUILT_IN_FETCH_AND_SUB_N = common dso_local global i32 0, align 4
@BUILT_IN_FETCH_AND_AND_N = common dso_local global i32 0, align 4
@sync_and_optab = common dso_local global i32* null, align 8
@BUILT_IN_FETCH_AND_OR_N = common dso_local global i32 0, align 4
@sync_ior_optab = common dso_local global i32* null, align 8
@BUILT_IN_FETCH_AND_XOR_N = common dso_local global i32 0, align 4
@sync_xor_optab = common dso_local global i32* null, align 8
@GS_UNHANDLED = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32** null, align 8
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@GS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32)* @gimplify_omp_atomic_fetch_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_omp_atomic_fetch_op(i32** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @TREE_CODE(i32* %15)
  switch i32 %16, label %32 [
    i32 128, label %17
    i32 129, label %20
    i32 132, label %23
    i32 131, label %26
    i32 130, label %29
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @BUILT_IN_FETCH_AND_ADD_N, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** @sync_add_optab, align 8
  store i32* %19, i32** %14, align 8
  br label %34

20:                                               ; preds = %4
  %21 = load i32, i32* @BUILT_IN_FETCH_AND_SUB_N, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** @sync_add_optab, align 8
  store i32* %22, i32** %14, align 8
  br label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @BUILT_IN_FETCH_AND_AND_N, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @sync_and_optab, align 8
  store i32* %25, i32** %14, align 8
  br label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @BUILT_IN_FETCH_AND_OR_N, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** @sync_ior_optab, align 8
  store i32* %28, i32** %14, align 8
  br label %34

29:                                               ; preds = %4
  %30 = load i32, i32* @BUILT_IN_FETCH_AND_XOR_N, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** @sync_xor_optab, align 8
  store i32* %31, i32** %14, align 8
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @GS_UNHANDLED, align 4
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %29, %26, %23, %20, %17
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @TREE_OPERAND(i32* %35, i32 0)
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @goa_lhs_expr_p(i32* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @TREE_OPERAND(i32* %41, i32 1)
  store i32* %42, i32** %8, align 8
  br label %60

43:                                               ; preds = %34
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @TREE_CODE(i32* %44)
  %46 = call i64 @commutative_tree_code(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @TREE_OPERAND(i32* %49, i32 1)
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @goa_lhs_expr_p(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @TREE_OPERAND(i32* %55, i32 0)
  store i32* %56, i32** %8, align 8
  br label %59

57:                                               ; preds = %48, %43
  %58 = load i32, i32* @GS_UNHANDLED, align 4
  store i32 %58, i32* %5, align 4
  br label %94

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32**, i32*** @built_in_decls, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %62, %63
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %61, i64 %66
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @TREE_TYPE(i32* %69)
  %71 = call i32* @TREE_TYPE(i32* %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @TYPE_MODE(i32* %73)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CODE_FOR_nothing, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @GS_UNHANDLED, align 4
  store i32 %80, i32* %5, align 4
  br label %94

81:                                               ; preds = %60
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32* @fold_convert(i32* %82, i32* %83)
  %85 = call i32* @tree_cons(i32* null, i32* %84, i32* null)
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32* @tree_cons(i32* null, i32* %86, i32* %87)
  store i32* %88, i32** %12, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32* @build_function_call_expr(i32* %89, i32* %90)
  %92 = load i32**, i32*** %6, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* @GS_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %81, %79, %57, %32
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i64 @goa_lhs_expr_p(i32*, i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i64 @commutative_tree_code(i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @TYPE_MODE(i32*) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

declare dso_local i32* @fold_convert(i32*, i32*) #1

declare dso_local i32* @build_function_call_expr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
