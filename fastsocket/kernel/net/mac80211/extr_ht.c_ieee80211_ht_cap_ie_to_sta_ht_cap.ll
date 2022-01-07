; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_ht_cap_ie_to_sta_ht_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_ht_cap_ie_to_sta_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_supported_band = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.ieee80211_ht_cap = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.sta_info = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i8* null, align 8
@IEEE80211_STA_RX_BW_40 = common dso_local global i8* null, align 8
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_ht_cap* %2, %struct.sta_info* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_ht_cap*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %10 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_ht_cap* %2, %struct.ieee80211_ht_cap** %7, align 8
  store %struct.sta_info* %3, %struct.sta_info** %8, align 8
  %18 = call i32 @memset(%struct.ieee80211_sta_ht_cap* %9, i32 0, i32 32)
  %19 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %20 = icmp ne %struct.ieee80211_ht_cap* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %4
  br label %226

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = bitcast %struct.ieee80211_sta_ht_cap* %10 to i8*
  %33 = bitcast %struct.ieee80211_sta_ht_cap* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 32, i1 false)
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %42 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %43 = call i32 @test_sta_flag(%struct.sta_info* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %47 = call i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %46, %struct.ieee80211_sta_ht_cap* %10)
  br label %48

48:                                               ; preds = %45, %40, %28
  %49 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %56 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = or i32 %54, %66
  %68 = and i32 %52, %67
  %69 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %48
  %76 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %77 = xor i32 %76, -1
  %78 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %48
  %82 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %89 = xor i32 %88, -1
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %81
  %94 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %99 = and i32 %97, %98
  %100 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %103 = and i32 %101, %102
  %104 = ashr i32 %103, 2
  %105 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %12, align 4
  %109 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %93
  br label %226

120:                                              ; preds = %93
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %134

132:                                              ; preds = %120
  %133 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS, align 4
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %132, %125
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %162, %134
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %148 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %146, %154
  %156 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %139
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %135

165:                                              ; preds = %135
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %165
  %171 = load i32, i32* @IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %199, %170
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %185 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %183, %191
  %193 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %176
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %172

202:                                              ; preds = %172
  br label %203

203:                                              ; preds = %202, %165
  %204 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %210 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %208, %214
  %216 = and i32 %215, 1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %203
  %219 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %203
  br label %226

226:                                              ; preds = %225, %119, %27
  %227 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %228 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = call i32 @memcmp(i32* %229, %struct.ieee80211_sta_ht_cap* %9, i32 32)
  store i32 %230, i32* %15, align 4
  %231 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %232 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = call i32 @memcpy(i32* %233, %struct.ieee80211_sta_ht_cap* %9, i32 32)
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %241 [
    i32 135, label %243
    i32 136, label %243
    i32 134, label %246
    i32 133, label %246
    i32 132, label %246
    i32 137, label %246
  ]

241:                                              ; preds = %226
  %242 = call i32 @WARN_ON_ONCE(i32 1)
  br label %243

243:                                              ; preds = %226, %226, %241
  %244 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  %245 = ptrtoint i8* %244 to i32
  store i32 %245, i32* %16, align 4
  br label %259

246:                                              ; preds = %226, %226, %226, %226
  %247 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i8*, i8** @IEEE80211_STA_RX_BW_40, align 8
  br label %256

254:                                              ; preds = %246
  %255 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  br label %256

256:                                              ; preds = %254, %252
  %257 = phi i8* [ %253, %252 ], [ %255, %254 ]
  %258 = ptrtoint i8* %257 to i32
  store i32 %258, i32* %16, align 4
  br label %259

259:                                              ; preds = %256, %243
  %260 = load i32, i32* %16, align 4
  %261 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %262 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %260, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  store i32 1, i32* %15, align 4
  br label %267

267:                                              ; preds = %266, %259
  %268 = load i32, i32* %16, align 4
  %269 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %270 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 8
  %272 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = load i8*, i8** @IEEE80211_STA_RX_BW_40, align 8
  br label %281

279:                                              ; preds = %267
  %280 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i8* [ %278, %277 ], [ %280, %279 ]
  %283 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %284 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %288 = and i32 %286, %287
  %289 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %290 = ashr i32 %288, %289
  switch i32 %290, label %297 [
    i32 129, label %291
    i32 128, label %291
    i32 130, label %293
    i32 131, label %295
  ]

291:                                              ; preds = %281, %281
  %292 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  store i32 %292, i32* %17, align 4
  br label %297

293:                                              ; preds = %281
  %294 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  store i32 %294, i32* %17, align 4
  br label %297

295:                                              ; preds = %281
  %296 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %296, i32* %17, align 4
  br label %297

297:                                              ; preds = %281, %295, %293, %291
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %300 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %298, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  store i32 1, i32* %15, align 4
  br label %305

305:                                              ; preds = %304, %297
  %306 = load i32, i32* %17, align 4
  %307 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %308 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  store i32 %306, i32* %309, align 4
  %310 = load i32, i32* %15, align 4
  ret i32 %310
}

declare dso_local i32 @memset(%struct.ieee80211_sta_ht_cap*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_ht_cap*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
