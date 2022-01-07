; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_infer_value_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_infer_value_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@flag_delete_null_pointer_checks = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @infer_value_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infer_value_range(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @NULL_TREE, align 4
  %14 = load i32*, i32** %9, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ERROR_MARK, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @tree_could_throw_p(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %61

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @stmt_ends_bb_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_2__* @bb_for_stmt(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @EDGE_COUNT(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %61

38:                                               ; preds = %30, %26
  %39 = load i64, i64* @flag_delete_null_pointer_checks, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = call i64 @POINTER_TYPE_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @count_uses_and_derefs(i32 %47, i32 %48, i32* %11, i32* %12, i32* %10)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = call i32 @build_int_cst(i32 %54, i32 0)
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @NE_EXPR, align 4
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  store i32 1, i32* %5, align 4
  br label %61

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %41, %38
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52, %37, %25, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32) #1

declare dso_local i64 @tree_could_throw_p(i32) #1

declare dso_local i64 @stmt_ends_bb_p(i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_2__* @bb_for_stmt(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @count_uses_and_derefs(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
