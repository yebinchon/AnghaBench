; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_ieee80211s_update_metric.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_ieee80211s_update_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211s_update_metric(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %10)
  store %struct.ieee80211_tx_info* %11, %struct.ieee80211_tx_info** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %8, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_is_data(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 80, %33
  %35 = add nsw i32 %34, 5
  %36 = sdiv i32 %35, 100
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 20, %37
  %39 = add nsw i32 %36, %38
  %40 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 95
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %48 = call i32 @mesh_plink_broken(%struct.sta_info* %47)
  br label %49

49:                                               ; preds = %21, %46, %22
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @mesh_plink_broken(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
