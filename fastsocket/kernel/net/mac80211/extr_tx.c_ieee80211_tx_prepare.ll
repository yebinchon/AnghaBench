; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i64, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_12__, %struct.ieee80211_local* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.ieee80211_tx_data = type { i32, %struct.TYPE_20__*, %struct.sk_buff*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_local* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.sk_buff = type { i64, i64, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.tid_ampdu_tx = type { i32 }

@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@TX_DROP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_INJECTED = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HW_TX_AMPDU_SETUP_IN_HW = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@TX_QUEUED = common dso_local global i32 0, align 4
@IEEE80211_TX_UNICAST = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_DONTFRAG = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@WLAN_STA_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, %struct.sk_buff*)* @ieee80211_tx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_tx_data* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_tx_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.tid_ampdu_tx*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_tx_data* %1, %struct.ieee80211_tx_data** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 4
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %10, align 8
  %20 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %21 = call i32 @memset(%struct.ieee80211_tx_data* %20, i32 0, i32 48)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %23, i32 0, i32 2
  store %struct.sk_buff* %22, %struct.sk_buff** %24, align 8
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %26 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %26, i32 0, i32 5
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %27, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %29, i32 0, i32 3
  store %struct.ieee80211_sub_if_data* %28, %struct.ieee80211_sub_if_data** %30, align 8
  %31 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %31, i32 0, i32 4
  %33 = call i32 @__skb_queue_head_init(i32* %32)
  %34 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %43, %struct.ieee80211_hdr** %9, align 8
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %3
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @rcu_dereference(i32 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_20__*
  %58 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %58, i32 0, i32 1
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %59, align 8
  %60 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = icmp ne %struct.TYPE_20__* %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %50
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @TX_DROP, align 4
  store i32 %74, i32* %4, align 4
  br label %282

75:                                               ; preds = %64, %50
  br label %104

76:                                               ; preds = %3
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IEEE80211_TX_CTL_INJECTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %76
  %84 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %84, i32 0, i32 3
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %85, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %89, i32 0, i32 2
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %88, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %83, %76
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_20__* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %96, i32 %99)
  %101 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %101, i32 0, i32 1
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %102, align 8
  br label %103

103:                                              ; preds = %95, %83
  br label %104

104:                                              ; preds = %103, %75
  %105 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = icmp ne %struct.TYPE_20__* %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %111 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_20__* @sta_info_get(%struct.ieee80211_sub_if_data* %110, i32 %113)
  %115 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %115, i32 0, i32 1
  store %struct.TYPE_20__* %114, %struct.TYPE_20__** %116, align 8
  br label %117

117:                                              ; preds = %109, %104
  %118 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = icmp ne %struct.TYPE_20__* %120, null
  br i1 %121, label %122, label %185

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %124 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ieee80211_is_data_qos(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %130 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ieee80211_is_qos_nullfunc(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %185, label %134

134:                                              ; preds = %128
  %135 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %136 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %185

142:                                              ; preds = %134
  %143 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @IEEE80211_HW_TX_AMPDU_SETUP_IN_HW, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %185, label %150

150:                                              ; preds = %142
  %151 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %152 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %151)
  store i32* %152, i32** %12, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @rcu_dereference(i32 %166)
  %168 = bitcast i8* %167 to %struct.tid_ampdu_tx*
  store %struct.tid_ampdu_tx* %168, %struct.tid_ampdu_tx** %13, align 8
  %169 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %13, align 8
  %170 = icmp ne %struct.tid_ampdu_tx* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %150
  %172 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %175 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %13, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data* %172, %struct.sk_buff* %173, %struct.ieee80211_tx_info* %174, %struct.tid_ampdu_tx* %175, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i32, i32* @TX_QUEUED, align 4
  store i32 %182, i32* %4, align 4
  br label %282

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183, %150
  br label %185

185:                                              ; preds = %184, %142, %134, %128, %122, %117
  %186 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %187 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @is_multicast_ether_addr(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %195 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %199 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %200 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %209

203:                                              ; preds = %185
  %204 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %205 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %206 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %203, %191
  %210 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %211 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %250, label %216

216:                                              ; preds = %209
  %217 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %216
  %224 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @FCS_LEN, align 8
  %228 = add nsw i64 %226, %227
  %229 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %230 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp sle i64 %228, %234
  br i1 %235, label %243, label %236

236:                                              ; preds = %223
  %237 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %238 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236, %223, %216
  %244 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %245 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %246 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %243, %236
  br label %250

250:                                              ; preds = %249, %209
  %251 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %252 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %251, i32 0, i32 1
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = icmp ne %struct.TYPE_20__* %253, null
  br i1 %254, label %261, label %255

255:                                              ; preds = %250
  %256 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %257 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %258 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %275

261:                                              ; preds = %250
  %262 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %263 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %262, i32 0, i32 1
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = load i32, i32* @WLAN_STA_CLEAR_PS_FILT, align 4
  %266 = call i64 @test_and_clear_sta_flag(%struct.TYPE_20__* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %261
  %269 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %270 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %271 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %268, %261
  br label %275

275:                                              ; preds = %274, %255
  %276 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %277 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %278 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  %281 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %275, %181, %73
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_data*, i32, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_20__* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local %struct.TYPE_20__* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.tid_ampdu_tx*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @test_and_clear_sta_flag(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
