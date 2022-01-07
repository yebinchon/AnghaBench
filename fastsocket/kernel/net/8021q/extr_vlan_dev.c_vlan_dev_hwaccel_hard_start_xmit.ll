; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hwaccel_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hwaccel_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vlan_dev_hwaccel_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_hwaccel_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %12, i32 %13)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %19, %struct.sk_buff* %20)
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.sk_buff* @__vlan_hwaccel_put_tag(%struct.sk_buff* %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @dev_queue_xmit(%struct.sk_buff* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %2
  %45 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %46 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %51 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %59

54:                                               ; preds = %2
  %55 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %56 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %60
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
