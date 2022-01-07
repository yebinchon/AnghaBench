; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_send_smps_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_send_smps_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__*, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_HT = common dso_local global i32 0, align 4
@WLAN_HT_ACTION_SMPS = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DISABLED = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_STATIC = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_send_smps_action(%struct.ieee80211_sub_if_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %10, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 27, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i64 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %115

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call i64 @skb_put(%struct.sk_buff* %34, i32 27)
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %37, %struct.ieee80211_mgmt** %12, align 8
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %46, i32* %51, i32 %52)
  %54 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %55 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @memcpy(i32 %56, i32* %57, i32 %58)
  %60 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %61 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @WLAN_CATEGORY_HT, align 4
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @WLAN_HT_ACTION_SMPS, align 4
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %105 [
    i32 132, label %79
    i32 130, label %79
    i32 129, label %81
    i32 128, label %89
    i32 131, label %97
  ]

79:                                               ; preds = %27, %27
  %80 = call i32 @WARN_ON(i32 1)
  br label %81

81:                                               ; preds = %27, %79
  %82 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DISABLED, align 4
  %83 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 4
  br label %105

89:                                               ; preds = %27
  %90 = load i32, i32* @WLAN_HT_SMPS_CONTROL_STATIC, align 4
  %91 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 4
  br label %105

97:                                               ; preds = %27
  %98 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DYNAMIC, align 4
  %99 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %100 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %27, %97, %89, %81
  %106 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = call %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %112, %struct.sk_buff* %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %105, %24
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
