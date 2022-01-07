; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRCAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_strncat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strncat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @POINTER_TYPE, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @INTEGER_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_CHAIN(i32 %21)
  %23 = call i32 @TREE_VALUE(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_CHAIN(i32 %24)
  %26 = call i32 @TREE_CHAIN(i32 %25)
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @c_getstr(i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @integer_zerop(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %18
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @omit_two_operands(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %81

48:                                               ; preds = %36, %33
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @INTEGER_CST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i64 @compare_tree_int(i32 %57, i32 %59)
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load i32, i32* @NULL_TREE, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @NULL_TREE, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @build_tree_list(i32 %65, i32 %66)
  %68 = call i32 @tree_cons(i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** @implicit_built_in_decls, align 8
  %70 = load i64, i64* @BUILT_IN_STRCAT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %81

76:                                               ; preds = %62
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @build_function_call_expr(i32 %77, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %56, %53, %48
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %76, %75, %41, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @omit_two_operands(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @compare_tree_int(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
