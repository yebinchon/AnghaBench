; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrv_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrv_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.zsBssInfo = type { i8*, i32*, i32, i32*, i32*, i32*, i64*, i64*, i32, i32, i32 }
%struct.iw_event = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SIOCGIWAP = common dso_local global i8* null, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i8* null, align 8
@SIOCGIWMODE = common dso_local global i8* null, align 8
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i8* null, align 8
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i8* null, align 8
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_UPDATED = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i8* null, align 8
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_EV_LCP_LEN = common dso_local global i64 0, align 8
@SIOCGIWRATE = common dso_local global i8* null, align 8
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"bcn_int=%d\00", align 1
@usbdrv_translate_scan.rsn_leader = internal constant [8 x i8] c"rsn_ie=\00", align 1
@usbdrv_translate_scan.wpa_leader = internal constant [8 x i8] c"wpa_ie=\00", align 1
@usbdrv_translate_scan.rsn_leader.1 = internal constant [8 x i8] c"rsn_ie=\00", align 1
@IEEE80211_ELEMID_RSN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usbdrv_translate_scan(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3, %struct.zsBssInfo* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.iw_request_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zsBssInfo*, align 8
  %12 = alloca %struct.iw_event, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [158 x i8], align 16
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.zsBssInfo* %4, %struct.zsBssInfo** %11, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** @SIOCGIWAP, align 8
  %20 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @ARPHRD_ETHER, align 4
  %22 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %30 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %38 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %34, i8* %35, i8* %36, %struct.iw_event* %12, i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %6, align 8
  br label %542

44:                                               ; preds = %5
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %15, align 8
  %46 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %47 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i8 %50, i8* %53, align 8
  %54 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 8
  %58 = sext i8 %57 to i32
  %59 = icmp sgt i32 %58, 32
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i8 32, i8* %63, align 8
  br label %64

64:                                               ; preds = %60, %44
  %65 = load i8*, i8** @SIOCGIWESSID, align 8
  %66 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %74 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %70, i8* %71, i8* %72, %struct.iw_event* %12, i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %6, align 8
  br label %542

83:                                               ; preds = %64
  %84 = load i8*, i8** %9, align 8
  store i8* %84, i8** %15, align 8
  %85 = load i8*, i8** @SIOCGIWMODE, align 8
  %86 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %88 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %94 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %92, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 3
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %83
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @IW_MODE_MASTER, align 4
  %108 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @IW_MODE_ADHOC, align 4
  %112 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %119 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %115, i8* %116, i8* %117, %struct.iw_event* %12, i32 %118)
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %114, %83
  %121 = load i8*, i8** %15, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i8*, i8** %10, align 8
  store i8* %125, i8** %6, align 8
  br label %542

126:                                              ; preds = %120
  %127 = load i8*, i8** %9, align 8
  store i8* %127, i8** %15, align 8
  %128 = load i8*, i8** @SIOCGIWFREQ, align 8
  %129 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %131 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 14
  br i1 %140, label %141, label %174

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 184, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sle i32 %151, 196
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 5
  %159 = add nsw i32 4000, %158
  %160 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %173

163:                                              ; preds = %147, %141
  %164 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %167, 5
  %169 = add nsw i32 5000, %168
  %170 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  br label %173

173:                                              ; preds = %163, %153
  br label %196

174:                                              ; preds = %126
  %175 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 14
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i32 2484, i32* %183, align 8
  br label %195

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = mul nsw i32 %189, 5
  %191 = add nsw i32 2412, %190
  %192 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  br label %195

195:                                              ; preds = %184, %180
  br label %196

196:                                              ; preds = %195, %173
  %197 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i32 6, i32* %199, align 4
  %200 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %204 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %200, i8* %201, i8* %202, %struct.iw_event* %12, i32 %203)
  store i8* %204, i8** %9, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = icmp eq i8* %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i8*, i8** %10, align 8
  store i8* %209, i8** %6, align 8
  br label %542

210:                                              ; preds = %196
  %211 = load i8*, i8** %9, align 8
  store i8* %211, i8** %15, align 8
  %212 = load i8*, i8** @IWEVQUAL, align 8
  %213 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %212, i8** %213, align 8
  %214 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %215 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @IW_QUAL_NOISE_UPDATED, align 4
  %218 = or i32 %216, %217
  %219 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  %222 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %223 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 8
  %228 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store i64 0, i64* %230, align 8
  %231 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %232 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  store i32 %233, i32* %236, align 4
  %237 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = load i8*, i8** %10, align 8
  %240 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %241 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %237, i8* %238, i8* %239, %struct.iw_event* %12, i32 %240)
  store i8* %241, i8** %9, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = load i8*, i8** %9, align 8
  %244 = icmp eq i8* %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %210
  %246 = load i8*, i8** %10, align 8
  store i8* %246, i8** %6, align 8
  br label %542

247:                                              ; preds = %210
  %248 = load i8*, i8** %9, align 8
  store i8* %248, i8** %15, align 8
  %249 = load i8*, i8** @SIOCGIWENCODE, align 8
  %250 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %249, i8** %250, align 8
  %251 = load i32, i32* %13, align 4
  %252 = and i32 %251, 16
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %247
  %255 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %256 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %257 = or i32 %255, %256
  %258 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  br label %266

261:                                              ; preds = %247
  %262 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %263 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  br label %266

266:                                              ; preds = %261, %254
  %267 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  store i8 0, i8* %269, align 8
  %270 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %271 = load i8*, i8** %9, align 8
  %272 = load i8*, i8** %10, align 8
  %273 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %274 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %270, i8* %271, i8* %272, %struct.iw_event* %12, i8* %275)
  store i8* %276, i8** %9, align 8
  %277 = load i8*, i8** %15, align 8
  %278 = load i8*, i8** %9, align 8
  %279 = icmp eq i8* %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %266
  %281 = load i8*, i8** %10, align 8
  store i8* %281, i8** %6, align 8
  br label %542

282:                                              ; preds = %266
  %283 = load i8*, i8** %9, align 8
  store i8* %283, i8** %15, align 8
  %284 = load i8*, i8** %9, align 8
  %285 = load i64, i64* @IW_EV_LCP_LEN, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %14, align 8
  %287 = load i8*, i8** @SIOCGIWRATE, align 8
  %288 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %287, i8** %288, align 8
  %289 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 2
  store i64 0, i64* %294, align 8
  store i32 0, i32* %16, align 4
  br label %295

295:                                              ; preds = %330, %282
  %296 = load i32, i32* %16, align 4
  %297 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %298 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp slt i32 %296, %301
  br i1 %302, label %303, label %333

303:                                              ; preds = %295
  %304 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %305 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %16, align 4
  %308 = add nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 127
  %313 = mul nsw i32 %312, 500000
  %314 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  store i32 %313, i32* %316, align 8
  %317 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %318 = load i8*, i8** %9, align 8
  %319 = load i8*, i8** %14, align 8
  %320 = load i8*, i8** %10, align 8
  %321 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %322 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %317, i8* %318, i8* %319, i8* %320, %struct.iw_event* %12, i32 %321)
  store i8* %322, i8** %14, align 8
  %323 = load i8*, i8** %15, align 8
  %324 = load i8*, i8** %14, align 8
  %325 = icmp eq i8* %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %303
  %327 = load i8*, i8** %10, align 8
  store i8* %327, i8** %6, align 8
  br label %542

328:                                              ; preds = %303
  %329 = load i8*, i8** %14, align 8
  store i8* %329, i8** %15, align 8
  br label %330

330:                                              ; preds = %328
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %16, align 4
  br label %295

333:                                              ; preds = %295
  store i32 0, i32* %16, align 4
  br label %334

334:                                              ; preds = %369, %333
  %335 = load i32, i32* %16, align 4
  %336 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %337 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %335, %340
  br i1 %341, label %342, label %372

342:                                              ; preds = %334
  %343 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %344 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = add nsw i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 127
  %352 = mul nsw i32 %351, 500000
  %353 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  store i32 %352, i32* %355, align 8
  %356 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %357 = load i8*, i8** %9, align 8
  %358 = load i8*, i8** %14, align 8
  %359 = load i8*, i8** %10, align 8
  %360 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %361 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %356, i8* %357, i8* %358, i8* %359, %struct.iw_event* %12, i32 %360)
  store i8* %361, i8** %14, align 8
  %362 = load i8*, i8** %15, align 8
  %363 = load i8*, i8** %14, align 8
  %364 = icmp eq i8* %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %342
  %366 = load i8*, i8** %10, align 8
  store i8* %366, i8** %6, align 8
  br label %542

367:                                              ; preds = %342
  %368 = load i8*, i8** %9, align 8
  store i8* %368, i8** %15, align 8
  br label %369

369:                                              ; preds = %367
  %370 = load i32, i32* %16, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %16, align 4
  br label %334

372:                                              ; preds = %334
  %373 = load i8*, i8** %14, align 8
  %374 = load i8*, i8** %9, align 8
  %375 = ptrtoint i8* %373 to i64
  %376 = ptrtoint i8* %374 to i64
  %377 = sub i64 %375, %376
  %378 = load i64, i64* @IW_EV_LCP_LEN, align 8
  %379 = icmp sgt i64 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = load i8*, i8** %14, align 8
  store i8* %381, i8** %9, align 8
  br label %382

382:                                              ; preds = %380, %372
  %383 = call i32 @memset(%struct.iw_event* %12, i32 0, i32 88)
  %384 = load i8*, i8** @IWEVCUSTOM, align 8
  %385 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %384, i8** %385, align 8
  %386 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %387 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %388 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %387, i32 0, i32 5
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = shl i32 %391, 8
  %393 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %394 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %393, i32 0, i32 5
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %392, %397
  %399 = call i32 @snprintf(i8* %386, i32 158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %398)
  %400 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %401 = call signext i8 @strlen(i8* %400)
  %402 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  store i8 %401, i8* %404, align 8
  %405 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %406 = load i8*, i8** %9, align 8
  %407 = load i8*, i8** %10, align 8
  %408 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %409 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %405, i8* %406, i8* %407, %struct.iw_event* %12, i8* %408)
  store i8* %409, i8** %9, align 8
  %410 = load i8*, i8** %15, align 8
  %411 = load i8*, i8** %9, align 8
  %412 = icmp eq i8* %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %382
  %414 = load i8*, i8** %10, align 8
  store i8* %414, i8** %6, align 8
  br label %542

415:                                              ; preds = %382
  %416 = load i8*, i8** %9, align 8
  store i8* %416, i8** %15, align 8
  %417 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %418 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %417, i32 0, i32 6
  %419 = load i64*, i64** %418, align 8
  %420 = getelementptr inbounds i64, i64* %419, i64 1
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %486

423:                                              ; preds = %415
  %424 = call i32 @memset(%struct.iw_event* %12, i32 0, i32 88)
  %425 = load i8*, i8** @IWEVCUSTOM, align 8
  %426 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %425, i8** %426, align 8
  %427 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %428 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %427, i32 0, i32 6
  %429 = load i64*, i64** %428, align 8
  %430 = getelementptr inbounds i64, i64* %429, i64 0
  %431 = load i64, i64* %430, align 8
  %432 = icmp eq i64 %431, 48
  br i1 %432, label %433, label %449

433:                                              ; preds = %423
  %434 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %435 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %436 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %435, i32 0, i32 6
  %437 = load i64*, i64** %436, align 8
  %438 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %439 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %438, i32 0, i32 6
  %440 = load i64*, i64** %439, align 8
  %441 = getelementptr inbounds i64, i64* %440, i64 1
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %442, 2
  %444 = call i8* @encode_ie(i8* %434, i32 158, i64* %437, i64 %443, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @usbdrv_translate_scan.rsn_leader, i64 0, i64 0), i32 7)
  %445 = ptrtoint i8* %444 to i8
  %446 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 0
  store i8 %445, i8* %448, align 8
  br label %465

449:                                              ; preds = %423
  %450 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %451 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %452 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %451, i32 0, i32 6
  %453 = load i64*, i64** %452, align 8
  %454 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %455 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %454, i32 0, i32 6
  %456 = load i64*, i64** %455, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 1
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %458, 2
  %460 = call i8* @encode_ie(i8* %450, i32 158, i64* %453, i64 %459, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @usbdrv_translate_scan.wpa_leader, i64 0, i64 0), i32 7)
  %461 = ptrtoint i8* %460 to i8
  %462 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %463, i32 0, i32 0
  store i8 %461, i8* %464, align 8
  br label %465

465:                                              ; preds = %449, %433
  %466 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 0
  %469 = load i8, i8* %468, align 8
  %470 = sext i8 %469 to i32
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %465
  %473 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %474 = load i8*, i8** %9, align 8
  %475 = load i8*, i8** %10, align 8
  %476 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %477 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %473, i8* %474, i8* %475, %struct.iw_event* %12, i8* %476)
  store i8* %477, i8** %9, align 8
  br label %478

478:                                              ; preds = %472, %465
  %479 = load i8*, i8** %15, align 8
  %480 = load i8*, i8** %9, align 8
  %481 = icmp eq i8* %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %478
  %483 = load i8*, i8** %10, align 8
  store i8* %483, i8** %6, align 8
  br label %542

484:                                              ; preds = %478
  %485 = load i8*, i8** %9, align 8
  store i8* %485, i8** %15, align 8
  br label %486

486:                                              ; preds = %484, %415
  %487 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %488 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %487, i32 0, i32 7
  %489 = load i64*, i64** %488, align 8
  %490 = getelementptr inbounds i64, i64* %489, i64 1
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %540

493:                                              ; preds = %486
  %494 = call i32 @memset(%struct.iw_event* %12, i32 0, i32 88)
  %495 = load i8*, i8** @IWEVCUSTOM, align 8
  %496 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i8* %495, i8** %496, align 8
  %497 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %498 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %497, i32 0, i32 7
  %499 = load i64*, i64** %498, align 8
  %500 = getelementptr inbounds i64, i64* %499, i64 0
  %501 = load i64, i64* %500, align 8
  %502 = icmp eq i64 %501, 48
  br i1 %502, label %503, label %539

503:                                              ; preds = %493
  %504 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %505 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %506 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %505, i32 0, i32 7
  %507 = load i64*, i64** %506, align 8
  %508 = load %struct.zsBssInfo*, %struct.zsBssInfo** %11, align 8
  %509 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %508, i32 0, i32 7
  %510 = load i64*, i64** %509, align 8
  %511 = getelementptr inbounds i64, i64* %510, i64 1
  %512 = load i64, i64* %511, align 8
  %513 = add nsw i64 %512, 2
  %514 = call i8* @encode_ie(i8* %504, i32 158, i64* %507, i64 %513, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @usbdrv_translate_scan.rsn_leader.1, i64 0, i64 0), i32 7)
  %515 = ptrtoint i8* %514 to i8
  %516 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 0
  store i8 %515, i8* %518, align 8
  %519 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 0
  %522 = load i8, i8* %521, align 8
  %523 = sext i8 %522 to i32
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %503
  %526 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %527 = load i8*, i8** %9, align 8
  %528 = load i8*, i8** %10, align 8
  %529 = getelementptr inbounds [158 x i8], [158 x i8]* %17, i64 0, i64 0
  %530 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %526, i8* %527, i8* %528, %struct.iw_event* %12, i8* %529)
  store i8* %530, i8** %9, align 8
  br label %531

531:                                              ; preds = %525, %503
  %532 = load i8*, i8** %15, align 8
  %533 = load i8*, i8** %9, align 8
  %534 = icmp eq i8* %532, %533
  br i1 %534, label %535, label %537

535:                                              ; preds = %531
  %536 = load i8*, i8** %10, align 8
  store i8* %536, i8** %6, align 8
  br label %542

537:                                              ; preds = %531
  %538 = load i8*, i8** %9, align 8
  store i8* %538, i8** %15, align 8
  br label %539

539:                                              ; preds = %537, %493
  br label %540

540:                                              ; preds = %539, %486
  %541 = load i8*, i8** %9, align 8
  store i8* %541, i8** %6, align 8
  br label %542

542:                                              ; preds = %540, %535, %482, %413, %365, %326, %280, %245, %208, %124, %81, %42
  %543 = load i8*, i8** %6, align 8
  ret i8* %543
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #1

declare dso_local i8* @iwe_stream_add_value(%struct.iw_request_info*, i8*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i8* @encode_ie(i8*, i32, i64*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
