; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_computation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.iv_use = type { i32 }
%struct.iv_cand = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, %struct.iv_use*, %struct.iv_cand*)* @get_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_computation(%struct.loop* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.iv_use*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store %struct.iv_use* %1, %struct.iv_use** %5, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %6, align 8
  %7 = load %struct.loop*, %struct.loop** %4, align 8
  %8 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %9 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %10 = load %struct.iv_use*, %struct.iv_use** %5, align 8
  %11 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_computation_at(%struct.loop* %7, %struct.iv_use* %8, %struct.iv_cand* %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @get_computation_at(%struct.loop*, %struct.iv_use*, %struct.iv_cand*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
