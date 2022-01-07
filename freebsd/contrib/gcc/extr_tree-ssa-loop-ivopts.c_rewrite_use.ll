; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_rewrite_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_rewrite_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32, i32 }
%struct.iv_cand = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @rewrite_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_use(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca %struct.iv_use*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store %struct.iv_use* %1, %struct.iv_use** %5, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %6, align 8
  %7 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %8 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 130, label %15
    i32 129, label %20
  ]

10:                                               ; preds = %3
  %11 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %12 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %13 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %14 = call i32 @rewrite_use_nonlinear_expr(%struct.ivopts_data* %11, %struct.iv_use* %12, %struct.iv_cand* %13)
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %17 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %18 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %19 = call i32 @rewrite_use_address(%struct.ivopts_data* %16, %struct.iv_use* %17, %struct.iv_cand* %18)
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %22 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %23 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %24 = call i32 @rewrite_use_compare(%struct.ivopts_data* %21, %struct.iv_use* %22, %struct.iv_cand* %23)
  br label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @gcc_unreachable()
  br label %27

27:                                               ; preds = %25, %20, %15, %10
  %28 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %29 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mark_new_vars_to_rename(i32 %30)
  ret void
}

declare dso_local i32 @rewrite_use_nonlinear_expr(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @rewrite_use_address(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @rewrite_use_compare(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @mark_new_vars_to_rename(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
