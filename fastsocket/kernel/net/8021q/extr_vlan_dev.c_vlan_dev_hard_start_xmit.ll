; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32, i32, i32 }
%struct.vlan_ethhdr = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vlan_dev_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.vlan_ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %15, i32 %16)
  store %struct.netdev_queue* %17, %struct.netdev_queue** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %21, %struct.vlan_ethhdr** %8, align 8
  %22 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %23 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ETH_P_8021Q, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %28, %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_headroom(%struct.sk_buff* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %48, %struct.sk_buff* %49)
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff* %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %36
  %59 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %60 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %110

64:                                               ; preds = %36
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @VLAN_HLEN, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74, %28
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %9, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @dev_queue_xmit(%struct.sk_buff* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %75
  %94 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %95 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %100 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %108

103:                                              ; preds = %75
  %104 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %105 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %93
  %109 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %58
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
