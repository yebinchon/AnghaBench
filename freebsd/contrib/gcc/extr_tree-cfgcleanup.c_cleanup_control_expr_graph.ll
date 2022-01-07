; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_cleanup_control_expr_graph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_cleanup_control_expr_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }

@INTEGER_CST = common dso_local global i32 0, align 4
@WARN_STRICT_OVERFLOW_CONDITIONAL = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i64 0, align 8
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @cleanup_control_expr_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_control_expr_graph(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @bsi_stmt(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @single_succ_p(%struct.TYPE_12__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %103, label %18

18:                                               ; preds = %2
  %19 = call i32 (...) @fold_defer_overflow_warnings()
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @TREE_CODE(i32 %20)
  switch i32 %21, label %37 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @COND_EXPR_COND(i32 %23)
  %25 = call i32 @fold(i32 %24)
  store i32 %25, i32* %9, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SWITCH_COND(i32 %27)
  %29 = call i32 @fold(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  %32 = load i32, i32* @INTEGER_CST, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  store i32 0, i32* %3, align 4
  br label %114

36:                                               ; preds = %26
  br label %39

37:                                               ; preds = %18
  %38 = call i32 (...) @gcc_unreachable()
  br label %39

39:                                               ; preds = %37, %36, %22
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.TYPE_11__* @find_taken_edge(%struct.TYPE_12__* %40, i32 %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  store i32 0, i32* %3, align 4
  br label %114

47:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ei_start(i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %86, %47
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.TYPE_11__* @ei_safe_edge(i32 %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %10, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = icmp ne %struct.TYPE_11__* %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @WARN_STRICT_OVERFLOW_CONDITIONAL, align 4
  %66 = call i32 @fold_undefer_overflow_warnings(i32 1, i32 %64, i32 %65)
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = call i32 @remove_edge(%struct.TYPE_11__* %82)
  store i32 1, i32* %7, align 4
  br label %86

84:                                               ; preds = %56
  %85 = call i32 @ei_next(i32* %11)
  br label %86

86:                                               ; preds = %84, %67
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  br label %92

92:                                               ; preds = %90, %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @REG_BR_PROB_BASE, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* @REG_BR_PROB_BASE, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  br label %106

103:                                              ; preds = %2
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = call %struct.TYPE_11__* @single_succ_edge(%struct.TYPE_12__* %104)
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %6, align 8
  br label %106

106:                                              ; preds = %103, %102
  %107 = call i32 @bsi_remove(i32* %5, i32 1)
  %108 = load i32, i32* @EDGE_FALLTHRU, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @CDI_DOMINATORS, align 4
  %112 = call i32 @free_dominance_info(i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %106, %45, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @single_succ_p(%struct.TYPE_12__*) #1

declare dso_local i32 @fold_defer_overflow_warnings(...) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @SWITCH_COND(i32) #1

declare dso_local i32 @fold_undefer_and_ignore_overflow_warnings(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local %struct.TYPE_11__* @find_taken_edge(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ei_start(i32) #1

declare dso_local %struct.TYPE_11__* @ei_safe_edge(i32) #1

declare dso_local i32 @fold_undefer_overflow_warnings(i32, i32, i32) #1

declare dso_local i32 @remove_edge(%struct.TYPE_11__*) #1

declare dso_local i32 @ei_next(i32*) #1

declare dso_local %struct.TYPE_11__* @single_succ_edge(%struct.TYPE_12__*) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local i32 @free_dominance_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
