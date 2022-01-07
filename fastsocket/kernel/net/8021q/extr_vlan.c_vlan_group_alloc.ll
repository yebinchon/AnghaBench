; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_group_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_group = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vlan_group_hash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlan_group* @vlan_group_alloc(%struct.net_device* %0) #0 {
  %2 = alloca %struct.vlan_group*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vlan_group* @kzalloc(i32 16, i32 %5)
  store %struct.vlan_group* %6, %struct.vlan_group** %4, align 8
  %7 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %8 = icmp ne %struct.vlan_group* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.vlan_group* null, %struct.vlan_group** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %13 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %12, i32 0, i32 1
  store %struct.net_device* %11, %struct.net_device** %13, align 8
  %14 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %15 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %14, i32 0, i32 0
  %16 = load i32*, i32** @vlan_group_hash, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @vlan_grp_hashfn(i32 %19)
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = call i32 @hlist_add_head_rcu(i32* %15, i32* %21)
  %23 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  store %struct.vlan_group* %23, %struct.vlan_group** %2, align 8
  br label %24

24:                                               ; preds = %10, %9
  %25 = load %struct.vlan_group*, %struct.vlan_group** %2, align 8
  ret %struct.vlan_group* %25
}

declare dso_local %struct.vlan_group* @kzalloc(i32, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @vlan_grp_hashfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
