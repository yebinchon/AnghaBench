; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_policy_zonelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_policy_zonelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zonelist = type { i32 }
%struct.mempolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zonelist* (i32, %struct.mempolicy*, i32)* @policy_zonelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zonelist* @policy_zonelist(i32 %0, %struct.mempolicy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mempolicy*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %8 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %49 [
    i32 128, label %10
    i32 130, label %23
    i32 129, label %48
  ]

10:                                               ; preds = %3
  %11 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %12 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPOL_F_LOCAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %19 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %10
  br label %51

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @__GFP_THISNODE, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @unlikely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %32 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @node_isset(i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @unlikely(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %43 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @first_node(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %29, %23
  br label %51

48:                                               ; preds = %3
  br label %51

49:                                               ; preds = %3
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %48, %47, %22
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.zonelist* @node_zonelist(i32 %52, i32 %53)
  ret %struct.zonelist* %54
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @node_isset(i32, i32) #1

declare dso_local i32 @first_node(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.zonelist* @node_zonelist(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
