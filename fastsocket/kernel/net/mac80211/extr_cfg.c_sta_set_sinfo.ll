; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_set_sinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_set_sinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i64*, i64*, i64, i64, %struct.ieee80211_sub_if_data* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_18__, %struct.ieee80211_local* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64, i64 }
%struct.ieee80211_local = type { %struct.TYPE_11__, %struct.TYPE_15__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.station_info = type { i32, %struct.TYPE_12__, %struct.TYPE_16__, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.timespec = type { i64 }

@STATION_INFO_INACTIVE_TIME = common dso_local global i32 0, align 4
@STATION_INFO_RX_BYTES64 = common dso_local global i32 0, align 4
@STATION_INFO_TX_BYTES64 = common dso_local global i32 0, align 4
@STATION_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@STATION_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@STATION_INFO_TX_RETRIES = common dso_local global i32 0, align 4
@STATION_INFO_TX_FAILED = common dso_local global i32 0, align 4
@STATION_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@STATION_INFO_RX_BITRATE = common dso_local global i32 0, align 4
@STATION_INFO_RX_DROP_MISC = common dso_local global i32 0, align 4
@STATION_INFO_BSS_PARAM = common dso_local global i32 0, align 4
@STATION_INFO_CONNECTED_TIME = common dso_local global i32 0, align 4
@STATION_INFO_STA_FLAGS = common dso_local global i32 0, align 4
@STATION_INFO_BEACON_LOSS_COUNT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_UNSPEC = common dso_local global i32 0, align 4
@STATION_INFO_SIGNAL = common dso_local global i32 0, align 4
@STATION_INFO_SIGNAL_AVG = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_CTS_PROT = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLAN_STA_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_STA_WME = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@STATION_INFO_LLID = common dso_local global i32 0, align 4
@STATION_INFO_LOCAL_PM = common dso_local global i32 0, align 4
@STATION_INFO_NONPEER_PM = common dso_local global i32 0, align 4
@STATION_INFO_PEER_PM = common dso_local global i32 0, align 4
@STATION_INFO_PLID = common dso_local global i32 0, align 4
@STATION_INFO_PLINK_STATE = common dso_local global i32 0, align 4
@STATION_INFO_T_OFFSET = common dso_local global i32 0, align 4
@WLAN_STA_TOFFSET_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.station_info*)* @sta_set_sinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_set_sinfo(%struct.sta_info* %0, %struct.station_info* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.station_info*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.station_info* %1, %struct.station_info** %4, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 22
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.station_info*, %struct.station_info** %4, align 8
  %22 = getelementptr inbounds %struct.station_info, %struct.station_info* %21, i32 0, i32 24
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @STATION_INFO_INACTIVE_TIME, align 4
  %24 = load i32, i32* @STATION_INFO_RX_BYTES64, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @STATION_INFO_TX_BYTES64, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @STATION_INFO_RX_PACKETS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @STATION_INFO_TX_PACKETS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @STATION_INFO_TX_RETRIES, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @STATION_INFO_TX_FAILED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STATION_INFO_TX_BITRATE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STATION_INFO_RX_BITRATE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @STATION_INFO_RX_DROP_MISC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @STATION_INFO_BSS_PARAM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @STATION_INFO_CONNECTED_TIME, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @STATION_INFO_STA_FLAGS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @STATION_INFO_BEACON_LOSS_COUNT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.station_info*, %struct.station_info** %4, align 8
  %51 = getelementptr inbounds %struct.station_info, %struct.station_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 @do_posix_clock_monotonic_gettime(%struct.timespec* %7)
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 21
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.station_info*, %struct.station_info** %4, align 8
  %60 = getelementptr inbounds %struct.station_info, %struct.station_info* %59, i32 0, i32 23
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 20
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = call i32 @jiffies_to_msecs(i64 %65)
  %67 = load %struct.station_info*, %struct.station_info** %4, align 8
  %68 = getelementptr inbounds %struct.station_info, %struct.station_info* %67, i32 0, i32 22
  store i32 %66, i32* %68, align 8
  %69 = load %struct.station_info*, %struct.station_info** %4, align 8
  %70 = getelementptr inbounds %struct.station_info, %struct.station_info* %69, i32 0, i32 21
  store i64 0, i64* %70, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %98, %2
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 19
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.station_info*, %struct.station_info** %4, align 8
  %84 = getelementptr inbounds %struct.station_info, %struct.station_info* %83, i32 0, i32 21
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 18
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.station_info*, %struct.station_info** %4, align 8
  %104 = getelementptr inbounds %struct.station_info, %struct.station_info* %103, i32 0, i32 20
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 17
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.station_info*, %struct.station_info** %4, align 8
  %109 = getelementptr inbounds %struct.station_info, %struct.station_info* %108, i32 0, i32 19
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 16
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.station_info*, %struct.station_info** %4, align 8
  %114 = getelementptr inbounds %struct.station_info, %struct.station_info* %113, i32 0, i32 18
  store i32 %112, i32* %114, align 8
  %115 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 15
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.station_info*, %struct.station_info** %4, align 8
  %119 = getelementptr inbounds %struct.station_info, %struct.station_info* %118, i32 0, i32 17
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %121 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.station_info*, %struct.station_info** %4, align 8
  %124 = getelementptr inbounds %struct.station_info, %struct.station_info* %123, i32 0, i32 16
  store i32 %122, i32* %124, align 8
  %125 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %126 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.station_info*, %struct.station_info** %4, align 8
  %129 = getelementptr inbounds %struct.station_info, %struct.station_info* %128, i32 0, i32 15
  store i32 %127, i32* %129, align 4
  %130 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %131 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.station_info*, %struct.station_info** %4, align 8
  %134 = getelementptr inbounds %struct.station_info, %struct.station_info* %133, i32 0, i32 14
  store i32 %132, i32* %134, align 8
  %135 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 11
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %101
  %145 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %146 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %145, i32 0, i32 11
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IEEE80211_HW_SIGNAL_UNSPEC, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %144, %101
  %155 = load i32, i32* @STATION_INFO_SIGNAL, align 4
  %156 = load i32, i32* @STATION_INFO_SIGNAL_AVG, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.station_info*, %struct.station_info** %4, align 8
  %159 = getelementptr inbounds %struct.station_info, %struct.station_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %163 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %154
  %169 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %171 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %172 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %171, i32 0, i32 10
  %173 = load %struct.station_info*, %struct.station_info** %4, align 8
  %174 = getelementptr inbounds %struct.station_info, %struct.station_info* %173, i32 0, i32 13
  %175 = call i64 @drv_get_rssi(%struct.ieee80211_local* %169, %struct.ieee80211_sub_if_data* %170, i32* %172, i8** %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %168, %154
  %178 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %179 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.station_info*, %struct.station_info** %4, align 8
  %183 = getelementptr inbounds %struct.station_info, %struct.station_info* %182, i32 0, i32 13
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %177, %168
  %185 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %186 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %185, i32 0, i32 8
  %187 = call i64 @ewma_read(i32* %186)
  %188 = sub nsw i64 0, %187
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.station_info*, %struct.station_info** %4, align 8
  %191 = getelementptr inbounds %struct.station_info, %struct.station_info* %190, i32 0, i32 12
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %184, %144
  %193 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %194 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %195 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %194, i32 0, i32 7
  %196 = load %struct.station_info*, %struct.station_info** %4, align 8
  %197 = getelementptr inbounds %struct.station_info, %struct.station_info* %196, i32 0, i32 11
  %198 = call i32 @sta_set_rate_info_tx(%struct.sta_info* %193, i32* %195, i32* %197)
  %199 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %200 = load %struct.station_info*, %struct.station_info** %4, align 8
  %201 = getelementptr inbounds %struct.station_info, %struct.station_info* %200, i32 0, i32 10
  %202 = call i32 @sta_set_rate_info_rx(%struct.sta_info* %199, i32* %201)
  %203 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %204 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %203, i32 0, i32 0
  %205 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_18__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %207, %192
  %209 = load %struct.station_info*, %struct.station_info** %4, align 8
  %210 = getelementptr inbounds %struct.station_info, %struct.station_info* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  store i32 0, i32* %211, align 4
  %212 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %213 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %208
  %219 = load i32, i32* @BSS_PARAM_FLAGS_CTS_PROT, align 4
  %220 = load %struct.station_info*, %struct.station_info** %4, align 8
  %221 = getelementptr inbounds %struct.station_info, %struct.station_info* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %208
  %226 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %227 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_PREAMBLE, align 4
  %234 = load %struct.station_info*, %struct.station_info** %4, align 8
  %235 = getelementptr inbounds %struct.station_info, %struct.station_info* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %233
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %232, %225
  %240 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %241 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %239
  %247 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_SLOT_TIME, align 4
  %248 = load %struct.station_info*, %struct.station_info** %4, align 8
  %249 = getelementptr inbounds %struct.station_info, %struct.station_info* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %247
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %246, %239
  %254 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %255 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %254, i32 0, i32 1
  %256 = load %struct.ieee80211_local*, %struct.ieee80211_local** %255, align 8
  %257 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.station_info*, %struct.station_info** %4, align 8
  %262 = getelementptr inbounds %struct.station_info, %struct.station_info* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  %264 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %265 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.station_info*, %struct.station_info** %4, align 8
  %270 = getelementptr inbounds %struct.station_info, %struct.station_info* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 4
  %272 = load %struct.station_info*, %struct.station_info** %4, align 8
  %273 = getelementptr inbounds %struct.station_info, %struct.station_info* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %276 = call i32 @BIT(i32 %275)
  %277 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %278 = call i32 @BIT(i32 %277)
  %279 = or i32 %276, %278
  %280 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %281 = call i32 @BIT(i32 %280)
  %282 = or i32 %279, %281
  %283 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %284 = call i32 @BIT(i32 %283)
  %285 = or i32 %282, %284
  %286 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %287 = call i32 @BIT(i32 %286)
  %288 = or i32 %285, %287
  %289 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %290 = call i32 @BIT(i32 %289)
  %291 = or i32 %288, %290
  %292 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %293 = call i32 @BIT(i32 %292)
  %294 = or i32 %291, %293
  %295 = load %struct.station_info*, %struct.station_info** %4, align 8
  %296 = getelementptr inbounds %struct.station_info, %struct.station_info* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  store i32 %294, i32* %297, align 4
  %298 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %299 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %300 = call i64 @test_sta_flag(%struct.sta_info* %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %253
  %303 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %304 = call i32 @BIT(i32 %303)
  %305 = load %struct.station_info*, %struct.station_info** %4, align 8
  %306 = getelementptr inbounds %struct.station_info, %struct.station_info* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %304
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %302, %253
  %311 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %312 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %313 = call i64 @test_sta_flag(%struct.sta_info* %311, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %310
  %316 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %317 = call i32 @BIT(i32 %316)
  %318 = load %struct.station_info*, %struct.station_info** %4, align 8
  %319 = getelementptr inbounds %struct.station_info, %struct.station_info* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %317
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %315, %310
  %324 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %325 = load i32, i32* @WLAN_STA_WME, align 4
  %326 = call i64 @test_sta_flag(%struct.sta_info* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %323
  %329 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %330 = call i32 @BIT(i32 %329)
  %331 = load %struct.station_info*, %struct.station_info** %4, align 8
  %332 = getelementptr inbounds %struct.station_info, %struct.station_info* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %334, %330
  store i32 %335, i32* %333, align 4
  br label %336

336:                                              ; preds = %328, %323
  %337 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %338 = load i32, i32* @WLAN_STA_MFP, align 4
  %339 = call i64 @test_sta_flag(%struct.sta_info* %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %336
  %342 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %343 = call i32 @BIT(i32 %342)
  %344 = load %struct.station_info*, %struct.station_info** %4, align 8
  %345 = getelementptr inbounds %struct.station_info, %struct.station_info* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %343
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %341, %336
  %350 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %351 = load i32, i32* @WLAN_STA_AUTH, align 4
  %352 = call i64 @test_sta_flag(%struct.sta_info* %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %349
  %355 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %356 = call i32 @BIT(i32 %355)
  %357 = load %struct.station_info*, %struct.station_info** %4, align 8
  %358 = getelementptr inbounds %struct.station_info, %struct.station_info* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %356
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %354, %349
  %363 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %364 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %365 = call i64 @test_sta_flag(%struct.sta_info* %363, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %362
  %368 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %369 = call i32 @BIT(i32 %368)
  %370 = load %struct.station_info*, %struct.station_info** %4, align 8
  %371 = getelementptr inbounds %struct.station_info, %struct.station_info* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %369
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %367, %362
  %376 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %377 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %378 = call i64 @test_sta_flag(%struct.sta_info* %376, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %375
  %381 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %382 = call i32 @BIT(i32 %381)
  %383 = load %struct.station_info*, %struct.station_info** %4, align 8
  %384 = getelementptr inbounds %struct.station_info, %struct.station_info* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %382
  store i32 %387, i32* %385, align 4
  br label %388

388:                                              ; preds = %380, %375
  ret void
}

declare dso_local i32 @do_posix_clock_monotonic_gettime(%struct.timespec*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @drv_get_rssi(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*, i8**) #1

declare dso_local i64 @ewma_read(i32*) #1

declare dso_local i32 @sta_set_rate_info_tx(%struct.sta_info*, i32*, i32*) #1

declare dso_local i32 @sta_set_rate_info_rx(%struct.sta_info*, i32*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_18__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
