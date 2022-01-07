; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_init_ctor_eval_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_init_ctor_eval_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32)* @gimplify_init_ctor_eval_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_init_ctor_eval_range(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = call i32 (...) @create_artificial_label()
  store i32 %20, i32* %15, align 4
  %21 = call i32 (...) @create_artificial_label()
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = call i32 @create_tmp_var(i32 %24, i32* null)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* @MODIFY_EXPR, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @build2(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @append_to_statement_list(i32 %30, i32* %31)
  %33 = load i32, i32* @LABEL_EXPR, align 4
  %34 = load i32, i32* @void_type_node, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @build1(i32 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @append_to_statement_list(i32 %36, i32* %37)
  %39 = load i32, i32* @ARRAY_REF, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @unshare_expr(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @NULL_TREE, align 4
  %45 = load i32, i32* @NULL_TREE, align 4
  %46 = call i32 @build4(i32 %39, i32 %40, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @CONSTRUCTOR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %7
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @CONSTRUCTOR_ELTS(i32 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @gimplify_init_ctor_eval(i32 %52, i32 %54, i32* %55, i32 %56)
  br label %67

58:                                               ; preds = %7
  %59 = load i32, i32* @MODIFY_EXPR, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @TREE_TYPE(i32 %60)
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @build2(i32 %59, i32 %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @append_to_statement_list(i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %58, %51
  %68 = load i32, i32* @COND_EXPR, align 4
  %69 = load i32, i32* @void_type_node, align 4
  %70 = load i32, i32* @EQ_EXPR, align 4
  %71 = load i32, i32* @boolean_type_node, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @build2(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @GOTO_EXPR, align 4
  %76 = load i32, i32* @void_type_node, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @build1(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @NULL_TREE, align 4
  %80 = call i32 @build3(i32 %68, i32 %69, i32 %74, i32 %78, i32 %79)
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @gimplify_and_add(i32 %80, i32* %81)
  %83 = load i32, i32* @MODIFY_EXPR, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @PLUS_EXPR, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @integer_one_node, align 4
  %91 = call i32 @fold_convert(i32 %89, i32 %90)
  %92 = call i32 @build2(i32 %86, i32 %87, i32 %88, i32 %91)
  %93 = call i32 @build2(i32 %83, i32 %84, i32 %85, i32 %92)
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @append_to_statement_list(i32 %93, i32* %94)
  %96 = load i32, i32* @GOTO_EXPR, align 4
  %97 = load i32, i32* @void_type_node, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @build1(i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @append_to_statement_list(i32 %99, i32* %100)
  %102 = load i32, i32* @LABEL_EXPR, align 4
  %103 = load i32, i32* @void_type_node, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @build1(i32 %102, i32 %103, i32 %104)
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @append_to_statement_list(i32 %105, i32* %106)
  ret void
}

declare dso_local i32 @create_artificial_label(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @create_tmp_var(i32, i32*) #1

declare dso_local i32 @append_to_statement_list(i32, i32*) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @gimplify_init_ctor_eval(i32, i32, i32*, i32) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i32) #1

declare dso_local i32 @gimplify_and_add(i32, i32*) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
