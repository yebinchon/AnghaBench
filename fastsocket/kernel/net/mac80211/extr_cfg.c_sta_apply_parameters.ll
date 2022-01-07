; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_apply_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_apply_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sta_info = type { i64, i32, %struct.TYPE_11__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_11__ = type { i32, i32*, i64, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.station_parameters = type { i32, i32, i32, i64, i32*, i32, i32, i32, i64, i32, i32, i64, i32, i32 }

@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_STA_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@WLAN_STA_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_UAPSD = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_PLINK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*)* @sta_apply_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_apply_parameters(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.station_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca %struct.ieee80211_sub_if_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 3
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  store %struct.ieee80211_sub_if_data* %20, %struct.ieee80211_sub_if_data** %13, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %22 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %30
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, align 8
  store %struct.ieee80211_supported_band* %32, %struct.ieee80211_supported_band** %12, align 8
  %33 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  %36 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %37 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 1
  %41 = call i64 @ieee80211_vif_is_mesh(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %3
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %60, %54
  br label %94

66:                                               ; preds = %3
  %67 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %68 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %69 = call i64 @test_sta_flag(%struct.sta_info* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %77, %71
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %96 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @sta_apply_auth_flags(%struct.ieee80211_local* %95, %struct.sta_info* %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %331

104:                                              ; preds = %94
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %113 = call i32 @BIT(i32 %112)
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %118 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %119 = call i32 @set_sta_flag(%struct.sta_info* %117, i32 %118)
  br label %124

120:                                              ; preds = %110
  %121 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %122 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %123 = call i32 @clear_sta_flag(%struct.sta_info* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %104
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %134 = call i32 @BIT(i32 %133)
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %139 = load i32, i32* @WLAN_STA_WME, align 4
  %140 = call i32 @set_sta_flag(%struct.sta_info* %138, i32 %139)
  %141 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %151

144:                                              ; preds = %131
  %145 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %146 = load i32, i32* @WLAN_STA_WME, align 4
  %147 = call i32 @clear_sta_flag(%struct.sta_info* %145, i32 %146)
  %148 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %149 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %137
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %155 = call i32 @BIT(i32 %154)
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %161 = call i32 @BIT(i32 %160)
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %166 = load i32, i32* @WLAN_STA_MFP, align 4
  %167 = call i32 @set_sta_flag(%struct.sta_info* %165, i32 %166)
  br label %172

168:                                              ; preds = %158
  %169 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %170 = load i32, i32* @WLAN_STA_MFP, align 4
  %171 = call i32 @clear_sta_flag(%struct.sta_info* %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %152
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %176 = call i32 @BIT(i32 %175)
  %177 = and i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %187 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %188 = call i32 @set_sta_flag(%struct.sta_info* %186, i32 %187)
  br label %193

189:                                              ; preds = %179
  %190 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %191 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %192 = call i32 @clear_sta_flag(%struct.sta_info* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %185
  br label %194

194:                                              ; preds = %193, %173
  %195 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %196 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @STATION_PARAM_APPLY_UAPSD, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %203 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %202, i32 0, i32 13
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %206 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  store i32 %204, i32* %207, align 4
  %208 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %209 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %212 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 3
  store i32 %210, i32* %213, align 8
  br label %214

214:                                              ; preds = %201, %194
  %215 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %216 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %215, i32 0, i32 11
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %221 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %220, i32 0, i32 11
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %224 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  store i64 %222, i64* %225, align 8
  br label %226

226:                                              ; preds = %219, %214
  %227 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %228 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp sge i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %233 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %231, %226
  %238 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %239 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %298

242:                                              ; preds = %237
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %243

243:                                              ; preds = %286, %242
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %246 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %289

249:                                              ; preds = %243
  %250 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %251 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 127
  %258 = mul nsw i32 %257, 5
  store i32 %258, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %259

259:                                              ; preds = %282, %249
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %262 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %285

265:                                              ; preds = %259
  %266 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %267 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %266, i32 0, i32 1
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %265
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @BIT(i32 %277)
  %279 = load i32, i32* %9, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %9, align 4
  br label %281

281:                                              ; preds = %276, %265
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %259

285:                                              ; preds = %259
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %243

289:                                              ; preds = %243
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %292 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %290, i32* %297, align 4
  br label %298

298:                                              ; preds = %289, %237
  %299 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %300 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %305 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %306 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %307 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %306, i32 0, i32 10
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %310 = call i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %304, %struct.ieee80211_supported_band* %305, i32 %308, %struct.sta_info* %309)
  br label %311

311:                                              ; preds = %303, %298
  %312 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %313 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %311
  %317 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %318 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %319 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %320 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %323 = call i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data* %317, %struct.ieee80211_supported_band* %318, i32 %321, %struct.sta_info* %322)
  br label %324

324:                                              ; preds = %316, %311
  %325 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %326 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %325, i32 0, i32 1
  %327 = call i64 @ieee80211_vif_is_mesh(i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %330

330:                                              ; preds = %329, %324
  store i32 0, i32* %4, align 4
  br label %331

331:                                              ; preds = %330, %102
  %332 = load i32, i32* %4, align 4
  ret i32 %332
}

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_apply_auth_flags(%struct.ieee80211_local*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
