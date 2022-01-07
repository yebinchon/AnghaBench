; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_ether_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_ether_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@eth_header_ops = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ether_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 7
  store i32* @eth_header_ops, i32** %4, align 8
  %5 = load i32, i32* @ARPHRD_ETHER, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @ETH_HLEN, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ETH_DATA_LEN, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  store i32 1000, i32* %18, align 8
  %19 = load i32, i32* @IFF_BROADCAST, align 4
  %20 = load i32, i32* @IFF_MULTICAST, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memset(i32 %30, i32 255, i32 %31)
  ret void
}

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
