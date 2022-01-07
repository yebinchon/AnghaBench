; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_condition_phi_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_condition_phi_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@chrec_dont_know = common dso_local global i32 0, align 4
@t_false = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.loop*, i32, i32, i32*, i32, i32)* @follow_ssa_edge_in_condition_phi_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_ssa_edge_in_condition_phi_branch(i32 %0, %struct.loop* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.loop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.loop* %1, %struct.loop** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @PHI_ARG_DEF(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* @chrec_dont_know, align 4
  %21 = load i32*, i32** %13, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @backedge_phi_arg_p(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @t_false, align 4
  store i32 %27, i32* %8, align 4
  br label %45

28:                                               ; preds = %7
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @SSA_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.loop*, %struct.loop** %10, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @SSA_NAME_DEF_STMT(i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @follow_ssa_edge(%struct.loop* %36, i32 %38, i32 %39, i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @t_false, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %33, %26
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @PHI_ARG_DEF(i32, i32) #1

declare dso_local i64 @backedge_phi_arg_p(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @follow_ssa_edge(%struct.loop*, i32, i32, i32*, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
