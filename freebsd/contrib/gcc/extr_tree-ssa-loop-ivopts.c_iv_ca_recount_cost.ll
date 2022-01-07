; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_recount_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_recount_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_ca*)* @iv_ca_recount_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_recount_cost(%struct.ivopts_data* %0, %struct.iv_ca* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.iv_ca*, align 8
  %5 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  %7 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  %14 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %21 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  %22 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ivopts_global_cost_for_size(%struct.ivopts_data* %20, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.iv_ca*, %struct.iv_ca** %4, align 8
  %31 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i64 @ivopts_global_cost_for_size(%struct.ivopts_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
