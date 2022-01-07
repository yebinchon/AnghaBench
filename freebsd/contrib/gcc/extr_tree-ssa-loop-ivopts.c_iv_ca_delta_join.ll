; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca_delta = type { %struct.iv_ca_delta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iv_ca_delta* (%struct.iv_ca_delta*, %struct.iv_ca_delta*)* @iv_ca_delta_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iv_ca_delta* @iv_ca_delta_join(%struct.iv_ca_delta* %0, %struct.iv_ca_delta* %1) #0 {
  %3 = alloca %struct.iv_ca_delta*, align 8
  %4 = alloca %struct.iv_ca_delta*, align 8
  %5 = alloca %struct.iv_ca_delta*, align 8
  %6 = alloca %struct.iv_ca_delta*, align 8
  store %struct.iv_ca_delta* %0, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %1, %struct.iv_ca_delta** %5, align 8
  %7 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  %8 = icmp ne %struct.iv_ca_delta* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %10, %struct.iv_ca_delta** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  %13 = icmp ne %struct.iv_ca_delta* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  store %struct.iv_ca_delta* %15, %struct.iv_ca_delta** %3, align 8
  br label %33

16:                                               ; preds = %11
  %17 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %17, %struct.iv_ca_delta** %6, align 8
  br label %18

18:                                               ; preds = %24, %16
  %19 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %6, align 8
  %20 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %19, i32 0, i32 0
  %21 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %20, align 8
  %22 = icmp ne %struct.iv_ca_delta* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %6, align 8
  %26 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %25, i32 0, i32 0
  %27 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %26, align 8
  store %struct.iv_ca_delta* %27, %struct.iv_ca_delta** %6, align 8
  br label %18

28:                                               ; preds = %18
  %29 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  %30 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %6, align 8
  %31 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %30, i32 0, i32 0
  store %struct.iv_ca_delta* %29, %struct.iv_ca_delta** %31, align 8
  %32 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %32, %struct.iv_ca_delta** %3, align 8
  br label %33

33:                                               ; preds = %28, %14, %9
  %34 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  ret %struct.iv_ca_delta* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
