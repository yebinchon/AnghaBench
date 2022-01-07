; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.bss_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NL80211_ATTR_BSS_CTS_PROT = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_SHORT_PREAMBLE = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_SHORT_SLOT_TIME = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_BASIC_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_AP_ISOLATE = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_HT_OPMODE = common dso_local global i64 0, align 8
@NL80211_ATTR_P2P_CTWINDOW = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_OPPPS = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_OPPPS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_bss(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.bss_parameters, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = call i32 @memset(%struct.bss_parameters* %8, i32 0, i32 36)
  %22 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 2
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 3
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 4
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 5
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 6
  store i32 -1, i32* %28, align 4
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_BSS_CTS_PROT, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NL80211_ATTR_BSS_CTS_PROT, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @nla_get_u8(i64 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %2
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_BSS_SHORT_PREAMBLE, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_BSS_SHORT_PREAMBLE, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @nla_get_u8(i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %46
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_BSS_SHORT_SLOT_TIME, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_BSS_SHORT_SLOT_TIME, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @nla_get_u8(i64 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %64
  %83 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %84 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %92 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @nla_data(i64 %96)
  %98 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %100 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @nla_len(i64 %104)
  %106 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 7
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %90, %82
  %108 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %109 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @NL80211_ATTR_AP_ISOLATE, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %117 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @NL80211_ATTR_AP_ISOLATE, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @nla_get_u8(i64 %121)
  %123 = icmp ne i8* %122, null
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 3
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %115, %107
  %129 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %130 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @NL80211_ATTR_BSS_HT_OPMODE, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %138 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @NL80211_ATTR_BSS_HT_OPMODE, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @nla_get_u16(i64 %142)
  %144 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 4
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %136, %128
  %146 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %147 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %145
  %154 = load %struct.net_device*, %struct.net_device** %7, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %280

164:                                              ; preds = %153
  %165 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %166 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @nla_get_s8(i64 %170)
  %172 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 5
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %280

179:                                              ; preds = %164
  %180 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %185 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %280

194:                                              ; preds = %183, %179
  br label %195

195:                                              ; preds = %194, %145
  %196 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %197 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %246

203:                                              ; preds = %195
  %204 = load %struct.net_device*, %struct.net_device** %7, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %280

214:                                              ; preds = %203
  %215 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %216 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @nla_get_u8(i64 %220)
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %228

225:                                              ; preds = %214
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %280

228:                                              ; preds = %214
  %229 = load i32, i32* %9, align 4
  %230 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 6
  store i32 %229, i32* %230, align 4
  %231 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %8, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %236 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @NL80211_FEATURE_P2P_GO_OPPPS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %234
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %280

245:                                              ; preds = %234, %228
  br label %246

246:                                              ; preds = %245, %195
  %247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %248 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %247, i32 0, i32 1
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %246
  %254 = load i32, i32* @EOPNOTSUPP, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %3, align 4
  br label %280

256:                                              ; preds = %246
  %257 = load %struct.net_device*, %struct.net_device** %7, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 0
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %256
  %265 = load %struct.net_device*, %struct.net_device** %7, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %264
  %273 = load i32, i32* @EOPNOTSUPP, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %3, align 4
  br label %280

275:                                              ; preds = %264, %256
  %276 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %277 = bitcast %struct.cfg80211_registered_device* %276 to %struct.net_device*
  %278 = load %struct.net_device*, %struct.net_device** %7, align 8
  %279 = call i32 @rdev_change_bss(%struct.net_device* %277, %struct.net_device* %278, %struct.bss_parameters* %8)
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %275, %272, %253, %242, %225, %211, %191, %176, %161
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @memset(%struct.bss_parameters*, i32, i32) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @nla_get_s8(i64) #1

declare dso_local i32 @rdev_change_bss(%struct.net_device*, %struct.net_device*, %struct.bss_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
