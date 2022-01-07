; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_send_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_send_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.ieee80211_local* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i32, i64, i32, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_19__*, i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, i64, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32, i64, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { i32*, i32*, i32*, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i32*, i8*, i8* }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_HW_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_REASSOC_REQ = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ASSOC_REQ = common dso_local global i32 0, align 4
@ieee80211_send_assoc.before_ht = internal constant [10 x i32] [i32 131, i32 128, i32 137, i32 135, i32 130, i32 132, i32 134, i32 133, i32 136, i32 129], align 16
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_send_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_assoc(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_managed*, align 8
  %5 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_supported_band*, align 8
  %18 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %19 = alloca %struct.ieee80211_channel*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 3
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %3, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store %struct.ieee80211_if_managed* %28, %struct.ieee80211_if_managed** %4, align 8
  %29 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %29, i32 0, i32 4
  %31 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %30, align 8
  store %struct.ieee80211_mgd_assoc_data* %31, %struct.ieee80211_mgd_assoc_data** %5, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %20, align 4
  %32 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %32, i32 0, i32 3
  %34 = call i32 @lockdep_assert_held(i32* %33)
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %39)
  store %struct.ieee80211_chanctx_conf* %40, %struct.ieee80211_chanctx_conf** %18, align 8
  %41 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %18, align 8
  %42 = icmp ne %struct.ieee80211_chanctx_conf* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = call i32 (...) @rcu_read_unlock()
  br label %706

49:                                               ; preds = %1
  %50 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %18, align 8
  %51 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %52, align 8
  store %struct.ieee80211_channel* %53, %struct.ieee80211_channel** %19, align 8
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %59, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %60, i64 %63
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %64, align 8
  store %struct.ieee80211_supported_band* %65, %struct.ieee80211_supported_band** %17, align 8
  %66 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %49
  %71 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %78 = call i32 @ieee80211_compatible_rates(i32 %73, i64 %76, %struct.ieee80211_supported_band* %77, i32* %20)
  store i32 %78, i32* %14, align 4
  br label %83

79:                                               ; preds = %49
  store i32 -1, i32* %20, align 4
  %80 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %81 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %79, %70
  %84 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 72
  %89 = add i64 %88, 2
  %90 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 %89, %93
  %95 = add i64 %94, 4
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = add i64 %98, 4
  %100 = add i64 %99, 2
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = add i64 %100, %105
  %107 = add i64 %106, 2
  %108 = add i64 %107, 4
  %109 = add i64 %108, 2
  %110 = add i64 %109, 4
  %111 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = add i64 %114, 9
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.sk_buff* @alloc_skb(i64 %115, i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %6, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %83
  br label %706

121:                                              ; preds = %83
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @skb_reserve(%struct.sk_buff* %122, i64 %126)
  %128 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %128, i32* %16, align 4
  %129 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %130 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %121
  %135 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %136 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %144 = load i32, i32* %16, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %142, %134
  %147 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %148 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %146
  %155 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %156 = load i32, i32* %16, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %154, %146
  br label %159

159:                                              ; preds = %158, %121
  %160 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %161 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %168 = load i32, i32* %16, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %166, %159
  %171 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %172 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %170
  %178 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %179 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IEEE80211_HW_SPECTRUM_MGMT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %187 = load i32, i32* %16, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %185, %177, %170
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = call i32* @skb_put(%struct.sk_buff* %190, i64 24)
  %192 = bitcast i32* %191 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %192, %struct.ieee80211_mgmt** %7, align 8
  %193 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %194 = call i32 @memset(%struct.ieee80211_mgmt* %193, i32 0, i32 24)
  %195 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %199 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %198, i32 0, i32 10
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ETH_ALEN, align 8
  %204 = call i32 @memcpy(i32* %197, i64 %202, i64 %203)
  %205 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %206 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %209 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ETH_ALEN, align 8
  %213 = call i32 @memcpy(i32* %207, i64 %211, i64 %212)
  %214 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %218 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %217, i32 0, i32 10
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ETH_ALEN, align 8
  %223 = call i32 @memcpy(i32* %216, i64 %221, i64 %222)
  %224 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %225 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %224, i32 0, i32 9
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @is_zero_ether_addr(i64 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %264, label %229

229:                                              ; preds = %189
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = call i32* @skb_put(%struct.sk_buff* %230, i64 10)
  %232 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %233 = load i32, i32* @IEEE80211_STYPE_REASSOC_REQ, align 4
  %234 = or i32 %232, %233
  %235 = call i8* @cpu_to_le16(i32 %234)
  %236 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %237 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %236, i32 0, i32 4
  store i8* %235, i8** %237, align 8
  %238 = load i32, i32* %16, align 4
  %239 = call i8* @cpu_to_le16(i32 %238)
  %240 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %241 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  store i8* %239, i8** %243, align 8
  %244 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %245 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @cpu_to_le16(i32 %248)
  %250 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %251 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 1
  store i8* %249, i8** %253, align 8
  %254 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %255 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %259, i32 0, i32 9
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @ETH_ALEN, align 8
  %263 = call i32 @memcpy(i32* %258, i64 %261, i64 %262)
  br label %289

264:                                              ; preds = %189
  %265 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %266 = call i32* @skb_put(%struct.sk_buff* %265, i64 4)
  %267 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %268 = load i32, i32* @IEEE80211_STYPE_ASSOC_REQ, align 4
  %269 = or i32 %267, %268
  %270 = call i8* @cpu_to_le16(i32 %269)
  %271 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %272 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %271, i32 0, i32 4
  store i8* %270, i8** %272, align 8
  %273 = load i32, i32* %16, align 4
  %274 = call i8* @cpu_to_le16(i32 %273)
  %275 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %276 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 1
  store i8* %274, i8** %278, align 8
  %279 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %280 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @cpu_to_le16(i32 %283)
  %285 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %286 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  store i8* %284, i8** %288, align 8
  br label %289

289:                                              ; preds = %264, %229
  %290 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %291 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %292 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 2, %293
  %295 = sext i32 %294 to i64
  %296 = call i32* @skb_put(%struct.sk_buff* %290, i64 %295)
  store i32* %296, i32** %8, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %8, align 8
  store i32 131, i32* %297, align 4
  %299 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %300 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32*, i32** %8, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %8, align 8
  store i32 %301, i32* %302, align 4
  %304 = load i32*, i32** %8, align 8
  %305 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %306 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %305, i32 0, i32 8
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %309 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = call i32 @memcpy(i32* %304, i64 %307, i64 %311)
  %313 = load i32, i32* %14, align 4
  store i32 %313, i32* %15, align 4
  %314 = load i32, i32* %15, align 4
  %315 = icmp sgt i32 %314, 8
  br i1 %315, label %316, label %317

316:                                              ; preds = %289
  store i32 8, i32* %15, align 4
  br label %317

317:                                              ; preds = %316, %289
  %318 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %319 = load i32, i32* %15, align 4
  %320 = add nsw i32 %319, 2
  %321 = sext i32 %320 to i64
  %322 = call i32* @skb_put(%struct.sk_buff* %318, i64 %321)
  store i32* %322, i32** %8, align 8
  %323 = load i32*, i32** %8, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %8, align 8
  store i32 128, i32* %323, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32*, i32** %8, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %8, align 8
  store i32 %325, i32* %326, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %328

328:                                              ; preds = %359, %317
  %329 = load i32, i32* %12, align 4
  %330 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %331 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %362

334:                                              ; preds = %328
  %335 = load i32, i32* %12, align 4
  %336 = call i32 @BIT(i32 %335)
  %337 = load i32, i32* %20, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %358

340:                                              ; preds = %334
  %341 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %342 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %341, i32 0, i32 4
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %21, align 4
  %349 = load i32, i32* %21, align 4
  %350 = sdiv i32 %349, 5
  %351 = load i32*, i32** %8, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %8, align 8
  store i32 %350, i32* %351, align 4
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %13, align 4
  %355 = icmp eq i32 %354, 8
  br i1 %355, label %356, label %357

356:                                              ; preds = %340
  br label %362

357:                                              ; preds = %340
  br label %358

358:                                              ; preds = %357, %334
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %12, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %12, align 4
  br label %328

362:                                              ; preds = %356, %328
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* %13, align 4
  %365 = icmp sgt i32 %363, %364
  br i1 %365, label %366, label %413

366:                                              ; preds = %362
  %367 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %13, align 4
  %370 = sub nsw i32 %368, %369
  %371 = add nsw i32 %370, 2
  %372 = sext i32 %371 to i64
  %373 = call i32* @skb_put(%struct.sk_buff* %367, i64 %372)
  store i32* %373, i32** %8, align 8
  %374 = load i32*, i32** %8, align 8
  %375 = getelementptr inbounds i32, i32* %374, i32 1
  store i32* %375, i32** %8, align 8
  store i32 137, i32* %374, align 4
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* %13, align 4
  %378 = sub nsw i32 %376, %377
  %379 = load i32*, i32** %8, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %380, i32** %8, align 8
  store i32 %378, i32* %379, align 4
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %12, align 4
  br label %383

383:                                              ; preds = %409, %366
  %384 = load i32, i32* %12, align 4
  %385 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %386 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %412

389:                                              ; preds = %383
  %390 = load i32, i32* %12, align 4
  %391 = call i32 @BIT(i32 %390)
  %392 = load i32, i32* %20, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %408

395:                                              ; preds = %389
  %396 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %397 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %396, i32 0, i32 4
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %397, align 8
  %399 = load i32, i32* %12, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %22, align 4
  %404 = load i32, i32* %22, align 4
  %405 = sdiv i32 %404, 5
  %406 = load i32*, i32** %8, align 8
  %407 = getelementptr inbounds i32, i32* %406, i32 1
  store i32* %407, i32** %8, align 8
  store i32 %405, i32* %406, align 4
  br label %408

408:                                              ; preds = %395, %389
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %12, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %12, align 4
  br label %383

412:                                              ; preds = %383
  br label %413

413:                                              ; preds = %412, %362
  %414 = load i32, i32* %16, align 4
  %415 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %472

418:                                              ; preds = %413
  %419 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %420 = call i32* @skb_put(%struct.sk_buff* %419, i64 4)
  store i32* %420, i32** %8, align 8
  %421 = load i32*, i32** %8, align 8
  %422 = getelementptr inbounds i32, i32* %421, i32 1
  store i32* %422, i32** %8, align 8
  store i32 135, i32* %421, align 4
  %423 = load i32*, i32** %8, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %8, align 8
  store i32 2, i32* %423, align 4
  %425 = load i32*, i32** %8, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %8, align 8
  store i32 0, i32* %425, align 4
  %427 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %428 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = load i32*, i32** %8, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 1
  store i32* %431, i32** %8, align 8
  store i32 %429, i32* %430, align 4
  %432 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %433 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %434 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = mul nsw i32 2, %435
  %437 = add nsw i32 %436, 2
  %438 = sext i32 %437 to i64
  %439 = call i32* @skb_put(%struct.sk_buff* %432, i64 %438)
  store i32* %439, i32** %8, align 8
  %440 = load i32*, i32** %8, align 8
  %441 = getelementptr inbounds i32, i32* %440, i32 1
  store i32* %441, i32** %8, align 8
  store i32 130, i32* %440, align 4
  %442 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %443 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = mul nsw i32 2, %444
  %446 = load i32*, i32** %8, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %8, align 8
  store i32 %445, i32* %446, align 4
  store i32 0, i32* %12, align 4
  br label %448

448:                                              ; preds = %468, %418
  %449 = load i32, i32* %12, align 4
  %450 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %451 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = icmp slt i32 %449, %452
  br i1 %453, label %454, label %471

454:                                              ; preds = %448
  %455 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %456 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %455, i32 0, i32 3
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %456, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @ieee80211_frequency_to_channel(i32 %462)
  %464 = load i32*, i32** %8, align 8
  %465 = getelementptr inbounds i32, i32* %464, i32 1
  store i32* %465, i32** %8, align 8
  store i32 %463, i32* %464, align 4
  %466 = load i32*, i32** %8, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 1
  store i32* %467, i32** %8, align 8
  store i32 1, i32* %466, align 4
  br label %468

468:                                              ; preds = %454
  %469 = load i32, i32* %12, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %12, align 4
  br label %448

471:                                              ; preds = %448
  br label %472

472:                                              ; preds = %471, %413
  %473 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %474 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %508

477:                                              ; preds = %472
  %478 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %479 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %508

482:                                              ; preds = %477
  %483 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %484 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %487 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ieee80211_send_assoc.before_ht, i64 0, i64 0))
  %490 = load i64, i64* %10, align 8
  %491 = call i64 @ieee80211_ie_split(i64 %485, i64 %488, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ieee80211_send_assoc.before_ht, i64 0, i64 0), i32 %489, i64 %490)
  store i64 %491, i64* %11, align 8
  %492 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %493 = load i64, i64* %11, align 8
  %494 = load i64, i64* %10, align 8
  %495 = sub i64 %493, %494
  %496 = call i32* @skb_put(%struct.sk_buff* %492, i64 %495)
  store i32* %496, i32** %8, align 8
  %497 = load i32*, i32** %8, align 8
  %498 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %499 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %498, i32 0, i32 3
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* %10, align 8
  %502 = add i64 %500, %501
  %503 = load i64, i64* %11, align 8
  %504 = load i64, i64* %10, align 8
  %505 = sub i64 %503, %504
  %506 = call i32 @memcpy(i32* %497, i64 %502, i64 %505)
  %507 = load i64, i64* %11, align 8
  store i64 %507, i64* %10, align 8
  br label %508

508:                                              ; preds = %482, %477, %472
  %509 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %510 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %523

515:                                              ; preds = %508
  %516 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %517 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  %522 = xor i1 %521, true
  br label %523

523:                                              ; preds = %515, %508
  %524 = phi i1 [ false, %508 ], [ %522, %515 ]
  %525 = zext i1 %524 to i32
  %526 = call i64 @WARN_ON_ONCE(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %523
  %529 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %530 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %531 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = or i32 %532, %529
  store i32 %533, i32* %531, align 8
  br label %534

534:                                              ; preds = %528, %523
  %535 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %536 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %553, label %541

541:                                              ; preds = %534
  %542 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %543 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %544 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %545 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %544, i32 0, i32 7
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %548 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %549 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %550 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @ieee80211_add_ht_ie(%struct.ieee80211_sub_if_data* %542, %struct.sk_buff* %543, i32 %546, %struct.ieee80211_supported_band* %547, %struct.ieee80211_channel* %548, i32 %551)
  br label %553

553:                                              ; preds = %541, %534
  %554 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %555 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %567, label %560

560:                                              ; preds = %553
  %561 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %562 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %563 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %564 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %565 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %564, i32 0, i32 6
  %566 = call i32 @ieee80211_add_vht_ie(%struct.ieee80211_sub_if_data* %561, %struct.sk_buff* %562, %struct.ieee80211_supported_band* %563, i32* %565)
  br label %567

567:                                              ; preds = %560, %553
  %568 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %569 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %568, i32 0, i32 1
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %602

572:                                              ; preds = %567
  %573 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %574 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %573, i32 0, i32 3
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %602

577:                                              ; preds = %572
  %578 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %579 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %582 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %581, i32 0, i32 1
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* %10, align 8
  %585 = call i64 @ieee80211_ie_split_vendor(i64 %580, i64 %583, i64 %584)
  store i64 %585, i64* %11, align 8
  %586 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %587 = load i64, i64* %11, align 8
  %588 = load i64, i64* %10, align 8
  %589 = sub i64 %587, %588
  %590 = call i32* @skb_put(%struct.sk_buff* %586, i64 %589)
  store i32* %590, i32** %8, align 8
  %591 = load i32*, i32** %8, align 8
  %592 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %593 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %592, i32 0, i32 3
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* %10, align 8
  %596 = add i64 %594, %595
  %597 = load i64, i64* %11, align 8
  %598 = load i64, i64* %10, align 8
  %599 = sub i64 %597, %598
  %600 = call i32 @memcpy(i32* %591, i64 %596, i64 %599)
  %601 = load i64, i64* %11, align 8
  store i64 %601, i64* %10, align 8
  br label %602

602:                                              ; preds = %577, %572, %567
  %603 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %604 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %603, i32 0, i32 5
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %647

607:                                              ; preds = %602
  %608 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %609 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %608, i32 0, i32 4
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %623

612:                                              ; preds = %607
  %613 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %614 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  store i32 %615, i32* %9, align 4
  %616 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %617 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 8
  %619 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT, align 4
  %620 = shl i32 %618, %619
  %621 = load i32, i32* %9, align 4
  %622 = or i32 %621, %620
  store i32 %622, i32* %9, align 4
  br label %624

623:                                              ; preds = %607
  store i32 0, i32* %9, align 4
  br label %624

624:                                              ; preds = %623, %612
  %625 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %626 = call i32* @skb_put(%struct.sk_buff* %625, i64 9)
  store i32* %626, i32** %8, align 8
  %627 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %628 = load i32*, i32** %8, align 8
  %629 = getelementptr inbounds i32, i32* %628, i32 1
  store i32* %629, i32** %8, align 8
  store i32 %627, i32* %628, align 4
  %630 = load i32*, i32** %8, align 8
  %631 = getelementptr inbounds i32, i32* %630, i32 1
  store i32* %631, i32** %8, align 8
  store i32 7, i32* %630, align 4
  %632 = load i32*, i32** %8, align 8
  %633 = getelementptr inbounds i32, i32* %632, i32 1
  store i32* %633, i32** %8, align 8
  store i32 0, i32* %632, align 4
  %634 = load i32*, i32** %8, align 8
  %635 = getelementptr inbounds i32, i32* %634, i32 1
  store i32* %635, i32** %8, align 8
  store i32 80, i32* %634, align 4
  %636 = load i32*, i32** %8, align 8
  %637 = getelementptr inbounds i32, i32* %636, i32 1
  store i32* %637, i32** %8, align 8
  store i32 242, i32* %636, align 4
  %638 = load i32*, i32** %8, align 8
  %639 = getelementptr inbounds i32, i32* %638, i32 1
  store i32* %639, i32** %8, align 8
  store i32 2, i32* %638, align 4
  %640 = load i32*, i32** %8, align 8
  %641 = getelementptr inbounds i32, i32* %640, i32 1
  store i32* %641, i32** %8, align 8
  store i32 0, i32* %640, align 4
  %642 = load i32*, i32** %8, align 8
  %643 = getelementptr inbounds i32, i32* %642, i32 1
  store i32* %643, i32** %8, align 8
  store i32 1, i32* %642, align 4
  %644 = load i32, i32* %9, align 4
  %645 = load i32*, i32** %8, align 8
  %646 = getelementptr inbounds i32, i32* %645, i32 1
  store i32* %646, i32** %8, align 8
  store i32 %644, i32* %645, align 4
  br label %647

647:                                              ; preds = %624, %602
  %648 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %649 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %648, i32 0, i32 1
  %650 = load i64, i64* %649, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %676

652:                                              ; preds = %647
  %653 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %654 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %653, i32 0, i32 3
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %676

657:                                              ; preds = %652
  %658 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %659 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %658, i32 0, i32 1
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %11, align 8
  %661 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %662 = load i64, i64* %11, align 8
  %663 = load i64, i64* %10, align 8
  %664 = sub i64 %662, %663
  %665 = call i32* @skb_put(%struct.sk_buff* %661, i64 %664)
  store i32* %665, i32** %8, align 8
  %666 = load i32*, i32** %8, align 8
  %667 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %668 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %667, i32 0, i32 3
  %669 = load i64, i64* %668, align 8
  %670 = load i64, i64* %10, align 8
  %671 = add i64 %669, %670
  %672 = load i64, i64* %11, align 8
  %673 = load i64, i64* %10, align 8
  %674 = sub i64 %672, %673
  %675 = call i32 @memcpy(i32* %666, i64 %671, i64 %674)
  br label %676

676:                                              ; preds = %657, %652, %647
  %677 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %678 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %679 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %677, %struct.ieee80211_sub_if_data* %678)
  %680 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %681 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %682 = call %struct.TYPE_17__* @IEEE80211_SKB_CB(%struct.sk_buff* %681)
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = or i32 %684, %680
  store i32 %685, i32* %683, align 4
  %686 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %687 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %691 = and i32 %689, %690
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %702

693:                                              ; preds = %676
  %694 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %695 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %696 = or i32 %694, %695
  %697 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %698 = call %struct.TYPE_17__* @IEEE80211_SKB_CB(%struct.sk_buff* %697)
  %699 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 4
  %701 = or i32 %700, %696
  store i32 %701, i32* %699, align 4
  br label %702

702:                                              ; preds = %693, %676
  %703 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %704 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %705 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %703, %struct.sk_buff* %704)
  br label %706

706:                                              ; preds = %702, %120, %47
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_compatible_rates(i32, i64, %struct.ieee80211_supported_band*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @is_zero_ether_addr(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i64 @ieee80211_ie_split(i64, i64, i32*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_add_ht_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ieee80211_add_vht_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_supported_band*, i32*) #1

declare dso_local i64 @ieee80211_ie_split_vendor(i64, i64, i64) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.TYPE_17__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
