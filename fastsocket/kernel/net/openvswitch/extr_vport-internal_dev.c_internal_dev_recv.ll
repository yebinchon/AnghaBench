; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-internal_dev.c_internal_dev_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@PACKET_HOST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.sk_buff*)* @internal_dev_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_dev_recv(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.vport*, %struct.vport** %3, align 8
  %8 = call %struct.TYPE_2__* @netdev_vport_priv(%struct.vport* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_dst_drop(%struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @nf_reset(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @secpath_reset(%struct.sk_buff* %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 3
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load i32, i32* @PACKET_HOST, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @eth_type_trans(%struct.sk_buff* %26, %struct.net_device* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @eth_hdr(%struct.sk_buff* %32)
  %34 = load i32, i32* @ETH_HLEN, align 4
  %35 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %31, i32 %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @netif_rx(%struct.sk_buff* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @netdev_vport_priv(%struct.vport*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
