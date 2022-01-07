; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_do_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_do_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@internal_dev_netdev_ops = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@internal_dev_destructor = common dso_local global i32 0, align 4
@internal_dev_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @do_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @ether_setup(%struct.net_device* %3)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 5
  store i32* @internal_dev_netdev_ops, i32** %6, align 8
  %7 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @internal_dev_destructor, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %23, i32* @internal_dev_ethtool_ops)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @NETIF_F_LLTX, align 4
  %28 = load i32, i32* @NETIF_F_SG, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NETIF_F_TSO, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @NETIF_F_LLTX, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @random_ether_addr(i32 %58)
  ret void
}

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @random_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
