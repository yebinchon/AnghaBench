; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_simplify_using_initial_conditions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_simplify_using_initial_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@INTEGER_CST = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global i64 0, align 8
@MAX_DOMINATORS_TO_WALK = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64, i64*)* @simplify_using_initial_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_using_initial_conditions(%struct.loop* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @INTEGER_CST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %4, align 8
  br label %90

19:                                               ; preds = %3
  %20 = load %struct.loop*, %struct.loop** %5, align 8
  %21 = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %84, %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @ENTRY_BLOCK_PTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MAX_DOMINATORS_TO_WALK, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %88

33:                                               ; preds = %31
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @single_pred_p(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %84

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.TYPE_3__* @single_pred_edge(i64 %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %45 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %84

50:                                               ; preds = %38
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @last_stmt(i32 %53)
  %55 = call i64 @COND_EXPR_COND(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @invert_truthvalue(i64 %63)
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @tree_simplify_using_condition(i64 %66, i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %74 = load i32, i32* @boolean_type_node, align 4
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @fold_build2(i32 %73, i32 %74, i64 %76, i64 %77)
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %65
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %49, %37
  %85 = load i32, i32* @CDI_DOMINATORS, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @get_immediate_dominator(i32 %85, i64 %86)
  store i64 %87, i64* %9, align 8
  br label %23

88:                                               ; preds = %31
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %17
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @single_pred_p(i64) #1

declare dso_local %struct.TYPE_3__* @single_pred_edge(i64) #1

declare dso_local i64 @COND_EXPR_COND(i32) #1

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i64 @invert_truthvalue(i64) #1

declare dso_local i64 @tree_simplify_using_condition(i64, i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @get_immediate_dominator(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
