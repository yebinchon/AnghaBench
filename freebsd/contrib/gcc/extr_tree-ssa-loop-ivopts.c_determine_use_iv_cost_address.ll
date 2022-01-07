; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32 }
%struct.iv_cand = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@INFTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @determine_use_iv_cost_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_use_iv_cost_address(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca %struct.iv_use*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store %struct.iv_use* %1, %struct.iv_use** %5, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %6, align 8
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %10 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %11 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %12 = call i32 @get_computation_cost(%struct.ivopts_data* %9, %struct.iv_use* %10, %struct.iv_cand* %11, i32 1, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %14 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %15 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = call i32 @set_use_iv_cost(%struct.ivopts_data* %13, %struct.iv_use* %14, %struct.iv_cand* %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @INFTY, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @get_computation_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32*) #1

declare dso_local i32 @set_use_iv_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
