; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_pending_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_pending_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sk_buff*)* @ieee80211_tx_pending_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_pending_skb(%struct.ieee80211_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %6, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(i32 %18)
  store %struct.ieee80211_sub_if_data* %19, %struct.ieee80211_sub_if_data** %7, align 8
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %30)
  store %struct.ieee80211_chanctx_conf* %31, %struct.ieee80211_chanctx_conf** %11, align 8
  %32 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %33 = icmp ne %struct.ieee80211_chanctx_conf* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  store i32 1, i32* %3, align 4
  br label %72

41:                                               ; preds = %26
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ieee80211_tx(%struct.ieee80211_sub_if_data* %42, %struct.sk_buff* %43, i32 1, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %70

51:                                               ; preds = %2
  %52 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %12, %struct.sk_buff* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %58, %struct.ieee80211_hdr** %9, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %59, i32 %62)
  store %struct.sta_info* %63, %struct.sta_info** %8, align 8
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %69 = call i32 @__ieee80211_tx(%struct.ieee80211_local* %64, %struct.sk_buff_head* %12, i32 %67, %struct.sta_info* %68, i32 1)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %51, %41
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %38
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(i32) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @__ieee80211_tx(%struct.ieee80211_local*, %struct.sk_buff_head*, i32, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
