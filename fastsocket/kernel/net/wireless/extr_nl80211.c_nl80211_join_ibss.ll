; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_join_ibss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wiphy, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.wiphy = type { i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.wiphy, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.cfg80211_ibss_params = type { i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.cfg80211_cached_keys = type { i32 }

@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_40 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_FEATURE_HT_IBSS = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_FIXED = common dso_local global i64 0, align 8
@NL80211_ATTR_PRIVACY = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_BASIC_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_MCAST_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_KEYS = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_join_ibss(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_ibss_params, align 8
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_cached_keys*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = bitcast %struct.net_device* %20 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %7, align 8
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %10, align 8
  %27 = call i32 @memset(%struct.cfg80211_ibss_params* %8, i32 0, i32 80)
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @NL80211_ATTR_IE, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_valid_ie_attr(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %378

39:                                               ; preds = %2
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @nla_len(i64 %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47, %39
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %378

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  store i32 100, i32* %60, align 8
  %61 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %59
  %69 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %70 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nla_get_u32(i64 %74)
  %76 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %84, label %80

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 10000
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %68
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %378

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %59
  %89 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %90 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %378

98:                                               ; preds = %88
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %378

109:                                              ; preds = %98
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %111 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %110, i32 0, i32 0
  store %struct.wiphy* %111, %struct.wiphy** %9, align 8
  %112 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %109
  %120 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %121 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @nla_data(i64 %125)
  %127 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 11
  store i8* %126, i8** %127, align 8
  %128 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 11
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @is_valid_ether_addr(i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %119
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %378

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %138 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @nla_data(i64 %142)
  %144 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 10
  store i8* %143, i8** %144, align 8
  %145 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %146 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @nla_len(i64 %150)
  %152 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 9
  store i8* %151, i8** %152, align 8
  %153 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %154 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @NL80211_ATTR_IE, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %136
  %161 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %162 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @NL80211_ATTR_IE, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @nla_data(i64 %166)
  %168 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 8
  store i8* %167, i8** %168, align 8
  %169 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %170 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @NL80211_ATTR_IE, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @nla_len(i64 %174)
  %176 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 7
  store i8* %175, i8** %176, align 8
  br label %177

177:                                              ; preds = %160, %136
  %178 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %179 = bitcast %struct.cfg80211_registered_device* %178 to %struct.net_device*
  %180 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %181 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %182 = call i32 @nl80211_parse_chandef(%struct.net_device* %179, %struct.genl_info* %180, %struct.TYPE_9__* %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %3, align 4
  br label %378

187:                                              ; preds = %177
  %188 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %189 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %191 = call i32 @cfg80211_reg_can_beacon(%struct.wiphy* %189, %struct.TYPE_9__* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %378

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %378

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %205
  %212 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %213 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %211
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %378

222:                                              ; preds = %211, %205
  %223 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %224 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* @NL80211_ATTR_FREQ_FIXED, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 1
  store i32 %232, i32* %233, align 4
  %234 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %235 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* @NL80211_ATTR_PRIVACY, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  %241 = xor i1 %240, true
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 2
  store i32 %243, i32* %244, align 8
  %245 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %246 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %289

252:                                              ; preds = %222
  %253 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %254 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @nla_data(i64 %258)
  %260 = bitcast i8* %259 to i32*
  store i32* %260, i32** %12, align 8
  %261 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %262 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %265 = getelementptr inbounds i64, i64* %263, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = call i8* @nla_len(i64 %266)
  %268 = ptrtoint i8* %267 to i32
  store i32 %268, i32* %13, align 4
  %269 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %270 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %269, i32 0, i32 1
  %271 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %270, align 8
  %272 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %271, i64 %276
  %278 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %277, align 8
  store %struct.ieee80211_supported_band* %278, %struct.ieee80211_supported_band** %14, align 8
  %279 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %283 = call i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band* %279, i32* %280, i32 %281, i32* %282)
  store i32 %283, i32* %11, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %252
  %287 = load i32, i32* %11, align 4
  store i32 %287, i32* %3, align 4
  br label %378

288:                                              ; preds = %252
  br label %289

289:                                              ; preds = %288, %222
  %290 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %291 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %289
  %298 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %299 = bitcast %struct.cfg80211_registered_device* %298 to %struct.net_device*
  %300 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %303 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @nla_get_u32(i64 %307)
  %309 = call i32 @nl80211_parse_mcast_rate(%struct.net_device* %299, i32 %301, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %297
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %378

314:                                              ; preds = %297, %289
  %315 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %357

318:                                              ; preds = %314
  %319 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %320 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* @NL80211_ATTR_KEYS, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %357

326:                                              ; preds = %318
  store i32 0, i32* %15, align 4
  %327 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %328 = bitcast %struct.cfg80211_registered_device* %327 to %struct.net_device*
  %329 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %330 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %329, i32 0, i32 0
  %331 = load i64*, i64** %330, align 8
  %332 = load i64, i64* @NL80211_ATTR_KEYS, align 8
  %333 = getelementptr inbounds i64, i64* %331, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = call %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device* %328, i64 %334, i32* %15)
  store %struct.cfg80211_cached_keys* %335, %struct.cfg80211_cached_keys** %10, align 8
  %336 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %337 = call i64 @IS_ERR(%struct.cfg80211_cached_keys* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %326
  %340 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %341 = call i32 @PTR_ERR(%struct.cfg80211_cached_keys* %340)
  store i32 %341, i32* %3, align 4
  br label %378

342:                                              ; preds = %326
  %343 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %347 = icmp ne i64 %345, %346
  br i1 %347, label %348, label %356

348:                                              ; preds = %342
  %349 = load i32, i32* %15, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %348
  %352 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %353 = call i32 @kfree(%struct.cfg80211_cached_keys* %352)
  %354 = load i32, i32* @EINVAL, align 4
  %355 = sub nsw i32 0, %354
  store i32 %355, i32* %3, align 4
  br label %378

356:                                              ; preds = %348, %342
  br label %357

357:                                              ; preds = %356, %318, %314
  %358 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %359 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %358, i32 0, i32 0
  %360 = load i64*, i64** %359, align 8
  %361 = load i64, i64* @NL80211_ATTR_CONTROL_PORT, align 8
  %362 = getelementptr inbounds i64, i64* %360, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @nla_get_flag(i64 %363)
  %365 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 3
  store i32 %364, i32* %365, align 4
  %366 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %367 = bitcast %struct.cfg80211_registered_device* %366 to %struct.net_device*
  %368 = load %struct.net_device*, %struct.net_device** %7, align 8
  %369 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %370 = call i32 @cfg80211_join_ibss(%struct.net_device* %367, %struct.net_device* %368, %struct.cfg80211_ibss_params* %8, %struct.cfg80211_cached_keys* %369)
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* %11, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %357
  %374 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %375 = call i32 @kfree(%struct.cfg80211_cached_keys* %374)
  br label %376

376:                                              ; preds = %373, %357
  %377 = load i32, i32* %11, align 4
  store i32 %377, i32* %3, align 4
  br label %378

378:                                              ; preds = %376, %351, %339, %311, %286, %219, %202, %193, %185, %132, %106, %95, %84, %56, %36
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local i32 @memset(%struct.cfg80211_ibss_params*, i32, i32) #1

declare dso_local i32 @is_valid_ie_attr(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @cfg80211_reg_can_beacon(%struct.wiphy*, %struct.TYPE_9__*) #1

declare dso_local i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band*, i32*, i32, i32*) #1

declare dso_local i32 @nl80211_parse_mcast_rate(%struct.net_device*, i32, i32) #1

declare dso_local %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @PTR_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @kfree(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @nla_get_flag(i64) #1

declare dso_local i32 @cfg80211_join_ibss(%struct.net_device*, %struct.net_device*, %struct.cfg80211_ibss_params*, %struct.cfg80211_cached_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
