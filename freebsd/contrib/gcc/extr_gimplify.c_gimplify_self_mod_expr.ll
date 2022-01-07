; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_self_mod_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_self_mod_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POSTINCREMENT_EXPR = common dso_local global i32 0, align 4
@POSTDECREMENT_EXPR = common dso_local global i32 0, align 4
@PREINCREMENT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@is_gimple_lvalue = common dso_local global i32 0, align 4
@fb_lvalue = common dso_local global i32 0, align 4
@GS_ERROR = common dso_local global i32 0, align 4
@is_gimple_val = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@GS_ALL_DONE = common dso_local global i32 0, align 4
@GS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32**, i32)* @gimplify_self_mod_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_self_mod_expr(i32** %0, i32** %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %15, align 8
  %20 = load i32**, i32*** %8, align 8
  store i32** %20, i32*** %16, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @TREE_CODE(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @POSTDECREMENT_EXPR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %27, %4
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %4 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @POSTDECREMENT_EXPR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %17, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32** %15, i32*** %8, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %66, i32* %18, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %68, i32* %18, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32**, i32*** %6, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32* @TREE_OPERAND(i32* %71, i32 0)
  store i32* %72, i32** %12, align 8
  %73 = load i32**, i32*** %7, align 8
  %74 = load i32**, i32*** %8, align 8
  %75 = load i32, i32* @is_gimple_lvalue, align 4
  %76 = load i32, i32* @fb_lvalue, align 4
  %77 = call i32 @gimplify_expr(i32** %12, i32** %73, i32** %74, i32 %75, i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @GS_ERROR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %19, align 4
  store i32 %82, i32* %5, align 4
  br label %132

83:                                               ; preds = %69
  %84 = load i32*, i32** %12, align 8
  store i32* %84, i32** %11, align 8
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = call i32* @TREE_OPERAND(i32* %86, i32 1)
  store i32* %87, i32** %13, align 8
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load i32**, i32*** %7, align 8
  %92 = load i32**, i32*** %8, align 8
  %93 = load i32, i32* @is_gimple_val, align 4
  %94 = load i32, i32* @fb_rvalue, align 4
  %95 = call i32 @gimplify_expr(i32** %11, i32** %91, i32** %92, i32 %93, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @GS_ERROR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %5, align 4
  br label %132

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %18, align 4
  %104 = load i32**, i32*** %6, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @TREE_TYPE(i32* %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32* @build2(i32 %103, i32 %106, i32* %107, i32* %108)
  store i32* %109, i32** %14, align 8
  %110 = load i32, i32* @MODIFY_EXPR, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @TREE_TYPE(i32* %111)
  %113 = load i32*, i32** %12, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i32* @build2(i32 %110, i32 %112, i32* %113, i32* %114)
  store i32* %115, i32** %14, align 8
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %102
  %119 = load i32*, i32** %14, align 8
  %120 = load i32**, i32*** %16, align 8
  %121 = call i32 @gimplify_and_add(i32* %119, i32** %120)
  %122 = load i32*, i32** %15, align 8
  %123 = load i32**, i32*** %16, align 8
  %124 = call i32 @append_to_statement_list(i32* %122, i32** %123)
  %125 = load i32*, i32** %11, align 8
  %126 = load i32**, i32*** %6, align 8
  store i32* %125, i32** %126, align 8
  %127 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %127, i32* %5, align 4
  br label %132

128:                                              ; preds = %102
  %129 = load i32*, i32** %14, align 8
  %130 = load i32**, i32*** %6, align 8
  store i32* %129, i32** %130, align 8
  %131 = load i32, i32* @GS_OK, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %118, %99, %81
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @gimplify_expr(i32**, i32**, i32**, i32, i32) #1

declare dso_local i32* @build2(i32, i32, i32*, i32*) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
