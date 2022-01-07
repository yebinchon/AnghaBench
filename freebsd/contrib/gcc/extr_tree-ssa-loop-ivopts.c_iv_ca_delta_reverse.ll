; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca_delta = type { %struct.cost_pair*, %struct.cost_pair*, %struct.iv_ca_delta* }
%struct.cost_pair = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iv_ca_delta* (%struct.iv_ca_delta*)* @iv_ca_delta_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iv_ca_delta* @iv_ca_delta_reverse(%struct.iv_ca_delta* %0) #0 {
  %2 = alloca %struct.iv_ca_delta*, align 8
  %3 = alloca %struct.iv_ca_delta*, align 8
  %4 = alloca %struct.iv_ca_delta*, align 8
  %5 = alloca %struct.iv_ca_delta*, align 8
  %6 = alloca %struct.cost_pair*, align 8
  store %struct.iv_ca_delta* %0, %struct.iv_ca_delta** %2, align 8
  store %struct.iv_ca_delta* null, %struct.iv_ca_delta** %5, align 8
  %7 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %2, align 8
  store %struct.iv_ca_delta* %7, %struct.iv_ca_delta** %3, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %10 = icmp ne %struct.iv_ca_delta* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %13 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %12, i32 0, i32 2
  %14 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %13, align 8
  store %struct.iv_ca_delta* %14, %struct.iv_ca_delta** %4, align 8
  %15 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  %16 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %17 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %16, i32 0, i32 2
  store %struct.iv_ca_delta* %15, %struct.iv_ca_delta** %17, align 8
  %18 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  store %struct.iv_ca_delta* %18, %struct.iv_ca_delta** %5, align 8
  %19 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %20 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %19, i32 0, i32 1
  %21 = load %struct.cost_pair*, %struct.cost_pair** %20, align 8
  store %struct.cost_pair* %21, %struct.cost_pair** %6, align 8
  %22 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %23 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %22, i32 0, i32 0
  %24 = load %struct.cost_pair*, %struct.cost_pair** %23, align 8
  %25 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %26 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %25, i32 0, i32 1
  store %struct.cost_pair* %24, %struct.cost_pair** %26, align 8
  %27 = load %struct.cost_pair*, %struct.cost_pair** %6, align 8
  %28 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %29 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %28, i32 0, i32 0
  store %struct.cost_pair* %27, %struct.cost_pair** %29, align 8
  br label %30

30:                                               ; preds = %11
  %31 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %31, %struct.iv_ca_delta** %3, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  ret %struct.iv_ca_delta* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
