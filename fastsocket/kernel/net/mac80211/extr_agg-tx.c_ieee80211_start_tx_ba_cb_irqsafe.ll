; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb_irqsafe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, i32, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_ra_tid = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_SDATA_QUEUE_AGG_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_ra_tid*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %8, align 8
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 0)
  store %struct.sk_buff* %16, %struct.sk_buff** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to %struct.ieee80211_ra_tid*
  store %struct.ieee80211_ra_tid* %27, %struct.ieee80211_ra_tid** %9, align 8
  %28 = load %struct.ieee80211_ra_tid*, %struct.ieee80211_ra_tid** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ra_tid, %struct.ieee80211_ra_tid* %28, i32 0, i32 1
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32* %29, i32* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ieee80211_ra_tid*, %struct.ieee80211_ra_tid** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ra_tid, %struct.ieee80211_ra_tid* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IEEE80211_SDATA_QUEUE_AGG_START, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = call i32 @skb_queue_tail(i32* %40, %struct.sk_buff* %41)
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = call i32 @ieee80211_queue_work(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
