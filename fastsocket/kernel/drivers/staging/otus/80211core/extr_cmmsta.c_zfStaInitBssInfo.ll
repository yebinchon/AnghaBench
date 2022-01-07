; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaInitBssInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaInitBssInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.zsWlanProbeRspFrameHeader = type { i32*, i32*, i32*, i32*, i32* }
%struct.zsBssInfo = type { i32, i64*, i32, i32, i32*, i32, i64*, i64*, i64*, i32, i64*, i64*, i64*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32* }
%struct.zsAdditionInfo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ZM_BSS_INFO_VALID_BIT = common dso_local global i32 0, align 4
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EID(SSID) not found\00", align 1
@ZM_MAX_SSID_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"EID(SSID) is invalid\00", align 1
@ZM_WLAN_EID_DS = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Abnormal DS Param Set IE\00", align 1
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_SECURITY_TYPE_NONE = common dso_local global i8* null, align 8
@ZM_MAX_PROBE_FRAME_BODY_SIZE = common dso_local global i32 0, align 4
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"probersp frameBodysize abnormal\00", align 1
@ZM_WLAN_EID_SUPPORT_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"EID(supported rates) not found\00", align 1
@ZM_MAX_SUPP_RATES_IE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Supported rates IE length abnormal\00", align 1
@ZM_WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@ZM_MAX_COUNTRY_INFO_SIZE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_ERP = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Extended rates IE length abnormal\00", align 1
@ZM_WLAN_EID_WPA_IE = common dso_local global i32 0, align 4
@ZM_MAX_IE_SIZE = common dso_local global i32 0, align 4
@ZM_SECURITY_TYPE_WPA = common dso_local global i8* null, align 8
@ZM_MAX_WPS_IE_SIZE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_VENDOR_PRIVATE = common dso_local global i32 0, align 4
@ZM_SuperG_AP = common dso_local global i32 0, align 4
@ZM_XR_AP = common dso_local global i32 0, align 4
@ZM_WLAN_EID_RSN_IE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_PREN2_EID_HTCAPABILITY = common dso_local global i32 0, align 4
@ZM_All11N_AP = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_PREN2_EID_HTINFORMATION = common dso_local global i32 0, align 4
@ZM_WLAN_EID_IBSS = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_5_N = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_5_54 = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_N = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_54 = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_11 = common dso_local global i32 0, align 4
@ZM_SECURITY_TYPE_CENC = common dso_local global i8* null, align 8
@ZM_WLAN_EID_CENC_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaInitBssInfo(i32* %0, i32* %1, %struct.zsWlanProbeRspFrameHeader* %2, %struct.zsBssInfo* %3, %struct.zsAdditionInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.zsWlanProbeRspFrameHeader*, align 8
  %11 = alloca %struct.zsBssInfo*, align 8
  %12 = alloca %struct.zsAdditionInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.zsWlanProbeRspFrameHeader* %2, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  store %struct.zsBssInfo* %3, %struct.zsBssInfo** %11, align 8
  store %struct.zsAdditionInfo* %4, %struct.zsAdditionInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @zmw_get_wlan_dev(i32* %23)
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %29 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZM_BSS_INFO_VALID_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %1057

35:                                               ; preds = %27, %6
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %39 = call i32 @zfFindElement(i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %1129

43:                                               ; preds = %35
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @zmw_rx_buf_readb(i32* %44, i32* %45, i32 %47)
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %22, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @zfwGetShowZeroLengthSSID(i32* %49, i32* %22)
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @ZM_MAX_SSID_LENGTH, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %1129

59:                                               ; preds = %53
  br label %70

60:                                               ; preds = %43
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @ZM_MAX_SSID_LENGTH, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %60
  %68 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %1129

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %74 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 2
  %79 = call i32 @zfCopyFromRxBuffer(i32* %71, i32* %72, i64* %75, i32 %76, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @ZM_WLAN_EID_DS, align 4
  %83 = call i32 @zfFindElement(i32* %80, i32* %81, i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = icmp ne i32 %83, 65535
  br i1 %84, label %85, label %118

85:                                               ; preds = %70
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @zmw_rx_buf_readb(i32* %86, i32* %87, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @ZM_LV_0, align 4
  %95 = call i32 @zm_msg0_mm(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %1129

96:                                               ; preds = %85
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 2
  %101 = call i32 @zmw_rx_buf_readb(i32* %97, i32* %98, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @zfChNumToFreq(i32* %103, i32 %104, i32 0)
  %106 = call i64 @zfHpIsAllowedChannel(i32* %102, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %1130

109:                                              ; preds = %96
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @zfChNumToFreq(i32* %110, i32 %111, i32 0)
  %113 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %114 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %117 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %132

118:                                              ; preds = %70
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %124 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @zfChFreqToNum(i32 %128, i32* %16)
  %130 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %131 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %118, %109
  %133 = load i8*, i8** @ZM_SECURITY_TYPE_NONE, align 8
  %134 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %135 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %134, i32 0, i32 29
  store i8* %133, i8** %135, align 8
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %153, %132
  %137 = load i32, i32* %17, align 4
  %138 = icmp slt i32 %137, 6
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %141 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %148 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %147, i32 0, i32 33
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %136

156:                                              ; preds = %136
  store i32 0, i32* %17, align 4
  br label %157

157:                                              ; preds = %174, %156
  %158 = load i32, i32* %17, align 4
  %159 = icmp slt i32 %158, 6
  br i1 %159, label %160, label %177

160:                                              ; preds = %157
  %161 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %162 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %169 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %168, i32 0, i32 32
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %160
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %157

177:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %195, %177
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %198

181:                                              ; preds = %178
  %182 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %183 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %190 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %189, i32 0, i32 31
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %181
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %178

198:                                              ; preds = %178
  %199 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %200 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %205 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %204, i32 0, i32 30
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %203, i32* %207, align 4
  %208 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %209 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %214 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %213, i32 0, i32 30
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %212, i32* %216, align 4
  %217 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %218 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %223 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %221, i32* %225, align 4
  %226 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %10, align 8
  %227 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %232 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 %230, i32* %234, align 4
  store i32 36, i32* %18, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = load i32*, i32** %9, align 8
  %237 = call i32 @zfwBufGetSize(i32* %235, i32* %236)
  %238 = load i32, i32* %18, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %241 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 8
  %242 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %243 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @ZM_MAX_PROBE_FRAME_BODY_SIZE, align 4
  %246 = sub nsw i32 %245, 1
  %247 = icmp sgt i32 %244, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %198
  %249 = load i32, i32* @ZM_MAX_PROBE_FRAME_BODY_SIZE, align 4
  %250 = sub nsw i32 %249, 1
  %251 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %252 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %198
  store i32 0, i32* %21, align 4
  br label %254

254:                                              ; preds = %294, %253
  %255 = load i32*, i32** %8, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %21, align 4
  %259 = add nsw i32 %257, %258
  %260 = add nsw i32 %259, 1
  %261 = call i32 @zmw_rx_buf_readb(i32* %255, i32* %256, i32 %260)
  %262 = add nsw i32 %261, 2
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %20, align 4
  %264 = icmp sge i32 %263, 2
  br i1 %264, label %265, label %290

265:                                              ; preds = %254
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %20, align 4
  %268 = add nsw i32 %266, %267
  %269 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %270 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = icmp sle i32 %268, %271
  br i1 %272, label %273, label %290

273:                                              ; preds = %265
  %274 = load i32*, i32** %8, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %277 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %276, i32 0, i32 6
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i32, i32* %20, align 4
  %286 = call i32 @zfCopyFromRxBuffer(i32* %274, i32* %275, i64* %281, i32 %284, i32 %285)
  %287 = load i32, i32* %20, align 4
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %21, align 4
  br label %293

290:                                              ; preds = %265, %254
  %291 = load i32, i32* @ZM_LV_1, align 4
  %292 = call i32 @zm_msg0_mm(i32 %291, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %300

293:                                              ; preds = %273
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %21, align 4
  %296 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %297 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %254, label %300

300:                                              ; preds = %294, %290
  %301 = load i32, i32* %21, align 4
  %302 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %303 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %307 = call i32 @zfFindElement(i32* %304, i32* %305, i32 %306)
  store i32 %307, i32* %18, align 4
  %308 = icmp eq i32 %307, 65535
  br i1 %308, label %309, label %311

309:                                              ; preds = %300
  %310 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %1129

311:                                              ; preds = %300
  %312 = load i32*, i32** %8, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = load i32, i32* %18, align 4
  %315 = add nsw i32 %314, 1
  %316 = call i32 @zmw_rx_buf_readb(i32* %312, i32* %313, i32 %315)
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %14, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %311
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @ZM_MAX_SUPP_RATES_IE_SIZE, align 4
  %322 = icmp sgt i32 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %319, %311
  %324 = load i32, i32* @ZM_LV_0, align 4
  %325 = call i32 @zm_msg0_mm(i32 %324, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %1129

326:                                              ; preds = %319
  %327 = load i32*, i32** %8, align 8
  %328 = load i32*, i32** %9, align 8
  %329 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %330 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %329, i32 0, i32 7
  %331 = load i64*, i64** %330, align 8
  %332 = load i32, i32* %18, align 4
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 2
  %335 = call i32 @zfCopyFromRxBuffer(i32* %327, i32* %328, i64* %331, i32 %332, i32 %334)
  %336 = load i32*, i32** %8, align 8
  %337 = load i32*, i32** %9, align 8
  %338 = load i32, i32* @ZM_WLAN_EID_COUNTRY, align 4
  %339 = call i32 @zfFindElement(i32* %336, i32* %337, i32 %338)
  store i32 %339, i32* %18, align 4
  %340 = icmp ne i32 %339, 65535
  br i1 %340, label %341, label %377

341:                                              ; preds = %326
  %342 = load i32*, i32** %8, align 8
  %343 = load i32*, i32** %9, align 8
  %344 = load i32, i32* %18, align 4
  %345 = add nsw i32 %344, 1
  %346 = call i32 @zmw_rx_buf_readb(i32* %342, i32* %343, i32 %345)
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %14, align 4
  %348 = load i32, i32* @ZM_MAX_COUNTRY_INFO_SIZE, align 4
  %349 = icmp sgt i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %341
  %351 = load i32, i32* @ZM_MAX_COUNTRY_INFO_SIZE, align 4
  store i32 %351, i32* %14, align 4
  br label %352

352:                                              ; preds = %350, %341
  %353 = load i32*, i32** %8, align 8
  %354 = load i32*, i32** %9, align 8
  %355 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %356 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %355, i32 0, i32 8
  %357 = load i64*, i64** %356, align 8
  %358 = load i32, i32* %18, align 4
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, 2
  %361 = call i32 @zfCopyFromRxBuffer(i32* %353, i32* %354, i64* %357, i32 %358, i32 %360)
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %352
  %368 = load i32*, i32** %8, align 8
  %369 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %370 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %369, i32 0, i32 8
  %371 = bitcast i64** %370 to i32*
  %372 = call i32 @zfHpGetRegulationTablefromISO(i32* %368, i32* %371, i32 3)
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 1
  store i64 0, i64* %375, align 8
  br label %376

376:                                              ; preds = %367, %352
  br label %377

377:                                              ; preds = %376, %326
  %378 = load i32*, i32** %8, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = load i32, i32* @ZM_WLAN_EID_ERP, align 4
  %381 = call i32 @zfFindElement(i32* %378, i32* %379, i32 %380)
  store i32 %381, i32* %18, align 4
  %382 = icmp ne i32 %381, 65535
  br i1 %382, label %383, label %391

383:                                              ; preds = %377
  %384 = load i32*, i32** %8, align 8
  %385 = load i32*, i32** %9, align 8
  %386 = load i32, i32* %18, align 4
  %387 = add nsw i32 %386, 2
  %388 = call i32 @zmw_rx_buf_readb(i32* %384, i32* %385, i32 %387)
  %389 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %390 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %389, i32 0, i32 9
  store i32 %388, i32* %390, align 8
  br label %391

391:                                              ; preds = %383, %377
  %392 = load i32*, i32** %8, align 8
  %393 = load i32*, i32** %9, align 8
  %394 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %395 = call i32 @zfFindElement(i32* %392, i32* %393, i32 %394)
  store i32 %395, i32* %18, align 4
  %396 = icmp ne i32 %395, 65535
  br i1 %396, label %397, label %419

397:                                              ; preds = %391
  %398 = load i32*, i32** %8, align 8
  %399 = load i32*, i32** %9, align 8
  %400 = load i32, i32* %18, align 4
  %401 = add nsw i32 %400, 1
  %402 = call i32 @zmw_rx_buf_readb(i32* %398, i32* %399, i32 %401)
  store i32 %402, i32* %14, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* @ZM_MAX_SUPP_RATES_IE_SIZE, align 4
  %405 = icmp sgt i32 %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %397
  %407 = load i32, i32* @ZM_LV_0, align 4
  %408 = call i32 @zm_msg0_mm(i32 %407, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %1129

409:                                              ; preds = %397
  %410 = load i32*, i32** %8, align 8
  %411 = load i32*, i32** %9, align 8
  %412 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %413 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %412, i32 0, i32 10
  %414 = load i64*, i64** %413, align 8
  %415 = load i32, i32* %18, align 4
  %416 = load i32, i32* %14, align 4
  %417 = add nsw i32 %416, 2
  %418 = call i32 @zfCopyFromRxBuffer(i32* %410, i32* %411, i64* %414, i32 %415, i32 %417)
  br label %428

419:                                              ; preds = %391
  %420 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %421 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %420, i32 0, i32 10
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds i64, i64* %422, i64 0
  store i64 0, i64* %423, align 8
  %424 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %425 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %424, i32 0, i32 10
  %426 = load i64*, i64** %425, align 8
  %427 = getelementptr inbounds i64, i64* %426, i64 1
  store i64 0, i64* %427, align 8
  br label %428

428:                                              ; preds = %419, %409
  %429 = load i32*, i32** %8, align 8
  %430 = load i32*, i32** %9, align 8
  %431 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  %432 = call i32 @zfFindElement(i32* %429, i32* %430, i32 %431)
  store i32 %432, i32* %18, align 4
  %433 = icmp ne i32 %432, 65535
  br i1 %433, label %434, label %458

434:                                              ; preds = %428
  %435 = load i32*, i32** %8, align 8
  %436 = load i32*, i32** %9, align 8
  %437 = load i32, i32* %18, align 4
  %438 = add nsw i32 %437, 1
  %439 = call i32 @zmw_rx_buf_readb(i32* %435, i32* %436, i32 %438)
  store i32 %439, i32* %14, align 4
  %440 = load i32, i32* %14, align 4
  %441 = load i32, i32* @ZM_MAX_IE_SIZE, align 4
  %442 = icmp sgt i32 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %434
  %444 = load i32, i32* @ZM_MAX_IE_SIZE, align 4
  store i32 %444, i32* %14, align 4
  br label %445

445:                                              ; preds = %443, %434
  %446 = load i32*, i32** %8, align 8
  %447 = load i32*, i32** %9, align 8
  %448 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %449 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %448, i32 0, i32 11
  %450 = load i64*, i64** %449, align 8
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* %14, align 4
  %453 = add nsw i32 %452, 2
  %454 = call i32 @zfCopyFromRxBuffer(i32* %446, i32* %447, i64* %450, i32 %451, i32 %453)
  %455 = load i8*, i8** @ZM_SECURITY_TYPE_WPA, align 8
  %456 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %457 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %456, i32 0, i32 29
  store i8* %455, i8** %457, align 8
  br label %463

458:                                              ; preds = %428
  %459 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %460 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %459, i32 0, i32 11
  %461 = load i64*, i64** %460, align 8
  %462 = getelementptr inbounds i64, i64* %461, i64 1
  store i64 0, i64* %462, align 8
  br label %463

463:                                              ; preds = %458, %445
  %464 = load i32*, i32** %8, align 8
  %465 = load i32*, i32** %9, align 8
  %466 = call i32 @zfFindWifiElement(i32* %464, i32* %465, i32 4, i32 255)
  store i32 %466, i32* %18, align 4
  %467 = icmp ne i32 %466, 65535
  br i1 %467, label %468, label %489

468:                                              ; preds = %463
  %469 = load i32*, i32** %8, align 8
  %470 = load i32*, i32** %9, align 8
  %471 = load i32, i32* %18, align 4
  %472 = add nsw i32 %471, 1
  %473 = call i32 @zmw_rx_buf_readb(i32* %469, i32* %470, i32 %472)
  store i32 %473, i32* %14, align 4
  %474 = load i32, i32* %14, align 4
  %475 = load i32, i32* @ZM_MAX_WPS_IE_SIZE, align 4
  %476 = icmp sgt i32 %474, %475
  br i1 %476, label %477, label %479

477:                                              ; preds = %468
  %478 = load i32, i32* @ZM_MAX_WPS_IE_SIZE, align 4
  store i32 %478, i32* %14, align 4
  br label %479

479:                                              ; preds = %477, %468
  %480 = load i32*, i32** %8, align 8
  %481 = load i32*, i32** %9, align 8
  %482 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %483 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %482, i32 0, i32 12
  %484 = load i64*, i64** %483, align 8
  %485 = load i32, i32* %18, align 4
  %486 = load i32, i32* %14, align 4
  %487 = add nsw i32 %486, 2
  %488 = call i32 @zfCopyFromRxBuffer(i32* %480, i32* %481, i64* %484, i32 %485, i32 %487)
  br label %494

489:                                              ; preds = %463
  %490 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %491 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %490, i32 0, i32 12
  %492 = load i64*, i64** %491, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 1
  store i64 0, i64* %493, align 8
  br label %494

494:                                              ; preds = %489, %479
  %495 = load i32*, i32** %8, align 8
  %496 = load i32*, i32** %9, align 8
  %497 = load i32, i32* @ZM_WLAN_EID_VENDOR_PRIVATE, align 4
  %498 = call i32 @zfFindSuperGElement(i32* %495, i32* %496, i32 %497)
  store i32 %498, i32* %18, align 4
  %499 = icmp ne i32 %498, 65535
  br i1 %499, label %500, label %506

500:                                              ; preds = %494
  %501 = load i32, i32* @ZM_SuperG_AP, align 4
  %502 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %503 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %502, i32 0, i32 27
  %504 = load i32, i32* %503, align 8
  %505 = or i32 %504, %501
  store i32 %505, i32* %503, align 8
  br label %506

506:                                              ; preds = %500, %494
  %507 = load i32*, i32** %8, align 8
  %508 = load i32*, i32** %9, align 8
  %509 = load i32, i32* @ZM_WLAN_EID_VENDOR_PRIVATE, align 4
  %510 = call i32 @zfFindXRElement(i32* %507, i32* %508, i32 %509)
  store i32 %510, i32* %18, align 4
  %511 = icmp ne i32 %510, 65535
  br i1 %511, label %512, label %518

512:                                              ; preds = %506
  %513 = load i32, i32* @ZM_XR_AP, align 4
  %514 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %515 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %514, i32 0, i32 27
  %516 = load i32, i32* %515, align 8
  %517 = or i32 %516, %513
  store i32 %517, i32* %515, align 8
  br label %518

518:                                              ; preds = %512, %506
  %519 = load i32*, i32** %8, align 8
  %520 = load i32*, i32** %9, align 8
  %521 = load i32, i32* @ZM_WLAN_EID_RSN_IE, align 4
  %522 = call i32 @zfFindElement(i32* %519, i32* %520, i32 %521)
  store i32 %522, i32* %18, align 4
  %523 = icmp ne i32 %522, 65535
  br i1 %523, label %524, label %548

524:                                              ; preds = %518
  %525 = load i32*, i32** %8, align 8
  %526 = load i32*, i32** %9, align 8
  %527 = load i32, i32* %18, align 4
  %528 = add nsw i32 %527, 1
  %529 = call i32 @zmw_rx_buf_readb(i32* %525, i32* %526, i32 %528)
  store i32 %529, i32* %14, align 4
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* @ZM_MAX_IE_SIZE, align 4
  %532 = icmp sgt i32 %530, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %524
  %534 = load i32, i32* @ZM_MAX_IE_SIZE, align 4
  store i32 %534, i32* %14, align 4
  br label %535

535:                                              ; preds = %533, %524
  %536 = load i32*, i32** %8, align 8
  %537 = load i32*, i32** %9, align 8
  %538 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %539 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %538, i32 0, i32 13
  %540 = load i64*, i64** %539, align 8
  %541 = load i32, i32* %18, align 4
  %542 = load i32, i32* %14, align 4
  %543 = add nsw i32 %542, 2
  %544 = call i32 @zfCopyFromRxBuffer(i32* %536, i32* %537, i64* %540, i32 %541, i32 %543)
  %545 = load i8*, i8** @ZM_SECURITY_TYPE_WPA, align 8
  %546 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %547 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %546, i32 0, i32 29
  store i8* %545, i8** %547, align 8
  br label %553

548:                                              ; preds = %518
  %549 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %550 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %549, i32 0, i32 13
  %551 = load i64*, i64** %550, align 8
  %552 = getelementptr inbounds i64, i64* %551, i64 1
  store i64 0, i64* %552, align 8
  br label %553

553:                                              ; preds = %548, %535
  %554 = load i32*, i32** %8, align 8
  %555 = load i32*, i32** %9, align 8
  %556 = call i32 @zfFindWifiElement(i32* %554, i32* %555, i32 2, i32 1)
  store i32 %556, i32* %18, align 4
  %557 = icmp ne i32 %556, 65535
  br i1 %557, label %558, label %569

558:                                              ; preds = %553
  %559 = load i32*, i32** %8, align 8
  %560 = load i32*, i32** %9, align 8
  %561 = load i32, i32* %18, align 4
  %562 = add nsw i32 %561, 8
  %563 = call i32 @zmw_rx_buf_readb(i32* %559, i32* %560, i32 %562)
  %564 = and i32 %563, 128
  store i32 %564, i32* %19, align 4
  %565 = load i32, i32* %19, align 4
  %566 = or i32 1, %565
  %567 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %568 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %567, i32 0, i32 15
  store i32 %566, i32* %568, align 8
  br label %589

569:                                              ; preds = %553
  %570 = load i32*, i32** %8, align 8
  %571 = load i32*, i32** %9, align 8
  %572 = call i32 @zfFindWifiElement(i32* %570, i32* %571, i32 2, i32 0)
  store i32 %572, i32* %18, align 4
  %573 = icmp ne i32 %572, 65535
  br i1 %573, label %574, label %585

574:                                              ; preds = %569
  %575 = load i32*, i32** %8, align 8
  %576 = load i32*, i32** %9, align 8
  %577 = load i32, i32* %18, align 4
  %578 = add nsw i32 %577, 8
  %579 = call i32 @zmw_rx_buf_readb(i32* %575, i32* %576, i32 %578)
  %580 = and i32 %579, 128
  store i32 %580, i32* %19, align 4
  %581 = load i32, i32* %19, align 4
  %582 = or i32 1, %581
  %583 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %584 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %583, i32 0, i32 15
  store i32 %582, i32* %584, align 8
  br label %588

585:                                              ; preds = %569
  %586 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %587 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %586, i32 0, i32 15
  store i32 0, i32* %587, align 8
  br label %588

588:                                              ; preds = %585, %574
  br label %589

589:                                              ; preds = %588, %558
  %590 = load i32*, i32** %8, align 8
  %591 = load i32*, i32** %9, align 8
  %592 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %593 = call i32 @zfFindElement(i32* %590, i32* %591, i32 %592)
  store i32 %593, i32* %18, align 4
  %594 = icmp ne i32 %593, 65535
  br i1 %594, label %595, label %626

595:                                              ; preds = %589
  %596 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %597 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %596, i32 0, i32 16
  store i32 1, i32* %597, align 4
  %598 = load i32*, i32** %8, align 8
  %599 = load i32*, i32** %9, align 8
  %600 = load i32, i32* %18, align 4
  %601 = add nsw i32 %600, 1
  %602 = call i32 @zmw_rx_buf_readb(i32* %598, i32* %599, i32 %601)
  %603 = and i32 %602, 2
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %595
  %606 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %607 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %606, i32 0, i32 17
  store i32 1, i32* %607, align 8
  br label %611

608:                                              ; preds = %595
  %609 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %610 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %609, i32 0, i32 17
  store i32 0, i32* %610, align 8
  br label %611

611:                                              ; preds = %608, %605
  %612 = load i32*, i32** %8, align 8
  %613 = load i32*, i32** %9, align 8
  %614 = load i32, i32* %18, align 4
  %615 = add nsw i32 %614, 1
  %616 = call i32 @zmw_rx_buf_readb(i32* %612, i32* %613, i32 %615)
  %617 = and i32 %616, 64
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %611
  %620 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %621 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %620, i32 0, i32 18
  store i32 1, i32* %621, align 4
  br label %625

622:                                              ; preds = %611
  %623 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %624 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %623, i32 0, i32 18
  store i32 0, i32* %624, align 4
  br label %625

625:                                              ; preds = %622, %619
  br label %672

626:                                              ; preds = %589
  %627 = load i32*, i32** %8, align 8
  %628 = load i32*, i32** %9, align 8
  %629 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %630 = call i32 @zfFindElement(i32* %627, i32* %628, i32 %629)
  store i32 %630, i32* %18, align 4
  %631 = icmp ne i32 %630, 65535
  br i1 %631, label %632, label %668

632:                                              ; preds = %626
  %633 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %634 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %633, i32 0, i32 16
  store i32 1, i32* %634, align 4
  %635 = load i32, i32* @ZM_All11N_AP, align 4
  %636 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %637 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %636, i32 0, i32 27
  %638 = load i32, i32* %637, align 8
  %639 = or i32 %638, %635
  store i32 %639, i32* %637, align 8
  %640 = load i32*, i32** %8, align 8
  %641 = load i32*, i32** %9, align 8
  %642 = load i32, i32* %18, align 4
  %643 = add nsw i32 %642, 2
  %644 = call i32 @zmw_rx_buf_readb(i32* %640, i32* %641, i32 %643)
  %645 = and i32 %644, 2
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %632
  %648 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %649 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %648, i32 0, i32 17
  store i32 1, i32* %649, align 8
  br label %653

650:                                              ; preds = %632
  %651 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %652 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %651, i32 0, i32 17
  store i32 0, i32* %652, align 8
  br label %653

653:                                              ; preds = %650, %647
  %654 = load i32*, i32** %8, align 8
  %655 = load i32*, i32** %9, align 8
  %656 = load i32, i32* %18, align 4
  %657 = add nsw i32 %656, 2
  %658 = call i32 @zmw_rx_buf_readb(i32* %654, i32* %655, i32 %657)
  %659 = and i32 %658, 64
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %664

661:                                              ; preds = %653
  %662 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %663 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %662, i32 0, i32 18
  store i32 1, i32* %663, align 4
  br label %667

664:                                              ; preds = %653
  %665 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %666 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %665, i32 0, i32 18
  store i32 0, i32* %666, align 4
  br label %667

667:                                              ; preds = %664, %661
  br label %671

668:                                              ; preds = %626
  %669 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %670 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %669, i32 0, i32 16
  store i32 0, i32* %670, align 4
  br label %671

671:                                              ; preds = %668, %667
  br label %672

672:                                              ; preds = %671, %625
  %673 = load i32*, i32** %8, align 8
  %674 = load i32*, i32** %9, align 8
  %675 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %676 = call i32 @zfFindElement(i32* %673, i32* %674, i32 %675)
  store i32 %676, i32* %18, align 4
  %677 = icmp ne i32 %676, 65535
  br i1 %677, label %678, label %687

678:                                              ; preds = %672
  %679 = load i32*, i32** %8, align 8
  %680 = load i32*, i32** %9, align 8
  %681 = load i32, i32* %18, align 4
  %682 = add nsw i32 %681, 2
  %683 = call i32 @zmw_rx_buf_readb(i32* %679, i32* %680, i32 %682)
  %684 = and i32 %683, 3
  %685 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %686 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %685, i32 0, i32 19
  store i32 %684, i32* %686, align 8
  br label %706

687:                                              ; preds = %672
  %688 = load i32*, i32** %8, align 8
  %689 = load i32*, i32** %9, align 8
  %690 = load i32, i32* @ZM_WLAN_PREN2_EID_HTINFORMATION, align 4
  %691 = call i32 @zfFindElement(i32* %688, i32* %689, i32 %690)
  store i32 %691, i32* %18, align 4
  %692 = icmp ne i32 %691, 65535
  br i1 %692, label %693, label %702

693:                                              ; preds = %687
  %694 = load i32*, i32** %8, align 8
  %695 = load i32*, i32** %9, align 8
  %696 = load i32, i32* %18, align 4
  %697 = add nsw i32 %696, 3
  %698 = call i32 @zmw_rx_buf_readb(i32* %694, i32* %695, i32 %697)
  %699 = and i32 %698, 3
  %700 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %701 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %700, i32 0, i32 19
  store i32 %699, i32* %701, align 8
  br label %705

702:                                              ; preds = %687
  %703 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %704 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %703, i32 0, i32 19
  store i32 0, i32* %704, align 8
  br label %705

705:                                              ; preds = %702, %693
  br label %706

706:                                              ; preds = %705, %678
  %707 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %708 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %707, i32 0, i32 17
  %709 = load i32, i32* %708, align 8
  %710 = icmp eq i32 %709, 1
  br i1 %710, label %711, label %724

711:                                              ; preds = %706
  %712 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %713 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %712, i32 0, i32 19
  %714 = load i32, i32* %713, align 8
  %715 = icmp ne i32 %714, 1
  br i1 %715, label %716, label %724

716:                                              ; preds = %711
  %717 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %718 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %717, i32 0, i32 19
  %719 = load i32, i32* %718, align 8
  %720 = icmp ne i32 %719, 3
  br i1 %720, label %721, label %724

721:                                              ; preds = %716
  %722 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %723 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %722, i32 0, i32 17
  store i32 0, i32* %723, align 8
  br label %724

724:                                              ; preds = %721, %716, %711, %706
  %725 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %726 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %725, i32 0, i32 17
  %727 = load i32, i32* %726, align 8
  %728 = icmp eq i32 %727, 1
  br i1 %728, label %729, label %751

729:                                              ; preds = %724
  %730 = load i32*, i32** %8, align 8
  %731 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %732 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %731, i32 0, i32 2
  %733 = load i32, i32* %732, align 8
  %734 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %735 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %734, i32 0, i32 19
  %736 = load i32, i32* %735, align 8
  %737 = icmp eq i32 %736, 1
  %738 = zext i1 %737 to i64
  %739 = select i1 %737, i32 20, i32 -20
  %740 = add nsw i32 %733, %739
  %741 = call i64 @zfHpIsAllowedChannel(i32* %730, i32 %740)
  %742 = icmp eq i64 %741, 0
  br i1 %742, label %743, label %750

743:                                              ; preds = %729
  %744 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %745 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %744, i32 0, i32 16
  store i32 0, i32* %745, align 4
  %746 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %747 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %746, i32 0, i32 17
  store i32 0, i32* %747, align 8
  %748 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %749 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %748, i32 0, i32 19
  store i32 0, i32* %749, align 8
  br label %750

750:                                              ; preds = %743, %729
  br label %751

751:                                              ; preds = %750, %724
  %752 = load i32*, i32** %8, align 8
  %753 = load i32*, i32** %9, align 8
  %754 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %755 = call i32 @zfFindElement(i32* %752, i32* %753, i32 %754)
  store i32 %755, i32* %18, align 4
  %756 = icmp ne i32 %755, 65535
  br i1 %756, label %757, label %765

757:                                              ; preds = %751
  %758 = load i32*, i32** %8, align 8
  %759 = load i32*, i32** %9, align 8
  %760 = call i32 @zfFindBrdcmMrvlRlnkExtCap(i32* %758, i32* %759)
  store i32 %760, i32* %18, align 4
  %761 = icmp eq i32 %760, 65535
  br i1 %761, label %762, label %765

762:                                              ; preds = %757
  %763 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %764 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %763, i32 0, i32 20
  store i32 1, i32* %764, align 4
  br label %768

765:                                              ; preds = %757, %751
  %766 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %767 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %766, i32 0, i32 20
  store i32 0, i32* %767, align 4
  br label %768

768:                                              ; preds = %765, %762
  %769 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %770 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %769, i32 0, i32 16
  %771 = load i32, i32* %770, align 4
  %772 = icmp eq i32 %771, 1
  br i1 %772, label %773, label %781

773:                                              ; preds = %768
  %774 = load i32*, i32** %8, align 8
  %775 = load i32*, i32** %9, align 8
  %776 = call i32 @zfFindBroadcomExtCap(i32* %774, i32* %775)
  store i32 %776, i32* %18, align 4
  %777 = icmp ne i32 %776, 65535
  br i1 %777, label %778, label %781

778:                                              ; preds = %773
  %779 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %780 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %779, i32 0, i32 21
  store i32 1, i32* %780, align 8
  br label %784

781:                                              ; preds = %773, %768
  %782 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %783 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %782, i32 0, i32 21
  store i32 0, i32* %783, align 8
  br label %784

784:                                              ; preds = %781, %778
  %785 = load i32*, i32** %8, align 8
  %786 = load i32*, i32** %9, align 8
  %787 = call i32 @zfFindMarvelExtCap(i32* %785, i32* %786)
  store i32 %787, i32* %18, align 4
  %788 = icmp ne i32 %787, 65535
  br i1 %788, label %789, label %792

789:                                              ; preds = %784
  %790 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %791 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %790, i32 0, i32 22
  store i32 1, i32* %791, align 4
  br label %795

792:                                              ; preds = %784
  %793 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %794 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %793, i32 0, i32 22
  store i32 0, i32* %794, align 4
  br label %795

795:                                              ; preds = %792, %789
  %796 = load i32*, i32** %8, align 8
  %797 = load i32*, i32** %9, align 8
  %798 = load i32, i32* @ZM_WLAN_EID_IBSS, align 4
  %799 = call i32 @zfFindElement(i32* %796, i32* %797, i32 %798)
  store i32 %799, i32* %18, align 4
  %800 = icmp ne i32 %799, 65535
  br i1 %800, label %801, label %809

801:                                              ; preds = %795
  %802 = load i32*, i32** %8, align 8
  %803 = load i32*, i32** %9, align 8
  %804 = load i32, i32* %18, align 4
  %805 = add nsw i32 %804, 2
  %806 = call i32 @zmw_rx_buf_readh(i32* %802, i32* %803, i32 %805)
  %807 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %808 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %807, i32 0, i32 28
  store i32 %806, i32* %808, align 4
  br label %809

809:                                              ; preds = %801, %795
  %810 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %811 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %810, i32 0, i32 2
  %812 = load i32, i32* %811, align 8
  %813 = icmp sgt i32 %812, 3000
  br i1 %813, label %814, label %893

814:                                              ; preds = %809
  %815 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %816 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 8
  %818 = load i32, i32* @ZM_WIRELESS_MODE_5_N, align 4
  %819 = and i32 %817, %818
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %822

821:                                              ; preds = %814
  br label %892

822:                                              ; preds = %814
  %823 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %824 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 8
  %826 = load i32, i32* @ZM_WIRELESS_MODE_5_54, align 4
  %827 = and i32 %825, %826
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %890

829:                                              ; preds = %822
  %830 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %831 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %830, i32 0, i32 16
  store i32 0, i32* %831, align 4
  %832 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %833 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %832, i32 0, i32 17
  store i32 0, i32* %833, align 8
  %834 = load i32, i32* @ZM_All11N_AP, align 4
  %835 = xor i32 %834, -1
  %836 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %837 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %836, i32 0, i32 27
  %838 = load i32, i32* %837, align 8
  %839 = and i32 %838, %835
  store i32 %839, i32* %837, align 8
  %840 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %841 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %840, i32 0, i32 19
  store i32 0, i32* %841, align 8
  %842 = load i32*, i32** %8, align 8
  %843 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %844 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %843, i32 0, i32 6
  %845 = load i64*, i64** %844, align 8
  %846 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %847 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %846, i32 0, i32 5
  %848 = load i32, i32* %847, align 8
  %849 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %850 = call i8* @zfRemoveElement(i32* %842, i64* %845, i32 %848, i32 %849)
  %851 = ptrtoint i8* %850 to i32
  %852 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %853 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %852, i32 0, i32 5
  store i32 %851, i32* %853, align 8
  %854 = load i32*, i32** %8, align 8
  %855 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %856 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %855, i32 0, i32 6
  %857 = load i64*, i64** %856, align 8
  %858 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %859 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %858, i32 0, i32 5
  %860 = load i32, i32* %859, align 8
  %861 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %862 = call i8* @zfRemoveElement(i32* %854, i64* %857, i32 %860, i32 %861)
  %863 = ptrtoint i8* %862 to i32
  %864 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %865 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %864, i32 0, i32 5
  store i32 %863, i32* %865, align 8
  %866 = load i32*, i32** %8, align 8
  %867 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %868 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %867, i32 0, i32 6
  %869 = load i64*, i64** %868, align 8
  %870 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %871 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %870, i32 0, i32 5
  %872 = load i32, i32* %871, align 8
  %873 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %874 = call i8* @zfRemoveElement(i32* %866, i64* %869, i32 %872, i32 %873)
  %875 = ptrtoint i8* %874 to i32
  %876 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %877 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %876, i32 0, i32 5
  store i32 %875, i32* %877, align 8
  %878 = load i32*, i32** %8, align 8
  %879 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %880 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %879, i32 0, i32 6
  %881 = load i64*, i64** %880, align 8
  %882 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %883 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %882, i32 0, i32 5
  %884 = load i32, i32* %883, align 8
  %885 = load i32, i32* @ZM_WLAN_PREN2_EID_HTINFORMATION, align 4
  %886 = call i8* @zfRemoveElement(i32* %878, i64* %881, i32 %884, i32 %885)
  %887 = ptrtoint i8* %886 to i32
  %888 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %889 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %888, i32 0, i32 5
  store i32 %887, i32* %889, align 8
  br label %891

890:                                              ; preds = %822
  br label %1130

891:                                              ; preds = %829
  br label %892

892:                                              ; preds = %891, %821
  br label %1051

893:                                              ; preds = %809
  %894 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %895 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 8
  %897 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %898 = and i32 %896, %897
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %901

900:                                              ; preds = %893
  br label %1050

901:                                              ; preds = %893
  %902 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %903 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %902, i32 0, i32 16
  store i32 0, i32* %903, align 4
  %904 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %905 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %904, i32 0, i32 17
  store i32 0, i32* %905, align 8
  %906 = load i32, i32* @ZM_All11N_AP, align 4
  %907 = xor i32 %906, -1
  %908 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %909 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %908, i32 0, i32 27
  %910 = load i32, i32* %909, align 8
  %911 = and i32 %910, %907
  store i32 %911, i32* %909, align 8
  %912 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %913 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %912, i32 0, i32 19
  store i32 0, i32* %913, align 8
  %914 = load i32*, i32** %8, align 8
  %915 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %916 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %915, i32 0, i32 6
  %917 = load i64*, i64** %916, align 8
  %918 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %919 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %918, i32 0, i32 5
  %920 = load i32, i32* %919, align 8
  %921 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %922 = call i8* @zfRemoveElement(i32* %914, i64* %917, i32 %920, i32 %921)
  %923 = ptrtoint i8* %922 to i32
  %924 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %925 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %924, i32 0, i32 5
  store i32 %923, i32* %925, align 8
  %926 = load i32*, i32** %8, align 8
  %927 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %928 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %927, i32 0, i32 6
  %929 = load i64*, i64** %928, align 8
  %930 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %931 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %930, i32 0, i32 5
  %932 = load i32, i32* %931, align 8
  %933 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %934 = call i8* @zfRemoveElement(i32* %926, i64* %929, i32 %932, i32 %933)
  %935 = ptrtoint i8* %934 to i32
  %936 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %937 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %936, i32 0, i32 5
  store i32 %935, i32* %937, align 8
  %938 = load i32*, i32** %8, align 8
  %939 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %940 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %939, i32 0, i32 6
  %941 = load i64*, i64** %940, align 8
  %942 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %943 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %942, i32 0, i32 5
  %944 = load i32, i32* %943, align 8
  %945 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %946 = call i8* @zfRemoveElement(i32* %938, i64* %941, i32 %944, i32 %945)
  %947 = ptrtoint i8* %946 to i32
  %948 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %949 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %948, i32 0, i32 5
  store i32 %947, i32* %949, align 8
  %950 = load i32*, i32** %8, align 8
  %951 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %952 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %951, i32 0, i32 6
  %953 = load i64*, i64** %952, align 8
  %954 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %955 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %954, i32 0, i32 5
  %956 = load i32, i32* %955, align 8
  %957 = load i32, i32* @ZM_WLAN_PREN2_EID_HTINFORMATION, align 4
  %958 = call i8* @zfRemoveElement(i32* %950, i64* %953, i32 %956, i32 %957)
  %959 = ptrtoint i8* %958 to i32
  %960 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %961 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %960, i32 0, i32 5
  store i32 %959, i32* %961, align 8
  %962 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %963 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 8
  %965 = load i32, i32* @ZM_WIRELESS_MODE_24_54, align 4
  %966 = and i32 %964, %965
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %969

968:                                              ; preds = %901
  br label %1049

969:                                              ; preds = %901
  %970 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %971 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %970, i32 0, i32 0
  %972 = load i32, i32* %971, align 8
  %973 = load i32, i32* @ZM_WIRELESS_MODE_24_11, align 4
  %974 = and i32 %972, %973
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %976, label %1047

976:                                              ; preds = %969
  %977 = load i32*, i32** %8, align 8
  %978 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %979 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %978, i32 0, i32 2
  %980 = load i32, i32* %979, align 8
  %981 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %982 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %981, i32 0, i32 7
  %983 = load i64*, i64** %982, align 8
  %984 = call i64 @zfIsGOnlyMode(i32* %977, i32 %980, i64* %983)
  %985 = icmp ne i64 %984, 0
  br i1 %985, label %996, label %986

986:                                              ; preds = %976
  %987 = load i32*, i32** %8, align 8
  %988 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %989 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %988, i32 0, i32 2
  %990 = load i32, i32* %989, align 8
  %991 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %992 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %991, i32 0, i32 10
  %993 = load i64*, i64** %992, align 8
  %994 = call i64 @zfIsGOnlyMode(i32* %987, i32 %990, i64* %993)
  %995 = icmp ne i64 %994, 0
  br i1 %995, label %996, label %997

996:                                              ; preds = %986, %976
  br label %1130

997:                                              ; preds = %986
  %998 = load i32*, i32** %8, align 8
  %999 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1000 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %999, i32 0, i32 7
  %1001 = load i64*, i64** %1000, align 8
  %1002 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1003 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1002, i32 0, i32 10
  %1004 = load i64*, i64** %1003, align 8
  %1005 = call i32 @zfGatherBMode(i32* %998, i64* %1001, i64* %1004)
  %1006 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1007 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1006, i32 0, i32 9
  store i32 0, i32* %1007, align 8
  %1008 = load i32*, i32** %8, align 8
  %1009 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1010 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1009, i32 0, i32 6
  %1011 = load i64*, i64** %1010, align 8
  %1012 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1013 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1012, i32 0, i32 5
  %1014 = load i32, i32* %1013, align 8
  %1015 = load i32, i32* @ZM_WLAN_EID_ERP, align 4
  %1016 = call i8* @zfRemoveElement(i32* %1008, i64* %1011, i32 %1014, i32 %1015)
  %1017 = ptrtoint i8* %1016 to i32
  %1018 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1019 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1018, i32 0, i32 5
  store i32 %1017, i32* %1019, align 8
  %1020 = load i32*, i32** %8, align 8
  %1021 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1022 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1021, i32 0, i32 6
  %1023 = load i64*, i64** %1022, align 8
  %1024 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1025 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1024, i32 0, i32 5
  %1026 = load i32, i32* %1025, align 8
  %1027 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %1028 = call i8* @zfRemoveElement(i32* %1020, i64* %1023, i32 %1026, i32 %1027)
  %1029 = ptrtoint i8* %1028 to i32
  %1030 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1031 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1030, i32 0, i32 5
  store i32 %1029, i32* %1031, align 8
  %1032 = load i32*, i32** %8, align 8
  %1033 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1034 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1033, i32 0, i32 6
  %1035 = load i64*, i64** %1034, align 8
  %1036 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1037 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1036, i32 0, i32 5
  %1038 = load i32, i32* %1037, align 8
  %1039 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1040 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1039, i32 0, i32 7
  %1041 = load i64*, i64** %1040, align 8
  %1042 = call i8* @zfUpdateElement(i32* %1032, i64* %1035, i32 %1038, i64* %1041)
  %1043 = ptrtoint i8* %1042 to i32
  %1044 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1045 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1044, i32 0, i32 5
  store i32 %1043, i32* %1045, align 8
  br label %1046

1046:                                             ; preds = %997
  br label %1048

1047:                                             ; preds = %969
  br label %1130

1048:                                             ; preds = %1046
  br label %1049

1049:                                             ; preds = %1048, %968
  br label %1050

1050:                                             ; preds = %1049, %900
  br label %1051

1051:                                             ; preds = %1050, %892
  %1052 = load i32, i32* @ZM_BSS_INFO_VALID_BIT, align 4
  %1053 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1054 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1053, i32 0, i32 0
  %1055 = load i32, i32* %1054, align 8
  %1056 = or i32 %1055, %1052
  store i32 %1056, i32* %1054, align 8
  br label %1057

1057:                                             ; preds = %1051, %34
  %1058 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %1059 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1058, i32 0, i32 1
  %1060 = load i32, i32* %1059, align 4
  %1061 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1062 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1061, i32 0, i32 26
  store i32 %1060, i32* %1062, align 4
  %1063 = load i32*, i32** %8, align 8
  %1064 = load i32*, i32** %9, align 8
  %1065 = load i32, i32* @ZM_WLAN_EID_ERP, align 4
  %1066 = call i32 @zfFindElement(i32* %1063, i32* %1064, i32 %1065)
  store i32 %1066, i32* %18, align 4
  %1067 = icmp ne i32 %1066, 65535
  br i1 %1067, label %1068, label %1076

1068:                                             ; preds = %1057
  %1069 = load i32*, i32** %8, align 8
  %1070 = load i32*, i32** %9, align 8
  %1071 = load i32, i32* %18, align 4
  %1072 = add nsw i32 %1071, 2
  %1073 = call i32 @zmw_rx_buf_readb(i32* %1069, i32* %1070, i32 %1072)
  %1074 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1075 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1074, i32 0, i32 9
  store i32 %1073, i32* %1075, align 8
  br label %1076

1076:                                             ; preds = %1068, %1057
  %1077 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1078 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1077, i32 0, i32 23
  %1079 = load i32, i32* %1078, align 8
  %1080 = sext i32 %1079 to i64
  %1081 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %12, align 8
  %1082 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %1081, i32 0, i32 0
  %1083 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1082, i32 0, i32 0
  %1084 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1083, i32 0, i32 0
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = icmp slt i64 %1080, %1086
  br i1 %1087, label %1088, label %1128

1088:                                             ; preds = %1076
  %1089 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %12, align 8
  %1090 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %1089, i32 0, i32 0
  %1091 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1091, i32 0, i32 0
  %1093 = load i32, i32* %1092, align 4
  %1094 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1095 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1094, i32 0, i32 23
  store i32 %1093, i32* %1095, align 8
  %1096 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %12, align 8
  %1097 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %1096, i32 0, i32 0
  %1098 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1097, i32 0, i32 0
  %1099 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1098, i32 0, i32 0
  %1100 = load i32, i32* %1099, align 4
  %1101 = mul nsw i32 %1100, 2
  %1102 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1103 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1102, i32 0, i32 24
  store i32 %1101, i32* %1103, align 4
  %1104 = load i32*, i32** %8, align 8
  %1105 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1106 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1105, i32 0, i32 7
  %1107 = load i64*, i64** %1106, align 8
  %1108 = getelementptr inbounds i64, i64* %1107, i64 6
  %1109 = load i64, i64* %1108, align 8
  %1110 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1111 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1110, i32 0, i32 10
  %1112 = load i64*, i64** %1111, align 8
  %1113 = getelementptr inbounds i64, i64* %1112, i64 0
  %1114 = load i64, i64* %1113, align 8
  %1115 = add nsw i64 %1109, %1114
  %1116 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1117 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1116, i32 0, i32 16
  %1118 = load i32, i32* %1117, align 4
  %1119 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1120 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1119, i32 0, i32 17
  %1121 = load i32, i32* %1120, align 8
  %1122 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1123 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1122, i32 0, i32 23
  %1124 = load i32, i32* %1123, align 8
  %1125 = call i32 @zfComputeBssInfoWeightValue(i32* %1104, i64 %1115, i32 %1118, i32 %1121, i32 %1124)
  %1126 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %1127 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %1126, i32 0, i32 25
  store i32 %1125, i32* %1127, align 8
  br label %1128

1128:                                             ; preds = %1088, %1076
  store i32 0, i32* %7, align 4
  br label %1131

1129:                                             ; preds = %406, %323, %309, %93, %67, %57, %41
  store i32 1, i32* %7, align 4
  br label %1131

1130:                                             ; preds = %1047, %996, %890, %108
  store i32 2, i32* %7, align 4
  br label %1131

1131:                                             ; preds = %1130, %1129, %1128
  %1132 = load i32, i32* %7, align 4
  ret i32 %1132
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfwGetShowZeroLengthSSID(i32*, i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i64*, i32, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i64 @zfHpIsAllowedChannel(i32*, i32) #1

declare dso_local i32 @zfChNumToFreq(i32*, i32, i32) #1

declare dso_local i32 @zfChFreqToNum(i32, i32*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfHpGetRegulationTablefromISO(i32*, i32*, i32) #1

declare dso_local i32 @zfFindWifiElement(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfFindSuperGElement(i32*, i32*, i32) #1

declare dso_local i32 @zfFindXRElement(i32*, i32*, i32) #1

declare dso_local i32 @zfFindBrdcmMrvlRlnkExtCap(i32*, i32*) #1

declare dso_local i32 @zfFindBroadcomExtCap(i32*, i32*) #1

declare dso_local i32 @zfFindMarvelExtCap(i32*, i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i8* @zfRemoveElement(i32*, i64*, i32, i32) #1

declare dso_local i64 @zfIsGOnlyMode(i32*, i32, i64*) #1

declare dso_local i32 @zfGatherBMode(i32*, i64*, i64*) #1

declare dso_local i8* @zfUpdateElement(i32*, i64*, i32, i64*) #1

declare dso_local i32 @zfComputeBssInfoWeightValue(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
