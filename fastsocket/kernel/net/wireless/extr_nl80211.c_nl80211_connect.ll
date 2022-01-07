; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wiphy, %struct.TYPE_3__* }
%struct.wiphy = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cfg80211_registered_device = type { %struct.wiphy, %struct.TYPE_3__* }
%struct.cfg80211_connect_params = type { i32, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_cached_keys = type { i32 }

@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i8* null, align 8
@NL80211_ATTR_PRIVACY = common dso_local global i64 0, align 8
@NL80211_MAX_NR_CIPHER_SUITES = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_BG_SCAN_PERIOD = common dso_local global i64 0, align 8
@WIPHY_FLAG_SUPPORTS_FW_ROAM = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_USE_MFP = common dso_local global i64 0, align 8
@NL80211_MFP_REQUIRED = common dso_local global i64 0, align 8
@NL80211_MFP_NO = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_ATTR_KEYS = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_HT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_HT = common dso_local global i32 0, align 4
@NL80211_ATTR_HT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_VHT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_VHT = common dso_local global i32 0, align 4
@NL80211_ATTR_VHT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_VHT_CAPABILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_connect(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_connect_params, align 8
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_cached_keys*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %10, align 8
  %23 = call i32 @memset(%struct.cfg80211_connect_params* %8, i32 0, i32 112)
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @NL80211_ATTR_IE, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @is_valid_ie_attr(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %444

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @nla_len(i64 %49)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %444

55:                                               ; preds = %43
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @nla_get_u32(i64 %69)
  %71 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 15
  store i8* %70, i8** %71, align 8
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %73 = bitcast %struct.cfg80211_registered_device* %72 to %struct.net_device*
  %74 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 15
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %77 = call i32 @nl80211_valid_auth_type(%struct.net_device* %73, i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %444

82:                                               ; preds = %63
  br label %86

83:                                               ; preds = %55
  %84 = load i8*, i8** @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %85 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 15
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %82
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @NL80211_ATTR_PRIVACY, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 7
  store i64 %92, i64* %93, align 8
  %94 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %95 = bitcast %struct.cfg80211_registered_device* %94 to %struct.net_device*
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 14
  %98 = load i32, i32* @NL80211_MAX_NR_CIPHER_SUITES, align 4
  %99 = call i32 @nl80211_crypto_settings(%struct.net_device* %95, %struct.genl_info* %96, i32* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %444

104:                                              ; preds = %86
  %105 = load %struct.net_device*, %struct.net_device** %7, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load %struct.net_device*, %struct.net_device** %7, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %444

123:                                              ; preds = %112, %104
  %124 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %125 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %124, i32 0, i32 0
  store %struct.wiphy* %125, %struct.wiphy** %9, align 8
  %126 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 0
  store i32 -1, i32* %126, align 8
  %127 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %128 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @NL80211_ATTR_BG_SCAN_PERIOD, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %123
  %135 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %136 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @WIPHY_FLAG_SUPPORTS_FW_ROAM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_BG_SCAN_PERIOD, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @nla_get_u16(i64 %147)
  %149 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  br label %150

150:                                              ; preds = %141, %134, %123
  %151 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %152 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %150
  %159 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %160 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @nla_data(i64 %164)
  %166 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 13
  store i8* %165, i8** %166, align 8
  br label %167

167:                                              ; preds = %158, %150
  %168 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %169 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @nla_data(i64 %173)
  %175 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 12
  store i8* %174, i8** %175, align 8
  %176 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %177 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @nla_len(i64 %181)
  %183 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 11
  store i8* %182, i8** %183, align 8
  %184 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %185 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* @NL80211_ATTR_IE, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %167
  %192 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %193 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @NL80211_ATTR_IE, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @nla_data(i64 %197)
  %199 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 10
  store i8* %198, i8** %199, align 8
  %200 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %201 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* @NL80211_ATTR_IE, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @nla_len(i64 %205)
  %207 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 9
  store i8* %206, i8** %207, align 8
  br label %208

208:                                              ; preds = %191, %167
  %209 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %210 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %208
  %217 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %218 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @nla_get_u32(i64 %222)
  %224 = ptrtoint i8* %223 to i64
  %225 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 1
  store i64 %224, i64* %225, align 8
  %226 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @NL80211_MFP_REQUIRED, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %216
  %231 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @NL80211_MFP_NO, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %444

238:                                              ; preds = %230, %216
  br label %242

239:                                              ; preds = %208
  %240 = load i64, i64* @NL80211_MFP_NO, align 8
  %241 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 1
  store i64 %240, i64* %241, align 8
  br label %242

242:                                              ; preds = %239, %238
  %243 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %244 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %242
  %251 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %252 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %253 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = call i8* @nla_get_u32(i64 %257)
  %259 = call %struct.TYPE_4__* @ieee80211_get_channel(%struct.wiphy* %251, i8* %258)
  %260 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 8
  store %struct.TYPE_4__* %259, %struct.TYPE_4__** %260, align 8
  %261 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = icmp ne %struct.TYPE_4__* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %250
  %265 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %264, %250
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %3, align 4
  br label %444

275:                                              ; preds = %264
  br label %276

276:                                              ; preds = %275, %242
  %277 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 7
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %305

280:                                              ; preds = %276
  %281 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %282 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i64, i64* @NL80211_ATTR_KEYS, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %280
  %289 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %290 = bitcast %struct.cfg80211_registered_device* %289 to %struct.net_device*
  %291 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %292 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %291, i32 0, i32 0
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* @NL80211_ATTR_KEYS, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device* %290, i64 %296, i32* null)
  store %struct.cfg80211_cached_keys* %297, %struct.cfg80211_cached_keys** %10, align 8
  %298 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %299 = call i64 @IS_ERR(%struct.cfg80211_cached_keys* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %288
  %302 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %303 = call i32 @PTR_ERR(%struct.cfg80211_cached_keys* %302)
  store i32 %303, i32* %3, align 4
  br label %444

304:                                              ; preds = %288
  br label %305

305:                                              ; preds = %304, %280, %276
  %306 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %307 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = load i64, i64* @NL80211_ATTR_DISABLE_HT, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = call i64 @nla_get_flag(i64 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %305
  %315 = load i32, i32* @ASSOC_REQ_DISABLE_HT, align 4
  %316 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %315
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %314, %305
  %320 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %321 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %320, i32 0, i32 0
  %322 = load i64*, i64** %321, align 8
  %323 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 6
  %329 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %330 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %329, i32 0, i32 0
  %331 = load i64*, i64** %330, align 8
  %332 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %333 = getelementptr inbounds i64, i64* %331, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = call i8* @nla_data(i64 %334)
  %336 = call i32 @memcpy(i32* %328, i8* %335, i32 4)
  br label %337

337:                                              ; preds = %327, %319
  %338 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %339 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %338, i32 0, i32 0
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %368

345:                                              ; preds = %337
  %346 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %347 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %358, label %353

353:                                              ; preds = %345
  %354 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %355 = call i32 @kfree(%struct.cfg80211_cached_keys* %354)
  %356 = load i32, i32* @EINVAL, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %3, align 4
  br label %444

358:                                              ; preds = %345
  %359 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 5
  %360 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %361 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %360, i32 0, i32 0
  %362 = load i64*, i64** %361, align 8
  %363 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %364 = getelementptr inbounds i64, i64* %362, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = call i8* @nla_data(i64 %365)
  %367 = call i32 @memcpy(i32* %359, i8* %366, i32 4)
  br label %368

368:                                              ; preds = %358, %337
  %369 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %370 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %369, i32 0, i32 0
  %371 = load i64*, i64** %370, align 8
  %372 = load i64, i64* @NL80211_ATTR_DISABLE_VHT, align 8
  %373 = getelementptr inbounds i64, i64* %371, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = call i64 @nla_get_flag(i64 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %368
  %378 = load i32, i32* @ASSOC_REQ_DISABLE_VHT, align 4
  %379 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %378
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %377, %368
  %383 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %384 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %383, i32 0, i32 0
  %385 = load i64*, i64** %384, align 8
  %386 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %387 = getelementptr inbounds i64, i64* %385, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %382
  %391 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 3
  %392 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %393 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %392, i32 0, i32 0
  %394 = load i64*, i64** %393, align 8
  %395 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = call i8* @nla_data(i64 %397)
  %399 = call i32 @memcpy(i32* %391, i8* %398, i32 4)
  br label %400

400:                                              ; preds = %390, %382
  %401 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %402 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %401, i32 0, i32 0
  %403 = load i64*, i64** %402, align 8
  %404 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %405 = getelementptr inbounds i64, i64* %403, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %431

408:                                              ; preds = %400
  %409 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %410 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %409, i32 0, i32 0
  %411 = load i64*, i64** %410, align 8
  %412 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %413 = getelementptr inbounds i64, i64* %411, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %421, label %416

416:                                              ; preds = %408
  %417 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %418 = call i32 @kfree(%struct.cfg80211_cached_keys* %417)
  %419 = load i32, i32* @EINVAL, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %3, align 4
  br label %444

421:                                              ; preds = %408
  %422 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %8, i32 0, i32 2
  %423 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %424 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %423, i32 0, i32 0
  %425 = load i64*, i64** %424, align 8
  %426 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %427 = getelementptr inbounds i64, i64* %425, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = call i8* @nla_data(i64 %428)
  %430 = call i32 @memcpy(i32* %422, i8* %429, i32 4)
  br label %431

431:                                              ; preds = %421, %400
  %432 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %433 = bitcast %struct.cfg80211_registered_device* %432 to %struct.net_device*
  %434 = load %struct.net_device*, %struct.net_device** %7, align 8
  %435 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %436 = call i32 @cfg80211_connect(%struct.net_device* %433, %struct.net_device* %434, %struct.cfg80211_connect_params* %8, %struct.cfg80211_cached_keys* %435)
  store i32 %436, i32* %11, align 4
  %437 = load i32, i32* %11, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %431
  %440 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %441 = call i32 @kfree(%struct.cfg80211_cached_keys* %440)
  br label %442

442:                                              ; preds = %439, %431
  %443 = load i32, i32* %11, align 4
  store i32 %443, i32* %3, align 4
  br label %444

444:                                              ; preds = %442, %416, %353, %301, %272, %235, %120, %102, %79, %52, %32
  %445 = load i32, i32* %3, align 4
  ret i32 %445
}

declare dso_local i32 @memset(%struct.cfg80211_connect_params*, i32, i32) #1

declare dso_local i32 @is_valid_ie_attr(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @nl80211_crypto_settings(%struct.net_device*, %struct.genl_info*, i32*, i32) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local %struct.TYPE_4__* @ieee80211_get_channel(%struct.wiphy*, i8*) #1

declare dso_local %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @PTR_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i64 @nla_get_flag(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @cfg80211_connect(%struct.net_device*, %struct.net_device*, %struct.cfg80211_connect_params*, %struct.cfg80211_cached_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
