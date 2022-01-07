; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRCHR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_strstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strstr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @POINTER_TYPE, align 4
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  %25 = call i32 @TREE_VALUE(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @c_getstr(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %104

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @c_getstr(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i8* @strstr(i8* %37, i8* %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = call i32 @build_int_cst(i32 %44, i8 signext 0)
  store i32 %45, i32* %3, align 4
  br label %104

46:                                               ; preds = %36
  %47 = load i32, i32* @PLUS_EXPR, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @TREE_TYPE(i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i8
  %59 = call i32 @build_int_cst(i32 %52, i8 signext %58)
  %60 = call i32 @fold_build2(i32 %47, i32 %49, i32 %50, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @fold_convert(i32 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %31
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @fold_convert(i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %104

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %104

81:                                               ; preds = %74
  %82 = load i32*, i32** @implicit_built_in_decls, align 8
  %83 = load i64, i64* @BUILT_IN_STRCHR, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %104

89:                                               ; preds = %81
  %90 = load i32, i32* @NULL_TREE, align 4
  %91 = load i32, i32* @NULL_TREE, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @build_int_cst(i32 %91, i8 signext %94)
  %96 = call i32 @build_tree_list(i32 %90, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @tree_cons(i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @build_function_call_expr(i32 %101, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %89, %88, %80, %70, %46, %42, %30, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @build_int_cst(i32, i8 signext) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
