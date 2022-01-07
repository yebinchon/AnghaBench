; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strrchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strrchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRCHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_strrchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strrchr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @POINTER_TYPE, align 4
  %15 = load i32, i32* @INTEGER_TYPE, align 4
  %16 = load i32, i32* @VOID_TYPE, align 4
  %17 = call i32 @validate_arglist(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_VALUE(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  %25 = call i32 @TREE_VALUE(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @INTEGER_CST, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %86

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @c_getstr(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @target_char_cast(i32 %37, i8* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %86

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %10, align 1
  %44 = call i8* @strrchr(i8* %42, i8 signext %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i32 @build_int_cst(i32 %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %41
  %52 = load i32, i32* @PLUS_EXPR, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @build_int_cst(i32 %57, i32 %63)
  %65 = call i32 @fold_build2(i32 %52, i32 %54, i32 %55, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @fold_convert(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %31
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @integer_zerop(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %86

74:                                               ; preds = %69
  %75 = load i32*, i32** @implicit_built_in_decls, align 8
  %76 = load i64, i64* @BUILT_IN_STRCHR, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @build_function_call_expr(i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %81, %73, %51, %47, %40, %30, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @target_char_cast(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
