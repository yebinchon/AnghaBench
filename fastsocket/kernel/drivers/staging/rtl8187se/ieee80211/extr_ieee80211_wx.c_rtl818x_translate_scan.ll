; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_rtl818x_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_rtl818x_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.ieee80211_network = type { i64, i8*, i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_event = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@MAX_CUSTOM_LEN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i8* null, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"<hidden>\00", align 1
@SIOCGIWNAME = common dso_local global i8* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IEEE 802.11%s\00", align 1
@ieee80211_modes = common dso_local global i8** null, align 8
@IW_EV_CHAR_LEN = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i8* null, align 8
@WLAN_CAPABILITY_BSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i8* null, align 8
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i8* null, align 8
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" Rates (Mb/s): \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d%s \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIOCGIWRATE = common dso_local global i8* null, align 8
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"========>signal:%d, rssi:%d\0A\00", align 1
@IWEVQUAL = common dso_local global i8* null, align 8
@IEEE80211_STATMASK_WEMASK = common dso_local global i32 0, align 4
@IEEE80211_STATMASK_RSSI = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@IEEE80211_STATMASK_NOISE = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@IEEE80211_STATMASK_SIGNAL = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i32 0, align 4
@IWEVGENIE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c" Last beacon: %lums ago\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ieee80211_device*, i8*, i8*, %struct.ieee80211_network*, %struct.iw_request_info*)* @rtl818x_translate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rtl818x_translate_scan(%struct.ieee80211_device* %0, i8* %1, i8* %2, %struct.ieee80211_network* %3, %struct.iw_request_info* %4) #0 {
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee80211_network*, align 8
  %10 = alloca %struct.iw_request_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iw_event, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ieee80211_network* %3, %struct.ieee80211_network** %9, align 8
  store %struct.iw_request_info* %4, %struct.iw_request_info** %10, align 8
  %23 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i8*, i8** @SIOCGIWAP, align 8
  %28 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @ARPHRD_ETHER, align 4
  %30 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i8* %36, i32 %39, i32 %40)
  %42 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %46 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %42, i8* %43, i8* %44, %struct.iw_event* %14, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** @SIOCGIWESSID, align 8
  %48 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 9, i32* %59, align 4
  %60 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %60, i8* %61, i8* %62, %struct.iw_event* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %63, i8** %7, align 8
  br label %79

64:                                               ; preds = %5
  %65 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @min(i64 %67, i32 32)
  %69 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %72, i8* %73, i8* %74, %struct.iw_event* %14, i8* %77)
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %64, %56
  %80 = load i8*, i8** @SIOCGIWNAME, align 8
  %81 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load i32, i32* @IFNAMSIZ, align 4
  %88 = load i8**, i8*** @ieee80211_modes, align 8
  %89 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @IW_EV_CHAR_LEN, align 4
  %99 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %95, i8* %96, i8* %97, %struct.iw_event* %14, i32 %98)
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** @SIOCGIWMODE, align 8
  %101 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %103 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %106 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %79
  %111 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @IW_MODE_MASTER, align 4
  %119 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %125

121:                                              ; preds = %110
  %122 = load i32, i32* @IW_MODE_ADHOC, align 4
  %123 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %130 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %126, i8* %127, i8* %128, %struct.iw_event* %14, i32 %129)
  store i8* %130, i8** %7, align 8
  br label %131

131:                                              ; preds = %125, %79
  %132 = load i8*, i8** @SIOCGIWFREQ, align 8
  %133 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %135 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %134, i32 0, i32 14
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %150 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %146, i8* %147, i8* %148, %struct.iw_event* %14, i32 %149)
  store i8* %150, i8** %7, align 8
  %151 = load i8*, i8** @SIOCGIWENCODE, align 8
  %152 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %151, i8** %152, align 8
  %153 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %154 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %131
  %160 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %161 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %162 = or i32 %160, %161
  %163 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  br label %171

166:                                              ; preds = %131
  %167 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %168 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %159
  %172 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %179 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %175, i8* %176, i8* %177, %struct.iw_event* %14, i8* %180)
  store i8* %181, i8** %7, align 8
  store i32 0, i32* %17, align 4
  store i8* %26, i8** %13, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %184 = sext i32 %183 to i64
  %185 = load i8*, i8** %13, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = ptrtoint i8* %26 to i64
  %188 = sub i64 %186, %187
  %189 = sub nsw i64 %184, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %182, i32 %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i8*, i8** %13, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %195

195:                                              ; preds = %251, %171
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %198 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %272

201:                                              ; preds = %195
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %204 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %235

207:                                              ; preds = %201
  %208 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %209 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 127
  %216 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %217 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %216, i32 0, i32 7
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 127
  %224 = icmp slt i32 %215, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %207
  %226 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %227 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %16, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 127
  store i32 %234, i32* %18, align 4
  br label %245

235:                                              ; preds = %207, %201
  %236 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %237 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %236, i32 0, i32 7
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 127
  store i32 %244, i32* %18, align 4
  br label %245

245:                                              ; preds = %235, %225
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* %18, align 4
  store i32 %250, i32* %17, align 4
  br label %251

251:                                              ; preds = %249, %245
  %252 = load i8*, i8** %13, align 8
  %253 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %254 = sext i32 %253 to i64
  %255 = load i8*, i8** %13, align 8
  %256 = ptrtoint i8* %255 to i64
  %257 = ptrtoint i8* %26 to i64
  %258 = sub i64 %256, %257
  %259 = sub nsw i64 %254, %258
  %260 = trunc i64 %259 to i32
  %261 = load i32, i32* %18, align 4
  %262 = ashr i32 %261, 1
  %263 = load i32, i32* %18, align 4
  %264 = and i32 %263, 1
  %265 = icmp ne i32 %264, 0
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %268 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %252, i32 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %262, i8* %267)
  %269 = load i8*, i8** %13, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %13, align 8
  br label %195

272:                                              ; preds = %195
  br label %273

273:                                              ; preds = %314, %272
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %276 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %317

279:                                              ; preds = %273
  %280 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %281 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %280, i32 0, i32 6
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 127
  store i32 %287, i32* %18, align 4
  %288 = load i8*, i8** %13, align 8
  %289 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %290 = sext i32 %289 to i64
  %291 = load i8*, i8** %13, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = ptrtoint i8* %26 to i64
  %294 = sub i64 %292, %293
  %295 = sub nsw i64 %290, %294
  %296 = trunc i64 %295 to i32
  %297 = load i32, i32* %18, align 4
  %298 = ashr i32 %297, 1
  %299 = load i32, i32* %18, align 4
  %300 = and i32 %299, 1
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %304 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %288, i32 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %298, i8* %303)
  %305 = load i8*, i8** %13, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8* %307, i8** %13, align 8
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %17, align 4
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %279
  %312 = load i32, i32* %18, align 4
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %311, %279
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %16, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %16, align 4
  br label %273

317:                                              ; preds = %273
  %318 = load i8*, i8** @SIOCGIWRATE, align 8
  %319 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %318, i8** %319, align 8
  %320 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 1
  store i64 0, i64* %322, align 8
  %323 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  store i64 0, i64* %325, align 8
  %326 = load i32, i32* %17, align 4
  %327 = mul nsw i32 %326, 500000
  %328 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  store i32 %327, i32* %330, align 8
  %331 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %332 = load i8*, i8** %7, align 8
  %333 = load i8*, i8** %8, align 8
  %334 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %335 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %331, i8* %332, i8* %333, %struct.iw_event* %14, i32 %334)
  store i8* %335, i8** %7, align 8
  %336 = load i8*, i8** @IWEVCUSTOM, align 8
  %337 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %336, i8** %337, align 8
  %338 = load i8*, i8** %13, align 8
  %339 = ptrtoint i8* %338 to i64
  %340 = ptrtoint i8* %26 to i64
  %341 = sub i64 %339, %340
  %342 = trunc i64 %341 to i32
  %343 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  store i32 %342, i32* %345, align 4
  %346 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %317
  %352 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %353 = load i8*, i8** %7, align 8
  %354 = load i8*, i8** %8, align 8
  %355 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %352, i8* %353, i8* %354, %struct.iw_event* %14, i8* %26)
  store i8* %355, i8** %7, align 8
  br label %356

356:                                              ; preds = %351, %317
  %357 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %358 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %357, i32 0, i32 13
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %356
  %363 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %364 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %363, i32 0, i32 13
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %362, %356
  %369 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %370 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %369, i32 0, i32 13
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %374 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %373, i32 0, i32 13
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %372, i64 %376)
  br label %378

378:                                              ; preds = %368, %362
  %379 = load i8*, i8** @IWEVQUAL, align 8
  %380 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %379, i8** %380, align 8
  %381 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %382 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %381, i32 0, i32 13
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 3
  store i32 %384, i32* %387, align 8
  %388 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %389 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %388, i32 0, i32 13
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  store i64 %391, i64* %394, align 8
  %395 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %396 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %395, i32 0, i32 13
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 2
  store i32 %398, i32* %401, align 4
  %402 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %403 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %402, i32 0, i32 13
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @IEEE80211_STATMASK_WEMASK, align 4
  %407 = and i32 %405, %406
  %408 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  store i32 %407, i32* %410, align 8
  %411 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %412 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %411, i32 0, i32 13
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @IEEE80211_STATMASK_RSSI, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %425, label %418

418:                                              ; preds = %378
  %419 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %420 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %419
  store i32 %424, i32* %422, align 8
  br label %425

425:                                              ; preds = %418, %378
  %426 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %427 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %426, i32 0, i32 13
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @IEEE80211_STATMASK_NOISE, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %440, label %433

433:                                              ; preds = %425
  %434 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %435 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %434
  store i32 %439, i32* %437, align 8
  br label %440

440:                                              ; preds = %433, %425
  %441 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %442 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %441, i32 0, i32 13
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @IEEE80211_STATMASK_SIGNAL, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %455, label %448

448:                                              ; preds = %440
  %449 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %450 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = or i32 %453, %449
  store i32 %454, i32* %452, align 8
  br label %455

455:                                              ; preds = %448, %440
  %456 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 1
  store i32 7, i32* %458, align 8
  %459 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %460 = load i8*, i8** %7, align 8
  %461 = load i8*, i8** %8, align 8
  %462 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %463 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %459, i8* %460, i8* %461, %struct.iw_event* %14, i32 %462)
  store i8* %463, i8** %7, align 8
  %464 = load i8*, i8** @IWEVCUSTOM, align 8
  %465 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %464, i8** %465, align 8
  store i8* %26, i8** %13, align 8
  %466 = load i8*, i8** %13, align 8
  %467 = ptrtoint i8* %466 to i64
  %468 = ptrtoint i8* %26 to i64
  %469 = sub i64 %467, %468
  %470 = trunc i64 %469 to i32
  %471 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 1
  store i32 %470, i32* %473, align 4
  %474 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %455
  %480 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %481 = load i8*, i8** %7, align 8
  %482 = load i8*, i8** %8, align 8
  %483 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %480, i8* %481, i8* %482, %struct.iw_event* %14, i8* %26)
  store i8* %483, i8** %7, align 8
  br label %484

484:                                              ; preds = %479, %455
  %485 = call i32 @memset(%struct.iw_event* %14, i32 0, i32 112)
  %486 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %487 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %486, i32 0, i32 8
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %515

490:                                              ; preds = %484
  %491 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %492 = zext i32 %491 to i64
  %493 = call i8* @llvm.stacksave()
  store i8* %493, i8** %19, align 8
  %494 = alloca i8, i64 %492, align 16
  store i64 %492, i64* %20, align 8
  %495 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %496 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %495, i32 0, i32 12
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %499 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %498, i32 0, i32 8
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @memcpy(i8* %494, i32 %497, i32 %500)
  %502 = load i8*, i8** @IWEVGENIE, align 8
  %503 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %502, i8** %503, align 8
  %504 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %505 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %504, i32 0, i32 8
  %506 = load i32, i32* %505, align 8
  %507 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 1
  store i32 %506, i32* %509, align 4
  %510 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %511 = load i8*, i8** %7, align 8
  %512 = load i8*, i8** %8, align 8
  %513 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %510, i8* %511, i8* %512, %struct.iw_event* %14, i8* %494)
  store i8* %513, i8** %7, align 8
  %514 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %514)
  br label %515

515:                                              ; preds = %490, %484
  %516 = call i32 @memset(%struct.iw_event* %14, i32 0, i32 112)
  %517 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %518 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %517, i32 0, i32 9
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %546

521:                                              ; preds = %515
  %522 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %523 = zext i32 %522 to i64
  %524 = call i8* @llvm.stacksave()
  store i8* %524, i8** %21, align 8
  %525 = alloca i8, i64 %523, align 16
  store i64 %523, i64* %22, align 8
  %526 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %527 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %526, i32 0, i32 11
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %530 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %529, i32 0, i32 9
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @memcpy(i8* %525, i32 %528, i32 %531)
  %533 = load i8*, i8** @IWEVGENIE, align 8
  %534 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %533, i8** %534, align 8
  %535 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %536 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %535, i32 0, i32 9
  %537 = load i32, i32* %536, align 4
  %538 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %539, i32 0, i32 1
  store i32 %537, i32* %540, align 4
  %541 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %542 = load i8*, i8** %7, align 8
  %543 = load i8*, i8** %8, align 8
  %544 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %541, i8* %542, i8* %543, %struct.iw_event* %14, i8* %525)
  store i8* %544, i8** %7, align 8
  %545 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %545)
  br label %546

546:                                              ; preds = %521, %515
  %547 = load i8*, i8** @IWEVCUSTOM, align 8
  %548 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  store i8* %547, i8** %548, align 8
  store i8* %26, i8** %13, align 8
  %549 = load i8*, i8** %13, align 8
  %550 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %551 = sext i32 %550 to i64
  %552 = load i8*, i8** %13, align 8
  %553 = ptrtoint i8* %552 to i64
  %554 = ptrtoint i8* %26 to i64
  %555 = sub i64 %553, %554
  %556 = sub nsw i64 %551, %555
  %557 = trunc i64 %556 to i32
  %558 = load i32, i32* @jiffies, align 4
  %559 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %560 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %559, i32 0, i32 10
  %561 = load i32, i32* %560, align 8
  %562 = sub nsw i32 %558, %561
  %563 = load i32, i32* @HZ, align 4
  %564 = sdiv i32 %563, 100
  %565 = sdiv i32 %562, %564
  %566 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %549, i32 %557, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %565)
  %567 = load i8*, i8** %13, align 8
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i8, i8* %567, i64 %568
  store i8* %569, i8** %13, align 8
  %570 = load i8*, i8** %13, align 8
  %571 = ptrtoint i8* %570 to i64
  %572 = ptrtoint i8* %26 to i64
  %573 = sub i64 %571, %572
  %574 = trunc i64 %573 to i32
  %575 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %576, i32 0, i32 1
  store i32 %574, i32* %577, align 4
  %578 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %546
  %584 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %585 = load i8*, i8** %7, align 8
  %586 = load i8*, i8** %8, align 8
  %587 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %584, i8* %585, i8* %586, %struct.iw_event* %14, i8* %26)
  store i8* %587, i8** %7, align 8
  br label %588

588:                                              ; preds = %583, %546
  %589 = load i8*, i8** %7, align 8
  %590 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %590)
  ret i8* %589
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #2

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @printk(i8*, i64, i64) #2

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
