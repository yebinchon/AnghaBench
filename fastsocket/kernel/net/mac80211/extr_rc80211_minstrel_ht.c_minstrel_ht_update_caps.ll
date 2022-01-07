; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.ieee80211_mcs_info }
%struct.ieee80211_mcs_info = type { i64* }
%struct.minstrel_ht_sta = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.ieee80211_sta* }
%struct.minstrel_priv = type { i64 }
%struct.minstrel_ht_sta_priv = type { i32, %struct.minstrel_ht_sta, i32, i32, %struct.minstrel_ht_sta }

@minstrel_mcs_groups = common dso_local global %struct.TYPE_6__* null, align 8
@MINSTREL_MAX_STREAMS = common dso_local global i32 0, align 4
@MINSTREL_STREAM_GROUPS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_LDPC = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@mac80211_minstrel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)* @minstrel_ht_update_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_caps(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.minstrel_priv*, align 8
  %10 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %11 = alloca %struct.minstrel_ht_sta*, align 8
  %12 = alloca %struct.ieee80211_mcs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %19, %struct.minstrel_priv** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %21, %struct.minstrel_ht_sta_priv** %10, align 8
  %22 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %23 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %22, i32 0, i32 4
  store %struct.minstrel_ht_sta* %23, %struct.minstrel_ht_sta** %11, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store %struct.ieee80211_mcs_info* %26, %struct.ieee80211_mcs_info** %12, align 8
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  br label %259

37:                                               ; preds = %4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %38)
  %40 = load i32, i32* @MINSTREL_MAX_STREAMS, align 4
  %41 = load i32, i32* @MINSTREL_STREAM_GROUPS, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = icmp ne i32 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUILD_BUG_ON(i32 %45)
  %47 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %48 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %50 = call i32 @memset(%struct.minstrel_ht_sta* %49, i32 0, i32 56)
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %52 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %53 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %52, i32 0, i32 11
  store %struct.ieee80211_sta* %51, %struct.ieee80211_sta** %53, align 8
  %54 = load i32, i32* @jiffies, align 4
  %55 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %56 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ieee80211_frame_duration(i32 %59, i32 10, i32 60, i32 1, i32 1)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ieee80211_frame_duration(i32 %63, i32 0, i32 60, i32 1, i32 1)
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %70 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 2, %72
  %74 = add nsw i32 %71, %73
  %75 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %76 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = call i32 @MINSTREL_FRAC(i32 1, i32 1)
  %78 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %79 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  %80 = load %struct.minstrel_priv*, %struct.minstrel_priv** %9, align 8
  %81 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %37
  %85 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %86 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %85, i32 0, i32 2
  store i32 16, i32* %86, align 8
  %87 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %88 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  br label %94

89:                                               ; preds = %37
  %90 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %91 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %90, i32 0, i32 2
  store i32 8, i32* %91, align 8
  %92 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %93 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %92, i32 0, i32 3
  store i32 8, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %96 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %95, i32 0, i32 4
  store i32 4, i32* %96, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @IEEE80211_TX_CTL_STBC_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %106 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = load i32, i32* @IEEE80211_TX_CTL_LDPC, align 4
  %115 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %116 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %94
  store i32 0, i32* %17, align 4
  br label %120

120:                                              ; preds = %245, %119
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %123 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %122, i32 0, i32 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %124)
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %248

127:                                              ; preds = %120
  %128 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %129 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %128, i32 0, i32 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load %struct.minstrel_priv*, %struct.minstrel_priv** %9, align 8
  %140 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %141 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %143 = call i32 @minstrel_ht_update_cck(%struct.minstrel_priv* %139, %struct.minstrel_ht_sta* %140, %struct.ieee80211_supported_band* %141, %struct.ieee80211_sta* %142)
  br label %245

144:                                              ; preds = %127
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %144
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %154
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  br label %245

170:                                              ; preds = %164
  br label %178

171:                                              ; preds = %154
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %245

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %170
  br label %179

179:                                              ; preds = %178, %144
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %179
  %190 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %245

196:                                              ; preds = %189, %179
  %197 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %198 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %245

211:                                              ; preds = %202, %196
  %212 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %12, align 8
  %213 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minstrel_mcs_groups, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %214, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %226 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %225, i32 0, i32 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  store i64 %224, i64* %231, align 8
  %232 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %233 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %232, i32 0, i32 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %211
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %241, %211
  br label %245

245:                                              ; preds = %244, %210, %195, %176, %169, %138
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  br label %120

248:                                              ; preds = %120
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  br label %259

252:                                              ; preds = %248
  %253 = load %struct.minstrel_priv*, %struct.minstrel_priv** %9, align 8
  %254 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %255 = call i32 @minstrel_ht_update_stats(%struct.minstrel_priv* %253, %struct.minstrel_ht_sta* %254)
  %256 = load %struct.minstrel_priv*, %struct.minstrel_priv** %9, align 8
  %257 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %258 = call i32 @minstrel_ht_update_rates(%struct.minstrel_priv* %256, %struct.minstrel_ht_sta* %257)
  br label %283

259:                                              ; preds = %251, %36
  %260 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %261 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  %262 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %263 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %262, i32 0, i32 1
  %264 = call i32 @memset(%struct.minstrel_ht_sta* %263, i32 0, i32 56)
  %265 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %266 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %269 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %269, i32 0, i32 7
  store i32 %267, i32* %270, align 4
  %271 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %272 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %275 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %275, i32 0, i32 6
  store i32 %273, i32* %276, align 8
  %277 = load void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)*, void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mac80211_minstrel, i32 0, i32 0), align 8
  %278 = load i8*, i8** %5, align 8
  %279 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %280 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %281 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %282 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %281, i32 0, i32 1
  call void %277(i8* %278, %struct.ieee80211_supported_band* %279, %struct.ieee80211_sta* %280, %struct.minstrel_ht_sta* %282)
  br label %283

283:                                              ; preds = %259, %252
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.minstrel_ht_sta*, i32, i32) #1

declare dso_local i32 @ieee80211_frame_duration(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_ht_update_cck(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

declare dso_local i32 @minstrel_ht_update_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

declare dso_local i32 @minstrel_ht_update_rates(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
