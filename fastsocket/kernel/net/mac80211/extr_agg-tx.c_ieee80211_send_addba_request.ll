; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_send_addba_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_send_addba_request.c"
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
@WLAN_ACTION_ADDBA_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32)* @ieee80211_send_addba_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_addba_request(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_local*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.ieee80211_mgmt*, align 8
  %18 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  store %struct.ieee80211_local* %21, %struct.ieee80211_local** %15, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 64, %25
  %27 = call %struct.sk_buff* @dev_alloc_skb(i64 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  br label %191

31:                                               ; preds = %7
  %32 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @skb_reserve(%struct.sk_buff* %32, i64 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %39 = call i64 @skb_put(%struct.sk_buff* %38, i32 24)
  %40 = inttoptr i64 %39 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %40, %struct.ieee80211_mgmt** %17, align 8
  %41 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %42 = call i32 @memset(%struct.ieee80211_mgmt* %41, i32 0, i32 24)
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %50 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %51, i32* %55, i32 %56)
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %31
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71, %64, %31
  %79 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %81, i32* %85, i32 %86)
  br label %126

88:                                               ; preds = %71
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %97 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32 %98, i32* %103, i32 %104)
  br label %125

106:                                              ; preds = %88
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %115 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = call i32 @memcpy(i32 %116, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %106
  br label %125

125:                                              ; preds = %124, %95
  br label %126

126:                                              ; preds = %125, %78
  %127 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %128 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %132 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %134 = call i64 @skb_put(%struct.sk_buff* %133, i32 33)
  %135 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %136 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %137 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  %140 = load i32, i32* @WLAN_ACTION_ADDBA_REQ, align 4
  %141 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %142 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 4
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %149 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  store i32 %147, i32* %153, align 8
  store i32 2, i32* %18, align 4
  %154 = load i32, i32* %10, align 4
  %155 = shl i32 %154, 2
  %156 = load i32, i32* %18, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %13, align 4
  %159 = shl i32 %158, 6
  %160 = load i32, i32* %18, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i8* @cpu_to_le16(i32 %162)
  %164 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %165 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  store i8* %163, i8** %169, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i8* @cpu_to_le16(i32 %170)
  %172 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %173 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  store i8* %171, i8** %177, align 8
  %178 = load i32, i32* %12, align 4
  %179 = shl i32 %178, 4
  %180 = call i8* @cpu_to_le16(i32 %179)
  %181 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %182 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  store i8* %180, i8** %186, align 8
  %187 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data* %187, %struct.sk_buff* %188, i32 %189)
  br label %191

191:                                              ; preds = %126, %30
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
