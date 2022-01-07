; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c_ieee80211_process_addba_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c_ieee80211_process_addba_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.sta_info = type { %struct.TYPE_13__, i32, %struct.TYPE_20__, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64* }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, i64, i32, %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx*, %struct.TYPE_12__, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_POLICY_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@WLAN_STATUS_REQUEST_DECLINED = common dso_local global i32 0, align 4
@WLAN_STA_BLOCK_BA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Suspend in progress - Denying ADDBA request (%pM tid %d)\0A\00", align 1
@IEEE80211_HT_CAP_DELAY_BA = common dso_local global i32 0, align 4
@IEEE80211_MAX_AMPDU_BUF = common dso_local global i32 0, align 4
@WLAN_STATUS_INVALID_QOS_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"AddBA Req with bad params from %pM on tid %u. policy %d, buffer size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unexpected AddBA Req from %pM on tid %u\0A\00", align 1
@WLAN_BACK_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_QOS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sta_rx_agg_session_timer_expired = common dso_local global i32 0, align 4
@sta_rx_agg_reorder_timer_expired = common dso_local global i32 0, align 4
@IEEE80211_AMPDU_RX_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Rx A-MPDU request on %pM tid %d result %d\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_process_addba_request(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tid_ampdu_rx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = ashr i32 %43, 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IEEE80211_ADDBA_PARAM_POLICY_MASK, align 4
  %55 = and i32 %53, %54
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 6
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @WLAN_STATUS_REQUEST_DECLINED, align 4
  store i32 %65, i32* %16, align 4
  %66 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %67 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %68 = call i64 @test_sta_flag(%struct.sta_info* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %4
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i32, i8*, i32, i32, ...) @ht_dbg(i32 %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  br label %308

80:                                               ; preds = %4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IEEE80211_HT_CAP_DELAY_BA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83, %80
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @IEEE80211_MAX_AMPDU_BUF, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92, %83
  %97 = load i32, i32* @WLAN_STATUS_INVALID_QOS_PARAM, align 4
  store i32 %97, i32* %16, align 4
  %98 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i32, i8*, i32, i32, ...) @ht_dbg_ratelimited(i32 %100, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106)
  br label %308

108:                                              ; preds = %92
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @IEEE80211_MAX_AMPDU_BUF, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %127 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %131 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %125
  %140 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %141 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 (i32, i8*, i32, i32, ...) @ht_dbg_ratelimited(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @WLAN_BACK_RECIPIENT, align 4
  %151 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_QOS, align 4
  %152 = call i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info* %148, i32 %149, i32 %150, i32 %151, i32 0)
  br label %153

153:                                              ; preds = %139, %125
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call %struct.tid_ampdu_rx* @kmalloc(i32 96, i32 %154)
  store %struct.tid_ampdu_rx* %155, %struct.tid_ampdu_rx** %9, align 8
  %156 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %157 = icmp ne %struct.tid_ampdu_rx* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %303

159:                                              ; preds = %153
  %160 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %161 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %160, i32 0, i32 11
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load i32, i32* @sta_rx_agg_session_timer_expired, align 4
  %164 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %165 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  %167 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %168 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = ptrtoint i32* %172 to i64
  %174 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %175 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  store i64 %173, i64* %176, align 8
  %177 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %178 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %177, i32 0, i32 5
  %179 = call i32 @init_timer_deferrable(%struct.TYPE_21__* %178)
  %180 = load i32, i32* @sta_rx_agg_reorder_timer_expired, align 4
  %181 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %182 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %181, i32 0, i32 10
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 8
  %184 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %185 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = ptrtoint i32* %189 to i64
  %191 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %192 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %191, i32 0, i32 10
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i64 %190, i64* %193, align 8
  %194 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %195 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %194, i32 0, i32 10
  %196 = call i32 @init_timer(%struct.TYPE_12__* %195)
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i8* @kcalloc(i32 %197, i32 8, i32 %198)
  %200 = bitcast i8* %199 to %struct.tid_ampdu_rx*
  %201 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %202 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %201, i32 0, i32 9
  store %struct.tid_ampdu_rx* %200, %struct.tid_ampdu_rx** %202, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @kcalloc(i32 %203, i32 8, i32 %204)
  %206 = bitcast i8* %205 to %struct.tid_ampdu_rx*
  %207 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %208 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %207, i32 0, i32 8
  store %struct.tid_ampdu_rx* %206, %struct.tid_ampdu_rx** %208, align 8
  %209 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %210 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %209, i32 0, i32 9
  %211 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %210, align 8
  %212 = icmp ne %struct.tid_ampdu_rx* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %159
  %214 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %215 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %214, i32 0, i32 8
  %216 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %215, align 8
  %217 = icmp ne %struct.tid_ampdu_rx* %216, null
  br i1 %217, label %229, label %218

218:                                              ; preds = %213, %159
  %219 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %220 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %219, i32 0, i32 9
  %221 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %220, align 8
  %222 = call i32 @kfree(%struct.tid_ampdu_rx* %221)
  %223 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %224 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %223, i32 0, i32 8
  %225 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %224, align 8
  %226 = call i32 @kfree(%struct.tid_ampdu_rx* %225)
  %227 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %228 = call i32 @kfree(%struct.tid_ampdu_rx* %227)
  br label %303

229:                                              ; preds = %213
  %230 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %231 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %232 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IEEE80211_AMPDU_RX_START, align 4
  %235 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 0
  %237 = load i32, i32* %11, align 4
  %238 = call i32 @drv_ampdu_action(%struct.ieee80211_local* %230, i32 %233, i32 %234, %struct.TYPE_13__* %236, i32 %237, i32* %15, i32 0)
  store i32 %238, i32* %18, align 4
  %239 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %240 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %243 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 (i32, i8*, i32, i32, ...) @ht_dbg(i32 %241, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %18, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %229
  %252 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %253 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %252, i32 0, i32 9
  %254 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %253, align 8
  %255 = call i32 @kfree(%struct.tid_ampdu_rx* %254)
  %256 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %257 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %256, i32 0, i32 8
  %258 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %257, align 8
  %259 = call i32 @kfree(%struct.tid_ampdu_rx* %258)
  %260 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %261 = call i32 @kfree(%struct.tid_ampdu_rx* %260)
  br label %303

262:                                              ; preds = %229
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %265 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %15, align 4
  %267 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %268 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %271 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %274 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %277 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %279 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %278, i32 0, i32 6
  store i64 0, i64* %279, align 8
  %280 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %280, i32* %16, align 4
  %281 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %282 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %290 = call i32 @rcu_assign_pointer(i64 %288, %struct.tid_ampdu_rx* %289)
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %262
  %294 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %295 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %294, i32 0, i32 5
  %296 = load i32, i32* %12, align 4
  %297 = call i32 @TU_TO_EXP_TIME(i32 %296)
  %298 = call i32 @mod_timer(%struct.TYPE_21__* %295, i32 %297)
  %299 = load i32, i32* @jiffies, align 4
  %300 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %301 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %293, %262
  br label %303

303:                                              ; preds = %302, %251, %218, %158
  %304 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %305 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  %307 = call i32 @mutex_unlock(i32* %306)
  br label %308

308:                                              ; preds = %303, %96, %70
  %309 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %310 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %313 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %16, align 4
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %12, align 4
  %321 = call i32 @ieee80211_send_addba_resp(i32 %311, i32 %315, i32 %316, i32 %317, i32 %318, i32 1, i32 %319, i32 %320)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ht_dbg_ratelimited(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local %struct.tid_ampdu_rx* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer_deferrable(%struct.TYPE_21__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_12__*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tid_ampdu_rx*) #1

declare dso_local i32 @drv_ampdu_action(%struct.ieee80211_local*, i32, i32, %struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.tid_ampdu_rx*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_send_addba_resp(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
