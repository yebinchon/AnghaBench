; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_frame_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_rx.c_ieee80211_rx_frame_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.ieee80211_hdr_4addr = type { i32 }

@IEEE80211_LINKED = common dso_local global i64 0, align 8
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
  %12 = alloca %struct.ieee80211_hdr_4addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr_4addr*
  store %struct.ieee80211_hdr_4addr* %16, %struct.ieee80211_hdr_4addr** %12, align 8
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
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_LINKED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %12, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i64 @memcmp(i32 %37, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %46)
  store i32 0, i32* %6, align 4
  br label %57

48:                                               ; preds = %34, %5
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @ieee80211_rx_frame_softmac(%struct.ieee80211_device* %49, %struct.sk_buff* %50, %struct.ieee80211_rx_stats* %51, i32 %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %6, align 4
  ret i32 %58
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
