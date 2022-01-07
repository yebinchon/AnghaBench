; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_ca_delta = type { %struct.iv_ca_delta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iv_ca_delta**)* @iv_ca_delta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_delta_free(%struct.iv_ca_delta** %0) #0 {
  %2 = alloca %struct.iv_ca_delta**, align 8
  %3 = alloca %struct.iv_ca_delta*, align 8
  %4 = alloca %struct.iv_ca_delta*, align 8
  store %struct.iv_ca_delta** %0, %struct.iv_ca_delta*** %2, align 8
  %5 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %2, align 8
  %6 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %5, align 8
  store %struct.iv_ca_delta* %6, %struct.iv_ca_delta** %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %9 = icmp ne %struct.iv_ca_delta* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %12 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %11, i32 0, i32 0
  %13 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %12, align 8
  store %struct.iv_ca_delta* %13, %struct.iv_ca_delta** %4, align 8
  %14 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %3, align 8
  %15 = call i32 @free(%struct.iv_ca_delta* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %4, align 8
  store %struct.iv_ca_delta* %17, %struct.iv_ca_delta** %3, align 8
  br label %7

18:                                               ; preds = %7
  %19 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %2, align 8
  store %struct.iv_ca_delta* null, %struct.iv_ca_delta** %19, align 8
  ret void
}

declare dso_local i32 @free(%struct.iv_ca_delta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
