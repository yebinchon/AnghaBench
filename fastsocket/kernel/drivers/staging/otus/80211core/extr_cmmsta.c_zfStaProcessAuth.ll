; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAuth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i64 }
%struct.zsWlanAuthFrameHeader = type { i32, i32, i32, i64* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_STA_CONN_STATE_AUTH_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ZM_STA_CONN_STATE_AUTH_COMPLETED\00", align 1
@ZM_STA_CONN_STATE_AUTH_COMPLETED = common dso_local global i64 0, align 8
@zfAuthFreqCompleteCb = common dso_local global i32* null, align 8
@ZM_WLAN_FRAME_TYPE_REASOCREQ = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_ASOCREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"authentication failed, status = \00", align 1
@ZM_AUTH_MODE_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"ZM_STA_STATE_DISCONNECT\00", align 1
@ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED = common dso_local global i32 0, align 4
@ZM_STA_CONN_STATE_AUTH_SHARE_1 = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_AUTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ZM_STA_SUB_STATE_AUTH_SHARE_2\00", align 1
@ZM_STA_CONN_STATE_AUTH_SHARE_2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"ZM_STA_SUB_STATE_ASSOCIATE\00", align 1
@ZM_STA_CONN_STATE_ASSOCIATE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"unknown case\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessAuth(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zsWlanAuthFrameHeader*, align 8
  %10 = alloca [24 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @zfStaIsConnecting(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %288

20:                                               ; preds = %4
  %21 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 0
  %22 = bitcast i32* %21 to %struct.zsWlanAuthFrameHeader*
  store %struct.zsWlanAuthFrameHeader* %22, %struct.zsWlanAuthFrameHeader** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 0
  %26 = call i32 @zfCopyFromRxBuffer(i32* %23, i32* %24, i32* %25, i32 0, i32 24)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_OPEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %133

33:                                               ; preds = %20
  %34 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %35 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zmw_le16_to_cpu(i32 %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %41 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @zmw_le16_to_cpu(i32 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %39
  %46 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %47 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @zmw_le16_to_cpu(i32 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @zmw_enter_critical_section(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %61 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_COMPLETED, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @zmw_leave_critical_section(i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @zfAuthFreqCompleteCb, align 8
  %78 = call i32 @zfCoreSetFrequencyEx(i32* %67, i32 %70, i32 %73, i32 %76, i32* %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %51
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @ZM_WLAN_FRAME_TYPE_REASOCREQ, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @zfSendMmFrame(i32* %85, i32 %86, i32 %90, i32 0, i32 0, i32 0)
  br label %100

92:                                               ; preds = %51
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ASOCREQ, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @zfSendMmFrame(i32* %93, i32 %94, i32 %98, i32 0, i32 0, i32 0)
  br label %100

100:                                              ; preds = %92, %84
  br label %132

101:                                              ; preds = %45, %39, %33
  %102 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %103 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ZM_AUTH_MODE_AUTO, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %101
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @zfStaStartConnect(i32* %116, i32 %120)
  br label %131

122:                                              ; preds = %101
  %123 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @zfStaConnectFail(i32* %124, i32 %125, i32 %129, i32 3)
  br label %131

131:                                              ; preds = %122, %112
  br label %132

132:                                              ; preds = %131, %100
  br label %288

133:                                              ; preds = %20
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_1, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %211

140:                                              ; preds = %133
  %141 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %142 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @zmw_le16_to_cpu(i32 %143)
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %197

146:                                              ; preds = %140
  %147 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %148 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @zmw_le16_to_cpu(i32 %149)
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %197

152:                                              ; preds = %146
  %153 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %154 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @zmw_le16_to_cpu(i32 %155)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %152
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %164 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %167 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %166, i32 0, i32 3
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 2
  %172 = call i32 @zfMemoryCopy(i32 %162, i64* %165, i64 %171)
  store i32 196609, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @ZM_WLAN_FRAME_TYPE_AUTH, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @zfSendMmFrame(i32* %173, i32 %174, i32 %178, i32 %179, i32 %180, i32 0)
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @zmw_enter_critical_section(i32* %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  store i32 %186, i32* %189, align 8
  %190 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_2, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  store i64 %191, i64* %194, align 8
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @zmw_leave_critical_section(i32* %195)
  br label %210

197:                                              ; preds = %152, %146, %140
  %198 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %199 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  %202 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @zfStaConnectFail(i32* %203, i32 %204, i32 %208, i32 3)
  br label %210

210:                                              ; preds = %197, %158
  br label %287

211:                                              ; preds = %133
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_2, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %284

218:                                              ; preds = %211
  %219 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %220 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @zmw_le16_to_cpu(i32 %221)
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %270

224:                                              ; preds = %218
  %225 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %226 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @zmw_le16_to_cpu(i32 %227)
  %229 = icmp eq i32 %228, 4
  br i1 %229, label %230, label %270

230:                                              ; preds = %224
  %231 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %232 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @zmw_le16_to_cpu(i32 %233)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %270

236:                                              ; preds = %230
  %237 = load i32*, i32** %5, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @zfCoreSetFrequencyEx(i32* %237, i32 %240, i32 %243, i32 %246, i32* null)
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ASOCREQ, align 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @zfSendMmFrame(i32* %248, i32 %249, i32 %253, i32 0, i32 0, i32 0)
  %255 = load i32*, i32** %5, align 8
  %256 = call i32 @zmw_enter_critical_section(i32* %255)
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 4
  store i32 %259, i32* %262, align 8
  %263 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %264 = load i64, i64* @ZM_STA_CONN_STATE_ASSOCIATE, align 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  store i64 %264, i64* %267, align 8
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @zmw_leave_critical_section(i32* %268)
  br label %283

270:                                              ; preds = %230, %224, %218
  %271 = load %struct.zsWlanAuthFrameHeader*, %struct.zsWlanAuthFrameHeader** %9, align 8
  %272 = getelementptr inbounds %struct.zsWlanAuthFrameHeader, %struct.zsWlanAuthFrameHeader* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %273)
  %275 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %276 = load i32*, i32** %5, align 8
  %277 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, align 4
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @zfStaConnectFail(i32* %276, i32 %277, i32 %281, i32 3)
  br label %283

283:                                              ; preds = %270, %236
  br label %286

284:                                              ; preds = %211
  %285 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %283
  br label %287

287:                                              ; preds = %286, %210
  br label %288

288:                                              ; preds = %19, %287, %132
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_le16_to_cpu(i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfCoreSetFrequencyEx(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfStaStartConnect(i32*, i32) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i32, i32) #1

declare dso_local i32 @zfMemoryCopy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
