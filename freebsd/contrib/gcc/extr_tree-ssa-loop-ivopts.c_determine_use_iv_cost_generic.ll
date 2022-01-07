; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i64 }
%struct.iv_cand = type { i64, i64 }

@IP_ORIGINAL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@INFTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @determine_use_iv_cost_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_use_iv_cost_generic(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_use*, align 8
  %7 = alloca %struct.iv_cand*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_use* %1, %struct.iv_use** %6, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %7, align 8
  %10 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %11 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IP_ORIGINAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %17 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %20 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %25 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %26 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = call i32 @set_use_iv_cost(%struct.ivopts_data* %24, %struct.iv_use* %25, %struct.iv_cand* %26, i32 0, i32* null, i32 %27)
  store i32 1, i32* %4, align 4
  br label %45

29:                                               ; preds = %15, %3
  %30 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %31 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %32 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %33 = call i32 @get_computation_cost(%struct.ivopts_data* %30, %struct.iv_use* %31, %struct.iv_cand* %32, i32 0, i32** %8)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %35 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %36 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @NULL_TREE, align 4
  %40 = call i32 @set_use_iv_cost(%struct.ivopts_data* %34, %struct.iv_use* %35, %struct.iv_cand* %36, i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @INFTY, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %29, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @set_use_iv_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32*, i32) #1

declare dso_local i32 @get_computation_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
