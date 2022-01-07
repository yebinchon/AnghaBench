; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_get_policy_nodemask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_get_policy_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*)* @get_policy_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_policy_nodemask(%struct.mempolicy* %0, i32* %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca i32*, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @nodes_clear(i32 %6)
  %8 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %9 = icmp eq %struct.mempolicy* %8, @default_policy
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %13 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %37 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %17 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %39

21:                                               ; preds = %11
  %22 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPOL_F_LOCAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @node_set(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %21
  br label %39

37:                                               ; preds = %11
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %10, %37, %36, %15
  ret void
}

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @node_set(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
