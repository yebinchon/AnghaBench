; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.station_parameters = type { i32, i64, i64, i32, i64, i32, i8*, i8*, i32, i8*, i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_AID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_SUPPORTED_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_CAPABILITY = common dso_local global i64 0, align 8
@STATION_PARAM_APPLY_CAPABILITY = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_EXT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_LISTEN_INTERVAL = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_PLINK_ACTION = common dso_local global i64 0, align 8
@NUM_NL80211_PLINK_ACTIONS = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_PLINK_STATE = common dso_local global i64 0, align 8
@NUM_NL80211_PLINK_STATES = common dso_local global i64 0, align 8
@STATION_PARAM_APPLY_PLINK_STATE = common dso_local global i32 0, align 4
@NL80211_ATTR_LOCAL_MESH_POWER_MODE = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_UNKNOWN = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_station(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.station_parameters, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %23 = call i32 @memset(%struct.station_parameters* %8, i32 0, i32 88)
  %24 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %290

34:                                               ; preds = %2
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NL80211_ATTR_STA_AID, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %290

45:                                               ; preds = %34
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %290

56:                                               ; preds = %45
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @nla_data(i64 %62)
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %9, align 8
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %56
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @nla_data(i64 %78)
  %80 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 10
  store i8* %79, i8** %80, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @nla_len(i64 %86)
  %88 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 9
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %72, %56
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NL80211_ATTR_STA_CAPABILITY, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @NL80211_ATTR_STA_CAPABILITY, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @nla_get_u16(i64 %103)
  %105 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 8
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* @STATION_PARAM_APPLY_CAPABILITY, align 4
  %107 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %97, %89
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %110
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @nla_data(i64 %124)
  %126 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 7
  store i8* %125, i8** %126, align 8
  %127 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %128 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @nla_len(i64 %132)
  %134 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 6
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %118, %110
  %136 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %137 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @NL80211_ATTR_STA_LISTEN_INTERVAL, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %290

146:                                              ; preds = %135
  %147 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %148 = load %struct.net_device*, %struct.net_device** %7, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @parse_station_flags(%struct.genl_info* %147, i32 %152, %struct.station_parameters* %8)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %290

158:                                              ; preds = %146
  %159 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %160 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @NL80211_ATTR_STA_PLINK_ACTION, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %158
  %167 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %168 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @NL80211_ATTR_STA_PLINK_ACTION, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @nla_get_u8(i64 %172)
  %174 = ptrtoint i8* %173 to i64
  %175 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 1
  store i64 %174, i64* %175, align 8
  %176 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NUM_NL80211_PLINK_ACTIONS, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %166
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %290

183:                                              ; preds = %166
  br label %184

184:                                              ; preds = %183, %158
  %185 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %186 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* @NL80211_ATTR_STA_PLINK_STATE, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %184
  %193 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %194 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @NL80211_ATTR_STA_PLINK_STATE, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = call i8* @nla_get_u8(i64 %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 2
  store i64 %200, i64* %201, align 8
  %202 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @NUM_NL80211_PLINK_STATES, align 8
  %205 = icmp sge i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %192
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %290

209:                                              ; preds = %192
  %210 = load i32, i32* @STATION_PARAM_APPLY_PLINK_STATE, align 4
  %211 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %210
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %209, %184
  %215 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %216 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* @NL80211_ATTR_LOCAL_MESH_POWER_MODE, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %214
  %223 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %224 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i64, i64* @NL80211_ATTR_LOCAL_MESH_POWER_MODE, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @nla_get_u32(i64 %228)
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @NL80211_MESH_POWER_UNKNOWN, align 4
  %232 = icmp ule i32 %230, %231
  br i1 %232, label %237, label %233

233:                                              ; preds = %222
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @NL80211_MESH_POWER_MAX, align 4
  %236 = icmp ugt i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233, %222
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %290

240:                                              ; preds = %233
  %241 = load i32, i32* %11, align 4
  %242 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  store i32 %241, i32* %242, align 8
  br label %243

243:                                              ; preds = %240, %214
  %244 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %245 = call i32 @nl80211_set_station_tdls(%struct.genl_info* %244, %struct.station_parameters* %8)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %3, align 4
  br label %290

250:                                              ; preds = %243
  %251 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %252 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %253 = bitcast %struct.cfg80211_registered_device* %252 to %struct.net_device*
  %254 = call i64 @get_vlan(%struct.genl_info* %251, %struct.net_device* %253)
  %255 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  store i64 %254, i64* %255, align 8
  %256 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @IS_ERR(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @PTR_ERR(i64 %262)
  store i32 %263, i32* %3, align 4
  br label %290

264:                                              ; preds = %250
  %265 = load %struct.net_device*, %struct.net_device** %7, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  switch i32 %269, label %271 [
    i32 133, label %270
    i32 132, label %270
    i32 129, label %270
    i32 130, label %270
    i32 128, label %270
    i32 134, label %270
    i32 131, label %270
  ]

270:                                              ; preds = %264, %264, %264, %264, %264, %264, %264
  br label %274

271:                                              ; preds = %264
  %272 = load i32, i32* @EOPNOTSUPP, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %10, align 4
  br label %280

274:                                              ; preds = %270
  %275 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %276 = bitcast %struct.cfg80211_registered_device* %275 to %struct.net_device*
  %277 = load %struct.net_device*, %struct.net_device** %7, align 8
  %278 = load i32*, i32** %9, align 8
  %279 = call i32 @rdev_change_station(%struct.net_device* %276, %struct.net_device* %277, i32* %278, %struct.station_parameters* %8)
  store i32 %279, i32* %10, align 4
  br label %280

280:                                              ; preds = %274, %271
  %281 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @dev_put(i64 %286)
  br label %288

288:                                              ; preds = %284, %280
  %289 = load i32, i32* %10, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %260, %248, %237, %206, %180, %155, %143, %53, %42, %31
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @memset(%struct.station_parameters*, i32, i32) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i64 @parse_station_flags(%struct.genl_info*, i32, %struct.station_parameters*) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_set_station_tdls(%struct.genl_info*, %struct.station_parameters*) #1

declare dso_local i64 @get_vlan(%struct.genl_info*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @rdev_change_station(%struct.net_device*, %struct.net_device*, i32*, %struct.station_parameters*) #1

declare dso_local i32 @dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
