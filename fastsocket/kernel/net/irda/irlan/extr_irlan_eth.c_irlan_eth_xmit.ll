; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irlan/extr_irlan_eth.c_irlan_eth_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irlan/extr_irlan_eth.c_irlan_eth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.irlan_cb = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @irlan_eth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irlan_eth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.irlan_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.irlan_cb* @netdev_priv(%struct.net_device* %9)
  store %struct.irlan_cb* %10, %struct.irlan_cb** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i64 @skb_headroom(%struct.sk_buff* %11)
  %13 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %14 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @skb_shared(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17, %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %24 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %22, i64 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @dev_kfree_skb(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %4, align 8
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %40 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %45 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @irttp_udata_request(i32 %46, %struct.sk_buff* %47)
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %51 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @irttp_data_request(i32 %52, %struct.sk_buff* %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %60 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %80

64:                                               ; preds = %55
  %65 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %66 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.irlan_cb*, %struct.irlan_cb** %6, align 8
  %74 = getelementptr inbounds %struct.irlan_cb, %struct.irlan_cb* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  br label %80

80:                                               ; preds = %64, %58
  %81 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %31
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.irlan_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @irttp_udata_request(i32, %struct.sk_buff*) #1

declare dso_local i32 @irttp_data_request(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
