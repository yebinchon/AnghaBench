; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_shortcut_cond_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_shortcut_cond_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32* null, align 8
@TRUTH_ANDIF_EXPR = common dso_local global i64 0, align 8
@TRUTH_ORIF_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32**)* @shortcut_cond_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @shortcut_cond_r(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** @NULL_TREE, align 8
  store i32* %10, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @TREE_CODE(i32* %11)
  %13 = load i64, i64* @TRUTH_ANDIF_EXPR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32** %7, i32*** %6, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @TREE_OPERAND(i32* %20, i32 0)
  %22 = load i32**, i32*** %6, align 8
  %23 = call i32* @shortcut_cond_r(i32* %21, i32** null, i32** %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @append_to_statement_list(i32* %24, i32** %9)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @TREE_OPERAND(i32* %26, i32 1)
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = call i32* @shortcut_cond_r(i32* %27, i32** %28, i32** %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @append_to_statement_list(i32* %31, i32** %9)
  br label %88

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @TREE_CODE(i32* %34)
  %36 = load i64, i64* @TRUTH_ORIF_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load i32**, i32*** %5, align 8
  %40 = icmp eq i32** %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32** %7, i32*** %5, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @TREE_OPERAND(i32* %43, i32 0)
  %45 = load i32**, i32*** %5, align 8
  %46 = call i32* @shortcut_cond_r(i32* %44, i32** %45, i32** null)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @append_to_statement_list(i32* %47, i32** %9)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @TREE_OPERAND(i32* %49, i32 1)
  %51 = load i32**, i32*** %5, align 8
  %52 = load i32**, i32*** %6, align 8
  %53 = call i32* @shortcut_cond_r(i32* %50, i32** %51, i32** %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @append_to_statement_list(i32* %54, i32** %9)
  br label %87

56:                                               ; preds = %33
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @TREE_CODE(i32* %57)
  %59 = load i64, i64* @COND_EXPR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i64, i64* @COND_EXPR, align 8
  %63 = load i32, i32* @void_type_node, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32* @TREE_OPERAND(i32* %64, i32 0)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @TREE_OPERAND(i32* %66, i32 1)
  %68 = load i32**, i32*** %5, align 8
  %69 = load i32**, i32*** %6, align 8
  %70 = call i32* @shortcut_cond_r(i32* %67, i32** %68, i32** %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @TREE_OPERAND(i32* %71, i32 2)
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32**, i32*** %6, align 8
  %75 = call i32* @shortcut_cond_r(i32* %72, i32** %73, i32** %74)
  %76 = call i32* @build3(i64 %62, i32 %63, i32* %65, i32* %70, i32* %75)
  store i32* %76, i32** %9, align 8
  br label %86

77:                                               ; preds = %56
  %78 = load i64, i64* @COND_EXPR, align 8
  %79 = load i32, i32* @void_type_node, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32**, i32*** %5, align 8
  %82 = call i32* @build_and_jump(i32** %81)
  %83 = load i32**, i32*** %6, align 8
  %84 = call i32* @build_and_jump(i32** %83)
  %85 = call i32* @build3(i64 %78, i32 %79, i32* %80, i32* %82, i32* %84)
  store i32* %85, i32** %9, align 8
  br label %86

86:                                               ; preds = %77, %61
  br label %87

87:                                               ; preds = %86, %42
  br label %88

88:                                               ; preds = %87, %19
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* @LABEL_EXPR, align 4
  %93 = load i32, i32* @void_type_node, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i32* @build1(i32 %92, i32 %93, i32* %94)
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @append_to_statement_list(i32* %96, i32** %9)
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i32*, i32** %9, align 8
  ret i32* %99
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32* @build3(i64, i32, i32*, i32*, i32*) #1

declare dso_local i32* @build_and_jump(i32**) #1

declare dso_local i32* @build1(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
