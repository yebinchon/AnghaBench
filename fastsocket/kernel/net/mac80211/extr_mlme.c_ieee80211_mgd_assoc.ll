; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i64, i32, %struct.TYPE_13__, %struct.ieee80211_local*, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i8*, i32, i64, i32, %struct.ieee80211_mgd_assoc_data*, i64, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_16__*, i64 }
%struct.ieee80211_mgd_assoc_data = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i32, i64*, i32, i32, i64 }
%struct.ieee80211_bss = type { i32, i32, i64, i64, i32, i32 }
%struct.cfg80211_bss_ies = type { i32, i32, i32 }
%struct.ieee80211_tim_ie = type { i32, i64 }
%struct.ieee80211_ht_operation = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"disabling HT/VHT due to WEP/TKIP use\0A\00", align 1
@ASSOC_REQ_DISABLE_HT = common dso_local global i32 0, align 4
@ASSOC_REQ_DISABLE_VHT = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"disabling HT as WMM/QoS is not supported by the AP\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"disabling VHT as WMM/QoS is not supported by the AP\0A\00", align 1
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_OFF = common dso_local global i64 0, align 8
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_STA_UAPSD_ENABLED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_MFP_REQUIRED = common dso_local global i32 0, align 4
@IEEE80211_STA_MFP_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_MFP_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_STA_CONTROL_PORT = common dso_local global i32 0, align 4
@IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"waiting for beacon from %pM\0A\00", align 1
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@IEEE80211_HW_TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@IEEE80211_BSS_CORRUPT_BEACON = common dso_local global i32 0, align 4
@IEEE80211_BSS_CORRUPT_PROBE_RESP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"beacon and probe response\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"probe response\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"associating with AP with corrupt %s\0A\00", align 1
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_assoc(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_assoc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_assoc_request*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.ieee80211_bss*, align 8
  %9 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %10 = alloca %struct.cfg80211_bss_ies*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ieee80211_tim_ie*, align 8
  %23 = alloca i8*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_assoc_request* %1, %struct.cfg80211_assoc_request** %5, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 3
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %25, align 8
  store %struct.ieee80211_local* %26, %struct.ieee80211_local** %6, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store %struct.ieee80211_if_managed* %29, %struct.ieee80211_if_managed** %7, align 8
  %30 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %30, i32 0, i32 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %36, %struct.ieee80211_bss** %8, align 8
  %37 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %38 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 96, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ieee80211_mgd_assoc_data* @kzalloc(i32 %42, i32 %43)
  store %struct.ieee80211_mgd_assoc_data* %44, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %45 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %46 = icmp ne %struct.ieee80211_mgd_assoc_data* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %787

50:                                               ; preds = %2
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %53 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %52, i32 0, i32 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i32, i32* @WLAN_EID_SSID, align 4
  %56 = call i32* @ieee80211_bss_get_ie(%struct.TYPE_14__* %54, i32 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %50
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %62 = call i32 @kfree(%struct.ieee80211_mgd_assoc_data* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %787

65:                                               ; preds = %50
  %66 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %66, i32 0, i32 16
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %68, i32* %70, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %81, i32 0, i32 3
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %84, i32 0, i32 14
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %65
  %89 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %17, align 8
  %92 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %18, align 8
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %94 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %95 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %96 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %93, i32 %94, i32 %95, i32 0, i32* %92)
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = mul nuw i64 4, %90
  %101 = trunc i64 %100 to i32
  %102 = call i32 @__cfg80211_send_deauth(i32 %99, i32* %92, i32 %101)
  %103 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %88, %65
  %105 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %105, i32 0, i32 13
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = icmp ne %struct.TYPE_16__* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %110, i32 0, i32 13
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  br label %779

119:                                              ; preds = %109, %104
  %120 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %120, i32 0, i32 4
  %122 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %121, align 8
  %123 = icmp ne %struct.ieee80211_mgd_assoc_data* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %16, align 4
  br label %779

127:                                              ; preds = %119
  %128 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %128, i32 0, i32 13
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = icmp ne %struct.TYPE_16__* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %137 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %136, i32 0, i32 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ether_addr_equal(i8* %135, i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %127
  %146 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %146, i32 0, i32 1
  store i32 0, i32* %147, align 8
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %204, %145
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %207

155:                                              ; preds = %148
  %156 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %157 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %188, label %166

166:                                              ; preds = %155
  %167 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %168 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %188, label %177

177:                                              ; preds = %166
  %178 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %179 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %177, %166, %155
  %189 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %190 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %195 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @netdev_info(i32 %201, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %203

203:                                              ; preds = %188, %177
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %148

207:                                              ; preds = %148
  %208 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %209 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ASSOC_REQ_DISABLE_HT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %216 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %217 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %221 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %222 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %214, %207
  %226 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %227 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @ASSOC_REQ_DISABLE_VHT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %234 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %235 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %225
  %239 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %240 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %243, align 8
  %245 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %246 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %245, i32 0, i32 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %244, i64 %251
  %253 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %252, align 8
  store %struct.ieee80211_supported_band* %253, %struct.ieee80211_supported_band** %11, align 8
  %254 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %255 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %238
  %260 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %261 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %271, label %266

266:                                              ; preds = %259
  %267 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %268 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %287, label %271

271:                                              ; preds = %266, %259, %238
  %272 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %273 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %274 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %278 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %271
  %282 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %283 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @netdev_info(i32 %284, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %286

286:                                              ; preds = %281, %271
  br label %287

287:                                              ; preds = %286, %266
  %288 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %289 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %287
  %294 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %295 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %299 = icmp slt i64 %297, %298
  br i1 %299, label %305, label %300

300:                                              ; preds = %293
  %301 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %302 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %321, label %305

305:                                              ; preds = %300, %293, %287
  %306 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %307 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %308 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  %311 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %312 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %305
  %316 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %317 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @netdev_info(i32 %318, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %320

320:                                              ; preds = %315, %305
  br label %321

321:                                              ; preds = %320, %300
  %322 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %323 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %322, i32 0, i32 12
  %324 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %325 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %324, i32 0, i32 2
  %326 = call i32 @memcpy(i32* %323, i32* %325, i32 4)
  %327 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %328 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %327, i32 0, i32 11
  %329 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %330 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %329, i32 0, i32 3
  %331 = call i32 @memcpy(i32* %328, i32* %330, i32 4)
  %332 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %333 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %332, i32 0, i32 10
  %334 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %335 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %334, i32 0, i32 4
  %336 = call i32 @memcpy(i32* %333, i32* %335, i32 4)
  %337 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %338 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %337, i32 0, i32 9
  %339 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %340 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %339, i32 0, i32 5
  %341 = call i32 @memcpy(i32* %338, i32* %340, i32 4)
  %342 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %343 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %342, i32 0, i32 6
  %344 = load i32*, i32** %343, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %346, label %367

346:                                              ; preds = %321
  %347 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %348 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %346
  %352 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %353 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %352, i32 0, i32 15
  %354 = load i32*, i32** %353, align 8
  %355 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %356 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %355, i32 0, i32 6
  %357 = load i32*, i32** %356, align 8
  %358 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %359 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @memcpy(i32* %354, i32* %357, i32 %360)
  %362 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %363 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %366 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  br label %367

367:                                              ; preds = %351, %346, %321
  %368 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %369 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %368, i32 0, i32 8
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %369, align 8
  %371 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %372 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %371, i32 0, i32 14
  store %struct.TYPE_14__* %370, %struct.TYPE_14__** %372, align 8
  %373 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %374 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @IEEE80211_SMPS_AUTOMATIC, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %392

378:                                              ; preds = %367
  %379 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %380 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %379, i32 0, i32 8
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %385 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %386 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %385, i32 0, i32 0
  store i64 %384, i64* %386, align 8
  br label %391

387:                                              ; preds = %378
  %388 = load i64, i64* @IEEE80211_SMPS_OFF, align 8
  %389 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %390 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  br label %391

391:                                              ; preds = %387, %383
  br label %398

392:                                              ; preds = %367
  %393 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %394 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %397 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %396, i32 0, i32 0
  store i64 %395, i64* %397, align 8
  br label %398

398:                                              ; preds = %392, %391
  %399 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %400 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %399, i32 0, i32 8
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %405 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %404, i32 0, i32 13
  store i32 %403, i32* %405, align 8
  %406 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %407 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %398
  %411 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %412 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %416 = icmp sge i64 %414, %415
  br label %417

417:                                              ; preds = %410, %398
  %418 = phi i1 [ false, %398 ], [ %416, %410 ]
  %419 = zext i1 %418 to i32
  %420 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %421 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %423 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %422, i32 0, i32 5
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %426 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %425, i32 0, i32 12
  store i32 %424, i32* %426, align 4
  %427 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %428 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %431 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %430, i32 0, i32 11
  store i32 %429, i32* %431, align 8
  %432 = call i32 (...) @rcu_read_lock()
  %433 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %434 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %433, i32 0, i32 8
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %434, align 8
  %436 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %437 = call i32* @ieee80211_bss_get_ie(%struct.TYPE_14__* %435, i32 %436)
  store i32* %437, i32** %13, align 8
  %438 = load i32*, i32** %13, align 8
  %439 = icmp ne i32* %438, null
  br i1 %439, label %440, label %454

440:                                              ; preds = %417
  %441 = load i32*, i32** %13, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 1
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = icmp uge i64 %444, 4
  br i1 %445, label %446, label %454

446:                                              ; preds = %440
  %447 = load i32*, i32** %13, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 2
  %449 = bitcast i32* %448 to %struct.ieee80211_ht_operation*
  %450 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %453 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %452, i32 0, i32 10
  store i32 %451, i32* %453, align 4
  br label %460

454:                                              ; preds = %440, %417
  %455 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %456 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %457 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %456, i32 0, i32 6
  %458 = load i32, i32* %457, align 8
  %459 = or i32 %458, %455
  store i32 %459, i32* %457, align 8
  br label %460

460:                                              ; preds = %454, %446
  %461 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %462 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %461, i32 0, i32 8
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %462, align 8
  %464 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %465 = call i32* @ieee80211_bss_get_ie(%struct.TYPE_14__* %463, i32 %464)
  store i32* %465, i32** %14, align 8
  %466 = load i32*, i32** %14, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %480

468:                                              ; preds = %460
  %469 = load i32*, i32** %14, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  %473 = icmp uge i64 %472, 4
  br i1 %473, label %474, label %480

474:                                              ; preds = %468
  %475 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %476 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %475, i32 0, i32 9
  %477 = load i32*, i32** %14, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 2
  %479 = call i32 @memcpy(i32* %476, i32* %478, i32 4)
  br label %486

480:                                              ; preds = %468, %460
  %481 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %482 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %483 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %482, i32 0, i32 6
  %484 = load i32, i32* %483, align 8
  %485 = or i32 %484, %481
  store i32 %485, i32* %483, align 8
  br label %486

486:                                              ; preds = %480, %474
  %487 = call i32 (...) @rcu_read_unlock()
  %488 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %489 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %520

492:                                              ; preds = %486
  %493 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %494 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %520

497:                                              ; preds = %492
  %498 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %499 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %498, i32 0, i32 3
  %500 = load %struct.ieee80211_local*, %struct.ieee80211_local** %499, align 8
  %501 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @IEEE80211_HW_SUPPORTS_UAPSD, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %497
  %508 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %509 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 255
  br i1 %511, label %512, label %520

512:                                              ; preds = %507
  %513 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %514 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %513, i32 0, i32 3
  store i32 1, i32* %514, align 4
  %515 = load i32, i32* @IEEE80211_STA_UAPSD_ENABLED, align 4
  %516 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %517 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %516, i32 0, i32 6
  %518 = load i32, i32* %517, align 8
  %519 = or i32 %518, %515
  store i32 %519, i32* %517, align 8
  br label %529

520:                                              ; preds = %507, %497, %492, %486
  %521 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %522 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %521, i32 0, i32 3
  store i32 0, i32* %522, align 4
  %523 = load i32, i32* @IEEE80211_STA_UAPSD_ENABLED, align 4
  %524 = xor i32 %523, -1
  %525 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %526 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 8
  %528 = and i32 %527, %524
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %520, %512
  %530 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %531 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %530, i32 0, i32 7
  %532 = load i32*, i32** %531, align 8
  %533 = icmp ne i32* %532, null
  br i1 %533, label %534, label %543

534:                                              ; preds = %529
  %535 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %536 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %535, i32 0, i32 8
  %537 = load i32*, i32** %536, align 8
  %538 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %539 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %538, i32 0, i32 7
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* @ETH_ALEN, align 4
  %542 = call i32 @memcpy(i32* %537, i32* %540, i32 %541)
  br label %543

543:                                              ; preds = %534, %529
  %544 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %545 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %544, i32 0, i32 10
  %546 = load i64, i64* %545, align 8
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %557

548:                                              ; preds = %543
  %549 = load i32, i32* @IEEE80211_MFP_REQUIRED, align 4
  %550 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %551 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %550, i32 0, i32 7
  store i32 %549, i32* %551, align 4
  %552 = load i32, i32* @IEEE80211_STA_MFP_ENABLED, align 4
  %553 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %554 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %553, i32 0, i32 6
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %552
  store i32 %556, i32* %554, align 8
  br label %567

557:                                              ; preds = %543
  %558 = load i32, i32* @IEEE80211_MFP_DISABLED, align 4
  %559 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %560 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %559, i32 0, i32 7
  store i32 %558, i32* %560, align 4
  %561 = load i32, i32* @IEEE80211_STA_MFP_ENABLED, align 4
  %562 = xor i32 %561, -1
  %563 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %564 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %563, i32 0, i32 6
  %565 = load i32, i32* %564, align 8
  %566 = and i32 %565, %562
  store i32 %566, i32* %564, align 8
  br label %567

567:                                              ; preds = %557, %548
  %568 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %569 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %568, i32 0, i32 9
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 4
  %571 = load i64, i64* %570, align 8
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %579

573:                                              ; preds = %567
  %574 = load i32, i32* @IEEE80211_STA_CONTROL_PORT, align 4
  %575 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %576 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %575, i32 0, i32 6
  %577 = load i32, i32* %576, align 8
  %578 = or i32 %577, %574
  store i32 %578, i32* %576, align 8
  br label %586

579:                                              ; preds = %567
  %580 = load i32, i32* @IEEE80211_STA_CONTROL_PORT, align 4
  %581 = xor i32 %580, -1
  %582 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %583 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = and i32 %584, %581
  store i32 %585, i32* %583, align 8
  br label %586

586:                                              ; preds = %579, %573
  %587 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %588 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %587, i32 0, i32 9
  %589 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %588, i32 0, i32 3
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %592 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %591, i32 0, i32 5
  store i32 %590, i32* %592, align 4
  %593 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %594 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %593, i32 0, i32 9
  %595 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 8
  %597 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %598 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %597, i32 0, i32 4
  store i32 %596, i32* %598, align 8
  %599 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %600 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %601 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %600, i32 0, i32 4
  store %struct.ieee80211_mgd_assoc_data* %599, %struct.ieee80211_mgd_assoc_data** %601, align 8
  %602 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %603 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %602, i32 0, i32 5
  store i64 0, i64* %603, align 8
  %604 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %605 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %606 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %605, i32 0, i32 8
  %607 = load %struct.TYPE_14__*, %struct.TYPE_14__** %606, align 8
  %608 = call i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data* %604, %struct.TYPE_14__* %607, i32 1)
  store i32 %608, i32* %16, align 4
  %609 = load i32, i32* %16, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %586
  br label %768

612:                                              ; preds = %586
  %613 = call i32 (...) @rcu_read_lock()
  %614 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %615 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %614, i32 0, i32 8
  %616 = load %struct.TYPE_14__*, %struct.TYPE_14__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %618)
  store %struct.cfg80211_bss_ies* %619, %struct.cfg80211_bss_ies** %10, align 8
  %620 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %621 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %620, i32 0, i32 3
  %622 = load %struct.ieee80211_local*, %struct.ieee80211_local** %621, align 8
  %623 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* @IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC, align 4
  %627 = and i32 %625, %626
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %650

629:                                              ; preds = %612
  %630 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %631 = icmp ne %struct.cfg80211_bss_ies* %630, null
  br i1 %631, label %650, label %632

632:                                              ; preds = %629
  %633 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %634 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %635 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %634, i32 0, i32 0
  %636 = load i8*, i8** %635, align 8
  %637 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %633, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %636)
  %638 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %5, align 8
  %639 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %638, i32 0, i32 8
  %640 = load %struct.TYPE_14__*, %struct.TYPE_14__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = call i8* @TU_TO_EXP_TIME(i32 %642)
  %644 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %645 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %644, i32 0, i32 7
  store i8* %643, i8** %645, align 8
  %646 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %647 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %646, i32 0, i32 4
  store i32 1, i32* %647, align 8
  %648 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %649 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %648, i32 0, i32 5
  store i32 1, i32* %649, align 4
  br label %726

650:                                              ; preds = %629, %612
  %651 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %652 = icmp ne %struct.cfg80211_bss_ies* %651, null
  br i1 %652, label %653, label %719

653:                                              ; preds = %650
  %654 = load i32, i32* @WLAN_EID_TIM, align 4
  %655 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %656 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %655, i32 0, i32 2
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %659 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 4
  %661 = call i32* @cfg80211_find_ie(i32 %654, i32 %657, i32 %660)
  store i32* %661, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %662 = load i32*, i32** %20, align 8
  %663 = icmp ne i32* %662, null
  br i1 %663, label %664, label %683

664:                                              ; preds = %653
  %665 = load i32*, i32** %20, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 1
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  %669 = icmp uge i64 %668, 16
  br i1 %669, label %670, label %683

670:                                              ; preds = %664
  %671 = load i32*, i32** %20, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 2
  %673 = bitcast i32* %672 to i8*
  %674 = bitcast i8* %673 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %674, %struct.ieee80211_tim_ie** %22, align 8
  %675 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %22, align 8
  %676 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %675, i32 0, i32 1
  %677 = load i64, i64* %676, align 8
  %678 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %679 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %678, i32 0, i32 5
  store i64 %677, i64* %679, align 8
  %680 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %22, align 8
  %681 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 8
  store i32 %682, i32* %21, align 4
  br label %683

683:                                              ; preds = %670, %664, %653
  %684 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %685 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %684, i32 0, i32 6
  store i32 1, i32* %685, align 8
  %686 = load i8*, i8** @jiffies, align 8
  %687 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %688 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %687, i32 0, i32 7
  store i8* %686, i8** %688, align 8
  %689 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %690 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %689, i32 0, i32 4
  store i32 1, i32* %690, align 8
  %691 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %692 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 8
  %695 = load i32, i32* @IEEE80211_HW_TIMING_BEACON_ONLY, align 4
  %696 = and i32 %694, %695
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %718

698:                                              ; preds = %683
  %699 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %700 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 4
  %702 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %703 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %702, i32 0, i32 2
  %704 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %704, i32 0, i32 2
  store i32 %701, i32* %705, align 4
  %706 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %707 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 4
  %709 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %710 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %709, i32 0, i32 2
  %711 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %711, i32 0, i32 1
  store i32 %708, i32* %712, align 4
  %713 = load i32, i32* %21, align 4
  %714 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %715 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %716, i32 0, i32 0
  store i32 %713, i32* %717, align 4
  br label %718

718:                                              ; preds = %698, %683
  br label %725

719:                                              ; preds = %650
  %720 = load i8*, i8** @jiffies, align 8
  %721 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %722 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %721, i32 0, i32 7
  store i8* %720, i8** %722, align 8
  %723 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %724 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %723, i32 0, i32 4
  store i32 1, i32* %724, align 8
  br label %725

725:                                              ; preds = %719, %718
  br label %726

726:                                              ; preds = %725, %632
  %727 = call i32 (...) @rcu_read_unlock()
  %728 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %729 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %730 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %729, i32 0, i32 7
  %731 = load i8*, i8** %730, align 8
  %732 = call i32 @run_again(%struct.ieee80211_if_managed* %728, i8* %731)
  %733 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %734 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %767

737:                                              ; preds = %726
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %738 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %739 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 8
  %741 = load i32, i32* @IEEE80211_BSS_CORRUPT_BEACON, align 4
  %742 = and i32 %740, %741
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %754

744:                                              ; preds = %737
  %745 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %746 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 8
  %748 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %749 = and i32 %747, %748
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %752

751:                                              ; preds = %744
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  br label %753

752:                                              ; preds = %744
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  br label %753

753:                                              ; preds = %752, %751
  br label %763

754:                                              ; preds = %737
  %755 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %8, align 8
  %756 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %759 = and i32 %757, %758
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %23, align 8
  br label %762

762:                                              ; preds = %761, %754
  br label %763

763:                                              ; preds = %762, %753
  %764 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %765 = load i8*, i8** %23, align 8
  %766 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %764, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %765)
  br label %767

767:                                              ; preds = %763, %726
  store i32 0, i32* %16, align 4
  br label %782

768:                                              ; preds = %611
  %769 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %770 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %769, i32 0, i32 0
  %771 = load i8*, i8** %770, align 8
  %772 = load i32, i32* @ETH_ALEN, align 4
  %773 = call i32 @memset(i8* %771, i32 0, i32 %772)
  %774 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %775 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %776 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %774, i32 %775)
  %777 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %778 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %777, i32 0, i32 4
  store %struct.ieee80211_mgd_assoc_data* null, %struct.ieee80211_mgd_assoc_data** %778, align 8
  br label %779

779:                                              ; preds = %768, %124, %116
  %780 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %781 = call i32 @kfree(%struct.ieee80211_mgd_assoc_data* %780)
  br label %782

782:                                              ; preds = %779, %767
  %783 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %784 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %783, i32 0, i32 3
  %785 = call i32 @mutex_unlock(i32* %784)
  %786 = load i32, i32* %16, align 4
  store i32 %786, i32* %3, align 4
  br label %787

787:                                              ; preds = %782, %59, %47
  %788 = load i32, i32* %3, align 4
  ret i32 %788
}

declare dso_local %struct.ieee80211_mgd_assoc_data* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree(%struct.ieee80211_mgd_assoc_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @__cfg80211_send_deauth(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ether_addr_equal(i8*, i32) #1

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data*, %struct.TYPE_14__*, i32) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i8*) #1

declare dso_local i8* @TU_TO_EXP_TIME(i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_if_managed*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
