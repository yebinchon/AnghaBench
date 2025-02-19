; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i64, i32, i32, i32* }

@ip6_tnl_netdev_ops = common dso_local global i32 0, align 4
@free_netdev = common dso_local global i32 0, align 4
@ARPHRD_TUNNEL6 = common dso_local global i32 0, align 4
@LL_MAX_HEADER = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@IFF_NOARP = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ip6_tnl_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_dev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 7
  store i32* @ip6_tnl_netdev_ops, i32** %4, align 8
  %5 = load i32, i32* @free_netdev, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @ARPHRD_TUNNEL6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @LL_MAX_HEADER, align 8
  %12 = add i64 %11, 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* @ETH_DATA_LEN, align 8
  %16 = sub i64 %15, 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @IFF_NOARP, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
