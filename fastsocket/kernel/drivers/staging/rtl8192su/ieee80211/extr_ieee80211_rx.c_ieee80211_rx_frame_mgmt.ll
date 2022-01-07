; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_frame_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_frame_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.ieee80211_hdr_3addr = type { i32 }
%struct.ieee80211_hdr_4addr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.sk_buff*, %struct.ieee80211_rx_stats*, i32, i32)* @ieee80211_rx_frame_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_frame_mgmt(%struct.ieee80211_device* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_rx_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %16, %struct.ieee80211_hdr_3addr** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_hdr_4addr*
  %27 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %28 = call i32 @ieee80211_rx_mgt(%struct.ieee80211_device* %22, %struct.ieee80211_hdr_4addr* %26, %struct.ieee80211_rx_stats* %27)
  %29 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %12, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i64 @memcmp(i32 %31, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %41)
  store i32 0, i32* %6, align 4
  br label %52

43:                                               ; preds = %5
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ieee80211_rx_frame_softmac(%struct.ieee80211_device* %44, %struct.sk_buff* %45, %struct.ieee80211_rx_stats* %46, i32 %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @ieee80211_rx_mgt(%struct.ieee80211_device*, %struct.ieee80211_hdr_4addr*, %struct.ieee80211_rx_stats*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_frame_softmac(%struct.ieee80211_device*, %struct.sk_buff*, %struct.ieee80211_rx_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
