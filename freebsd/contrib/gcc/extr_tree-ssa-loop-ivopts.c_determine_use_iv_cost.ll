; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_use_iv_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32 }
%struct.iv_cand = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @determine_use_iv_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_use_iv_cost(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_use*, align 8
  %7 = alloca %struct.iv_cand*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_use* %1, %struct.iv_use** %6, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %7, align 8
  %8 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %9 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 128, label %11
    i32 130, label %16
    i32 129, label %21
  ]

11:                                               ; preds = %3
  %12 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %13 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %14 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %15 = call i32 @determine_use_iv_cost_generic(%struct.ivopts_data* %12, %struct.iv_use* %13, %struct.iv_cand* %14)
  store i32 %15, i32* %4, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %18 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %19 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %20 = call i32 @determine_use_iv_cost_address(%struct.ivopts_data* %17, %struct.iv_use* %18, %struct.iv_cand* %19)
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %23 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %24 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %25 = call i32 @determine_use_iv_cost_condition(%struct.ivopts_data* %22, %struct.iv_use* %23, %struct.iv_cand* %24)
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %3
  %27 = call i32 (...) @gcc_unreachable()
  br label %28

28:                                               ; preds = %11, %16, %21, %26
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @determine_use_iv_cost_generic(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @determine_use_iv_cost_address(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @determine_use_iv_cost_condition(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
