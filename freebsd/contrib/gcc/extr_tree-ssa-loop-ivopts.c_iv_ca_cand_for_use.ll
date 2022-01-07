; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_cand_for_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_cand_for_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cost_pair = type { i32 }
%struct.iv_ca = type { %struct.cost_pair** }
%struct.iv_use = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cost_pair* (%struct.iv_ca*, %struct.iv_use*)* @iv_ca_cand_for_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cost_pair* @iv_ca_cand_for_use(%struct.iv_ca* %0, %struct.iv_use* %1) #0 {
  %3 = alloca %struct.iv_ca*, align 8
  %4 = alloca %struct.iv_use*, align 8
  store %struct.iv_ca* %0, %struct.iv_ca** %3, align 8
  store %struct.iv_use* %1, %struct.iv_use** %4, align 8
  %5 = load %struct.iv_ca*, %struct.iv_ca** %3, align 8
  %6 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %5, i32 0, i32 0
  %7 = load %struct.cost_pair**, %struct.cost_pair*** %6, align 8
  %8 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %9 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.cost_pair*, %struct.cost_pair** %7, i64 %10
  %12 = load %struct.cost_pair*, %struct.cost_pair** %11, align 8
  ret %struct.cost_pair* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
