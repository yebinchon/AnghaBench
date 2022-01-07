; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__, i32, %struct.wireless_dev*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.wireless_dev = type { i64, i64, i32, i64, i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__, i32, %struct.wireless_dev*, %struct.TYPE_7__* }
%struct.cfg80211_ap_settings = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i8*, i32, i32, i8*, i8*, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@NL80211_ATTR_DTIM_PERIOD = common dso_local global i64 0, align 8
@NL80211_ATTR_BEACON_HEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@NL80211_ATTR_HIDDEN_SSID = common dso_local global i64 0, align 8
@NL80211_HIDDEN_SSID_NOT_IN_USE = common dso_local global i64 0, align 8
@NL80211_HIDDEN_SSID_ZERO_LEN = common dso_local global i64 0, align 8
@NL80211_HIDDEN_SSID_ZERO_CONTENTS = common dso_local global i64 0, align 8
@NL80211_ATTR_PRIVACY = common dso_local global i64 0, align 8
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_CMD_START_AP = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i8* null, align 8
@NL80211_MAX_NR_CIPHER_SUITES = common dso_local global i32 0, align 4
@NL80211_ATTR_INACTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@NL80211_FEATURE_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_CTWINDOW = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_OPPPS = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_OPPPS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@NL80211_ATTR_ACL_POLICY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_ap(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_ap_settings, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  store %struct.wireless_dev* %26, %struct.wireless_dev** %8, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %28, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %36, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %536

45:                                               ; preds = %34, %2
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %536

55:                                               ; preds = %45
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EALREADY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %536

63:                                               ; preds = %55
  %64 = call i32 @memset(%struct.cfg80211_ap_settings* %9, i32 0, i32 96)
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80, %72, %63
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %536

91:                                               ; preds = %80
  %92 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %93 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 14
  %94 = call i32 @nl80211_parse_beacon(%struct.genl_info* %92, i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %536

99:                                               ; preds = %91
  %100 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @nla_get_u32(i64 %105)
  %107 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 9
  store i8* %106, i8** %107, align 8
  %108 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %109 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @nla_get_u32(i64 %113)
  %115 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 13
  store i8* %114, i8** %115, align 8
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %117 = bitcast %struct.cfg80211_registered_device* %116 to %struct.net_device*
  %118 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 9
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @cfg80211_validate_beacon_int(%struct.net_device* %117, i8* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %536

125:                                              ; preds = %99
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %125
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @nla_data(i64 %139)
  %141 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 7
  store i32 %140, i32* %141, align 4
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @nla_len(i64 %147)
  %149 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  store i64 %148, i64* %149, align 8
  %150 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %133
  %154 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %133
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %536

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %125
  %163 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %164 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @NL80211_ATTR_HIDDEN_SSID, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %162
  %171 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %172 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @NL80211_ATTR_HIDDEN_SSID, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @nla_get_u32(i64 %176)
  %178 = ptrtoint i8* %177 to i64
  %179 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 1
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NL80211_HIDDEN_SSID_NOT_IN_USE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %170
  %185 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @NL80211_HIDDEN_SSID_ZERO_LEN, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NL80211_HIDDEN_SSID_ZERO_CONTENTS, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %536

197:                                              ; preds = %189, %184, %170
  br label %198

198:                                              ; preds = %197, %162
  %199 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %200 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* @NL80211_ATTR_PRIVACY, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  %206 = xor i1 %205, true
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 2
  store i32 %208, i32* %209, align 8
  %210 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %211 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %198
  %218 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %219 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @nla_get_u32(i64 %223)
  %225 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 12
  store i8* %224, i8** %225, align 8
  %226 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %227 = bitcast %struct.cfg80211_registered_device* %226 to %struct.net_device*
  %228 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 12
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* @NL80211_CMD_START_AP, align 4
  %231 = call i32 @nl80211_valid_auth_type(%struct.net_device* %227, i8* %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %217
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %536

236:                                              ; preds = %217
  br label %240

237:                                              ; preds = %198
  %238 = load i8*, i8** @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %239 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 12
  store i8* %238, i8** %239, align 8
  br label %240

240:                                              ; preds = %237, %236
  %241 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %242 = bitcast %struct.cfg80211_registered_device* %241 to %struct.net_device*
  %243 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %244 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 11
  %245 = load i32, i32* @NL80211_MAX_NR_CIPHER_SUITES, align 4
  %246 = call i32 @nl80211_crypto_settings(%struct.net_device* %242, %struct.genl_info* %243, i32* %244, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %240
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %3, align 4
  br label %536

251:                                              ; preds = %240
  %252 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %253 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @NL80211_ATTR_INACTIVITY_TIMEOUT, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %251
  %260 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %261 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @NL80211_FEATURE_INACTIVITY_TIMER, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %259
  %268 = load i32, i32* @EOPNOTSUPP, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %536

270:                                              ; preds = %259
  %271 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %272 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load i64, i64* @NL80211_ATTR_INACTIVITY_TIMEOUT, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @nla_get_u16(i64 %276)
  %278 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 10
  store i32 %277, i32* %278, align 8
  br label %279

279:                                              ; preds = %270, %251
  %280 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %281 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %280, i32 0, i32 0
  %282 = load i64*, i64** %281, align 8
  %283 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %330

287:                                              ; preds = %279
  %288 = load %struct.net_device*, %struct.net_device** %7, align 8
  %289 = getelementptr inbounds %struct.net_device, %struct.net_device* %288, i32 0, i32 2
  %290 = load %struct.wireless_dev*, %struct.wireless_dev** %289, align 8
  %291 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %3, align 4
  br label %536

298:                                              ; preds = %287
  %299 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %300 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %303 = getelementptr inbounds i64, i64* %301, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = call i8* @nla_get_u8(i64 %304)
  %306 = ptrtoint i8* %305 to i32
  %307 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  store i32 %306, i32* %307, align 4
  %308 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = icmp sgt i32 %309, 127
  br i1 %310, label %311, label %314

311:                                              ; preds = %298
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %3, align 4
  br label %536

314:                                              ; preds = %298
  %315 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %320 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %318
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %3, align 4
  br label %536

329:                                              ; preds = %318, %314
  br label %330

330:                                              ; preds = %329, %279
  %331 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %332 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %335 = getelementptr inbounds i64, i64* %333, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %381

338:                                              ; preds = %330
  %339 = load %struct.net_device*, %struct.net_device** %7, align 8
  %340 = getelementptr inbounds %struct.net_device, %struct.net_device* %339, i32 0, i32 2
  %341 = load %struct.wireless_dev*, %struct.wireless_dev** %340, align 8
  %342 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %536

349:                                              ; preds = %338
  %350 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %351 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %350, i32 0, i32 0
  %352 = load i64*, i64** %351, align 8
  %353 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %354 = getelementptr inbounds i64, i64* %352, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = call i8* @nla_get_u8(i64 %355)
  %357 = ptrtoint i8* %356 to i32
  store i32 %357, i32* %12, align 4
  %358 = load i32, i32* %12, align 4
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %363

360:                                              ; preds = %349
  %361 = load i32, i32* @EINVAL, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %3, align 4
  br label %536

363:                                              ; preds = %349
  %364 = load i32, i32* %12, align 4
  %365 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  store i32 %364, i32* %365, align 8
  %366 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %363
  %370 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %371 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @NL80211_FEATURE_P2P_GO_OPPPS, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %369
  %378 = load i32, i32* @EINVAL, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %3, align 4
  br label %536

380:                                              ; preds = %369, %363
  br label %381

381:                                              ; preds = %380, %330
  %382 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %383 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %382, i32 0, i32 0
  %384 = load i64*, i64** %383, align 8
  %385 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %386 = getelementptr inbounds i64, i64* %384, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %400

389:                                              ; preds = %381
  %390 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %391 = bitcast %struct.cfg80211_registered_device* %390 to %struct.net_device*
  %392 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %393 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %394 = call i32 @nl80211_parse_chandef(%struct.net_device* %391, %struct.genl_info* %392, %struct.TYPE_9__* %393)
  store i32 %394, i32* %10, align 4
  %395 = load i32, i32* %10, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %389
  %398 = load i32, i32* %10, align 4
  store i32 %398, i32* %3, align 4
  br label %536

399:                                              ; preds = %389
  br label %422

400:                                              ; preds = %381
  %401 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %402 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %408 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %409 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %408, i32 0, i32 5
  %410 = bitcast %struct.TYPE_9__* %407 to i8*
  %411 = bitcast %struct.TYPE_9__* %409 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %410, i8* align 8 %411, i64 16, i1 false)
  br label %421

412:                                              ; preds = %400
  %413 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %414 = bitcast %struct.cfg80211_registered_device* %413 to %struct.net_device*
  %415 = call i32 @nl80211_get_ap_channel(%struct.net_device* %414, %struct.cfg80211_ap_settings* %9)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %412
  %418 = load i32, i32* @EINVAL, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %3, align 4
  br label %536

420:                                              ; preds = %412
  br label %421

421:                                              ; preds = %420, %406
  br label %422

422:                                              ; preds = %421, %399
  %423 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %424 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %426 = call i32 @cfg80211_reg_can_beacon(%struct.TYPE_8__* %424, %struct.TYPE_9__* %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* @EINVAL, align 4
  %430 = sub nsw i32 0, %429
  store i32 %430, i32* %3, align 4
  br label %536

431:                                              ; preds = %422
  %432 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %433 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  %435 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %436 = call i32 @cfg80211_chandef_dfs_required(i32 %434, %struct.TYPE_9__* %435)
  store i32 %436, i32* %10, align 4
  %437 = load i32, i32* %10, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %431
  %440 = load i32, i32* %10, align 4
  store i32 %440, i32* %3, align 4
  br label %536

441:                                              ; preds = %431
  %442 = load i32, i32* %10, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @BIT(i32 %447)
  store i32 %448, i32* %11, align 4
  %449 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 5
  store i32 1, i32* %449, align 4
  br label %450

450:                                              ; preds = %444, %441
  %451 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %452 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %451, i32 0, i32 1
  %453 = call i32 @mutex_lock(i32* %452)
  %454 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %455 = bitcast %struct.cfg80211_registered_device* %454 to %struct.net_device*
  %456 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %457 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %458 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %464 = load i32, i32* %11, align 4
  %465 = call i32 @cfg80211_can_use_iftype_chan(%struct.net_device* %455, %struct.wireless_dev* %456, i64 %459, i64 %462, i32 %463, i32 %464)
  store i32 %465, i32* %10, align 4
  %466 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %467 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %466, i32 0, i32 1
  %468 = call i32 @mutex_unlock(i32* %467)
  %469 = load i32, i32* %10, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %450
  %472 = load i32, i32* %10, align 4
  store i32 %472, i32* %3, align 4
  br label %536

473:                                              ; preds = %450
  %474 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %475 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %474, i32 0, i32 0
  %476 = load i64*, i64** %475, align 8
  %477 = load i64, i64* @NL80211_ATTR_ACL_POLICY, align 8
  %478 = getelementptr inbounds i64, i64* %476, i64 %477
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %496

481:                                              ; preds = %473
  %482 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %483 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %482, i32 0, i32 0
  %484 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %485 = call i32 @parse_acl_data(%struct.TYPE_8__* %483, %struct.genl_info* %484)
  %486 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  store i32 %485, i32* %486, align 8
  %487 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %488 = load i32, i32* %487, align 8
  %489 = call i64 @IS_ERR(i32 %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %495

491:                                              ; preds = %481
  %492 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %493 = load i32, i32* %492, align 8
  %494 = call i32 @PTR_ERR(i32 %493)
  store i32 %494, i32* %3, align 4
  br label %536

495:                                              ; preds = %481
  br label %496

496:                                              ; preds = %495, %473
  %497 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %498 = bitcast %struct.cfg80211_registered_device* %497 to %struct.net_device*
  %499 = load %struct.net_device*, %struct.net_device** %7, align 8
  %500 = call i32 @rdev_start_ap(%struct.net_device* %498, %struct.net_device* %499, %struct.cfg80211_ap_settings* %9)
  store i32 %500, i32* %10, align 4
  %501 = load i32, i32* %10, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %531, label %503

503:                                              ; preds = %496
  %504 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %505 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %507 = bitcast %struct.TYPE_9__* %505 to i8*
  %508 = bitcast %struct.TYPE_9__* %506 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %507, i8* align 8 %508, i64 16, i1 false)
  %509 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 9
  %510 = load i8*, i8** %509, align 8
  %511 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %512 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %511, i32 0, i32 4
  store i8* %510, i8** %512, align 8
  %513 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %517 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %516, i32 0, i32 3
  store i64 %515, i64* %517, align 8
  %518 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %521 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %520, i32 0, i32 1
  store i64 %519, i64* %521, align 8
  %522 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %523 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 7
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %528 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = call i32 @memcpy(i32 %524, i32 %526, i64 %529)
  br label %531

531:                                              ; preds = %503, %496
  %532 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %533 = load i32, i32* %532, align 8
  %534 = call i32 @kfree(i32 %533)
  %535 = load i32, i32* %10, align 4
  store i32 %535, i32* %3, align 4
  br label %536

536:                                              ; preds = %531, %491, %471, %439, %428, %417, %397, %377, %360, %346, %326, %311, %295, %267, %249, %233, %194, %158, %123, %97, %88, %60, %52, %42
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

declare dso_local i32 @memset(%struct.cfg80211_ap_settings*, i32, i32) #1

declare dso_local i32 @nl80211_parse_beacon(%struct.genl_info*, i32*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @cfg80211_validate_beacon_int(%struct.net_device*, i8*) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i64 @nla_len(i64) #1

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @nl80211_crypto_settings(%struct.net_device*, %struct.genl_info*, i32*, i32) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nl80211_get_ap_channel(%struct.net_device*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @cfg80211_reg_can_beacon(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_can_use_iftype_chan(%struct.net_device*, %struct.wireless_dev*, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @parse_acl_data(%struct.TYPE_8__*, %struct.genl_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rdev_start_ap(%struct.net_device*, %struct.net_device*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
