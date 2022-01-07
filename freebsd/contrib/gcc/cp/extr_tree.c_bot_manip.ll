; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_bot_manip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_bot_manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TARGET_EXPR = common dso_local global i64 0, align 8
@AGGR_INIT_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32*, i8*)* @bot_manip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bot_manip(i64* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @TYPE_P(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @TREE_CONSTANT(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %4, align 8
  br label %67

25:                                               ; preds = %18, %3
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @TARGET_EXPR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @TREE_OPERAND(i64 %31, i32 1)
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @AGGR_INIT_EXPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @TREE_TYPE(i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 1)
  %41 = call i32 @break_out_target_exprs(i64 %40)
  %42 = call i64 @build_cplus_new(i32 %38, i32 %41)
  store i64 %42, i64* %10, align 8
  br label %50

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 1)
  %46 = call i32 @break_out_target_exprs(i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @TREE_TYPE(i64 %47)
  %49 = call i64 @build_target_expr_with_type(i32 %46, i32 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @TREE_OPERAND(i64 %52, i32 0)
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @TREE_OPERAND(i64 %55, i32 0)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @splay_tree_insert(i32 %51, i32 %54, i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32*, i32** %6, align 8
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* @NULL_TREE, align 8
  store i64 %62, i64* %4, align 8
  br label %67

63:                                               ; preds = %25
  %64 = load i64*, i64** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @copy_tree_r(i64* %64, i32* %65, i32* null)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %63, %50, %22
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @build_cplus_new(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @break_out_target_exprs(i64) #1

declare dso_local i64 @build_target_expr_with_type(i32, i32) #1

declare dso_local i32 @splay_tree_insert(i32, i32, i32) #1

declare dso_local i64 @copy_tree_r(i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
