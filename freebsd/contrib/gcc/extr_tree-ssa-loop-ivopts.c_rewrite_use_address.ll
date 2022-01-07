; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_rewrite_use_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_rewrite_use_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32*, i32 }
%struct.iv_cand = type { i32 }
%struct.affine_tree_combination = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @rewrite_use_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_use_address(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca %struct.iv_use*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  %7 = alloca %struct.affine_tree_combination, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store %struct.iv_use* %1, %struct.iv_use** %5, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %6, align 8
  %10 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %11 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bsi_for_stmt(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %15 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %18 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %19 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %20 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_computation_aff(i32 %16, %struct.iv_use* %17, %struct.iv_cand* %18, i32 %21, %struct.affine_tree_combination* %7)
  %23 = call i32 @unshare_aff_combination(%struct.affine_tree_combination* %7)
  %24 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %25 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TREE_TYPE(i32 %27)
  %29 = call i32 @create_mem_ref(i32* %8, i32 %28, %struct.affine_tree_combination* %7)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %32 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @copy_ref_info(i32 %30, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %38 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32 %36, i32* %39, align 4
  ret void
}

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @get_computation_aff(i32, %struct.iv_use*, %struct.iv_cand*, i32, %struct.affine_tree_combination*) #1

declare dso_local i32 @unshare_aff_combination(%struct.affine_tree_combination*) #1

declare dso_local i32 @create_mem_ref(i32*, i32, %struct.affine_tree_combination*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @copy_ref_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
