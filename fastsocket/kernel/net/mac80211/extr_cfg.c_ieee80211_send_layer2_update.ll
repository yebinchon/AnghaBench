; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_send_layer2_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_send_layer2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iapp_layer2_update = type { i32, i32, i32*, i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @ieee80211_send_layer2_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_layer2_update(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.iapp_layer2_update*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = call %struct.sk_buff* @dev_alloc_skb(i32 40)
  store %struct.sk_buff* %5, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = icmp ne %struct.sk_buff* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i64 @skb_put(%struct.sk_buff* %10, i32 40)
  %12 = inttoptr i64 %11 to %struct.iapp_layer2_update*
  store %struct.iapp_layer2_update* %12, %struct.iapp_layer2_update** %3, align 8
  %13 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %14 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @eth_broadcast_addr(i32 %15)
  %17 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %18 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @memcpy(i32 %19, i32 %23, i32 %24)
  %26 = call i32 @htons(i32 6)
  %27 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %28 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %30 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %32 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %34 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %33, i32 0, i32 1
  store i32 175, i32* %34, align 4
  %35 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %36 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 129, i32* %38, align 4
  %39 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %40 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %3, align 8
  %44 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %46, align 4
  %47 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eth_type_trans(%struct.sk_buff* %54, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i32 %65, i32 0, i32 4)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @netif_rx_ni(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
