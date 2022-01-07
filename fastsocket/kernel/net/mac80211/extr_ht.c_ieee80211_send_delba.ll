; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_send_delba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_send_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.ieee80211_local = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_18__, i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_DELBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_delba(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %11, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 56, %21
  %23 = call %struct.sk_buff* @dev_alloc_skb(i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %169

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = call i64 @skb_put(%struct.sk_buff* %34, i32 24)
  %36 = inttoptr i64 %35 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %36, %struct.ieee80211_mgmt** %13, align 8
  %37 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %38 = call i32 @memset(%struct.ieee80211_mgmt* %37, i32 0, i32 24)
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %41, i32* %42, i32 %43)
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %47, i32* %51, i32 %52)
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %74, label %60

60:                                               ; preds = %27
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67, %60, %27
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32 %77, i32* %81, i32 %82)
  br label %122

84:                                               ; preds = %67
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %93 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i32 @memcpy(i32 %94, i32* %99, i32 %100)
  br label %121

102:                                              ; preds = %84
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %111 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(i32 %112, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %109, %102
  br label %121

121:                                              ; preds = %120, %91
  br label %122

122:                                              ; preds = %121, %74
  %123 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %124 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %125 = or i32 %123, %124
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %128 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = call i64 @skb_put(%struct.sk_buff* %129, i32 25)
  %131 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %132 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %133 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 8
  %136 = load i32, i32* @WLAN_ACTION_DELBA, align 4
  %137 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %138 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  store i32 %136, i32* %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = shl i32 %143, 11
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 %145, 12
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %152 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i8* %150, i8** %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i8* @cpu_to_le16(i32 %157)
  %159 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %160 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i8* %158, i8** %164, align 8
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data* %165, %struct.sk_buff* %166, i32 %167)
  br label %169

169:                                              ; preds = %122, %26
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
