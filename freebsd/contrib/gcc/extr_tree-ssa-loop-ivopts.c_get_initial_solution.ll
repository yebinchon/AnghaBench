; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_initial_solution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_initial_solution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca = type { i32 }
%struct.ivopts_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iv_ca* (%struct.ivopts_data*)* @get_initial_solution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iv_ca* @get_initial_solution(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.iv_ca*, align 8
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.iv_ca*, align 8
  %5 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  %6 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %7 = call %struct.iv_ca* @iv_ca_new(%struct.ivopts_data* %6)
  store %struct.iv_ca* %7, %struct.iv_ca** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %11 = call i32 @n_iv_uses(%struct.ivopts_data* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %15 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  %16 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @iv_use(%struct.ivopts_data* %16, i32 %17)
  %19 = call i32 @try_add_cand_for(%struct.ivopts_data* %14, %struct.iv_ca* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = call i32 @iv_ca_free(%struct.iv_ca** %4)
  store %struct.iv_ca* null, %struct.iv_ca** %2, align 8
  br label %29

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  store %struct.iv_ca* %28, %struct.iv_ca** %2, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = load %struct.iv_ca*, %struct.iv_ca** %2, align 8
  ret %struct.iv_ca* %30
}

declare dso_local %struct.iv_ca* @iv_ca_new(%struct.ivopts_data*) #1

declare dso_local i32 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local i32 @try_add_cand_for(%struct.ivopts_data*, %struct.iv_ca*, i32) #1

declare dso_local i32 @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local i32 @iv_ca_free(%struct.iv_ca**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
