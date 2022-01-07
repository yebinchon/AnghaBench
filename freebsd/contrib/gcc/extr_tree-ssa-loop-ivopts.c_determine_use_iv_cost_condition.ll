; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32** }
%struct.iv_cand = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@NULL_TREE = common dso_local global i32* null, align 8
@INFTY = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@fd_ivopts_data = common dso_local global %struct.ivopts_data* null, align 8
@find_depends = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @determine_use_iv_cost_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_use_iv_cost_condition(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_use*, align 8
  %7 = alloca %struct.iv_cand*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_use* %1, %struct.iv_use** %6, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %7, align 8
  %13 = load i32*, i32** @NULL_TREE, align 8
  store i32* %13, i32** %8, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %15 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %20 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %21 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %22 = load i32, i32* @INFTY, align 4
  %23 = load i32*, i32** @NULL_TREE, align 8
  %24 = call i32 @set_use_iv_cost(%struct.ivopts_data* %19, %struct.iv_use* %20, %struct.iv_cand* %21, i32 %22, i32* null, i32* %23)
  store i32 0, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %27 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %28 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %29 = call i64 @may_eliminate_iv(%struct.ivopts_data* %26, %struct.iv_use* %27, %struct.iv_cand* %28, i32** %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @force_var_cost(%struct.ivopts_data* %32, i32* %33, i32** %11)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %36 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %37 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @set_use_iv_cost(%struct.ivopts_data* %35, %struct.iv_use* %36, %struct.iv_cand* %37, i32 %38, i32* %39, i32* %40)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @INFTY, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %103

46:                                               ; preds = %25
  %47 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %48 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %49 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %50 = call i32 @get_computation_cost(%struct.ivopts_data* %47, %struct.iv_use* %48, %struct.iv_cand* %49, i32 0, i32** %11)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %52 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @TREE_CODE(i32* %55)
  %57 = load i64, i64* @SSA_NAME, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %46
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @TREE_OPERAND(i32* %60, i32 0)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @TREE_CODE(i32* %62)
  %64 = load i64, i64* @SSA_NAME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call %struct.TYPE_2__* @get_iv(%struct.ivopts_data* %67, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @zero_p(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32*, i32** %10, align 8
  %76 = call i32* @TREE_OPERAND(i32* %75, i32 1)
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %74, %66, %59
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @TREE_CODE(i32* %78)
  %80 = load i64, i64* @SSA_NAME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call %struct.TYPE_2__* @get_iv(%struct.ivopts_data* %83, i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  %88 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  store %struct.ivopts_data* %88, %struct.ivopts_data** @fd_ivopts_data, align 8
  %89 = load i32, i32* @find_depends, align 4
  %90 = call i32 @walk_tree(i32** %9, i32 %89, i32** %11, i32* null)
  br label %91

91:                                               ; preds = %82, %77
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %94 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %95 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @set_use_iv_cost(%struct.ivopts_data* %93, %struct.iv_use* %94, %struct.iv_cand* %95, i32 %96, i32* %97, i32* null)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @INFTY, align 4
  %101 = icmp ne i32 %99, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %31, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @set_use_iv_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32*, i32*) #1

declare dso_local i64 @may_eliminate_iv(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32**) #1

declare dso_local i32 @force_var_cost(%struct.ivopts_data*, i32*, i32**) #1

declare dso_local i32 @get_computation_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32**) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @zero_p(i32) #1

declare dso_local %struct.TYPE_2__* @get_iv(%struct.ivopts_data*, i32*) #1

declare dso_local i32 @walk_tree(i32**, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
