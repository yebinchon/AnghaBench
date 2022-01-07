; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_var_or_parm_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_var_or_parm_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@GS_ERROR = common dso_local global i32 0, align 4
@gimplify_omp_ctxp = common dso_local global i64 0, align 8
@GS_ALL_DONE = common dso_local global i32 0, align 4
@GS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gimplify_var_or_parm_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_var_or_parm_decl(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @VAR_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DECL_SEEN_IN_BIND_EXPR_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_STATIC(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DECL_EXTERNAL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @decl_function_context(i32 %24)
  %26 = load i64, i64* @current_function_decl, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i64, i64* @errorcount, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @sorrycount, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i32, i32* @GS_ERROR, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %23, %19, %15, %11, %1
  %40 = load i64, i64* @gimplify_omp_ctxp, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* @gimplify_omp_ctxp, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @omp_notice_variable(i64 %43, i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @DECL_HAS_VALUE_EXPR_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DECL_VALUE_EXPR(i32 %54)
  %56 = call i32 @unshare_expr(i32 %55)
  %57 = load i32*, i32** %3, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @GS_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %53, %47, %34
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_SEEN_IN_BIND_EXPR_P(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @decl_function_context(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @omp_notice_variable(i64, i32, i32) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @DECL_VALUE_EXPR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
