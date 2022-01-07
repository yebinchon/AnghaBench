; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_rtl819x_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_rtl819x_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.ieee80211_device = type { i32 }
%struct.ieee80211_network = type { i64, i8*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_event = type { %struct.TYPE_20__, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64 }

@MAX_CUSTOM_LEN = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@rtl819x_translate_scan.EWC11NHTCap = internal global [4 x i32] [i32 0, i32 144, i32 76, i32 51], align 16
@SIOCGIWAP = common dso_local global i8* null, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"<hidden>\00", align 1
@SIOCGIWNAME = common dso_local global i8* null, align 8
@ieee80211_modes = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"IEEE802.11%s\00", align 1
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
@IEEE_N_24G = common dso_local global i32 0, align 4
@MCS_FILTER_ALL = common dso_local global i32 0, align 4
@MCS_DATA_RATE = common dso_local global i32*** null, align 8
@SIOCGIWRATE = common dso_local global i8* null, align 8
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i8* null, align 8
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
@.str.6 = private unnamed_addr constant [24 x i8] c" Last beacon: %lums ago\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ieee80211_device*, i8*, i8*, %struct.ieee80211_network*, %struct.iw_request_info*)* @rtl819x_translate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rtl819x_translate_scan(%struct.ieee80211_device* %0, i8* %1, i8* %2, %struct.ieee80211_network* %3, %struct.iw_request_info* %4) #0 {
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee80211_network*, align 8
  %10 = alloca %struct.iw_request_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.iw_event, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ieee80211_network* %3, %struct.ieee80211_network** %9, align 8
  store %struct.iw_request_info* %4, %struct.iw_request_info** %10, align 8
  %29 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** @SIOCGIWAP, align 8
  %37 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @ARPHRD_ETHER, align 4
  %39 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %46, i32 0, i32 16
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i8* %45, i32 %48, i32 %49)
  %51 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %55 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %51, i8* %52, i8* %53, %struct.iw_event* %16, i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** @SIOCGIWESSID, align 8
  %57 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store i32 9, i32* %68, align 4
  %69 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %69, i8* %70, i8* %71, %struct.iw_event* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %72, i8** %7, align 8
  br label %88

73:                                               ; preds = %5
  %74 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @min(i64 %76, i32 32)
  %78 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %81, i8* %82, i8* %83, %struct.iw_event* %16, i8* %86)
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %73, %65
  %89 = load i8*, i8** @SIOCGIWNAME, align 8
  %90 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %129, %88
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ieee80211_modes, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %91
  %97 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %96
  %105 = load i8*, i8** %14, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ieee80211_modes, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ieee80211_modes, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sprintf(i8* %105, i8* %111, i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ieee80211_modes, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %14, align 8
  br label %128

128:                                              ; preds = %104, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %91

132:                                              ; preds = %91
  %133 = load i8*, i8** %14, align 8
  store i8 0, i8* %133, align 1
  %134 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load i32, i32* @IFNAMSIZ, align 4
  %140 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %138, i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %141 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* @IW_EV_CHAR_LEN, align 4
  %145 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %141, i8* %142, i8* %143, %struct.iw_event* %16, i32 %144)
  store i8* %145, i8** %7, align 8
  %146 = load i8*, i8** @SIOCGIWMODE, align 8
  %147 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %146, i8** %147, align 8
  %148 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %152 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %132
  %157 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %158 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @WLAN_CAPABILITY_BSS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @IW_MODE_MASTER, align 4
  %165 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  br label %171

167:                                              ; preds = %156
  %168 = load i32, i32* @IW_MODE_ADHOC, align 4
  %169 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %176 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %172, i8* %173, i8* %174, %struct.iw_event* %16, i32 %175)
  store i8* %176, i8** %7, align 8
  br label %177

177:                                              ; preds = %171, %132
  %178 = load i8*, i8** @SIOCGIWFREQ, align 8
  %179 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %178, i8** %179, align 8
  %180 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %181 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %180, i32 0, i32 15
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  store i32 %182, i32* %185, align 8
  %186 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %196 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %192, i8* %193, i8* %194, %struct.iw_event* %16, i32 %195)
  store i8* %196, i8** %7, align 8
  %197 = load i8*, i8** @SIOCGIWENCODE, align 8
  %198 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %197, i8** %198, align 8
  %199 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %200 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %177
  %206 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %207 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %208 = or i32 %206, %207
  %209 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  br label %217

212:                                              ; preds = %177
  %213 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %214 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  br label %217

217:                                              ; preds = %212, %205
  %218 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  store i32 0, i32* %220, align 4
  %221 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %225 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %221, i8* %222, i8* %223, %struct.iw_event* %16, i8* %226)
  store i8* %227, i8** %7, align 8
  store i32 0, i32* %19, align 4
  store i8* %32, i8** %15, align 8
  %228 = load i8*, i8** %15, align 8
  %229 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %230 = sext i32 %229 to i64
  %231 = load i8*, i8** %15, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = ptrtoint i8* %32 to i64
  %234 = sub i64 %232, %233
  %235 = sub nsw i64 %230, %234
  %236 = trunc i64 %235 to i32
  %237 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %228, i32 %236, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %238 = load i8*, i8** %15, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %241

241:                                              ; preds = %297, %217
  %242 = load i32, i32* %17, align 4
  %243 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %244 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %318

247:                                              ; preds = %241
  %248 = load i32, i32* %18, align 4
  %249 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %250 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %281

253:                                              ; preds = %247
  %254 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %255 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %18, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 127
  %262 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %263 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 127
  %270 = icmp slt i32 %261, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %253
  %272 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %273 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %272, i32 0, i32 6
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %18, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %18, align 4
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 127
  store i32 %280, i32* %20, align 4
  br label %291

281:                                              ; preds = %253, %247
  %282 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %283 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %282, i32 0, i32 7
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %17, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 127
  store i32 %290, i32* %20, align 4
  br label %291

291:                                              ; preds = %281, %271
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %19, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load i32, i32* %20, align 4
  store i32 %296, i32* %19, align 4
  br label %297

297:                                              ; preds = %295, %291
  %298 = load i8*, i8** %15, align 8
  %299 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %300 = sext i32 %299 to i64
  %301 = load i8*, i8** %15, align 8
  %302 = ptrtoint i8* %301 to i64
  %303 = ptrtoint i8* %32 to i64
  %304 = sub i64 %302, %303
  %305 = sub nsw i64 %300, %304
  %306 = trunc i64 %305 to i32
  %307 = load i32, i32* %20, align 4
  %308 = ashr i32 %307, 1
  %309 = load i32, i32* %20, align 4
  %310 = and i32 %309, 1
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %314 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %298, i32 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %308, i8* %313)
  %315 = load i8*, i8** %15, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** %15, align 8
  br label %241

318:                                              ; preds = %241
  br label %319

319:                                              ; preds = %360, %318
  %320 = load i32, i32* %18, align 4
  %321 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %322 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %363

325:                                              ; preds = %319
  %326 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %327 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %326, i32 0, i32 6
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %18, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 127
  store i32 %333, i32* %20, align 4
  %334 = load i8*, i8** %15, align 8
  %335 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %336 = sext i32 %335 to i64
  %337 = load i8*, i8** %15, align 8
  %338 = ptrtoint i8* %337 to i64
  %339 = ptrtoint i8* %32 to i64
  %340 = sub i64 %338, %339
  %341 = sub nsw i64 %336, %340
  %342 = trunc i64 %341 to i32
  %343 = load i32, i32* %20, align 4
  %344 = ashr i32 %343, 1
  %345 = load i32, i32* %20, align 4
  %346 = and i32 %345, 1
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %350 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %334, i32 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %344, i8* %349)
  %351 = load i8*, i8** %15, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  store i8* %353, i8** %15, align 8
  %354 = load i32, i32* %20, align 4
  %355 = load i32, i32* %19, align 4
  %356 = icmp sgt i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %325
  %358 = load i32, i32* %20, align 4
  store i32 %358, i32* %19, align 4
  br label %359

359:                                              ; preds = %357, %325
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %18, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %18, align 4
  br label %319

363:                                              ; preds = %319
  %364 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %365 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @IEEE_N_24G, align 4
  %368 = icmp sge i32 %366, %367
  br i1 %368, label %369, label %443

369:                                              ; preds = %363
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %370 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %371 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %370, i32 0, i32 14
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = call i32 @memcmp(i32* %373, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rtl819x_translate_scan.EWC11NHTCap, i64 0, i64 0), i32 4)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %369
  %377 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %378 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %377, i32 0, i32 14
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 4
  %382 = bitcast i32* %381 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %382, %struct.TYPE_21__** %21, align 8
  br label %390

383:                                              ; preds = %369
  %384 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %385 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %384, i32 0, i32 14
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = bitcast i32* %388 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %389, %struct.TYPE_21__** %21, align 8
  br label %390

390:                                              ; preds = %383, %376
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  %395 = zext i1 %394 to i64
  %396 = select i1 %394, i32 1, i32 0
  store i32 %396, i32* %22, align 4
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %390
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i32 1, i32 0
  br label %415

408:                                              ; preds = %390
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  %413 = zext i1 %412 to i64
  %414 = select i1 %412, i32 1, i32 0
  br label %415

415:                                              ; preds = %408, %401
  %416 = phi i32 [ %407, %401 ], [ %414, %408 ]
  store i32 %416, i32* %23, align 4
  %417 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %418 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @MCS_FILTER_ALL, align 4
  %422 = call i32 @HTGetHighestMCSRate(%struct.ieee80211_device* %417, i32 %420, i32 %421)
  store i32 %422, i32* %24, align 4
  %423 = load i32***, i32**** @MCS_DATA_RATE, align 8
  %424 = load i32, i32* %22, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32**, i32*** %423, i64 %425
  %427 = load i32**, i32*** %426, align 8
  %428 = load i32, i32* %23, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32*, i32** %427, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %24, align 4
  %433 = and i32 %432, 127
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %431, i64 %434
  %436 = load i32, i32* %435, align 4
  store i32 %436, i32* %20, align 4
  %437 = load i32, i32* %20, align 4
  %438 = load i32, i32* %19, align 4
  %439 = icmp sgt i32 %437, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %415
  %441 = load i32, i32* %20, align 4
  store i32 %441, i32* %19, align 4
  br label %442

442:                                              ; preds = %440, %415
  br label %443

443:                                              ; preds = %442, %363
  %444 = load i8*, i8** @SIOCGIWRATE, align 8
  %445 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %444, i8** %445, align 8
  %446 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 1
  store i64 0, i64* %448, align 8
  %449 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 2
  store i64 0, i64* %451, align 8
  %452 = load i32, i32* %19, align 4
  %453 = mul nsw i32 %452, 500000
  %454 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  store i32 %453, i32* %456, align 8
  %457 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %458 = load i8*, i8** %7, align 8
  %459 = load i8*, i8** %8, align 8
  %460 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %461 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %457, i8* %458, i8* %459, %struct.iw_event* %16, i32 %460)
  store i8* %461, i8** %7, align 8
  %462 = load i8*, i8** @IWEVCUSTOM, align 8
  %463 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %462, i8** %463, align 8
  %464 = load i8*, i8** %15, align 8
  %465 = ptrtoint i8* %464 to i64
  %466 = ptrtoint i8* %32 to i64
  %467 = sub i64 %465, %466
  %468 = trunc i64 %467 to i32
  %469 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 1
  store i32 %468, i32* %471, align 4
  %472 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %443
  %478 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %479 = load i8*, i8** %7, align 8
  %480 = load i8*, i8** %8, align 8
  %481 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %478, i8* %479, i8* %480, %struct.iw_event* %16, i8* %32)
  store i8* %481, i8** %7, align 8
  br label %482

482:                                              ; preds = %477, %443
  %483 = load i8*, i8** @IWEVQUAL, align 8
  %484 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %483, i8** %484, align 8
  %485 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %486 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %485, i32 0, i32 13
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %490, i32 0, i32 3
  store i32 %488, i32* %491, align 4
  %492 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %493 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %492, i32 0, i32 13
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 4
  %496 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 2
  store i32 %495, i32* %498, align 8
  %499 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %500 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %499, i32 0, i32 13
  %501 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 1
  store i32 %502, i32* %505, align 4
  %506 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %507 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %506, i32 0, i32 13
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @IEEE80211_STATMASK_WEMASK, align 4
  %511 = and i32 %509, %510
  %512 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %513, i32 0, i32 0
  store i32 %511, i32* %514, align 8
  %515 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %516 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %515, i32 0, i32 13
  %517 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @IEEE80211_STATMASK_RSSI, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %529, label %522

522:                                              ; preds = %482
  %523 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %524 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %523
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %522, %482
  %530 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %531 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %530, i32 0, i32 13
  %532 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @IEEE80211_STATMASK_NOISE, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %529
  %538 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %539 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %538
  store i32 %543, i32* %541, align 8
  br label %544

544:                                              ; preds = %537, %529
  %545 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %546 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %545, i32 0, i32 13
  %547 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @IEEE80211_STATMASK_SIGNAL, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %559, label %552

552:                                              ; preds = %544
  %553 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %554 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = or i32 %557, %553
  store i32 %558, i32* %556, align 8
  br label %559

559:                                              ; preds = %552, %544
  %560 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %561, i32 0, i32 0
  store i32 7, i32* %562, align 8
  %563 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %564 = load i8*, i8** %7, align 8
  %565 = load i8*, i8** %8, align 8
  %566 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %567 = call i8* @iwe_stream_add_event_rsl(%struct.iw_request_info* %563, i8* %564, i8* %565, %struct.iw_event* %16, i32 %566)
  store i8* %567, i8** %7, align 8
  %568 = load i8*, i8** @IWEVCUSTOM, align 8
  %569 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %568, i8** %569, align 8
  store i8* %32, i8** %15, align 8
  %570 = load i8*, i8** %15, align 8
  %571 = ptrtoint i8* %570 to i64
  %572 = ptrtoint i8* %32 to i64
  %573 = sub i64 %571, %572
  %574 = trunc i64 %573 to i32
  %575 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %576, i32 0, i32 1
  store i32 %574, i32* %577, align 4
  %578 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %559
  %584 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %585 = load i8*, i8** %7, align 8
  %586 = load i8*, i8** %8, align 8
  %587 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %584, i8* %585, i8* %586, %struct.iw_event* %16, i8* %32)
  store i8* %587, i8** %7, align 8
  br label %588

588:                                              ; preds = %583, %559
  %589 = call i32 @memset(%struct.iw_event* %16, i32 0, i32 104)
  %590 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %591 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %590, i32 0, i32 8
  %592 = load i32, i32* %591, align 8
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %619

594:                                              ; preds = %588
  %595 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %596 = zext i32 %595 to i64
  %597 = call i8* @llvm.stacksave()
  store i8* %597, i8** %25, align 8
  %598 = alloca i8, i64 %596, align 16
  store i64 %596, i64* %26, align 8
  %599 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %600 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %599, i32 0, i32 12
  %601 = load i32, i32* %600, align 8
  %602 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %603 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %602, i32 0, i32 8
  %604 = load i32, i32* %603, align 8
  %605 = call i32 @memcpy(i8* %598, i32 %601, i32 %604)
  %606 = load i8*, i8** @IWEVGENIE, align 8
  %607 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %606, i8** %607, align 8
  %608 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %609 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %608, i32 0, i32 8
  %610 = load i32, i32* %609, align 8
  %611 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %612, i32 0, i32 1
  store i32 %610, i32* %613, align 4
  %614 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %615 = load i8*, i8** %7, align 8
  %616 = load i8*, i8** %8, align 8
  %617 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %614, i8* %615, i8* %616, %struct.iw_event* %16, i8* %598)
  store i8* %617, i8** %7, align 8
  %618 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %618)
  br label %619

619:                                              ; preds = %594, %588
  %620 = call i32 @memset(%struct.iw_event* %16, i32 0, i32 104)
  %621 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %622 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %621, i32 0, i32 9
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %650

625:                                              ; preds = %619
  %626 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %627 = zext i32 %626 to i64
  %628 = call i8* @llvm.stacksave()
  store i8* %628, i8** %27, align 8
  %629 = alloca i8, i64 %627, align 16
  store i64 %627, i64* %28, align 8
  %630 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %631 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %630, i32 0, i32 11
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %634 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %633, i32 0, i32 9
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @memcpy(i8* %629, i32 %632, i32 %635)
  %637 = load i8*, i8** @IWEVGENIE, align 8
  %638 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %637, i8** %638, align 8
  %639 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %640 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %639, i32 0, i32 9
  %641 = load i32, i32* %640, align 4
  %642 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %643, i32 0, i32 1
  store i32 %641, i32* %644, align 4
  %645 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %646 = load i8*, i8** %7, align 8
  %647 = load i8*, i8** %8, align 8
  %648 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %645, i8* %646, i8* %647, %struct.iw_event* %16, i8* %629)
  store i8* %648, i8** %7, align 8
  %649 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %649)
  br label %650

650:                                              ; preds = %625, %619
  %651 = load i8*, i8** @IWEVCUSTOM, align 8
  %652 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  store i8* %651, i8** %652, align 8
  store i8* %32, i8** %15, align 8
  %653 = load i8*, i8** %15, align 8
  %654 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %655 = sext i32 %654 to i64
  %656 = load i8*, i8** %15, align 8
  %657 = ptrtoint i8* %656 to i64
  %658 = ptrtoint i8* %32 to i64
  %659 = sub i64 %657, %658
  %660 = sub nsw i64 %655, %659
  %661 = trunc i64 %660 to i32
  %662 = load i32, i32* @jiffies, align 4
  %663 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %664 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %663, i32 0, i32 10
  %665 = load i32, i32* %664, align 8
  %666 = sub nsw i32 %662, %665
  %667 = load i32, i32* @HZ, align 4
  %668 = sdiv i32 %667, 100
  %669 = sdiv i32 %666, %668
  %670 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %653, i32 %661, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %669)
  %671 = load i8*, i8** %15, align 8
  %672 = sext i32 %670 to i64
  %673 = getelementptr inbounds i8, i8* %671, i64 %672
  store i8* %673, i8** %15, align 8
  %674 = load i8*, i8** %15, align 8
  %675 = ptrtoint i8* %674 to i64
  %676 = ptrtoint i8* %32 to i64
  %677 = sub i64 %675, %676
  %678 = trunc i64 %677 to i32
  %679 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %680, i32 0, i32 1
  store i32 %678, i32* %681, align 4
  %682 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %683, i32 0, i32 1
  %685 = load i32, i32* %684, align 4
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %692

687:                                              ; preds = %650
  %688 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %689 = load i8*, i8** %7, align 8
  %690 = load i8*, i8** %8, align 8
  %691 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %688, i8* %689, i8* %690, %struct.iw_event* %16, i8* %32)
  store i8* %691, i8** %7, align 8
  br label %692

692:                                              ; preds = %687, %650
  %693 = load i8*, i8** %7, align 8
  %694 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %694)
  ret i8* %693
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @iwe_stream_add_event_rsl(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #2

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @HTGetHighestMCSRate(%struct.ieee80211_device*, i32, i32) #2

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
