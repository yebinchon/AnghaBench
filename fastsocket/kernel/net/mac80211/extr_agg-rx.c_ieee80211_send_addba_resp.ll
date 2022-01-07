; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c_ieee80211_send_addba_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c_ieee80211_send_addba_resp.c"
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
%struct.TYPE_15__ = type { i8*, i8*, i8*, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_ADDBA_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32, i32)* @ieee80211_send_addba_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_addba_resp(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_local*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.ieee80211_mgmt*, align 8
  %20 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 2
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  store %struct.ieee80211_local* %23, %struct.ieee80211_local** %17, align 8
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 64, %27
  %29 = call %struct.sk_buff* @dev_alloc_skb(i64 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %18, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %8
  br label %193

33:                                               ; preds = %8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @skb_reserve(%struct.sk_buff* %34, i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %41 = call i64 @skb_put(%struct.sk_buff* %40, i32 24)
  %42 = inttoptr i64 %41 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %42, %struct.ieee80211_mgmt** %19, align 8
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %44 = call i32 @memset(%struct.ieee80211_mgmt* %43, i32 0, i32 24)
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @memcpy(i32 %53, i32* %57, i32 %58)
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %33
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73, %66, %33
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32 %83, i32* %87, i32 %88)
  br label %128

90:                                               ; preds = %73
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %99 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @memcpy(i32 %100, i32* %105, i32 %106)
  br label %127

108:                                              ; preds = %90
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %117 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @ETH_ALEN, align 4
  %125 = call i32 @memcpy(i32 %118, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %115, %108
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127, %80
  %129 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %130 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %134 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %136 = call i64 @skb_put(%struct.sk_buff* %135, i32 33)
  %137 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %138 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %139 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* @WLAN_ACTION_ADDBA_RESP, align 4
  %143 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %151 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  store i32 %149, i32* %155, align 8
  %156 = load i32, i32* %14, align 4
  %157 = shl i32 %156, 1
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %11, align 4
  %159 = shl i32 %158, 2
  %160 = load i32, i32* %20, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %15, align 4
  %163 = shl i32 %162, 6
  %164 = load i32, i32* %20, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %169 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  store i8* %167, i8** %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i8* @cpu_to_le16(i32 %174)
  %176 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %177 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  store i8* %175, i8** %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i8* @cpu_to_le16(i32 %182)
  %184 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %185 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  store i8* %183, i8** %189, align 8
  %190 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %192 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %190, %struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %128, %32
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
