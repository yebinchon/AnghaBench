; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanSetKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanSetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32*, i64, i32*, i32*, i64, i32, i64, i32*, i64**, i64*, i64, i64, i32*, %struct.TYPE_13__*, %struct.TYPE_9__*, i32, %struct.TYPE_13__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32**, i32*, i64*, i64*, i64*, i32*, i64*, i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32*, i32*, i64, i32, i32, i32, i64, i64 }
%struct.zsKeyInfo = type { i32, i32, i64, i64, i32*, i32, i64 }

@__const.zfiWlanSetKey.broadcast = private unnamed_addr constant [3 x i32] [i32 65535, i32 65535, i32 65535], align 4
@ZM_NO_WEP = common dso_local global i64 0, align 8
@ZM_KEY_FLAG_AUTHENTICATOR = common dso_local global i32 0, align 4
@ZM_KEY_FLAG_PK = common dso_local global i32 0, align 4
@ZM_STATUS_FAILURE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_14__* null, align 8
@ZM_TKIP = common dso_local global i64 0, align 8
@ZM_AES = common dso_local global i64 0, align 8
@ZM_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ZM_KEY_FLAG_GK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CWY - Set AES Group Key\00", align 1
@ZM_WEP64 = common dso_local global i64 0, align 8
@ZM_WEP128 = common dso_local global i64 0, align 8
@ZM_WEP256 = common dso_local global i64 0, align 8
@ZM_USER_KEY_PK = common dso_local global i64 0, align 8
@ZM_STA_WPA_STATE_PK_OK = common dso_local global i64 0, align 8
@ZM_KEY_FLAG_INIT_IV = common dso_local global i32 0, align 4
@ZM_USER_KEY_GK = common dso_local global i64 0, align 8
@ZM_STA_WPA_STATE_GK_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"legacy WEP\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"WEP 64\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WEP 128\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"WEP 256\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"key = \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZM_KEY_FLAG_DEFAULT_KEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Countermeasure : Cancel Old Timer \00", align 1
@ZM_EVENT_SKIP_COUNTERMEASURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Countermeasure : Create New Timer \00", align 1
@ZM_STA_WPA_STATE_INIT = common dso_local global i64 0, align 8
@ZM_CENC = common dso_local global i8* null, align 8
@ZM_KEY_FLAG_CENC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfiWlanSetKey(i32* %0, %struct.zsKeyInfo* byval(%struct.zsKeyInfo) align 8 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [6 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  %15 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.zfiWlanSetKey.broadcast to i8*), i64 12, i1 false)
  %16 = load i64, i64* @ZM_NO_WEP, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @zmw_get_wlan_dev(i32* %17)
  %19 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZM_KEY_FLAG_AUTHENTICATOR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %304

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZM_KEY_FLAG_PK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %165

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @zfApFindSta(i32* %31, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @ZM_STATUS_FAILURE, align 8
  store i64 %37, i64* %3, align 8
  br label %803

38:                                               ; preds = %30
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %104

58:                                               ; preds = %38
  %59 = load i64, i64* @ZM_TKIP, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i64 %59, i64* %67, align 8
  %68 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 0
  %69 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  %72 = call i32 @zfMemoryCopy(i64* %68, i32* %71, i32 8)
  %73 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 8
  %74 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 24
  %77 = call i32 @zfMemoryCopy(i64* %73, i32* %76, i32 8)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 6
  %86 = bitcast i32* %85 to i64*
  %87 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  %90 = call i32 @zfMemoryCopy(i64* %86, i32* %89, i32 8)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = bitcast i32* %98 to i64*
  %100 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 24
  %103 = call i32 @zfMemoryCopy(i64* %99, i32* %102, i32 8)
  br label %132

104:                                              ; preds = %38
  %105 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i64, i64* @ZM_AES, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i64 %109, i64* %117, align 8
  br label %131

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @zfApClearStaKey(i32* %123, i32* %126)
  %128 = load i64, i64* @ZM_STATUS_SUCCESS, align 8
  store i64 %128, i64* %3, align 8
  br label %803

129:                                              ; preds = %118
  %130 = load i64, i64* @ZM_STATUS_FAILURE, align 8
  store i64 %130, i64* %3, align 8
  br label %803

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131, %58
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 16
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @zfHpSetApPairwiseKey(i32* %133, i32* %136, i64 %145, i32* %147, i32* %150, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  %156 = add nsw i32 %155, 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  store i32 %156, i32* %164, align 8
  br label %303

165:                                              ; preds = %24
  %166 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ZM_KEY_FLAG_GK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %302

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %10, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 7
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 6
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 0, i64* %185, align 8
  %186 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 32
  br i1 %188, label %189, label %204

189:                                              ; preds = %171
  %190 = load i64, i64* @ZM_TKIP, align 8
  store i64 %190, i64* %7, align 8
  %191 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %6, align 8
  %193 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 16
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = call i32 @zfMicSetKey(i32* %195, i32* %200)
  %202 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  store i32* %203, i32** %6, align 8
  br label %255

204:                                              ; preds = %171
  %205 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 16
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i64, i64* @ZM_AES, align 8
  store i64 %209, i64* %7, align 8
  %210 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  store i32* %211, i32** %6, align 8
  %212 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %254

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %220 = call i32 @zfApClearStaKey(i32* %218, i32* %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 65519
  store i32 %228, i32* %226, align 4
  %229 = load i64, i64* @ZM_STATUS_SUCCESS, align 8
  store i64 %229, i64* %3, align 8
  br label %803

230:                                              ; preds = %213
  %231 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 5
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i64, i64* @ZM_WEP64, align 8
  store i64 %235, i64* %7, align 8
  br label %250

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 13
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i64, i64* @ZM_WEP128, align 8
  store i64 %241, i64* %7, align 8
  br label %249

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 29
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i64, i64* @ZM_WEP256, align 8
  store i64 %247, i64* %7, align 8
  br label %248

248:                                              ; preds = %246, %242
  br label %249

249:                                              ; preds = %248, %240
  br label %250

250:                                              ; preds = %249, %234
  %251 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %6, align 8
  br label %253

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %253, %208
  br label %255

255:                                              ; preds = %254, %189
  %256 = load i32*, i32** %4, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %7, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 16
  %265 = load i64, i64* %10, align 8
  %266 = call i32 @zfHpSetApGroupKey(i32* %256, i64 %259, i64 %260, i32* %261, i32* %264, i64 %265)
  %267 = load i64, i64* %7, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  %271 = load i64, i64* %7, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 2
  %275 = load i64*, i64** %274, align 8
  %276 = load i64, i64* %10, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  store i64 %271, i64* %277, align 8
  %278 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 3
  %283 = load i64*, i64** %282, align 8
  %284 = load i64, i64* %10, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  store i64 %279, i64* %285, align 8
  %286 = load i64, i64* %10, align 8
  %287 = add i64 %286, 60
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 4
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* %10, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  store i64 %287, i64* %293, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i64, i64* %10, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, 16
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %255, %165
  br label %303

303:                                              ; preds = %302, %132
  br label %801

304:                                              ; preds = %2
  %305 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @ZM_KEY_FLAG_PK, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %445

310:                                              ; preds = %304
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 12
  store i64 0, i64* %313, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 11
  store i64 0, i64* %316, align 8
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 15
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %319, align 8
  %321 = load i64, i64* %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  store i32 1, i32* %323, align 4
  %324 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 32
  br i1 %326, label %327, label %379

327:                                              ; preds = %310
  %328 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = inttoptr i64 %332 to i64*
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 17
  %337 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @zfTkipInit(i32* %329, i64* %333, %struct.TYPE_13__* %336, i32 %338)
  %340 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = bitcast i32* %345 to i64*
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 14
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i64 %352
  %354 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @zfTkipInit(i32* %341, i64* %346, %struct.TYPE_13__* %353, i32 %355)
  %357 = load i64, i64* @ZM_TKIP, align 8
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 2
  store i64 %357, i64* %360, align 8
  %361 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 16
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 16
  %367 = call i32 @zfMicSetKey(i32* %363, i32* %366)
  %368 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 24
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 13
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = call i32 @zfMicSetKey(i32* %370, i32* %377)
  br label %391

379:                                              ; preds = %310
  %380 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %381, 16
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = load i64, i64* @ZM_AES, align 8
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 2
  store i64 %384, i64* %387, align 8
  br label %390

388:                                              ; preds = %379
  %389 = load i64, i64* @ZM_STATUS_FAILURE, align 8
  store i64 %389, i64* %3, align 8
  br label %803

390:                                              ; preds = %383
  br label %391

391:                                              ; preds = %390, %327
  store i64 0, i64* %11, align 8
  br label %392

392:                                              ; preds = %421, %391
  %393 = load i64, i64* %11, align 8
  %394 = icmp ult i64 %393, 3
  br i1 %394, label %395, label %424

395:                                              ; preds = %392
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = load i64, i64* %11, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = and i32 %402, 255
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* %11, align 8
  %406 = mul i64 2, %405
  %407 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %406
  store i64 %404, i64* %407, align 8
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = load i64, i64* %11, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = ashr i32 %414, 8
  %416 = sext i32 %415 to i64
  %417 = load i64, i64* %11, align 8
  %418 = mul i64 2, %417
  %419 = add i64 %418, 1
  %420 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %419
  store i64 %416, i64* %420, align 8
  br label %421

421:                                              ; preds = %395
  %422 = load i64, i64* %11, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %11, align 8
  br label %392

424:                                              ; preds = %392
  %425 = load i32*, i32** %4, align 8
  %426 = load i64, i64* @ZM_USER_KEY_PK, align 8
  %427 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 2
  %431 = load i64, i64* %430, align 8
  %432 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 16
  %437 = call i32 @zfHpSetPerUserKey(i32* %425, i64 %426, i64 0, i64* %427, i64 %431, i32* %433, i32* %436)
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 6
  store i32 4, i32* %440, align 8
  %441 = load i64, i64* @ZM_STA_WPA_STATE_PK_OK, align 8
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 7
  store i64 %441, i64* %444, align 8
  br label %800

445:                                              ; preds = %304
  %446 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @ZM_KEY_FLAG_GK, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %565

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %453 = load i32*, i32** %452, align 8
  %454 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = bitcast i32* %457 to i64*
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 14
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i64 %464
  %466 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 5
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @zfTkipInit(i32* %453, i64* %458, %struct.TYPE_13__* %465, i32 %467)
  %469 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %470, 32
  br i1 %471, label %472, label %518

472:                                              ; preds = %451
  %473 = load i64, i64* @ZM_TKIP, align 8
  store i64 %473, i64* %7, align 8
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 14
  %477 = load %struct.TYPE_13__*, %struct.TYPE_13__** %476, align 8
  %478 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = inttoptr i64 %482 to i32*
  store i32* %483, i32** %6, align 8
  %484 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @ZM_KEY_FLAG_INIT_IV, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %506, label %489

489:                                              ; preds = %472
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 14
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %492, align 8
  %494 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 1
  store i64 0, i64* %497, align 8
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 14
  %501 = load %struct.TYPE_13__*, %struct.TYPE_13__** %500, align 8
  %502 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %503 = load i64, i64* %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 0
  store i64 0, i64* %505, align 8
  br label %506

506:                                              ; preds = %489, %472
  %507 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 24
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 13
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  %517 = call i32 @zfMicSetKey(i32* %509, i32* %516)
  br label %548

518:                                              ; preds = %451
  %519 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = icmp eq i32 %520, 16
  br i1 %521, label %522, label %524

522:                                              ; preds = %518
  %523 = load i64, i64* @ZM_AES, align 8
  store i64 %523, i64* %7, align 8
  br label %547

524:                                              ; preds = %518
  %525 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = icmp eq i32 %526, 5
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = load i64, i64* @ZM_WEP64, align 8
  store i64 %529, i64* %7, align 8
  br label %544

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 13
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = load i64, i64* @ZM_WEP128, align 8
  store i64 %535, i64* %7, align 8
  br label %543

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = icmp eq i32 %538, 29
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = load i64, i64* @ZM_WEP256, align 8
  store i64 %541, i64* %7, align 8
  br label %542

542:                                              ; preds = %540, %536
  br label %543

543:                                              ; preds = %542, %534
  br label %544

544:                                              ; preds = %543, %528
  %545 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %546 = load i32*, i32** %545, align 8
  store i32* %546, i32** %6, align 8
  br label %547

547:                                              ; preds = %544, %522
  br label %548

548:                                              ; preds = %547, %506
  %549 = load i32*, i32** %4, align 8
  %550 = load i64, i64* @ZM_USER_KEY_GK, align 8
  %551 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %552 = bitcast i32* %551 to i64*
  %553 = load i64, i64* %7, align 8
  %554 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 16
  %559 = call i32 @zfHpSetPerUserKey(i32* %549, i64 %550, i64 0, i64* %552, i64 %553, i32* %555, i32* %558)
  %560 = load i8*, i8** @ZM_STA_WPA_STATE_GK_OK, align 8
  %561 = ptrtoint i8* %560 to i64
  %562 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %563 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 7
  store i64 %561, i64* %564, align 8
  br label %799

565:                                              ; preds = %445
  %566 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %567 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %568 = load i64, i64* %567, align 8
  %569 = icmp uge i64 %568, 4
  br i1 %569, label %570, label %572

570:                                              ; preds = %565
  %571 = load i64, i64* @ZM_STATUS_FAILURE, align 8
  store i64 %571, i64* %3, align 8
  br label %803

572:                                              ; preds = %565
  %573 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %574, 5
  br i1 %575, label %576, label %579

576:                                              ; preds = %572
  %577 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %578 = load i64, i64* @ZM_WEP64, align 8
  store i64 %578, i64* %7, align 8
  br label %639

579:                                              ; preds = %572
  %580 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = icmp eq i32 %581, 13
  br i1 %582, label %583, label %586

583:                                              ; preds = %579
  %584 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %585 = load i64, i64* @ZM_WEP128, align 8
  store i64 %585, i64* %7, align 8
  br label %638

586:                                              ; preds = %579
  %587 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = icmp eq i32 %588, 32
  br i1 %589, label %590, label %620

590:                                              ; preds = %586
  %591 = load i64, i64* @ZM_TKIP, align 8
  store i64 %591, i64* %7, align 8
  %592 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %593 = load i32*, i32** %592, align 8
  %594 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %594, i32 0, i32 2
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 1
  %597 = load i32*, i32** %596, align 8
  %598 = bitcast i32* %597 to i64*
  %599 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %600 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %599, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %600, i32 0, i32 14
  %602 = load %struct.TYPE_13__*, %struct.TYPE_13__** %601, align 8
  %603 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %604 = load i64, i64* %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %602, i64 %604
  %606 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 5
  %607 = load i32, i32* %606, align 8
  %608 = call i32 @zfTkipInit(i32* %593, i64* %598, %struct.TYPE_13__* %605, i32 %607)
  %609 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %610 = load i32*, i32** %609, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 24
  %612 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %613 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %612, i32 0, i32 2
  %614 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %613, i32 0, i32 13
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %617 = load i64, i64* %616, align 8
  %618 = getelementptr inbounds i32, i32* %615, i64 %617
  %619 = call i32 @zfMicSetKey(i32* %611, i32* %618)
  br label %637

620:                                              ; preds = %586
  %621 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = icmp eq i32 %622, 16
  br i1 %623, label %624, label %626

624:                                              ; preds = %620
  %625 = load i64, i64* @ZM_AES, align 8
  store i64 %625, i64* %7, align 8
  br label %636

626:                                              ; preds = %620
  %627 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = icmp eq i32 %628, 29
  br i1 %629, label %630, label %633

630:                                              ; preds = %626
  %631 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %632 = load i64, i64* @ZM_WEP256, align 8
  store i64 %632, i64* %7, align 8
  br label %635

633:                                              ; preds = %626
  %634 = load i64, i64* @ZM_STATUS_FAILURE, align 8
  store i64 %634, i64* %3, align 8
  br label %803

635:                                              ; preds = %630
  br label %636

636:                                              ; preds = %635, %624
  br label %637

637:                                              ; preds = %636, %590
  br label %638

638:                                              ; preds = %637, %583
  br label %639

639:                                              ; preds = %638, %576
  %640 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %14, align 8
  br label %641

641:                                              ; preds = %654, %639
  %642 = load i64, i64* %14, align 8
  %643 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  %646 = icmp ult i64 %642, %645
  br i1 %646, label %647, label %657

647:                                              ; preds = %641
  %648 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %649 = load i32*, i32** %648, align 8
  %650 = load i64, i64* %14, align 8
  %651 = getelementptr inbounds i32, i32* %649, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %652)
  br label %654

654:                                              ; preds = %647
  %655 = load i64, i64* %14, align 8
  %656 = add i64 %655, 1
  store i64 %656, i64* %14, align 8
  br label %641

657:                                              ; preds = %641
  %658 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = load i32, i32* @ZM_KEY_FLAG_DEFAULT_KEY, align 4
  %661 = and i32 %659, %660
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %686

663:                                              ; preds = %657
  store i64 0, i64* %10, align 8
  %664 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %665 = load i64, i64* %664, align 8
  %666 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %667 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %666, i32 0, i32 3
  %668 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %667, i32 0, i32 4
  %669 = load i64*, i64** %668, align 8
  %670 = load i64, i64* %10, align 8
  %671 = getelementptr inbounds i64, i64* %669, i64 %670
  store i64 %665, i64* %671, align 8
  %672 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %673 = load i64, i64* %672, align 8
  %674 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %675 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %674, i32 0, i32 3
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 3
  %677 = load i64*, i64** %676, align 8
  %678 = load i64, i64* %10, align 8
  %679 = getelementptr inbounds i64, i64* %677, i64 %678
  store i64 %673, i64* %679, align 8
  %680 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %681 = load i64, i64* %680, align 8
  %682 = trunc i64 %681 to i32
  %683 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %684 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %684, i32 0, i32 6
  store i32 %682, i32* %685, align 8
  br label %686

686:                                              ; preds = %663, %657
  %687 = load i64, i64* %7, align 8
  %688 = load i64, i64* @ZM_TKIP, align 8
  %689 = icmp eq i64 %687, %688
  br i1 %689, label %690, label %708

690:                                              ; preds = %686
  %691 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %692 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = icmp eq i32 %693, 1
  br i1 %694, label %695, label %700

695:                                              ; preds = %690
  %696 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %697 = load i32*, i32** %4, align 8
  %698 = load i32, i32* @ZM_EVENT_SKIP_COUNTERMEASURE, align 4
  %699 = call i32 @zfTimerCancel(i32* %697, i32 %698)
  br label %702

700:                                              ; preds = %690
  %701 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %702

702:                                              ; preds = %700, %695
  %703 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %704 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %703, i32 0, i32 0
  store i32 1, i32* %704, align 8
  %705 = load i32*, i32** %4, align 8
  %706 = load i32, i32* @ZM_EVENT_SKIP_COUNTERMEASURE, align 4
  %707 = call i32 @zfTimerSchedule(i32* %705, i32 %706, i32 150)
  br label %708

708:                                              ; preds = %702, %686
  %709 = load i64, i64* %7, align 8
  %710 = load i64, i64* @ZM_TKIP, align 8
  %711 = icmp eq i64 %709, %710
  br i1 %711, label %716, label %712

712:                                              ; preds = %708
  %713 = load i64, i64* %7, align 8
  %714 = load i64, i64* @ZM_AES, align 8
  %715 = icmp eq i64 %713, %714
  br i1 %715, label %716, label %761

716:                                              ; preds = %712, %708
  %717 = load i32*, i32** %4, align 8
  %718 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %719 = load i64, i64* %718, align 8
  %720 = load i64, i64* %7, align 8
  %721 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %722 = load i32*, i32** %721, align 8
  %723 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %724 = load i32*, i32** %723, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 16
  %726 = call i32 @zfHpSetDefaultKey(i32* %717, i64 %719, i64 %720, i32* %722, i32* %725)
  %727 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %728 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %727, i32 0, i32 2
  %729 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %728, i32 0, i32 7
  %730 = load i64, i64* %729, align 8
  %731 = load i64, i64* @ZM_STA_WPA_STATE_PK_OK, align 8
  %732 = icmp eq i64 %730, %731
  br i1 %732, label %733, label %739

733:                                              ; preds = %716
  %734 = load i8*, i8** @ZM_STA_WPA_STATE_GK_OK, align 8
  %735 = ptrtoint i8* %734 to i64
  %736 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %737 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %737, i32 0, i32 7
  store i64 %735, i64* %738, align 8
  br label %760

739:                                              ; preds = %716
  %740 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %741 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %740, i32 0, i32 2
  %742 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %741, i32 0, i32 7
  %743 = load i64, i64* %742, align 8
  %744 = load i64, i64* @ZM_STA_WPA_STATE_INIT, align 8
  %745 = icmp eq i64 %743, %744
  br i1 %745, label %746, label %759

746:                                              ; preds = %739
  %747 = load i64, i64* @ZM_STA_WPA_STATE_PK_OK, align 8
  %748 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %749 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %748, i32 0, i32 2
  %750 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %749, i32 0, i32 7
  store i64 %747, i64* %750, align 8
  %751 = load i64, i64* %7, align 8
  %752 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %753 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %752, i32 0, i32 2
  %754 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %753, i32 0, i32 2
  store i64 %751, i64* %754, align 8
  %755 = load i64, i64* %7, align 8
  %756 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %757 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %757, i32 0, i32 0
  store i64 %755, i64* %758, align 8
  br label %759

759:                                              ; preds = %746, %739
  br label %760

760:                                              ; preds = %759, %733
  br label %798

761:                                              ; preds = %712
  %762 = load i32*, i32** %4, align 8
  %763 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %764 = load i64, i64* %763, align 8
  %765 = load i64, i64* %7, align 8
  %766 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %767 = load i32*, i32** %766, align 8
  %768 = call i32 @zfHpSetDefaultKey(i32* %762, i64 %764, i64 %765, i32* %767, i32* null)
  %769 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %770 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %769, i32 0, i32 2
  %771 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %770, i32 0, i32 9
  %772 = load i64**, i64*** %771, align 8
  %773 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %774 = load i64, i64* %773, align 8
  %775 = getelementptr inbounds i64*, i64** %772, i64 %774
  %776 = load i64*, i64** %775, align 8
  %777 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 4
  %778 = load i32*, i32** %777, align 8
  %779 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 1
  %780 = load i32, i32* %779, align 4
  %781 = call i32 @zfMemoryCopy(i64* %776, i32* %778, i32 %780)
  %782 = load i64, i64* %7, align 8
  %783 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %784 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %783, i32 0, i32 2
  %785 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %784, i32 0, i32 10
  %786 = load i64*, i64** %785, align 8
  %787 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %788 = load i64, i64* %787, align 8
  %789 = getelementptr inbounds i64, i64* %786, i64 %788
  store i64 %782, i64* %789, align 8
  %790 = load i64, i64* %7, align 8
  %791 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %792 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %791, i32 0, i32 2
  %793 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %792, i32 0, i32 2
  store i64 %790, i64* %793, align 8
  %794 = load i64, i64* %7, align 8
  %795 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %796 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %796, i32 0, i32 0
  store i64 %794, i64* %797, align 8
  br label %798

798:                                              ; preds = %761, %760
  br label %799

799:                                              ; preds = %798, %548
  br label %800

800:                                              ; preds = %799, %424
  br label %801

801:                                              ; preds = %800, %303
  %802 = load i64, i64* @ZM_STATUS_SUCCESS, align 8
  store i64 %802, i64* %3, align 8
  br label %803

803:                                              ; preds = %801, %633, %570, %388, %217, %129, %122, %36
  %804 = load i64, i64* %3, align 8
  ret i64 %804
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zfApFindSta(i32*, i64) #2

declare dso_local i32 @zfMemoryCopy(i64*, i32*, i32) #2

declare dso_local i32 @zfApClearStaKey(i32*, i32*) #2

declare dso_local i32 @zfHpSetApPairwiseKey(i32*, i32*, i64, i32*, i32*, i32) #2

declare dso_local i32 @zfMicSetKey(i32*, i32*) #2

declare dso_local i32 @zm_debug_msg0(i8*) #2

declare dso_local i32 @zfHpSetApGroupKey(i32*, i64, i64, i32*, i32*, i64) #2

declare dso_local i32 @zfTkipInit(i32*, i64*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @zfHpSetPerUserKey(i32*, i64, i64, i64*, i64, i32*, i32*) #2

declare dso_local i32 @zm_debug_msg2(i8*, i32) #2

declare dso_local i32 @zfTimerCancel(i32*, i32) #2

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #2

declare dso_local i32 @zfHpSetDefaultKey(i32*, i64, i64, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
