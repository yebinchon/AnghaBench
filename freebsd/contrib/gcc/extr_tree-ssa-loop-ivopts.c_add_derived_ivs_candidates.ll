; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_add_derived_ivs_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_add_derived_ivs_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*)* @add_derived_ivs_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_derived_ivs_candidates(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iv_use*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %8 = call i32 @n_iv_uses(%struct.ivopts_data* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %11, i32 %12)
  store %struct.iv_use* %13, %struct.iv_use** %4, align 8
  %14 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %15 = icmp ne %struct.iv_use* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %31

17:                                               ; preds = %10
  %18 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %19 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %28 [
    i32 128, label %21
    i32 129, label %21
    i32 130, label %21
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %23 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %24 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %27 = call i32 @add_iv_value_candidates(%struct.ivopts_data* %22, i32 %25, %struct.iv_use* %26)
  br label %30

28:                                               ; preds = %17
  %29 = call i32 (...) @gcc_unreachable()
  br label %30

30:                                               ; preds = %28, %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local %struct.iv_use* @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local i32 @add_iv_value_candidates(%struct.ivopts_data*, i32, %struct.iv_use*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
