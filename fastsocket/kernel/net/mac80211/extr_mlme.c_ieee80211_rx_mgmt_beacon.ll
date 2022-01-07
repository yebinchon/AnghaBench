; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_21__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { i32, %struct.ieee80211_bss_conf, i64, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i64, i32, i8*, i32 }
%struct.TYPE_21__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.ieee80211_local = type { i32, i32, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i64, i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32 }
%struct.ieee802_11_elems = type { i64, i32, i64, i32*, i32, i32, i32*, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.sta_info = type { i32 }
%struct.ieee80211_p2p_noa_attr = type { i64 }

@RX_MGMT_NONE = common dso_local global i32 0, align 4
@IEEE80211_HW_TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_STA_RESET_SIGNAL_AVE = common dso_local global i32 0, align 4
@IEEE80211_SIGNAL_AVE_WEIGHT = common dso_local global i32 0, align 4
@IEEE80211_SIGNAL_AVE_MIN_COUNT = common dso_local global i32 0, align 4
@RSSI_EVENT_HIGH = common dso_local global i32 0, align 4
@RSSI_EVENT_LOW = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@IEEE80211_STA_BEACON_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cancelling AP probe due to a received beacon\0A\00", align 1
@care_about_ies = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i64 0, align 8
@BSS_CHANGED_QOS = common dso_local global i64 0, align 8
@BSS_CHANGED_DTIM_PERIOD = common dso_local global i64 0, align 8
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@RX_MGMT_CFG80211_TX_DEAUTH = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, i32*, %struct.ieee80211_rx_status*)* @ieee80211_rx_mgmt_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_mgmt_beacon(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2, i32* %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca %struct.ieee80211_if_managed*, align 8
  %13 = alloca %struct.ieee80211_bss_conf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ieee802_11_elems, align 8
  %16 = alloca %struct.ieee80211_local*, align 8
  %17 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %18 = alloca %struct.ieee80211_channel*, align 8
  %19 = alloca %struct.sta_info*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ieee80211_p2p_noa_attr, align 8
  %33 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %11, align 8
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store %struct.ieee80211_if_managed* %36, %struct.ieee80211_if_managed** %12, align 8
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %39, %struct.ieee80211_bss_conf** %13, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 2
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %41, align 8
  store %struct.ieee80211_local* %42, %struct.ieee80211_local** %16, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %43 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %43, i32 0, i32 15
  %45 = call i32 @lockdep_assert_held(i32* %44)
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %53 = bitcast %struct.ieee80211_mgmt* %52 to i32*
  %54 = ptrtoint i32* %51 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %5
  %62 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %62, i32* %6, align 4
  br label %831

63:                                               ; preds = %5
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %68)
  store %struct.ieee80211_chanctx_conf* %69, %struct.ieee80211_chanctx_conf** %17, align 8
  %70 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %17, align 8
  %71 = icmp ne %struct.ieee80211_chanctx_conf* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %74, i32* %6, align 4
  br label %831

75:                                               ; preds = %63
  %76 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %17, align 8
  %80 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %81, align 8
  %83 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %78, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = call i32 (...) @rcu_read_unlock()
  %88 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %88, i32* %6, align 4
  br label %831

89:                                               ; preds = %75
  %90 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %17, align 8
  %91 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %92, align 8
  store %struct.ieee80211_channel* %93, %struct.ieee80211_channel** %18, align 8
  %94 = call i32 (...) @rcu_read_unlock()
  %95 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %96 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %95, i32 0, i32 14
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = icmp ne %struct.TYPE_18__* %97, null
  br i1 %98, label %99, label %203

99:                                               ; preds = %89
  %100 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %101 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %100, i32 0, i32 14
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %203

106:                                              ; preds = %99
  %107 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %111 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %110, i32 0, i32 14
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @ether_addr_equal(i32 %109, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %203

119:                                              ; preds = %106
  %120 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %14, align 8
  %127 = sub i64 %125, %126
  %128 = call i32 @ieee802_11_parse_elems(i64 %124, i64 %127, i32 0, %struct.ieee802_11_elems* %15)
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %130 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %133 = call i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %129, %struct.ieee80211_mgmt* %130, i64 %131, %struct.ieee80211_rx_status* %132, %struct.ieee802_11_elems* %15)
  %134 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %135 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %134, i32 0, i32 14
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %139 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %138, i32 0, i32 14
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %143 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IEEE80211_HW_TIMING_BEACON_ONLY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %185

149:                                              ; preds = %119
  %150 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %151 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le64_to_cpu(i32 %154)
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %158, i32 0, i32 5
  store i8* %155, i8** %159, align 8
  %160 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %161 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %165, i32 0, i32 4
  store i32 %162, i32* %166, align 8
  %167 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = icmp ne %struct.TYPE_15__* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %149
  %171 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %177, i32 0, i32 3
  store i64 %174, i64* %178, align 8
  br label %184

179:                                              ; preds = %149
  %180 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %179, %170
  br label %185

185:                                              ; preds = %184, %119
  %186 = load i32, i32* @jiffies, align 4
  %187 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %188 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %187, i32 0, i32 14
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  store i32 %186, i32* %190, align 4
  %191 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %192 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %191, i32 0, i32 14
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  %195 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %196 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %197 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %196, i32 0, i32 14
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @run_again(%struct.ieee80211_if_managed* %195, i32 %200)
  %202 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %202, i32* %6, align 4
  br label %831

203:                                              ; preds = %106, %99, %89
  %204 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %205 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %204, i32 0, i32 13
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = icmp ne %struct.TYPE_19__* %206, null
  br i1 %207, label %208, label %219

208:                                              ; preds = %203
  %209 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %210 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %213 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %212, i32 0, i32 13
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = call i64 @ether_addr_equal(i32 %211, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %208, %203
  %220 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %220, i32* %6, align 4
  br label %831

221:                                              ; preds = %208
  %222 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %223 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %222, i32 0, i32 13
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %24, align 8
  %227 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %228 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %231 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %233 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %221
  %239 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %242 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %246 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %247, 16
  %249 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %250 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %252 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %251, i32 0, i32 3
  store i32 0, i32* %252, align 4
  %253 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %254 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %253, i32 0, i32 4
  store i32 1, i32* %254, align 8
  %255 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %256 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %255, i32 0, i32 5
  store i32 0, i32* %256, align 4
  br label %278

257:                                              ; preds = %221
  %258 = load i32, i32* @IEEE80211_SIGNAL_AVE_WEIGHT, align 4
  %259 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %260 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %258, %261
  %263 = mul nsw i32 %262, 16
  %264 = load i32, i32* @IEEE80211_SIGNAL_AVE_WEIGHT, align 4
  %265 = sub nsw i32 16, %264
  %266 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %267 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = add nsw i32 %263, %269
  %271 = sdiv i32 %270, 16
  %272 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %273 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  %274 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %275 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %257, %238
  %279 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %280 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %283 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %282, i32 0, i32 7
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %281, %284
  br i1 %285, label %286, label %350

286:                                              ; preds = %278
  %287 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %288 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @IEEE80211_SIGNAL_AVE_MIN_COUNT, align 4
  %291 = icmp sge i32 %289, %290
  br i1 %291, label %292, label %350

292:                                              ; preds = %286
  %293 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %294 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %25, align 4
  %296 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %297 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %26, align 4
  %299 = load i32, i32* %25, align 4
  %300 = sext i32 %299 to i64
  %301 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %302 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %301, i32 0, i32 7
  %303 = load i64, i64* %302, align 8
  %304 = icmp sgt i64 %300, %303
  br i1 %304, label %305, label %323

305:                                              ; preds = %292
  %306 = load i32, i32* %26, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %309 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = icmp sle i64 %307, %310
  br i1 %311, label %315, label %312

312:                                              ; preds = %305
  %313 = load i32, i32* %26, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %312, %305
  %316 = load i32, i32* %25, align 4
  %317 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %318 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 4
  %319 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %320 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %321 = load i32, i32* @RSSI_EVENT_HIGH, align 4
  %322 = call i32 @drv_rssi_callback(%struct.ieee80211_local* %319, %struct.ieee80211_sub_if_data* %320, i32 %321)
  br label %349

323:                                              ; preds = %312, %292
  %324 = load i32, i32* %25, align 4
  %325 = sext i32 %324 to i64
  %326 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %327 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %323
  %331 = load i32, i32* %26, align 4
  %332 = sext i32 %331 to i64
  %333 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %334 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = icmp sge i64 %332, %335
  br i1 %336, label %340, label %337

337:                                              ; preds = %330
  %338 = load i32, i32* %26, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %337, %330
  %341 = load i32, i32* %25, align 4
  %342 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %343 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 4
  %344 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %345 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %346 = load i32, i32* @RSSI_EVENT_LOW, align 4
  %347 = call i32 @drv_rssi_callback(%struct.ieee80211_local* %344, %struct.ieee80211_sub_if_data* %345, i32 %346)
  br label %348

348:                                              ; preds = %340, %337, %323
  br label %349

349:                                              ; preds = %348, %315
  br label %350

350:                                              ; preds = %349, %286, %278
  %351 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %352 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %428

355:                                              ; preds = %350
  %356 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %357 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @IEEE80211_SIGNAL_AVE_MIN_COUNT, align 4
  %360 = icmp sge i32 %358, %359
  br i1 %360, label %361, label %428

361:                                              ; preds = %355
  %362 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %363 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %428, label %369

369:                                              ; preds = %361
  %370 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %371 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = sdiv i32 %372, 16
  store i32 %373, i32* %27, align 4
  %374 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %375 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  store i32 %376, i32* %28, align 4
  %377 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %378 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  store i32 %379, i32* %29, align 4
  %380 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %381 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %30, align 4
  %383 = load i32, i32* %27, align 4
  %384 = load i32, i32* %29, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %404

386:                                              ; preds = %369
  %387 = load i32, i32* %28, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* %28, align 4
  %392 = load i32, i32* %30, align 4
  %393 = sub nsw i32 %391, %392
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %404

395:                                              ; preds = %389, %386
  %396 = load i32, i32* %27, align 4
  %397 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %398 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %397, i32 0, i32 3
  store i32 %396, i32* %398, align 4
  %399 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %400 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %399, i32 0, i32 0
  %401 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %402 = load i32, i32* @GFP_KERNEL, align 4
  %403 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_14__* %400, i32 %401, i32 %402)
  br label %427

404:                                              ; preds = %389, %369
  %405 = load i32, i32* %27, align 4
  %406 = load i32, i32* %29, align 4
  %407 = icmp sgt i32 %405, %406
  br i1 %407, label %408, label %426

408:                                              ; preds = %404
  %409 = load i32, i32* %28, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* %27, align 4
  %413 = load i32, i32* %28, align 4
  %414 = load i32, i32* %30, align 4
  %415 = add nsw i32 %413, %414
  %416 = icmp sgt i32 %412, %415
  br i1 %416, label %417, label %426

417:                                              ; preds = %411, %408
  %418 = load i32, i32* %27, align 4
  %419 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %420 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %419, i32 0, i32 3
  store i32 %418, i32* %420, align 4
  %421 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %422 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %421, i32 0, i32 0
  %423 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %424 = load i32, i32* @GFP_KERNEL, align 4
  %425 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_14__* %422, i32 %423, i32 %424)
  br label %426

426:                                              ; preds = %417, %411, %404
  br label %427

427:                                              ; preds = %426, %395
  br label %428

428:                                              ; preds = %427, %361, %355, %350
  %429 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %430 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @IEEE80211_STA_BEACON_POLL, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %460

435:                                              ; preds = %428
  %436 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %437 = call i32 @mlme_dbg_ratelimited(%struct.ieee80211_sub_if_data* %436, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %438 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %439 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %438, i32 0, i32 4
  %440 = call i32 @mutex_lock(i32* %439)
  %441 = load i32, i32* @IEEE80211_STA_BEACON_POLL, align 4
  %442 = xor i32 %441, -1
  %443 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %444 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %445, %442
  store i32 %446, i32* %444, align 4
  %447 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %448 = call i32 @ieee80211_run_deferred_scan(%struct.ieee80211_local* %447)
  %449 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %450 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %449, i32 0, i32 4
  %451 = call i32 @mutex_unlock(i32* %450)
  %452 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %453 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %452, i32 0, i32 3
  %454 = call i32 @mutex_lock(i32* %453)
  %455 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %456 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %455, i32 -1)
  %457 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %458 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %457, i32 0, i32 3
  %459 = call i32 @mutex_unlock(i32* %458)
  br label %460

460:                                              ; preds = %435, %428
  %461 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %462 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %461)
  %463 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %464 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i32 0, i32 3
  %467 = bitcast i32* %466 to i8*
  %468 = call i64 @crc32_be(i32 0, i8* %467, i32 4)
  store i64 %468, i64* %23, align 8
  %469 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %470 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* %9, align 8
  %475 = load i64, i64* %14, align 8
  %476 = sub i64 %474, %475
  %477 = load i32, i32* @care_about_ies, align 4
  %478 = load i64, i64* %23, align 8
  %479 = call i64 @ieee802_11_parse_elems_crc(i64 %473, i64 %476, i32 0, %struct.ieee802_11_elems* %15, i32 %477, i64 %478)
  store i64 %479, i64* %23, align 8
  %480 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %481 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %480, i32 0, i32 2
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %551

487:                                              ; preds = %460
  %488 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %488, align 8
  %490 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 10
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %493 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %492, i32 0, i32 12
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @ieee80211_check_tim(%struct.TYPE_15__* %489, i32 %491, i32 %494)
  store i32 %495, i32* %31, align 4
  %496 = load i32, i32* %31, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %550

498:                                              ; preds = %487
  %499 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %500 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp sgt i64 %503, 0
  br i1 %504, label %505, label %530

505:                                              ; preds = %498
  %506 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %507 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %506, i32 0, i32 2
  %508 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %526

514:                                              ; preds = %505
  %515 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %516 = xor i32 %515, -1
  %517 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %518 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = and i32 %521, %516
  store i32 %522, i32* %520, align 8
  %523 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %524 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %525 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %523, i32 %524)
  br label %526

526:                                              ; preds = %514, %505
  %527 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %528 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %529 = call i32 @ieee80211_send_nullfunc(%struct.ieee80211_local* %527, %struct.ieee80211_sub_if_data* %528, i32 0)
  br label %549

530:                                              ; preds = %498
  %531 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %532 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %548, label %535

535:                                              ; preds = %530
  %536 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %537 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %538, i32 0, i32 11
  %540 = load i64, i64* %539, align 8
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %548

542:                                              ; preds = %535
  %543 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %544 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %543, i32 0, i32 0
  store i32 1, i32* %544, align 8
  %545 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %546 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %547 = call i32 @ieee80211_send_pspoll(%struct.ieee80211_local* %545, %struct.ieee80211_sub_if_data* %546)
  br label %548

548:                                              ; preds = %542, %535, %530
  br label %549

549:                                              ; preds = %548, %526
  br label %550

550:                                              ; preds = %549, %487
  br label %551

551:                                              ; preds = %550, %460
  %552 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %553 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %553, i32 0, i32 2
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %619

557:                                              ; preds = %551
  %558 = bitcast %struct.ieee80211_p2p_noa_attr* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %558, i8 0, i64 8, i1 false)
  %559 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %560 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %561, i32 0, i32 2
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* %9, align 8
  %565 = load i64, i64* %14, align 8
  %566 = sub i64 %564, %565
  %567 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %568 = bitcast %struct.ieee80211_p2p_noa_attr* %32 to i32*
  %569 = call i32 @cfg80211_get_p2p_attr(i64 %563, i64 %566, i32 %567, i32* %568, i32 8)
  store i32 %569, i32* %33, align 4
  %570 = load i32, i32* %33, align 4
  %571 = icmp sge i32 %570, 2
  br i1 %571, label %572, label %597

572:                                              ; preds = %557
  %573 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %574 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %575, i32 0, i32 8
  %577 = load i64, i64* %576, align 8
  %578 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %32, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %577, %579
  br i1 %580, label %581, label %596

581:                                              ; preds = %572
  %582 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %32, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %585 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %586, i32 0, i32 8
  store i64 %583, i64* %587, align 8
  %588 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %589 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %588, i32 0, i32 6
  %590 = call i32 @memcpy(i32* %589, %struct.ieee80211_p2p_noa_attr* %32, i32 8)
  %591 = load i64, i64* @BSS_CHANGED_P2P_PS, align 8
  %592 = load i64, i64* %20, align 8
  %593 = or i64 %592, %591
  store i64 %593, i64* %20, align 8
  %594 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %595 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %594, i32 0, i32 9
  store i32 0, i32* %595, align 8
  br label %596

596:                                              ; preds = %581, %572
  br label %618

597:                                              ; preds = %557
  %598 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %599 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %600, i32 0, i32 8
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, -1
  br i1 %603, label %604, label %617

604:                                              ; preds = %597
  %605 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %606 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %607, i32 0, i32 8
  store i64 -1, i64* %608, align 8
  %609 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %610 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %609, i32 0, i32 6
  %611 = call i32 @memset(i32* %610, i32 0, i32 4)
  %612 = load i64, i64* @BSS_CHANGED_P2P_PS, align 8
  %613 = load i64, i64* %20, align 8
  %614 = or i64 %613, %612
  store i64 %614, i64* %20, align 8
  %615 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %616 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %615, i32 0, i32 9
  store i32 0, i32* %616, align 8
  br label %617

617:                                              ; preds = %604, %597
  br label %618

618:                                              ; preds = %617, %596
  br label %619

619:                                              ; preds = %618, %551
  %620 = load i64, i64* %23, align 8
  %621 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %622 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %621, i32 0, i32 10
  %623 = load i64, i64* %622, align 8
  %624 = icmp eq i64 %620, %623
  br i1 %624, label %625, label %632

625:                                              ; preds = %619
  %626 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %627 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %626, i32 0, i32 9
  %628 = load i32, i32* %627, align 8
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %625
  %631 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %631, i32* %6, align 4
  br label %831

632:                                              ; preds = %625, %619
  %633 = load i64, i64* %23, align 8
  %634 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %635 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %634, i32 0, i32 10
  store i64 %633, i64* %635, align 8
  %636 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %12, align 8
  %637 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %636, i32 0, i32 9
  store i32 1, i32* %637, align 8
  %638 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %639 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %640 = load i64, i64* %9, align 8
  %641 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %642 = call i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %638, %struct.ieee80211_mgmt* %639, i64 %640, %struct.ieee80211_rx_status* %641, %struct.ieee802_11_elems* %15)
  %643 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %644 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %645 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 9
  %646 = load i32, i32* %645, align 4
  %647 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 8
  %648 = load i32, i32* %647, align 8
  %649 = call i64 @ieee80211_sta_wmm_params(%struct.ieee80211_local* %643, %struct.ieee80211_sub_if_data* %644, i32 %646, i32 %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %655

651:                                              ; preds = %632
  %652 = load i64, i64* @BSS_CHANGED_QOS, align 8
  %653 = load i64, i64* %20, align 8
  %654 = or i64 %653, %652
  store i64 %654, i64* %20, align 8
  br label %655

655:                                              ; preds = %651, %632
  %656 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %657 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %656, i32 0, i32 2
  %658 = load i32, i32* %657, align 8
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %728, label %660

660:                                              ; preds = %655
  %661 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %662 = load %struct.TYPE_15__*, %struct.TYPE_15__** %661, align 8
  %663 = icmp ne %struct.TYPE_15__* %662, null
  br i1 %663, label %664, label %677

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %666 = load %struct.TYPE_15__*, %struct.TYPE_15__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %666, i32 0, i32 1
  %668 = load i64, i64* %667, align 8
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %664
  br label %672

671:                                              ; preds = %664
  br label %672

672:                                              ; preds = %671, %670
  %673 = phi i64 [ %668, %670 ], [ 1, %671 ]
  %674 = trunc i64 %673 to i32
  %675 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %676 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %675, i32 0, i32 2
  store i32 %674, i32* %676, align 8
  br label %680

677:                                              ; preds = %660
  %678 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %13, align 8
  %679 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %678, i32 0, i32 2
  store i32 1, i32* %679, align 8
  br label %680

680:                                              ; preds = %677, %672
  %681 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %682 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %681, i32 0, i32 2
  %683 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* @IEEE80211_HW_TIMING_BEACON_ONLY, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %724

688:                                              ; preds = %680
  %689 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %690 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = call i8* @le64_to_cpu(i32 %693)
  %695 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %696 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %697, i32 0, i32 5
  store i8* %694, i8** %698, align 8
  %699 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %700 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %699, i32 0, i32 3
  %701 = load i32, i32* %700, align 8
  %702 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %703 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %704, i32 0, i32 4
  store i32 %701, i32* %705, align 8
  %706 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %707 = load %struct.TYPE_15__*, %struct.TYPE_15__** %706, align 8
  %708 = icmp ne %struct.TYPE_15__* %707, null
  br i1 %708, label %709, label %718

709:                                              ; preds = %688
  %710 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %711 = load %struct.TYPE_15__*, %struct.TYPE_15__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %715 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %716, i32 0, i32 3
  store i64 %713, i64* %717, align 8
  br label %723

718:                                              ; preds = %688
  %719 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %720 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %719, i32 0, i32 0
  %721 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %721, i32 0, i32 3
  store i64 0, i64* %722, align 8
  br label %723

723:                                              ; preds = %718, %709
  br label %724

724:                                              ; preds = %723, %680
  %725 = load i64, i64* @BSS_CHANGED_DTIM_PERIOD, align 8
  %726 = load i64, i64* %20, align 8
  %727 = or i64 %726, %725
  store i64 %727, i64* %20, align 8
  br label %728

728:                                              ; preds = %724, %655
  %729 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 6
  %730 = load i32*, i32** %729, align 8
  %731 = icmp ne i32* %730, null
  br i1 %731, label %732, label %737

732:                                              ; preds = %728
  store i32 1, i32* %21, align 4
  %733 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 6
  %734 = load i32*, i32** %733, align 8
  %735 = getelementptr inbounds i32, i32* %734, i64 0
  %736 = load i32, i32* %735, align 4
  store i32 %736, i32* %22, align 4
  br label %738

737:                                              ; preds = %728
  store i32 0, i32* %21, align 4
  br label %738

738:                                              ; preds = %737, %732
  %739 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %740 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %741 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %740, i32 0, i32 0
  %742 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 8
  %745 = call i32 @le16_to_cpu(i32 %744)
  %746 = load i32, i32* %21, align 4
  %747 = load i32, i32* %22, align 4
  %748 = call i64 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %739, i32 %745, i32 %746, i32 %747)
  %749 = load i64, i64* %20, align 8
  %750 = or i64 %749, %748
  store i64 %750, i64* %20, align 8
  %751 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %752 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %751, i32 0, i32 1
  %753 = call i32 @mutex_lock(i32* %752)
  %754 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %755 = load i32*, i32** %24, align 8
  %756 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %754, i32* %755)
  store %struct.sta_info* %756, %struct.sta_info** %19, align 8
  %757 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %758 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %759 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 5
  %760 = load i32, i32* %759, align 4
  %761 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 4
  %762 = load i32, i32* %761, align 8
  %763 = load i32*, i32** %24, align 8
  %764 = call i64 @ieee80211_config_bw(%struct.ieee80211_sub_if_data* %757, %struct.sta_info* %758, i32 %760, i32 %762, i32* %763, i64* %20)
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %776

766:                                              ; preds = %738
  %767 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %768 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %767, i32 0, i32 1
  %769 = call i32 @mutex_unlock(i32* %768)
  %770 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %771 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %772 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %773 = load i32*, i32** %10, align 8
  %774 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %770, i32 %771, i32 %772, i32 1, i32* %773)
  %775 = load i32, i32* @RX_MGMT_CFG80211_TX_DEAUTH, align 4
  store i32 %775, i32* %6, align 4
  br label %831

776:                                              ; preds = %738
  %777 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %778 = icmp ne %struct.sta_info* %777, null
  br i1 %778, label %779, label %793

779:                                              ; preds = %776
  %780 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 3
  %781 = load i32*, i32** %780, align 8
  %782 = icmp ne i32* %781, null
  br i1 %782, label %783, label %793

783:                                              ; preds = %779
  %784 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %785 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %786 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 3
  %787 = load i32*, i32** %786, align 8
  %788 = load i32, i32* %787, align 4
  %789 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %790 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %789, i32 0, i32 2
  %791 = load i32, i32* %790, align 4
  %792 = call i32 @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %784, %struct.sta_info* %785, i32 %788, i32 %791, i32 1)
  br label %793

793:                                              ; preds = %783, %779, %776
  %794 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %795 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %794, i32 0, i32 1
  %796 = call i32 @mutex_unlock(i32* %795)
  %797 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 2
  %798 = load i64, i64* %797, align 8
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %826

800:                                              ; preds = %793
  %801 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 0
  %802 = load i64, i64* %801, align 8
  %803 = icmp ne i64 %802, 0
  br i1 %803, label %804, label %826

804:                                              ; preds = %800
  %805 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %806 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %806, i32 0, i32 0
  %808 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 8
  %810 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %811 = call i32 @cpu_to_le16(i32 %810)
  %812 = and i32 %809, %811
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %826

814:                                              ; preds = %804
  %815 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %816 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %817 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 2
  %818 = load i64, i64* %817, align 8
  %819 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 1
  %820 = load i32, i32* %819, align 8
  %821 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 0
  %822 = load i64, i64* %821, align 8
  %823 = call i64 @ieee80211_handle_pwr_constr(%struct.ieee80211_sub_if_data* %815, %struct.ieee80211_channel* %816, i64 %818, i32 %820, i64 %822)
  %824 = load i64, i64* %20, align 8
  %825 = or i64 %824, %823
  store i64 %825, i64* %20, align 8
  br label %826

826:                                              ; preds = %814, %804, %800, %793
  %827 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %828 = load i64, i64* %20, align 8
  %829 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %827, i64 %828)
  %830 = load i32, i32* @RX_MGMT_NONE, align 4
  store i32 %830, i32* %6, align 4
  br label %831

831:                                              ; preds = %826, %766, %630, %219, %185, %86, %72, %61
  %832 = load i32, i32* %6, align 4
  ret i32 %832
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*) #1

declare dso_local i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*, %struct.ieee802_11_elems*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_if_managed*, i32) #1

declare dso_local i32 @drv_rssi_callback(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mlme_dbg_ratelimited(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_run_deferred_scan(%struct.ieee80211_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @crc32_be(i32, i8*, i32) #1

declare dso_local i64 @ieee802_11_parse_elems_crc(i64, i64, i32, %struct.ieee802_11_elems*, i32, i64) #1

declare dso_local i32 @ieee80211_check_tim(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_send_nullfunc(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_send_pspoll(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_get_p2p_attr(i64, i64, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_p2p_noa_attr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ieee80211_sta_wmm_params(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i64 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @ieee80211_config_bw(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32, i32*, i64*) #1

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_handle_pwr_constr(%struct.ieee80211_sub_if_data*, %struct.ieee80211_channel*, i64, i32, i64) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
