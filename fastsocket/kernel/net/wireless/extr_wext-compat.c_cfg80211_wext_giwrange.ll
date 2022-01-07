; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32*, i64, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.iw_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i8* null, align 8
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA2 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IW_MAX_FREQUENCIES = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_ESSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_giwrange(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.iw_range*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca %struct.ieee80211_channel*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.iw_range*
  store %struct.iw_range* %21, %struct.iw_range** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %23 = icmp ne %struct.wireless_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %318

27:                                               ; preds = %4
  %28 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %29 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %28, i32 0, i32 0
  store i32 144, i32* %29, align 4
  %30 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %31 = call i32 @memset(%struct.iw_range* %30, i32 0, i32 144)
  %32 = load i32, i32* @WIRELESS_EXT, align 4
  %33 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %34 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %33, i32 0, i32 20
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %36 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %35, i32 0, i32 0
  store i32 21, i32* %36, align 8
  %37 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %38 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 19
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %41 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %42 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %41, i32 0, i32 18
  store i8* %40, i8** %42, align 8
  %43 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %44 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %43, i32 0, i32 17
  store i64 0, i64* %44, align 8
  %45 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %46 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %45, i32 0, i32 1
  store i32 255, i32* %46, align 4
  %47 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %48 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %47, i32 0, i32 16
  store i64 0, i64* %48, align 8
  %49 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %50 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %49, i32 0, i32 2
  store i32 2347, i32* %50, align 8
  %51 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %52 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %51, i32 0, i32 3
  store i32 256, i32* %52, align 4
  %53 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %54 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %53, i32 0, i32 4
  store i32 2346, i32* %54, align 8
  %55 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %56 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %55, i32 0, i32 5
  store i32 4, i32* %56, align 4
  %57 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %58 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %59 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %117 [
    i32 133, label %66
    i32 134, label %67
    i32 132, label %95
  ]

66:                                               ; preds = %27
  br label %117

67:                                               ; preds = %27
  %68 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %69 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %68, i32 0, i32 14
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 -110, i32* %70, align 8
  %71 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %72 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %71, i32 0, i32 14
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 70, i32* %73, align 4
  %74 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %75 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 35, i32* %76, align 8
  %77 = load i32, i32* @IW_QUAL_DBM, align 4
  %78 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %79 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %78, i32 0, i32 14
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %84 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %85 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %84, i32 0, i32 14
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %90 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %91 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %90, i32 0, i32 14
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %117

95:                                               ; preds = %27
  %96 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %97 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %96, i32 0, i32 14
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 100, i32* %98, align 8
  %99 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %100 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %99, i32 0, i32 14
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 100, i32* %101, align 4
  %102 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %103 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 50, i32* %104, align 8
  %105 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %106 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %107 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %106, i32 0, i32 14
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %112 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %113 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %112, i32 0, i32 14
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %27, %95, %67, %66
  %118 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %119 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %118, i32 0, i32 14
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 2
  %123 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %124 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %127 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %126, i32 0, i32 14
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %129, 2
  %131 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %132 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %135 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %134, i32 0, i32 14
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %139 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %198, %117
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %144 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %142, %147
  br i1 %148, label %149, label %201

149:                                              ; preds = %141
  %150 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %151 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %197 [
    i32 130, label %159
    i32 131, label %167
    i32 128, label %175
    i32 129, label %186
  ]

159:                                              ; preds = %149
  %160 = load i32, i32* @IW_ENC_CAPA_CIPHER_TKIP, align 4
  %161 = load i32, i32* @IW_ENC_CAPA_WPA, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %164 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %197

167:                                              ; preds = %149
  %168 = load i32, i32* @IW_ENC_CAPA_CIPHER_CCMP, align 4
  %169 = load i32, i32* @IW_ENC_CAPA_WPA2, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %172 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %197

175:                                              ; preds = %149
  %176 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %177 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %178 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %177, i32 0, i32 13
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %181 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %176, i32* %185, align 4
  br label %197

186:                                              ; preds = %149
  %187 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %188 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %189 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %188, i32 0, i32 13
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %192 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  store i32 %187, i32* %196, align 4
  br label %197

197:                                              ; preds = %149, %186, %175, %167, %159
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %141

201:                                              ; preds = %141
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %281, %201
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %284

206:                                              ; preds = %202
  %207 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %208 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 4
  %211 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %211, i64 %213
  %215 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %214, align 8
  store %struct.ieee80211_supported_band* %215, %struct.ieee80211_supported_band** %15, align 8
  %216 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %217 = icmp ne %struct.ieee80211_supported_band* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %206
  br label %281

219:                                              ; preds = %206
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %277, %219
  %221 = load i32, i32* %13, align 4
  %222 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %223 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  %229 = icmp slt i32 %227, %228
  br label %230

230:                                              ; preds = %226, %220
  %231 = phi i1 [ false, %220 ], [ %229, %226 ]
  br i1 %231, label %232, label %280

232:                                              ; preds = %230
  %233 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %234 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %233, i32 0, i32 1
  %235 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %235, i64 %237
  store %struct.ieee80211_channel* %238, %struct.ieee80211_channel** %16, align 8
  %239 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %240 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %276, label %245

245:                                              ; preds = %232
  %246 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %247 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ieee80211_frequency_to_channel(i32 %248)
  %250 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %251 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %250, i32 0, i32 11
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 %249, i32* %256, align 4
  %257 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %258 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %261 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %260, i32 0, i32 11
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  store i32 %259, i32* %266, align 4
  %267 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %268 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %267, i32 0, i32 11
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  store i32 6, i32* %273, align 4
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %276

276:                                              ; preds = %245, %232
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %220

280:                                              ; preds = %230
  br label %281

281:                                              ; preds = %280, %218
  %282 = load i32, i32* %12, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %202

284:                                              ; preds = %202
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %287 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %286, i32 0, i32 7
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %14, align 4
  %289 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %290 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 8
  %291 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %292 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @IW_EVENT_CAPA_SET_KERNEL(i32 %293)
  %295 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %296 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @SIOCGIWAP, align 4
  %299 = call i32 @IW_EVENT_CAPA_SET(i32 %297, i32 %298)
  %300 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %301 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @SIOCGIWSCAN, align 4
  %304 = call i32 @IW_EVENT_CAPA_SET(i32 %302, i32 %303)
  %305 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %306 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %305, i32 0, i32 0
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp sgt i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %284
  %312 = load i32, i32* @IW_SCAN_CAPA_ESSID, align 4
  %313 = load %struct.iw_range*, %struct.iw_range** %11, align 8
  %314 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %313, i32 0, i32 9
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %311, %284
  store i32 0, i32* %5, align 4
  br label %318

318:                                              ; preds = %317, %24
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @IW_EVENT_CAPA_SET_KERNEL(i32) #1

declare dso_local i32 @IW_EVENT_CAPA_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
