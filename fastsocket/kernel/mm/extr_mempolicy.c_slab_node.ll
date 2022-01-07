; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_slab_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_slab_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.zonelist = type { i32 }
%struct.zone = type { i32 }
%struct.TYPE_4__ = type { %struct.zonelist* }

@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slab_node(%struct.mempolicy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca %struct.zonelist*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  %7 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %8 = icmp ne %struct.mempolicy* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %11 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MPOL_F_LOCAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = call i32 (...) @numa_node_id()
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %9
  %19 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %20 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %47 [
    i32 128, label %22
    i32 129, label %27
    i32 130, label %30
  ]

22:                                               ; preds = %18
  %23 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %24 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %29 = call i32 @interleave_nodes(%struct.mempolicy* %28)
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %18
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @gfp_zone(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = call i32 (...) @numa_node_id()
  %34 = call %struct.TYPE_4__* @NODE_DATA(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.zonelist*, %struct.zonelist** %35, align 8
  %37 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %36, i64 0
  store %struct.zonelist* %37, %struct.zonelist** %4, align 8
  %38 = load %struct.zonelist*, %struct.zonelist** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %41 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i32 @first_zones_zonelist(%struct.zonelist* %38, i32 %39, i32* %42, %struct.zone** %5)
  %44 = load %struct.zone*, %struct.zone** %5, align 8
  %45 = getelementptr inbounds %struct.zone, %struct.zone* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %18
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %16, %22, %27, %30, %47
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @interleave_nodes(%struct.mempolicy*) #1

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local %struct.TYPE_4__* @NODE_DATA(i32) #1

declare dso_local i32 @first_zones_zonelist(%struct.zonelist*, i32, i32*, %struct.zone**) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
