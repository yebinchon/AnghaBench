; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@NOP_EXPR = common dso_local global i32 0, align 4
@t_false = common dso_local global i32 0, align 4
@PARAM_SCEV_MAX_EXPR_SIZE = common dso_local global i32 0, align 4
@t_dont_know = common dso_local global i32 0, align 4
@t_true = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32, i32*, i32)* @follow_ssa_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_ssa_edge(%struct.loop* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  %15 = load i32, i32* @NOP_EXPR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @t_false, align 4
  store i32 %18, i32* %6, align 4
  br label %80

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @PARAM_SCEV_MAX_EXPR_SIZE, align 4
  %23 = call i32 @PARAM_VALUE(i32 %22)
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @t_dont_know, align 4
  store i32 %26, i32* %6, align 4
  br label %80

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.loop* @loop_containing_stmt(i32 %28)
  store %struct.loop* %29, %struct.loop** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  switch i32 %31, label %78 [
    i32 128, label %32
    i32 129, label %69
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @loop_phi_node_p(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load %struct.loop*, %struct.loop** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @follow_ssa_edge_in_condition_phi(%struct.loop* %37, i32 %38, i32 %39, i32* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %80

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @t_true, align 4
  store i32 %48, i32* %6, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load %struct.loop*, %struct.loop** %12, align 8
  %51 = load %struct.loop*, %struct.loop** %7, align 8
  %52 = icmp eq %struct.loop* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @t_false, align 4
  store i32 %54, i32* %6, align 4
  br label %80

55:                                               ; preds = %49
  %56 = load %struct.loop*, %struct.loop** %7, align 8
  %57 = load %struct.loop*, %struct.loop** %12, align 8
  %58 = call i32 @flow_loop_nested_p(%struct.loop* %56, %struct.loop* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.loop*, %struct.loop** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @follow_ssa_edge_inner_loop_phi(%struct.loop* %61, i32 %62, i32 %63, i32* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %80

67:                                               ; preds = %55
  %68 = load i32, i32* @t_false, align 4
  store i32 %68, i32* %6, align 4
  br label %80

69:                                               ; preds = %27
  %70 = load %struct.loop*, %struct.loop** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TREE_OPERAND(i32 %72, i32 1)
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @follow_ssa_edge_in_rhs(%struct.loop* %70, i32 %71, i32 %73, i32 %74, i32* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %80

78:                                               ; preds = %27
  %79 = load i32, i32* @t_false, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %69, %67, %60, %53, %47, %36, %25, %17
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local %struct.loop* @loop_containing_stmt(i32) #1

declare dso_local i32 @loop_phi_node_p(i32) #1

declare dso_local i32 @follow_ssa_edge_in_condition_phi(%struct.loop*, i32, i32, i32*, i32) #1

declare dso_local i32 @flow_loop_nested_p(%struct.loop*, %struct.loop*) #1

declare dso_local i32 @follow_ssa_edge_inner_loop_phi(%struct.loop*, i32, i32, i32*, i32) #1

declare dso_local i32 @follow_ssa_edge_in_rhs(%struct.loop*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
