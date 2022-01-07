; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_trailer.c_trailer_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_tag_trailer.c_trailer_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dsa_slave_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_P_TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trailer_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_slave_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.dsa_slave_priv* %12, %struct.dsa_slave_priv** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %20
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %8, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 60
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 60, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load i64, i64* @NET_IP_ALIGN, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.sk_buff* @alloc_skb(i64 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %125

54:                                               ; preds = %35
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i64, i64* @NET_IP_ALIGN, align 8
  %57 = call i32 @skb_reserve(%struct.sk_buff* %55, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @skb_reset_mac_header(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i64 @skb_network_header(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = call i32 @skb_set_network_header(%struct.sk_buff* %60, i64 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i64 @skb_transport_header(%struct.sk_buff* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @skb_set_transport_header(%struct.sk_buff* %68, i64 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @skb_put(%struct.sk_buff* %77, i32 %80)
  %82 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %76, i32* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %54
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32* @skb_put(%struct.sk_buff* %88, i32 %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memset(i32* %91, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %87, %54
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32* @skb_put(%struct.sk_buff* %95, i32 4)
  store i32* %96, i32** %9, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 128, i32* %98, align 4
  %99 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %100 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 1, %101
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 16, i32* %106, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* @ETH_P_TRAILER, align 4
  %110 = call i32 @htons(i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %114 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = call i32 @dev_queue_xmit(%struct.sk_buff* %122)
  %124 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %94, %50
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
