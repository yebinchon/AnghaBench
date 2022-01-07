; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_siwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64, i32, i32 }

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
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.TYPE_9__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %17 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_9__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %21 = call i32 @DBGPRINT(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %338

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  br label %297

60:                                               ; preds = %29, %24
  %61 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %62 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %69 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %67, %60
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = call i32 @STA_PORT_SECURED(%struct.TYPE_9__* %75)
  %77 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  store i8* %81, i8** %84, align 8
  %85 = load i8*, i8** @Ndis802_11WEPEnabled, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i8* %92, i8** %95, align 8
  %96 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %74
  %103 = load i8*, i8** @Ndis802_11AuthModeShared, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  br label %112

107:                                              ; preds = %74
  %108 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %67
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %267

119:                                              ; preds = %114
  %120 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %121 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %124 = and i32 %122, %123
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %127 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %338

134:                                              ; preds = %119
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @NR_WEP_KEYS, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %137, %134
  %142 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @DBGPRINT(i32 %142, i8* %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %11, align 4
  br label %160

155:                                              ; preds = %137
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  br label %160

160:                                              ; preds = %155, %141
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %162, align 8
  %164 = load i64, i64* @BSS0, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %163, i64 %164
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @NdisZeroMemory(i32 %171, i32 16)
  %173 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %174 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %160
  %179 = load i64, i64* @MAX_WEP_KEY_SIZE, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %181, align 8
  %183 = load i64, i64* @BSS0, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %182, i64 %183
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i64 %179, i64* %189, align 8
  %190 = load i32, i32* @CIPHER_WEP128, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %192, align 8
  %194 = load i64, i64* @BSS0, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %193, i64 %194
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  store i32 %190, i32* %200, align 4
  br label %242

201:                                              ; preds = %160
  %202 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %203 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @MIN_WEP_KEY_SIZE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %201
  %208 = load i64, i64* @MIN_WEP_KEY_SIZE, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %210, align 8
  %212 = load i64, i64* @BSS0, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %211, i64 %212
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  store i64 %208, i64* %218, align 8
  %219 = load i32, i32* @CIPHER_WEP64, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %221, align 8
  %223 = load i64, i64* @BSS0, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %222, i64 %223
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  store i32 %219, i32* %229, align 4
  br label %241

230:                                              ; preds = %201
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %232, align 8
  %234 = load i64, i64* @BSS0, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %233, i64 %234
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %230, %207
  br label %242

242:                                              ; preds = %241, %178
  %243 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %244 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %266, label %249

249:                                              ; preds = %242
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %251, align 8
  %253 = load i64, i64* @BSS0, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %252, i64 %253
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %263 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @NdisMoveMemory(i32 %260, i8* %261, i64 %264)
  br label %266

266:                                              ; preds = %249, %242
  br label %296

267:                                              ; preds = %114
  %268 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %269 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %272 = and i32 %270, %271
  %273 = sub nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp sge i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %267
  %277 = load i32, i32* %12, align 4
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load i32, i32* %12, align 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  store i32 %280, i32* %283, align 8
  br label %295

284:                                              ; preds = %276, %267
  %285 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %286 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @IW_ENCODE_MODE, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %5, align 4
  br label %338

294:                                              ; preds = %284
  br label %295

295:                                              ; preds = %294, %279
  br label %296

296:                                              ; preds = %295, %266
  br label %297

297:                                              ; preds = %296, %36
  %298 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %299 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %300 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to i8*
  %304 = call i32 @DBGPRINT(i32 %298, i8* %303)
  %305 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @DBGPRINT(i32 %305, i8* %309)
  %311 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %317, align 8
  %319 = load i64, i64* @BSS0, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %318, i64 %319
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to i8*
  %331 = call i32 @DBGPRINT(i32 %311, i8* %330)
  %332 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @DBGPRINT(i32 %332, i8* %336)
  store i32 0, i32* %5, align 4
  br label %338

338:                                              ; preds = %297, %291, %131, %19
  %339 = load i32, i32* %5, align 4
  ret i32 %339
}

declare dso_local %struct.TYPE_9__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @STA_PORT_SECURED(%struct.TYPE_9__*) #1

declare dso_local i32 @NdisZeroMemory(i32, i32) #1

declare dso_local i32 @NdisMoveMemory(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
