; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strcat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_STRLEN = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @expand_builtin_strcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_strcat(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @POINTER_TYPE, align 4
  %19 = load i32, i32* @POINTER_TYPE, align 4
  %20 = load i32, i32* @VOID_TYPE, align 4
  %21 = call i32 @validate_arglist(i64 %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %109

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_VALUE(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CHAIN(i64 %27)
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i8* @c_getstr(i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @EXPAND_NORMAL, align 4
  %44 = call i32 @expand_expr(i64 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %109

45:                                               ; preds = %34, %24
  %46 = load i32, i32* @optimize_size, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %108, label %48

48:                                               ; preds = %45
  %49 = load i64*, i64** @implicit_built_in_decls, align 8
  %50 = load i64, i64* @BUILT_IN_STRLEN, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @builtin_save_expr(i64 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @build_tree_list(i32 %59, i64 %60)
  store i64 %61, i64* %7, align 8
  br label %65

62:                                               ; preds = %48
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @TREE_CHAIN(i64 %63)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @builtin_save_expr(i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = call i32 (...) @start_sequence()
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @build_tree_list(i32 %70, i64 %71)
  %73 = call i64 @build_function_call_expr(i64 %69, i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @TREE_TYPE(i64 %74)
  %76 = load i64, i64* %14, align 8
  %77 = call i64 @fold_convert(i32 %75, i64 %76)
  store i64 %77, i64* %14, align 8
  %78 = load i32, i32* @PLUS_EXPR, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @TREE_TYPE(i64 %79)
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @fold_build2(i32 %78, i32 %80, i64 %81, i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i64 @builtin_save_expr(i64 %84)
  store i64 %85, i64* %14, align 8
  %86 = load i32, i32* @NULL_TREE, align 4
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @tree_cons(i32 %86, i64 %87, i64 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @expand_builtin_strcpy(i64 %90, i64 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %65
  %97 = call i32 (...) @end_sequence()
  store i32 0, i32* %5, align 4
  br label %109

98:                                               ; preds = %65
  %99 = call i32 (...) @get_insns()
  store i32 %99, i32* %16, align 4
  %100 = call i32 (...) @end_sequence()
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @emit_insn(i32 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @EXPAND_NORMAL, align 4
  %107 = call i32 @expand_expr(i64 %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %5, align 4
  br label %109

108:                                              ; preds = %45
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %98, %96, %39, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i64 @builtin_save_expr(i64) #1

declare dso_local i64 @build_tree_list(i32, i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i32 @expand_builtin_strcpy(i64, i64, i32, i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @emit_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
