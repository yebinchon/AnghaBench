; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_authenticate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.ieee80211_channel = type { i32 }
%struct.key_parse = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32* }

@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP104 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_CMD_AUTHENTICATE = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_SAE = common dso_local global i32 0, align 4
@NL80211_ATTR_SAE_DATA = common dso_local global i64 0, align 8
@NL80211_ATTR_LOCAL_STATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_authenticate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.key_parse, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = bitcast %struct.net_device* %26 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %27, %struct.cfg80211_registered_device** %6, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 1
  %30 = load %struct.net_device**, %struct.net_device*** %29, align 8
  %31 = getelementptr inbounds %struct.net_device*, %struct.net_device** %30, i64 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_IE, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @is_valid_ie_attr(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %401

44:                                               ; preds = %2
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %401

55:                                               ; preds = %44
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %401

66:                                               ; preds = %55
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %401

77:                                               ; preds = %66
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %401

88:                                               ; preds = %77
  %89 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %90 = call i32 @nl80211_parse_key(%struct.genl_info* %89, %struct.key_parse* %18)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %401

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %159

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %401

111:                                              ; preds = %103, %99
  %112 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %401

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WLAN_KEY_LEN_WEP40, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %130, %124
  %137 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142, %136
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %401

151:                                              ; preds = %142, %130
  %152 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %153, 4
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %401

158:                                              ; preds = %151
  br label %164

159:                                              ; preds = %95
  %160 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i32* null, i32** %163, align 8
  br label %164

164:                                              ; preds = %159, %158
  %165 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %201

168:                                              ; preds = %164
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %169

169:                                              ; preds = %191, %168
  %170 = load i32, i32* %20, align 4
  %171 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %172 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %181 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %179, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  store i32 1, i32* %21, align 4
  br label %194

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %20, align 4
  br label %169

194:                                              ; preds = %189, %169
  %195 = load i32, i32* %21, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %401

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %164
  %202 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %203 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* @EOPNOTSUPP, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %401

211:                                              ; preds = %201
  %212 = load %struct.net_device*, %struct.net_device** %7, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 1
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %211
  %220 = load %struct.net_device*, %struct.net_device** %7, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i32, i32* @EOPNOTSUPP, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %3, align 4
  br label %401

230:                                              ; preds = %219, %211
  %231 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %232 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = call i32* @nla_data(i64 %236)
  store i32* %237, i32** %9, align 8
  %238 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %239 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %238, i32 0, i32 0
  %240 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %241 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @nla_get_u32(i64 %245)
  %247 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.TYPE_8__* %239, i32 %246)
  store %struct.ieee80211_channel* %247, %struct.ieee80211_channel** %8, align 8
  %248 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %249 = icmp ne %struct.ieee80211_channel* %248, null
  br i1 %249, label %250, label %257

250:                                              ; preds = %230
  %251 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %252 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %250, %230
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %401

260:                                              ; preds = %250
  %261 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %262 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %265 = getelementptr inbounds i64, i64* %263, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = call i32* @nla_data(i64 %266)
  store i32* %267, i32** %10, align 8
  %268 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %269 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @nla_len(i64 %273)
  store i32 %274, i32* %14, align 4
  %275 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %276 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = load i64, i64* @NL80211_ATTR_IE, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %260
  %283 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %284 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = load i64, i64* @NL80211_ATTR_IE, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = call i32* @nla_data(i64 %288)
  store i32* %289, i32** %11, align 8
  %290 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %291 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = load i64, i64* @NL80211_ATTR_IE, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @nla_len(i64 %295)
  store i32 %296, i32* %15, align 4
  br label %297

297:                                              ; preds = %282, %260
  %298 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %299 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %302 = getelementptr inbounds i64, i64* %300, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @nla_get_u32(i64 %303)
  store i32 %304, i32* %17, align 4
  %305 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %306 = bitcast %struct.cfg80211_registered_device* %305 to %struct.net_device*
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @NL80211_CMD_AUTHENTICATE, align 4
  %309 = call i32 @nl80211_valid_auth_type(%struct.net_device* %306, i32 %307, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %297
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %401

314:                                              ; preds = %297
  %315 = load i32, i32* %17, align 4
  %316 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %320 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* @NL80211_ATTR_SAE_DATA, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %318
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %3, align 4
  br label %401

329:                                              ; preds = %318, %314
  %330 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %331 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %330, i32 0, i32 0
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* @NL80211_ATTR_SAE_DATA, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %365

337:                                              ; preds = %329
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %340 = icmp ne i32 %338, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %3, align 4
  br label %401

344:                                              ; preds = %337
  %345 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %346 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %345, i32 0, i32 0
  %347 = load i64*, i64** %346, align 8
  %348 = load i64, i64* @NL80211_ATTR_SAE_DATA, align 8
  %349 = getelementptr inbounds i64, i64* %347, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = call i32* @nla_data(i64 %350)
  store i32* %351, i32** %12, align 8
  %352 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %353 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %352, i32 0, i32 0
  %354 = load i64*, i64** %353, align 8
  %355 = load i64, i64* @NL80211_ATTR_SAE_DATA, align 8
  %356 = getelementptr inbounds i64, i64* %354, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @nla_len(i64 %357)
  store i32 %358, i32* %16, align 4
  %359 = load i32, i32* %16, align 4
  %360 = icmp slt i32 %359, 4
  br i1 %360, label %361, label %364

361:                                              ; preds = %344
  %362 = load i32, i32* @EINVAL, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %3, align 4
  br label %401

364:                                              ; preds = %344
  br label %365

365:                                              ; preds = %364, %329
  %366 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %367 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %366, i32 0, i32 0
  %368 = load i64*, i64** %367, align 8
  %369 = load i64, i64* @NL80211_ATTR_LOCAL_STATE_CHANGE, align 8
  %370 = getelementptr inbounds i64, i64* %368, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  %373 = xor i1 %372, true
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i32
  store i32 %375, i32* %19, align 4
  %376 = load i32, i32* %19, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %365
  store i32 0, i32* %3, align 4
  br label %401

379:                                              ; preds = %365
  %380 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %381 = bitcast %struct.cfg80211_registered_device* %380 to %struct.net_device*
  %382 = load %struct.net_device*, %struct.net_device** %7, align 8
  %383 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %384 = load i32, i32* %17, align 4
  %385 = load i32*, i32** %9, align 8
  %386 = load i32*, i32** %10, align 8
  %387 = load i32, i32* %14, align 4
  %388 = load i32*, i32** %11, align 8
  %389 = load i32, i32* %15, align 4
  %390 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* %16, align 4
  %400 = call i32 @cfg80211_mlme_auth(%struct.net_device* %381, %struct.net_device* %382, %struct.ieee80211_channel* %383, i32 %384, i32* %385, i32* %386, i32 %387, i32* %388, i32 %389, i32* %392, i64 %395, i32 %397, i32* %398, i32 %399)
  store i32 %400, i32* %3, align 4
  br label %401

401:                                              ; preds = %379, %378, %361, %341, %326, %311, %257, %227, %208, %197, %155, %148, %121, %108, %93, %85, %74, %63, %52, %41
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local i32 @is_valid_ie_attr(i64) #1

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_mlme_auth(%struct.net_device*, %struct.net_device*, %struct.ieee80211_channel*, i32, i32*, i32*, i32, i32*, i32, i32*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
