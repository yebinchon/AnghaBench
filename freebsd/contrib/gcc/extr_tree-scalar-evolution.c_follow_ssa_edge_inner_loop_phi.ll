; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_inner_loop_phi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_inner_loop_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_2__ = type { i32 }

@t_false = common dso_local global i64 0, align 8
@t_true = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64, i64, i64*, i32)* @follow_ssa_edge_inner_loop_phi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @follow_ssa_edge_inner_loop_phi(%struct.loop* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.loop*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.loop* @loop_containing_stmt(i64 %18)
  store %struct.loop* %19, %struct.loop** %12, align 8
  %20 = load %struct.loop*, %struct.loop** %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @PHI_RESULT(i64 %21)
  %23 = call i64 @analyze_scalar_evolution(%struct.loop* %20, i64 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @PHI_RESULT(i64 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %5
  %29 = load i64, i64* @t_false, align 8
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %62, %28
  %31 = load i32, i32* %15, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @PHI_NUM_ARGS(i64 %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @PHI_ARG_DEF(i64 %36, i32 %37)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call %struct.TYPE_2__* @PHI_ARG_EDGE(i64 %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load %struct.loop*, %struct.loop** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @flow_bb_inside_loop_p(%struct.loop* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %35
  %49 = load %struct.loop*, %struct.loop** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @follow_ssa_edge_in_rhs(%struct.loop* %49, i64 %50, i64 %51, i64 %52, i64* %53, i32 %54)
  store i64 %55, i64* %14, align 8
  br label %56

56:                                               ; preds = %48, %35
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @t_true, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %30

65:                                               ; preds = %60, %30
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @t_true, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* @chrec_dont_know, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i64, i64* %14, align 8
  store i64 %73, i64* %6, align 8
  br label %85

74:                                               ; preds = %5
  %75 = load %struct.loop*, %struct.loop** %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @compute_overall_effect_of_inner_loop(%struct.loop* %75, i64 %76)
  store i64 %77, i64* %13, align 8
  %78 = load %struct.loop*, %struct.loop** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @follow_ssa_edge_in_rhs(%struct.loop* %78, i64 %79, i64 %80, i64 %81, i64* %82, i32 %83)
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %74, %72
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local %struct.loop* @loop_containing_stmt(i64) #1

declare dso_local i64 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i32 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local %struct.TYPE_2__* @PHI_ARG_EDGE(i64, i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local i64 @follow_ssa_edge_in_rhs(%struct.loop*, i64, i64, i64, i64*, i32) #1

declare dso_local i64 @compute_overall_effect_of_inner_loop(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
