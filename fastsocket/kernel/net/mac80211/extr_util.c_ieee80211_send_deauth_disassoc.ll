; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_send_deauth_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_send_deauth_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.ieee80211_local* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.ieee80211_mgmt* }
%struct.ieee80211_local = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__, i32, i32, i32, i64, i64, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_14__ = type { i32 }

@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_MFP_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i32 %2, i32 %3, i32 %4, %struct.ieee80211_mgmt* %5) #0 {
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  %13 = alloca %struct.ieee80211_local*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ieee80211_mgmt* %5, %struct.ieee80211_mgmt** %12, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 2
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %13, align 8
  %19 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %20 = bitcast %struct.ieee80211_mgmt* %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %21, %struct.ieee80211_mgmt** %15, align 8
  %22 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %36 = load i64, i64* @ETH_ALEN, align 8
  %37 = call i32 @memcpy(i32 %34, %struct.ieee80211_mgmt* %35, i64 %36)
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %43, align 8
  %45 = load i64, i64* @ETH_ALEN, align 8
  %46 = call i32 @memcpy(i32 %40, %struct.ieee80211_mgmt* %44, i64 %45)
  %47 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %48 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %51 = load i64, i64* @ETH_ALEN, align 8
  %52 = call i32 @memcpy(i32 %49, %struct.ieee80211_mgmt* %50, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %56 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %6
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_DEAUTH_FRAME_LEN, align 8
  %67 = add nsw i64 %65, %66
  %68 = call %struct.sk_buff* @dev_alloc_skb(i64 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %14, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %111

72:                                               ; preds = %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @skb_reserve(%struct.sk_buff* %73, i64 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = load i64, i64* @IEEE80211_DEAUTH_FRAME_LEN, align 8
  %81 = call i32 @skb_put(%struct.sk_buff* %79, i64 %80)
  %82 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %15, align 8
  %83 = load i64, i64* @IEEE80211_DEAUTH_FRAME_LEN, align 8
  %84 = call i32 @memcpy(i32 %81, %struct.ieee80211_mgmt* %82, i64 %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %72
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IEEE80211_STA_MFP_ENABLED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91, %72
  %101 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %103 = call %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %91
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %110 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %108, %struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %71, %107, %6
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_mgmt*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
