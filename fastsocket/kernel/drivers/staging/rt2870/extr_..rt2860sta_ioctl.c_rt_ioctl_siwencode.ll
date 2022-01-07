; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_siwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i32 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@Ndis802_11WEPDisabled = common dso_local global i8* null, align 8
@Ndis802_11AuthModeOpen = common dso_local global i8* null, align 8
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@Ndis802_11WEPEnabled = common dso_local global i8* null, align 8
@Ndis802_11AuthModeShared = common dso_local global i8* null, align 8
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@MAX_WEP_KEY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NR_WEP_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"==>rt_ioctl_siwencode::Wrong keyIdx=%d! Using default key instead (%d)\0A\00", align 1
@BSS0 = common dso_local global i64 0, align 8
@CIPHER_WEP128 = common dso_local global i32 0, align 4
@MIN_WEP_KEY_SIZE = common dso_local global i64 0, align 8
@CIPHER_WEP64 = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"==>rt_ioctl_siwencode::erq->flags=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"==>rt_ioctl_siwencode::AuthMode=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"==>rt_ioctl_siwencode::DefaultKeyId=%x, KeyLen = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"==>rt_ioctl_siwencode::WepStatus=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_siwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %17 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %18 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_8__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %22 = call i32 @DBGPRINT(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENETDOWN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %339

25:                                               ; preds = %4
  %26 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %27 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %298

61:                                               ; preds = %30, %25
  %62 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %70 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %68, %61
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = call i32 @STA_PORT_SECURED(%struct.TYPE_8__* %76)
  %78 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store i8* %93, i8** %96, align 8
  %97 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %98 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %75
  %104 = load i8*, i8** @Ndis802_11AuthModeShared, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  br label %113

108:                                              ; preds = %75
  %109 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %68
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %117 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %268

120:                                              ; preds = %115
  %121 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %122 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %125 = and i32 %123, %124
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  %127 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %128 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %339

135:                                              ; preds = %120
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @NR_WEP_KEYS, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138, %135
  %143 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @DBGPRINT(i32 %143, i8* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %11, align 4
  br label %161

156:                                              ; preds = %138
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %142
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %163, align 8
  %165 = load i64, i64* @BSS0, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %164, i64 %165
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @NdisZeroMemory(i32 %172, i32 16)
  %174 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %175 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %161
  %180 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %182, align 8
  %184 = load i64, i64* @BSS0, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %183, i64 %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i64 %180, i64* %190, align 8
  %191 = load i32, i32* @CIPHER_WEP128, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %193, align 8
  %195 = load i64, i64* @BSS0, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %194, i64 %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  store i32 %191, i32* %201, align 4
  br label %243

202:                                              ; preds = %161
  %203 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %204 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @MIN_WEP_KEY_SIZE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = load i64, i64* @MIN_WEP_KEY_SIZE, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %211, align 8
  %213 = load i64, i64* @BSS0, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %212, i64 %213
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  store i64 %209, i64* %219, align 8
  %220 = load i32, i32* @CIPHER_WEP64, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %222, align 8
  %224 = load i64, i64* @BSS0, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %223, i64 %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  store i32 %220, i32* %230, align 4
  br label %242

231:                                              ; preds = %202
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %233, align 8
  %235 = load i64, i64* @BSS0, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %234, i64 %235
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  br label %242

242:                                              ; preds = %231, %208
  br label %243

243:                                              ; preds = %242, %179
  %244 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %245 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %267, label %250

250:                                              ; preds = %243
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %252, align 8
  %254 = load i64, i64* @BSS0, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %253, i64 %254
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %264 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @NdisMoveMemory(i32 %261, i8* %262, i64 %265)
  br label %267

267:                                              ; preds = %250, %243
  br label %297

268:                                              ; preds = %115
  %269 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %270 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %273 = and i32 %271, %272
  %274 = sub nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %268
  %278 = load i32, i32* %12, align 4
  %279 = icmp slt i32 %278, 4
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  store i32 %281, i32* %284, align 8
  br label %296

285:                                              ; preds = %277, %268
  %286 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %287 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @IW_ENCODE_MODE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %285
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %5, align 4
  br label %339

295:                                              ; preds = %285
  br label %296

296:                                              ; preds = %295, %280
  br label %297

297:                                              ; preds = %296, %267
  br label %298

298:                                              ; preds = %297, %37
  %299 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %300 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %301 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = inttoptr i64 %303 to i8*
  %305 = call i32 @DBGPRINT(i32 %299, i8* %304)
  %306 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @DBGPRINT(i32 %306, i8* %310)
  %312 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %318, align 8
  %320 = load i64, i64* @BSS0, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %319, i64 %320
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = inttoptr i64 %330 to i8*
  %332 = call i32 @DBGPRINT(i32 %312, i8* %331)
  %333 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @DBGPRINT(i32 %333, i8* %337)
  store i32 0, i32* %5, align 4
  br label %339

339:                                              ; preds = %298, %292, %132, %20
  %340 = load i32, i32* %5, align 4
  ret i32 %340
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @STA_PORT_SECURED(%struct.TYPE_8__*) #1

declare dso_local i32 @NdisZeroMemory(i32, i32) #1

declare dso_local i32 @NdisMoveMemory(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
