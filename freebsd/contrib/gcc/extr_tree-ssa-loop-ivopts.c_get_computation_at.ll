; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_computation_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_computation_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.iv_use = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iv_cand = type { i32 }
%struct.affine_tree_combination = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, %struct.iv_use*, %struct.iv_cand*, i32)* @get_computation_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_computation_at(%struct.loop* %0, %struct.iv_use* %1, %struct.iv_cand* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.iv_use*, align 8
  %8 = alloca %struct.iv_cand*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.affine_tree_combination, align 4
  %11 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %6, align 8
  store %struct.iv_use* %1, %struct.iv_use** %7, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %13 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.loop*, %struct.loop** %6, align 8
  %19 = load %struct.iv_use*, %struct.iv_use** %7, align 8
  %20 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @get_computation_aff(%struct.loop* %18, %struct.iv_use* %19, %struct.iv_cand* %20, i32 %21, %struct.affine_tree_combination* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @NULL_TREE, align 4
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %4
  %27 = call i32 @unshare_aff_combination(%struct.affine_tree_combination* %10)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @aff_combination_to_tree(%struct.affine_tree_combination* %10)
  %30 = call i32 @fold_convert(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @get_computation_aff(%struct.loop*, %struct.iv_use*, %struct.iv_cand*, i32, %struct.affine_tree_combination*) #1

declare dso_local i32 @unshare_aff_combination(%struct.affine_tree_combination*) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @aff_combination_to_tree(%struct.affine_tree_combination*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
