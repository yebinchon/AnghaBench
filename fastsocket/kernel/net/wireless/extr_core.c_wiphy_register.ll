; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_wiphy_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_wiphy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, %struct.ieee80211_supported_band**, %struct.TYPE_10__*, i32, i64, i32, i64, %struct.TYPE_8__ }
%struct.ieee80211_supported_band = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_14__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32, i32*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.regulatory_request = type { i8*, i32, i32 }

@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NUM_NL80211_IFTYPES = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IEEE80211_BAND_60GHZ = common dso_local global i32 0, align 4
@cfg80211_disable_40mhz_24ghz = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@cfg80211_mutex = common dso_local global i32 0, align 4
@cfg80211_rdev_list = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4
@ieee80211_debugfs_dir = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_GTK_REKEY_FAILURE = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_SUPPORTS_GTK_REKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiphy_register(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulatory_request, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %13 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %12)
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %15 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %23 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %1
  %30 = phi i1 [ false, %1 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %415

37:                                               ; preds = %29
  %38 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %39 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %44 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %415

56:                                               ; preds = %48
  %57 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %63 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @is_zero_ether_addr(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %61
  %68 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %69 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %72 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %71, i32 0, i32 3
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i64 @memcmp(i32 %70, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %67, %61, %56
  %81 = phi i1 [ false, %61 ], [ false, %56 ], [ %79, %67 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %415

88:                                               ; preds = %80
  %89 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %90 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %95 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %100, %93
  %109 = phi i1 [ true, %93 ], [ %107, %100 ]
  br label %110

110:                                              ; preds = %108, %88
  %111 = phi i1 [ false, %88 ], [ %109, %108 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 @WARN_ON(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %415

118:                                              ; preds = %110
  %119 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %120 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %119, i32 0, i32 3
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = icmp ne %struct.TYPE_10__* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %125 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %128 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ETH_ALEN, align 4
  %134 = call i32 @memcpy(i32 %126, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %123, %118
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @WARN_ON(i32 %139)
  %141 = load i32, i32* @NUM_NL80211_IFTYPES, align 4
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %143, -2
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %149 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @WARN_ON(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %135
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %158 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %135
  %160 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %161 = call i32 @wiphy_verify_combinations(%struct.wiphy* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %415

166:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %312, %166
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %315

171:                                              ; preds = %167
  %172 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %173 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %172, i32 0, i32 2
  %174 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %174, i64 %176
  %178 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %177, align 8
  store %struct.ieee80211_supported_band* %178, %struct.ieee80211_supported_band** %7, align 8
  %179 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %180 = icmp ne %struct.ieee80211_supported_band* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %171
  br label %312

182:                                              ; preds = %171
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %185 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %187 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i64 @WARN_ON(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %415

197:                                              ; preds = %182
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @IEEE80211_BAND_60GHZ, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %203 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  br label %207

207:                                              ; preds = %201, %197
  %208 = phi i1 [ false, %197 ], [ %206, %201 ]
  %209 = zext i1 %208 to i32
  %210 = call i64 @WARN_ON(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %415

215:                                              ; preds = %207
  %216 = load i64, i64* @cfg80211_disable_40mhz_24ghz, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %243

218:                                              ; preds = %215
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %243

222:                                              ; preds = %218
  %223 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %224 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %222
  %229 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %232 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, %230
  store i32 %235, i32* %233, align 8
  %236 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %239 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, %237
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %228, %222, %218, %215
  %244 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %245 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp sgt i32 %246, 32
  %248 = zext i1 %247 to i32
  %249 = call i64 @WARN_ON(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %2, align 4
  br label %415

254:                                              ; preds = %243
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %308, %254
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %258 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %311

261:                                              ; preds = %255
  %262 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %263 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %262, i32 0, i32 3
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %271 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %270, i32 0, i32 3
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 5
  store i32 %269, i32* %276, align 4
  %277 = load i32, i32* @INT_MAX, align 4
  %278 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %279 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %278, i32 0, i32 3
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  store i32 %277, i32* %284, align 4
  %285 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %286 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %285, i32 0, i32 3
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %294 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %293, i32 0, i32 3
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  store i32 %292, i32* %299, align 4
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %302 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %301, i32 0, i32 3
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  store i32 %300, i32* %307, align 4
  br label %308

308:                                              ; preds = %261
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %255

311:                                              ; preds = %255
  store i32 1, i32* %8, align 4
  br label %312

312:                                              ; preds = %311, %181
  %313 = load i32, i32* %6, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %6, align 4
  br label %167

315:                                              ; preds = %167
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = call i64 @WARN_ON(i32 1)
  %320 = load i32, i32* @EINVAL, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %2, align 4
  br label %415

322:                                              ; preds = %315
  %323 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %324 = call i32 @ieee80211_set_bitrate_flags(%struct.wiphy* %323)
  %325 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %326 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %327 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = call i32 @device_add(i32* %328)
  store i32 %329, i32* %5, align 4
  %330 = load i32, i32* %5, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %322
  %333 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %334 = load i32, i32* %5, align 4
  store i32 %334, i32* %2, align 4
  br label %415

335:                                              ; preds = %322
  %336 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %337 = call i32 @wiphy_regulatory_register(%struct.wiphy* %336)
  %338 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %339 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %338, i32 0, i32 1
  %340 = call i32 @list_add_rcu(i32* %339, i32* @cfg80211_rdev_list)
  %341 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* @cfg80211_rdev_list_generation, align 4
  %343 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %344 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %343, i32 0, i32 0
  %345 = call i32 @wiphy_name(%struct.TYPE_14__* %344)
  %346 = load i32, i32* @ieee80211_debugfs_dir, align 4
  %347 = call i32* @debugfs_create_dir(i32 %345, i32 %346)
  %348 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %349 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  store i32* %347, i32** %350, align 8
  %351 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %352 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = call i64 @IS_ERR(i32* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %335
  %358 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %359 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  store i32* null, i32** %360, align 8
  br label %361

361:                                              ; preds = %357, %335
  %362 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %363 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %361
  %369 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %370 = call i32 @get_wiphy_idx(%struct.wiphy* %369)
  %371 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 2
  store i32 %370, i32* %371, align 4
  %372 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %373 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 1
  store i32 %372, i32* %373, align 8
  %374 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  store i8 57, i8* %376, align 1
  %377 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %11, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  store i8 57, i8* %379, align 1
  %380 = call i32 @nl80211_send_reg_change_event(%struct.regulatory_request* %11)
  br label %381

381:                                              ; preds = %368, %361
  %382 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %383 = call i32 @cfg80211_debugfs_rdev_add(%struct.cfg80211_registered_device* %382)
  %384 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %385 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %386 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @rfkill_register(i32 %387)
  store i32 %388, i32* %5, align 4
  %389 = load i32, i32* %5, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %409

391:                                              ; preds = %381
  %392 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %393 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 2
  %395 = call i32 @device_del(i32* %394)
  %396 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %397 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %398 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = call i32 @debugfs_remove_recursive(i32* %400)
  %402 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %403 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %402, i32 0, i32 1
  %404 = call i32 @list_del_rcu(i32* %403)
  %405 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %406 = call i32 @wiphy_regulatory_deregister(%struct.wiphy* %405)
  %407 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %408 = load i32, i32* %5, align 4
  store i32 %408, i32* %2, align 4
  br label %415

409:                                              ; preds = %381
  %410 = call i32 (...) @rtnl_lock()
  %411 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %412 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 0
  store i32 1, i32* %413, align 8
  %414 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %415

415:                                              ; preds = %409, %391, %332, %318, %251, %212, %194, %164, %115, %85, %53, %34
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wiphy_verify_combinations(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_set_bitrate_flags(%struct.wiphy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wiphy_regulatory_register(%struct.wiphy*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @nl80211_send_reg_change_event(%struct.regulatory_request*) #1

declare dso_local i32 @cfg80211_debugfs_rdev_add(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @wiphy_regulatory_deregister(%struct.wiphy*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
