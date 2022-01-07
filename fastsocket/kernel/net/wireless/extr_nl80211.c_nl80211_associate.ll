; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_ATTR_USE_MFP = common dso_local global i64 0, align 8
@NL80211_MFP_REQUIRED = common dso_local global i32 0, align 4
@NL80211_MFP_NO = common dso_local global i32 0, align 4
@NL80211_ATTR_PREV_BSSID = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_HT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_HT = common dso_local global i32 0, align 4
@NL80211_ATTR_HT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_VHT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_VHT = common dso_local global i32 0, align 4
@NL80211_ATTR_VHT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_VHT_CAPABILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_associate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.cfg80211_assoc_request, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = bitcast %struct.cfg80211_assoc_request* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 56, i1 false)
  store i32 0, i32* %13, align 4
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @NL80211_ATTR_IE, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @is_valid_ie_attr(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %354

38:                                               ; preds = %2
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54, %46, %38
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %354

65:                                               ; preds = %54
  %66 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %67 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %354

75:                                               ; preds = %65
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %354

94:                                               ; preds = %83, %75
  %95 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %96 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @nla_data(i64 %100)
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %10, align 8
  %103 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %104 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %103, i32 0, i32 0
  %105 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @nla_get_u32(i64 %110)
  %112 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32* %104, i32 %111)
  store %struct.ieee80211_channel* %112, %struct.ieee80211_channel** %8, align 8
  %113 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %114 = icmp ne %struct.ieee80211_channel* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %94
  %116 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115, %94
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %354

125:                                              ; preds = %115
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @nla_data(i64 %131)
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %11, align 8
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @nla_len(i64 %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_IE, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %125
  %150 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %151 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @NL80211_ATTR_IE, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @nla_data(i64 %155)
  %157 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 9
  store i8* %156, i8** %157, align 8
  %158 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %159 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @NL80211_ATTR_IE, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @nla_len(i64 %163)
  %165 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 8
  store i8* %164, i8** %165, align 8
  br label %166

166:                                              ; preds = %149, %125
  %167 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %168 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %166
  %175 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %176 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @nla_get_u32(i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @NL80211_MFP_REQUIRED, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %195

187:                                              ; preds = %174
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @NL80211_MFP_NO, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %354

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %185
  br label %196

196:                                              ; preds = %195, %166
  %197 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %198 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @NL80211_ATTR_PREV_BSSID, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %196
  %205 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %206 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* @NL80211_ATTR_PREV_BSSID, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @nla_data(i64 %210)
  %212 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 7
  store i8* %211, i8** %212, align 8
  br label %213

213:                                              ; preds = %204, %196
  %214 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %215 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* @NL80211_ATTR_DISABLE_HT, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @nla_get_flag(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load i32, i32* @ASSOC_REQ_DISABLE_HT, align 4
  %224 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %223
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %222, %213
  %228 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %229 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 6
  %237 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %238 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = call i8* @nla_data(i64 %242)
  %244 = call i32 @memcpy(i32* %236, i8* %243, i32 4)
  br label %245

245:                                              ; preds = %235, %227
  %246 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %247 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %245
  %254 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %255 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %258 = getelementptr inbounds i64, i64* %256, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %253
  %262 = load i32, i32* @EINVAL, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %3, align 4
  br label %354

264:                                              ; preds = %253
  %265 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 5
  %266 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %267 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @nla_data(i64 %271)
  %273 = call i32 @memcpy(i32* %265, i8* %272, i32 4)
  br label %274

274:                                              ; preds = %264, %245
  %275 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %276 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = load i64, i64* @NL80211_ATTR_DISABLE_VHT, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @nla_get_flag(i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %274
  %284 = load i32, i32* @ASSOC_REQ_DISABLE_VHT, align 4
  %285 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %284
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %283, %274
  %289 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %290 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %288
  %297 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 3
  %298 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %299 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %302 = getelementptr inbounds i64, i64* %300, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = call i8* @nla_data(i64 %303)
  %305 = call i32 @memcpy(i32* %297, i8* %304, i32 4)
  br label %306

306:                                              ; preds = %296, %288
  %307 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %308 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %307, i32 0, i32 0
  %309 = load i64*, i64** %308, align 8
  %310 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %311 = getelementptr inbounds i64, i64* %309, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %306
  %315 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %316 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %319 = getelementptr inbounds i64, i64* %317, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %314
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %3, align 4
  br label %354

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 2
  %327 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %328 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = call i8* @nla_data(i64 %332)
  %334 = call i32 @memcpy(i32* %326, i8* %333, i32 4)
  br label %335

335:                                              ; preds = %325, %306
  %336 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %337 = bitcast %struct.cfg80211_registered_device* %336 to %struct.net_device*
  %338 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %339 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 1
  %340 = call i32 @nl80211_crypto_settings(%struct.net_device* %337, %struct.genl_info* %338, i32* %339, i32 1)
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %352, label %343

343:                                              ; preds = %335
  %344 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %345 = bitcast %struct.cfg80211_registered_device* %344 to %struct.net_device*
  %346 = load %struct.net_device*, %struct.net_device** %7, align 8
  %347 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %348 = load i32*, i32** %10, align 8
  %349 = load i32*, i32** %11, align 8
  %350 = load i32, i32* %13, align 4
  %351 = call i32 @cfg80211_mlme_assoc(%struct.net_device* %345, %struct.net_device* %346, %struct.ieee80211_channel* %347, i32* %348, i32* %349, i32 %350, %struct.cfg80211_assoc_request* %9)
  store i32 %351, i32* %12, align 4
  br label %352

352:                                              ; preds = %343, %335
  %353 = load i32, i32* %12, align 4
  store i32 %353, i32* %3, align 4
  br label %354

354:                                              ; preds = %352, %322, %261, %191, %122, %91, %72, %62, %35
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_valid_ie_attr(i64) #2

declare dso_local i8* @nla_data(i64) #2

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32*, i32) #2

declare dso_local i32 @nla_get_u32(i64) #2

declare dso_local i8* @nla_len(i64) #2

declare dso_local i64 @nla_get_flag(i64) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @nl80211_crypto_settings(%struct.net_device*, %struct.genl_info*, i32*, i32) #2

declare dso_local i32 @cfg80211_mlme_assoc(%struct.net_device*, %struct.net_device*, %struct.ieee80211_channel*, i32*, i32*, i32, %struct.cfg80211_assoc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
