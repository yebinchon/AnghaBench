; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfInfraConnectNetwork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfInfraConnectNetwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32*, i32, i64, i32, i32, i32, i32*, i64, i32, i32, i32, i8*, i64*, i64*, i32, i8*, i64*, i64, i32, i64*, i32, i32, i64, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.zsBssInfo = type { i64*, i32*, i32, i64, i64*, i64*, i64*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@ZM_MPDU_DENSITY_NONE = common dso_local global i8* null, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_STA_STATE_CONNECTING = common dso_local global i32 0, align 4
@ZM_STA_CONN_STATE_NONE = common dso_local global i32 0, align 4
@ZM_DEFAULT_SUPPORT_RATE_ZERO = common dso_local global i32 0, align 4
@ZM_BIT_0 = common dso_local global i32 0, align 4
@ZM_BIT_1 = common dso_local global i32 0, align 4
@ZM_SECURITY_TYPE_WPA = common dso_local global i64 0, align 8
@ZM_STA_WPA_STATE_INIT = common dso_local global i8* null, align 8
@ZM_ENCRYPTION_TKIP = common dso_local global i64 0, align 8
@ZM_TKIP = common dso_local global i32 0, align 4
@ZM_SW_TKIP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_SW_TKIP_DECRY_EN = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_AES = common dso_local global i64 0, align 8
@ZM_AES = common dso_local global i32 0, align 4
@ZM_MPDU_DENSITY_8US = common dso_local global i8* null, align 8
@ZM_PREAMBLE_TYPE_AUTO = common dso_local global i64 0, align 8
@ZM_BIT_5 = common dso_local global i32 0, align 4
@ZM_PREAMBLE_TYPE_SHORT = common dso_local global i64 0, align 8
@ZM_PREAMBLE_TYPE_LONG = common dso_local global i64 0, align 8
@ZM_BIT_2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ZM_CACHED_FRAMEBODY_SIZE = common dso_local global i32 0, align 4
@ZM_BIT_4 = common dso_local global i32 0, align 4
@ZM_AUTH_MODE_OPEN = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_SHARED_KEY = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_AUTO = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_WEP_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Adapter is no WEP, try to connect to WEP AP\00", align 1
@ZM_ENCRYPTION_WEP_ENABLED = common dso_local global i64 0, align 8
@ZM_SW_WEP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_SW_WEP_DECRY_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Desired SSID not found\00", align 1
@zfStaStartConnectCb = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISCONNECT_NOT_FOUND = common dso_local global i32 0, align 4
@NdisCENC_PSK = common dso_local global i32 0, align 4
@ZM_SECURITY_TYPE_CENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfInfraConnectNetwork(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsBssInfo*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca %struct.zsBssInfo, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %4, align 8
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** @ZM_MPDU_DENSITY_NONE, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  %13 = call i32 (...) @zmw_declare_for_critical_section()
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @zmw_enter_critical_section(i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 28
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @zmw_leave_critical_section(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @zfUpdateDefaultQosParameter(i32* %21, i32 0)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @zfStaRefreshBlockList(i32* %23, i32 0)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @ZM_STA_STATE_CONNECTING, align 4
  %27 = call i32 @zfChangeAdapterState(i32* %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @zfPowerSavingMgrWakeup(i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 27
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 26
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 25
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 24
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @zfQueueFlush(i32* %40, i32 %44)
  %46 = load i32, i32* @ZM_STA_CONN_STATE_NONE, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 23
  store i32 %46, i32* %49, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @zfBssInfoReorderList(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call %struct.zsBssInfo* @zfInfraFindAPToConnect(i32* %52, %struct.zsBssInfo* %5)
  store %struct.zsBssInfo* %53, %struct.zsBssInfo** %4, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @zfStaDisableSWEncryption(i32* %66)
  br label %68

68:                                               ; preds = %65, %59
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %71 = icmp ne %struct.zsBssInfo* %70, null
  br i1 %71, label %72, label %711

72:                                               ; preds = %69
  %73 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  store %struct.zsBssInfo* %73, %struct.zsBssInfo** %3, align 8
  %74 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %75 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 22
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %87 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %91 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @zfMemoryCopy(i64* %85, i64* %89, i64 %94)
  %96 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %97 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %2, align 8
  %102 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %103 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %102, i32 0, i32 20
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @zfUpdateBssid(i32* %101, i32 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @ZM_DEFAULT_SUPPORT_RATE_ZERO, align 4
  %108 = call i32 @zfResetSupportRate(i32* %106, i32 %107)
  %109 = load i32*, i32** %2, align 8
  %110 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %111 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %110, i32 0, i32 19
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @zfUpdateSupportRate(i32* %109, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %116 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %115, i32 0, i32 18
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @zfUpdateSupportRate(i32* %114, i32 %117)
  %119 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %120 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %125 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = add nsw i32 %123, %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %72
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 100, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %72
  %141 = load i32, i32* @ZM_BIT_0, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %141
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* @ZM_BIT_1, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %150
  store i32 %157, i32* %155, align 4
  %158 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %159 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  store i32 %160, i32* %163, align 8
  %164 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %165 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %164, i32 0, i32 17
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 21
  store i32 %166, i32* %169, align 8
  %170 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %171 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ZM_SECURITY_TYPE_WPA, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %281

175:                                              ; preds = %140
  %176 = load i8*, i8** @ZM_STA_WPA_STATE_INIT, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 18
  store i8* %176, i8** %179, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ZM_ENCRYPTION_TKIP, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %175
  %187 = load i32, i32* @ZM_TKIP, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 17
  store i32 %187, i32* %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %202

196:                                              ; preds = %186
  %197 = load i32*, i32** %2, align 8
  %198 = load i32, i32* @ZM_SW_TKIP_ENCRY_EN, align 4
  %199 = load i32, i32* @ZM_SW_TKIP_DECRY_EN, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @zfStaEnableSWEncryption(i32* %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %186
  br label %224

203:                                              ; preds = %175
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %203
  %211 = load i32, i32* @ZM_AES, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 17
  store i32 %211, i32* %214, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  %221 = load i8*, i8** @ZM_MPDU_DENSITY_8US, align 8
  store i8* %221, i8** %8, align 8
  br label %222

222:                                              ; preds = %220, %210
  br label %223

223:                                              ; preds = %222, %203
  br label %224

224:                                              ; preds = %223, %202
  %225 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %226 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %225, i32 0, i32 5
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %224
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 16
  %235 = load i64*, i64** %234, align 8
  %236 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %237 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %236, i32 0, i32 5
  %238 = load i64*, i64** %237, align 8
  %239 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %240 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %239, i32 0, i32 5
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 2
  %245 = call i32 @zfMemoryCopy(i64* %235, i64* %238, i64 %244)
  br label %252

246:                                              ; preds = %224
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 16
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 1
  store i64 0, i64* %251, align 8
  br label %252

252:                                              ; preds = %246, %231
  %253 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %254 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %253, i32 0, i32 6
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %252
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 15
  %263 = load i64*, i64** %262, align 8
  %264 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %265 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %264, i32 0, i32 6
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %268 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %267, i32 0, i32 6
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 1
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, 2
  %273 = call i32 @zfMemoryCopy(i64* %263, i64* %266, i64 %272)
  br label %280

274:                                              ; preds = %252
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 15
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 1
  store i64 0, i64* %279, align 8
  br label %280

280:                                              ; preds = %274, %259
  br label %281

281:                                              ; preds = %280, %140
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @ZM_PREAMBLE_TYPE_AUTO, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %310

292:                                              ; preds = %281
  %293 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %294 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %293, i32 0, i32 7
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ZM_BIT_5, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %292
  %302 = load i64, i64* @ZM_PREAMBLE_TYPE_SHORT, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  store i64 %302, i64* %304, align 8
  br label %309

305:                                              ; preds = %292
  %306 = load i64, i64* @ZM_PREAMBLE_TYPE_LONG, align 8
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  br label %309

309:                                              ; preds = %305, %301
  br label %310

310:                                              ; preds = %309, %281
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @ZM_PREAMBLE_TYPE_LONG, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %310
  %317 = load i32, i32* @ZM_BIT_5, align 4
  %318 = xor i32 %317, -1
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, %318
  store i32 %325, i32* %323, align 4
  br label %335

326:                                              ; preds = %310
  %327 = load i32, i32* @ZM_BIT_5, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 6
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %327
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %326, %316
  %336 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %337 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %361

340:                                              ; preds = %335
  %341 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %342 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %350, label %345

345:                                              ; preds = %340
  %346 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %347 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 3
  br i1 %349, label %350, label %361

350:                                              ; preds = %345, %340
  %351 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %352 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  store i32 %353, i32* %355, align 8
  %356 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %357 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 4
  store i32 %358, i32* %360, align 4
  br label %366

361:                                              ; preds = %345, %335
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 3
  store i32 0, i32* %363, align 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 4
  store i32 0, i32* %365, align 4
  br label %366

366:                                              ; preds = %361, %350
  %367 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %368 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %367, i32 0, i32 10
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @ZM_BIT_0, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %366
  %374 = load i32*, i32** %2, align 8
  %375 = call i32 @zfHpDisableHwRetry(i32* %374)
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 6
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 6
  store i32 1, i32* %378, align 8
  %379 = load i8*, i8** @ZM_MPDU_DENSITY_8US, align 8
  store i8* %379, i8** %8, align 8
  br label %386

380:                                              ; preds = %366
  %381 = load i32*, i32** %2, align 8
  %382 = call i32 @zfHpEnableHwRetry(i32* %381)
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 6
  store i32 0, i32* %385, align 8
  br label %386

386:                                              ; preds = %380, %373
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 5
  store i32 1, i32* %388, align 8
  %389 = load i32*, i32** %2, align 8
  %390 = load i8*, i8** %8, align 8
  %391 = call i32 @zfHpSetMPDUDensity(i32* %389, i8* %390)
  %392 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %393 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %392, i32 0, i32 7
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @ZM_BIT_2, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %386
  %401 = load i32, i32* @ZM_BIT_2, align 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 6
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 3
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 1
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %401
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %400, %386
  %410 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %411 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %410, i32 0, i32 11
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @ZM_BIT_1, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %409
  %417 = load i8*, i8** @TRUE, align 8
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 14
  store i8* %417, i8** %420, align 8
  %421 = load i32*, i32** %2, align 8
  %422 = call i32 @zfHpSetSlotTime(i32* %421, i32 0)
  br label %430

423:                                              ; preds = %409
  %424 = load i8*, i8** @FALSE, align 8
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 6
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 14
  store i8* %424, i8** %427, align 8
  %428 = load i32*, i32** %2, align 8
  %429 = call i32 @zfHpSetSlotTime(i32* %428, i32 1)
  br label %430

430:                                              ; preds = %423, %416
  %431 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %432 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %431, i32 0, i32 12
  %433 = load i32, i32* %432, align 8
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %435, label %441

435:                                              ; preds = %430
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 6
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 7
  store i32 0, i32* %438, align 4
  %439 = load i32*, i32** %2, align 8
  %440 = call i32 @zfHpSetSlotTimeRegister(i32* %439, i32 0)
  br label %447

441:                                              ; preds = %430
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 6
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 7
  store i32 1, i32* %444, align 4
  %445 = load i32*, i32** %2, align 8
  %446 = call i32 @zfHpSetSlotTimeRegister(i32* %445, i32 1)
  br label %447

447:                                              ; preds = %441, %435
  %448 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %449 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %448, i32 0, i32 13
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, 12
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 6
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 8
  store i32 %451, i32* %454, align 8
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 6
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 8
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @ZM_CACHED_FRAMEBODY_SIZE, align 4
  %460 = icmp sgt i32 %458, %459
  br i1 %460, label %461, label %466

461:                                              ; preds = %447
  %462 = load i32, i32* @ZM_CACHED_FRAMEBODY_SIZE, align 4
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 6
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 8
  store i32 %462, i32* %465, align 8
  br label %466

466:                                              ; preds = %461, %447
  store i32 0, i32* %7, align 4
  br label %467

467:                                              ; preds = %485, %466
  %468 = load i32, i32* %7, align 4
  %469 = icmp slt i32 %468, 8
  br i1 %469, label %470, label %488

470:                                              ; preds = %467
  %471 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %472 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %471, i32 0, i32 14
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %7, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 6
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 9
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %7, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  store i32 %477, i32* %484, align 4
  br label %485

485:                                              ; preds = %470
  %486 = load i32, i32* %7, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %7, align 4
  br label %467

488:                                              ; preds = %467
  %489 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %490 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %489, i32 0, i32 1
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 0
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i32 0, i32 6
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 9
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 8
  store i32 %493, i32* %498, align 4
  %499 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %500 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %504, i32 0, i32 6
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 9
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 9
  store i32 %503, i32* %508, align 4
  %509 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %510 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %509, i32 0, i32 7
  %511 = load i32*, i32** %510, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 0
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 6
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 9
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 10
  store i32 %513, i32* %518, align 4
  %519 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %520 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %519, i32 0, i32 7
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 1
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 9
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 11
  store i32 %523, i32* %528, align 4
  store i32 0, i32* %7, align 4
  br label %529

529:                                              ; preds = %553, %488
  %530 = load i32, i32* %7, align 4
  %531 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 6
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 8
  %534 = load i32, i32* %533, align 8
  %535 = sub nsw i32 %534, 12
  %536 = icmp slt i32 %530, %535
  br i1 %536, label %537, label %556

537:                                              ; preds = %529
  %538 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %539 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %538, i32 0, i32 15
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %7, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 6
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i32 0, i32 9
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %7, align 4
  %550 = add nsw i32 %549, 12
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %548, i64 %551
  store i32 %544, i32* %552, align 4
  br label %553

553:                                              ; preds = %537
  %554 = load i32, i32* %7, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %7, align 4
  br label %529

556:                                              ; preds = %529
  %557 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %558 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %557, i32 0, i32 7
  %559 = load i32*, i32** %558, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 0
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* @ZM_BIT_4, align 4
  %563 = and i32 %561, %562
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %672

565:                                              ; preds = %556
  %566 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %567 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %566, i32 0, i32 6
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 10
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* @ZM_AUTH_MODE_OPEN, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %586, label %572

572:                                              ; preds = %565
  %573 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 6
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i32 0, i32 10
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @ZM_AUTH_MODE_SHARED_KEY, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %586, label %579

579:                                              ; preds = %572
  %580 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 6
  %582 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %581, i32 0, i32 10
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* @ZM_AUTH_MODE_AUTO, align 8
  %585 = icmp eq i64 %583, %584
  br i1 %585, label %586, label %672

586:                                              ; preds = %579, %572, %565
  %587 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %588 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %587, i32 0, i32 6
  %589 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %588, i32 0, i32 5
  %590 = load i64, i64* %589, align 8
  %591 = load i64, i64* @ZM_ENCRYPTION_WEP_DISABLED, align 8
  %592 = icmp eq i64 %590, %591
  br i1 %592, label %593, label %596

593:                                              ; preds = %586
  %594 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %595 = load i8*, i8** @FALSE, align 8
  store i8* %595, i8** %6, align 8
  br label %596

596:                                              ; preds = %593, %586
  %597 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 6
  %599 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %598, i32 0, i32 5
  %600 = load i64, i64* %599, align 8
  %601 = load i64, i64* @ZM_ENCRYPTION_WEP_ENABLED, align 8
  %602 = icmp eq i64 %600, %601
  br i1 %602, label %603, label %616

603:                                              ; preds = %596
  %604 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %605 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %604, i32 0, i32 6
  %606 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %605, i32 0, i32 4
  %607 = load i32, i32* %606, align 8
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %609, label %615

609:                                              ; preds = %603
  %610 = load i32*, i32** %2, align 8
  %611 = load i32, i32* @ZM_SW_WEP_ENCRY_EN, align 4
  %612 = load i32, i32* @ZM_SW_WEP_DECRY_EN, align 4
  %613 = or i32 %611, %612
  %614 = call i32 @zfStaEnableSWEncryption(i32* %610, i32 %613)
  br label %615

615:                                              ; preds = %609, %603
  br label %616

616:                                              ; preds = %615, %596
  %617 = load i32, i32* @ZM_BIT_4, align 4
  %618 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %619 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %618, i32 0, i32 6
  %620 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %619, i32 0, i32 3
  %621 = load i32*, i32** %620, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 0
  %623 = load i32, i32* %622, align 4
  %624 = or i32 %623, %617
  store i32 %624, i32* %622, align 4
  %625 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %626 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %625, i32 0, i32 6
  %627 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %626, i32 0, i32 10
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* @ZM_AUTH_MODE_AUTO, align 8
  %630 = icmp eq i64 %628, %629
  br i1 %630, label %631, label %647

631:                                              ; preds = %616
  %632 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %633 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %632, i32 0, i32 6
  %634 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %633, i32 0, i32 11
  %635 = load i32, i32* %634, align 8
  %636 = srem i32 %635, 2
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %631
  %639 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %640 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %639, i32 0, i32 6
  %641 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %640, i32 0, i32 12
  store i32 0, i32* %641, align 4
  br label %646

642:                                              ; preds = %631
  %643 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 6
  %645 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %644, i32 0, i32 12
  store i32 1, i32* %645, align 4
  br label %646

646:                                              ; preds = %642, %638
  br label %671

647:                                              ; preds = %616
  %648 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %649 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %648, i32 0, i32 6
  %650 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %649, i32 0, i32 10
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* @ZM_AUTH_MODE_SHARED_KEY, align 8
  %653 = icmp ne i64 %651, %652
  br i1 %653, label %654, label %658

654:                                              ; preds = %647
  %655 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 6
  %657 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %656, i32 0, i32 12
  store i32 0, i32* %657, align 4
  br label %670

658:                                              ; preds = %647
  %659 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %660 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %659, i32 0, i32 6
  %661 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %660, i32 0, i32 10
  %662 = load i64, i64* %661, align 8
  %663 = load i64, i64* @ZM_AUTH_MODE_OPEN, align 8
  %664 = icmp ne i64 %662, %663
  br i1 %664, label %665, label %669

665:                                              ; preds = %658
  %666 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %667 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %666, i32 0, i32 6
  %668 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %667, i32 0, i32 12
  store i32 1, i32* %668, align 4
  br label %669

669:                                              ; preds = %665, %658
  br label %670

670:                                              ; preds = %669, %654
  br label %671

671:                                              ; preds = %670, %646
  br label %710

672:                                              ; preds = %579, %556
  %673 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %674 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %673, i32 0, i32 3
  %675 = load i64, i64* %674, align 8
  %676 = load i64, i64* @ZM_SECURITY_TYPE_WPA, align 8
  %677 = icmp eq i64 %675, %676
  br i1 %677, label %687, label %678

678:                                              ; preds = %672
  %679 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %680 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %679, i32 0, i32 7
  %681 = load i32*, i32** %680, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 0
  %683 = load i32, i32* %682, align 4
  %684 = load i32, i32* @ZM_BIT_4, align 4
  %685 = and i32 %683, %684
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %696

687:                                              ; preds = %678, %672
  %688 = load i32, i32* @ZM_BIT_4, align 4
  %689 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %690 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %689, i32 0, i32 6
  %691 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %690, i32 0, i32 3
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 0
  %694 = load i32, i32* %693, align 4
  %695 = or i32 %694, %688
  store i32 %695, i32* %693, align 4
  br label %706

696:                                              ; preds = %678
  %697 = load i32, i32* @ZM_BIT_4, align 4
  %698 = xor i32 %697, -1
  %699 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %700 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %699, i32 0, i32 6
  %701 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %700, i32 0, i32 3
  %702 = load i32*, i32** %701, align 8
  %703 = getelementptr inbounds i32, i32* %702, i64 0
  %704 = load i32, i32* %703, align 4
  %705 = and i32 %704, %698
  store i32 %705, i32* %703, align 4
  br label %706

706:                                              ; preds = %696, %687
  %707 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %708 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %707, i32 0, i32 6
  %709 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %708, i32 0, i32 12
  store i32 0, i32* %709, align 4
  br label %710

710:                                              ; preds = %706, %671
  br label %713

711:                                              ; preds = %69
  %712 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %720

713:                                              ; preds = %710
  %714 = load i32*, i32** %2, align 8
  %715 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %716 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %715, i32 0, i32 7
  %717 = load i32, i32* %716, align 8
  %718 = load i32, i32* @zfStaStartConnectCb, align 4
  %719 = call i32 @zfCoreSetFrequencyV2(i32* %714, i32 %717, i32 %718)
  br label %728

720:                                              ; preds = %711
  %721 = load i32*, i32** %2, align 8
  %722 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_NOT_FOUND, align 4
  %723 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %724 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %723, i32 0, i32 6
  %725 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %724, i32 0, i32 13
  %726 = load i32, i32* %725, align 8
  %727 = call i32 @zfStaConnectFail(i32* %721, i32 %722, i32 %726, i32 0)
  br label %728

728:                                              ; preds = %720, %713
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfUpdateDefaultQosParameter(i32*, i32) #1

declare dso_local i32 @zfStaRefreshBlockList(i32*, i32) #1

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #1

declare dso_local i32 @zfPowerSavingMgrWakeup(i32*) #1

declare dso_local i32 @zfQueueFlush(i32*, i32) #1

declare dso_local i32 @zfBssInfoReorderList(i32*) #1

declare dso_local %struct.zsBssInfo* @zfInfraFindAPToConnect(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfStaDisableSWEncryption(i32*) #1

declare dso_local i32 @zfMemoryCopy(i64*, i64*, i64) #1

declare dso_local i32 @zfUpdateBssid(i32*, i32) #1

declare dso_local i32 @zfResetSupportRate(i32*, i32) #1

declare dso_local i32 @zfUpdateSupportRate(i32*, i32) #1

declare dso_local i32 @zfStaEnableSWEncryption(i32*, i32) #1

declare dso_local i32 @zfHpDisableHwRetry(i32*) #1

declare dso_local i32 @zfHpEnableHwRetry(i32*) #1

declare dso_local i32 @zfHpSetMPDUDensity(i32*, i8*) #1

declare dso_local i32 @zfHpSetSlotTime(i32*, i32) #1

declare dso_local i32 @zfHpSetSlotTimeRegister(i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfCoreSetFrequencyV2(i32*, i32, i32) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
