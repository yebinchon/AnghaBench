; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_hwaccel_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_hwaccel_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.vlan_group = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vlan_hwaccel_rx(%struct.sk_buff* %0, %struct.vlan_group* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @netpoll_rx(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %16, i32* %5, align 4
  br label %90

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ACCESS_ONCE(i32 %23)
  %25 = call i64 @skb_bond_should_drop(%struct.sk_buff* %18, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 2
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @VLAN_VID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %30
  %48 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %48, i32 %49)
  store %struct.net_device* %50, %struct.net_device** %10, align 8
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  br label %75

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_PROMISC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %86

70:                                               ; preds = %60
  %71 = load i32, i32* @PACKET_OTHERHOST, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @netif_receive_skb(%struct.sk_buff* %79)
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @netif_rx(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %69
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %87)
  %89 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %84, %15
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @netpoll_rx(%struct.sk_buff*) #1

declare dso_local i64 @skb_bond_should_drop(%struct.sk_buff*, i32) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
