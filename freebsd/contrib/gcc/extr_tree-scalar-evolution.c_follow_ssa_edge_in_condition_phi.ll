; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_condition_phi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_condition_phi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@t_false = common dso_local global i64 0, align 8
@t_dont_know = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i32 0, align 4
@t_true = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i32, i32, i32*, i32)* @follow_ssa_edge_in_condition_phi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @follow_ssa_edge_in_condition_phi(%struct.loop* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.loop*, %struct.loop** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @follow_ssa_edge_in_condition_phi_branch(i32 0, %struct.loop* %18, i32 %19, i32 %20, i32* %14, i32 %21, i32 %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* @t_false, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @t_dont_know, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %5
  %32 = load i64, i64* %15, align 8
  store i64 %32, i64* %6, align 8
  br label %76

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %71, %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @PHI_NUM_ARGS(i32 %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @chrec_dont_know, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @t_true, align 8
  store i64 %47, i64* %6, align 8
  br label %76

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.loop*, %struct.loop** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @follow_ssa_edge_in_condition_phi_branch(i32 %49, %struct.loop* %50, i32 %51, i32 %52, i32* %14, i32 %53, i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @t_false, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @t_dont_know, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %48
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %6, align 8
  br label %76

65:                                               ; preds = %59
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @chrec_merge(i32 %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load i64, i64* @t_true, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %63, %46, %31
  %77 = load i64, i64* %6, align 8
  ret i64 %77
}

declare dso_local i64 @follow_ssa_edge_in_condition_phi_branch(i32, %struct.loop*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @chrec_merge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
