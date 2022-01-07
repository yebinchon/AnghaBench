; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_device.c_br_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_device.c_br_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i64 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_fdb_entry = type { i32 }
%struct.net_bridge_mdb_entry = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.net_device* }

@ETH_HLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_bridge_fdb_entry*, align 8
  %8 = alloca %struct.net_bridge_mdb_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %9)
  store %struct.net_bridge* %10, %struct.net_bridge** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.net_device* %14, %struct.net_device** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %25
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @skb_reset_mac_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load i32, i32* @ETH_HLEN, align 4
  %37 = call i32 @skb_pull(%struct.sk_buff* %35, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @is_broadcast_ether_addr(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @br_flood_deliver(%struct.net_bridge* %42, %struct.sk_buff* %43)
  br label %104

45:                                               ; preds = %2
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @is_multicast_ether_addr(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netpoll_tx_running(%struct.net_device* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32 @br_flood_deliver(%struct.net_bridge* %55, %struct.sk_buff* %56)
  br label %105

58:                                               ; preds = %49
  %59 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i64 @br_multicast_rcv(%struct.net_bridge* %59, i32* null, %struct.sk_buff* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %105

66:                                               ; preds = %58
  %67 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge* %67, %struct.sk_buff* %68)
  store %struct.net_bridge_mdb_entry* %69, %struct.net_bridge_mdb_entry** %8, align 8
  %70 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %71 = icmp ne %struct.net_bridge_mdb_entry* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %66
  %79 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = call i32 @br_multicast_deliver(%struct.net_bridge_mdb_entry* %79, %struct.sk_buff* %80)
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = call i32 @br_flood_deliver(%struct.net_bridge* %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %103

87:                                               ; preds = %45
  %88 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call %struct.net_bridge_fdb_entry* @__br_fdb_get(%struct.net_bridge* %88, i8* %89)
  store %struct.net_bridge_fdb_entry* %90, %struct.net_bridge_fdb_entry** %7, align 8
  %91 = icmp ne %struct.net_bridge_fdb_entry* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %7, align 8
  %94 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = call i32 @br_deliver(i32 %95, %struct.sk_buff* %96)
  br label %102

98:                                               ; preds = %87
  %99 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @br_flood_deliver(%struct.net_bridge* %99, %struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %98, %92
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %41
  br label %105

105:                                              ; preds = %104, %63, %54
  %106 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %106
}

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i32 @br_flood_deliver(%struct.net_bridge*, %struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(%struct.net_device*) #1

declare dso_local i64 @br_multicast_rcv(%struct.net_bridge*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge*, %struct.sk_buff*) #1

declare dso_local i32 @br_multicast_deliver(%struct.net_bridge_mdb_entry*, %struct.sk_buff*) #1

declare dso_local %struct.net_bridge_fdb_entry* @__br_fdb_get(%struct.net_bridge*, i8*) #1

declare dso_local i32 @br_deliver(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
