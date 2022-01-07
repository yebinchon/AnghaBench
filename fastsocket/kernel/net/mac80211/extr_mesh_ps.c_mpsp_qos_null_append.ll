; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mpsp_qos_null_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mpsp_qos_null_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_3__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"appending QoS Null in MPSP towards %pM\0A\00", align 1
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.sk_buff_head*)* @mpsp_qos_null_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsp_qos_null_append(%struct.sta_info* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %14 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %8, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ieee80211_is_data_qos(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %27 = call %struct.sk_buff* @mps_qos_null_get(%struct.sta_info* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %61

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mps_dbg(%struct.ieee80211_sub_if_data* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* @IEEE80211_AC_BK, align 4
  %42 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data* %43, %struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %46)
  store %struct.ieee80211_tx_info* %47, %struct.ieee80211_tx_info** %9, align 8
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 0
  %50 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %58, %struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %31, %30, %24
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local %struct.sk_buff* @mps_qos_null_get(%struct.sta_info*) #1

declare dso_local i32 @mps_dbg(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
