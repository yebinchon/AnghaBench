; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_one_sizepos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_one_sizepos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@is_gimple_val = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gimplify_one_sizepos(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @TREE_CONSTANT(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @VAR_DECL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @CONTAINS_PLACEHOLDER_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %17, %13, %2
  br label %83

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @unshare_expr(i64 %30)
  %32 = load i64*, i64** %3, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i32, i32* @is_gimple_val, align 4
  %36 = load i32, i32* @fb_rvalue, align 4
  %37 = call i32 @gimplify_expr(i64* %33, i64* %34, i32* null, i32 %35, i32 %36)
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %27
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @INTEGER_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TYPE_IS_SIZETYPE(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @create_tmp_var(i64 %54, i32* null)
  %56 = load i64*, i64** %3, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @NOP_EXPR, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @build1(i32 %57, i64 %58, i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @MODIFY_EXPR, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i64*, i64** %3, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @build2(i32 %61, i64 %62, i64 %64, i64 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @EXPR_HAS_LOCATION(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @EXPR_LOCUS(i64 %72)
  %74 = call i32 @SET_EXPR_LOCUS(i64 %71, i32 %73)
  br label %79

75:                                               ; preds = %53
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* @input_location, align 4
  %78 = call i32 @SET_EXPR_LOCATION(i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %4, align 8
  %82 = call i32 @gimplify_and_add(i64 %80, i64* %81)
  br label %83

83:                                               ; preds = %26, %79, %49, %44, %27
  ret void
}

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CONTAINS_PLACEHOLDER_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @unshare_expr(i64) #1

declare dso_local i32 @gimplify_expr(i64*, i64*, i32*, i32, i32) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i64 @create_tmp_var(i64, i32*) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i32 @SET_EXPR_LOCUS(i64, i32) #1

declare dso_local i32 @EXPR_LOCUS(i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

declare dso_local i32 @gimplify_and_add(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
