; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_object_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_object_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%Hfirst argument of %D must be a pointer, second integer constant\00", align 1
@const0_rtx = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"%Hlast argument of %D is not integer constant between 0 and 3\00", align 1
@constm1_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_builtin_object_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @get_callee_fndecl(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @TREE_OPERAND(i8* %11, i32 1)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @EXPR_LOCATION(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = load i32, i32* @INTEGER_TYPE, align 4
  %18 = load i32, i32* @VOID_TYPE, align 4
  %19 = call i32 @validate_arglist(i8* %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %22)
  %24 = call i32 (...) @expand_builtin_trap()
  %25 = load i32, i32* @const0_rtx, align 4
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @TREE_CHAIN(i8* %27)
  %29 = call i8* @TREE_VALUE(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @STRIP_NOPS(i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @TREE_CODE(i8* %32)
  %34 = load i64, i64* @INTEGER_CST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @tree_int_cst_sgn(i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @compare_tree_int(i8* %41, i32 3)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36, %26
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32* %8, i8* %45)
  %47 = call i32 (...) @expand_builtin_trap()
  %48 = load i32, i32* @const0_rtx, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @tree_low_cst(i8* %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @constm1_rtx, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @const0_rtx, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %44, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @get_callee_fndecl(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @EXPR_LOCATION(i8*) #1

declare dso_local i32 @validate_arglist(i8*, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32*, i8*) #1

declare dso_local i32 @expand_builtin_trap(...) #1

declare dso_local i8* @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i8*) #1

declare dso_local i32 @STRIP_NOPS(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @tree_int_cst_sgn(i8*) #1

declare dso_local i64 @compare_tree_int(i8*, i32) #1

declare dso_local i32 @tree_low_cst(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
