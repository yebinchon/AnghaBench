; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_unregister_vlan_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_unregister_vlan_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i64)* }
%struct.vlan_dev_info = type { i64, %struct.net_device* }
%struct.vlan_group = type { i64, i32, i32 }

@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@vlan_rcu_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_vlan_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vlan_dev_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  %6 = alloca %struct.vlan_group*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %8)
  store %struct.vlan_dev_info* %9, %struct.vlan_dev_info** %3, align 8
  %10 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %3, align 8
  %11 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %5, align 8
  %16 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %3, align 8
  %17 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = call i32 (...) @ASSERT_RTNL()
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.vlan_group* @__vlan_find_group(%struct.net_device* %20)
  store %struct.vlan_group* %21, %struct.vlan_group** %6, align 8
  %22 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %23 = icmp ne %struct.vlan_group* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %38 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %37, i32 0, i32 1
  %39 = load i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)** %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 %39(%struct.net_device* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %29, %1
  %44 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @vlan_group_set_device(%struct.vlan_group* %44, i64 %45, i32* null)
  %47 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %48 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = call i32 (...) @synchronize_net()
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @unregister_netdevice(%struct.net_device* %52)
  %54 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %55 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %43
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @vlan_gvrp_uninit_applicant(%struct.net_device* %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %69 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %68, i32 0, i32 0
  %70 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 %70(%struct.net_device* %71, i32* null)
  br label %73

73:                                               ; preds = %67, %58
  %74 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %75 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %74, i32 0, i32 2
  %76 = call i32 @hlist_del_rcu(i32* %75)
  %77 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %78 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %77, i32 0, i32 1
  %79 = load i32, i32* @vlan_rcu_free, align 4
  %80 = call i32 @call_rcu(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %43
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @dev_put(%struct.net_device* %82)
  ret void
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.vlan_group* @__vlan_find_group(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vlan_group_set_device(%struct.vlan_group*, i64, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
