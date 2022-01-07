; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_change_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_change_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { i32 }
%struct.bss_parameters = type { i64, i64, i32, i32*, i32, i64, i64, i32, i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@IEEE80211_SDATA_DONT_BRIDGE_PACKETS = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_CTWINDOW_MASK = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.bss_parameters*)* @ieee80211_change_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_change_bss(%struct.wiphy* %0, %struct.net_device* %1, %struct.bss_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bss_parameters*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.bss_parameters* %2, %struct.bss_parameters** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtnl_dereference(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %275

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %30 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %32 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %37 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  %43 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %35, %28
  %47 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %48 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %53 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  %59 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %51, %46
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %73, %69, %62
  %82 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %83 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %88 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %86, %81
  %98 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %99 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %165

102:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  %103 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %104 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %103, i32 0, i32 0
  %105 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %105, i64 %107
  %109 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %108, align 8
  store %struct.ieee80211_supported_band* %109, %struct.ieee80211_supported_band** %14, align 8
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %153, %102
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %113 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %110
  %117 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %118 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 127
  %125 = mul nsw i32 %124, 5
  store i32 %125, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %149, %116
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %129 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %134 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %132
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %126

152:                                              ; preds = %126
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %110

156:                                              ; preds = %110
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  store i32 %157, i32* %161, align 8
  %162 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %156, %97
  %166 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %167 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %172 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @IEEE80211_SDATA_DONT_BRIDGE_PACKETS, align 4
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %188

181:                                              ; preds = %170
  %182 = load i32, i32* @IEEE80211_SDATA_DONT_BRIDGE_PACKETS, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %185 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %175
  br label %189

189:                                              ; preds = %188, %165
  %190 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %191 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %189
  %195 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %196 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %199 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  store i64 %197, i64* %201, align 8
  %202 = load i32, i32* @BSS_CHANGED_HT, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %194, %189
  %206 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %207 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %205
  %211 = load i32, i32* @IEEE80211_P2P_OPPPS_CTWINDOW_MASK, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %214 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %212
  store i32 %219, i32* %217, align 4
  %220 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %221 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @IEEE80211_P2P_OPPPS_CTWINDOW_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %226 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %224
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %233 = load i32, i32* %10, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %210, %205
  %236 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %237 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %242 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %241
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %250 = load i32, i32* %10, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %10, align 4
  br label %271

252:                                              ; preds = %235
  %253 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %254 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %252
  %258 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %261 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, %259
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %268 = load i32, i32* %10, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %257, %252
  br label %271

271:                                              ; preds = %270, %240
  %272 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %272, i32 %273)
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %271, %25
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @rtnl_dereference(i32) #1

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
