; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTOnAssocRsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTOnAssocRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i32, i32, %struct.TYPE_8__, i32, i64 (i32)*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i32, i32*, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@HTOnAssocRsp.EWC11NHTCap = internal global [4 x i32] [i32 0, i32 144, i32 76, i32 51], align 16
@HTOnAssocRsp.EWC11NHTInfo = internal global [4 x i32] [i32 0, i32 144, i32 76, i32 52], align 16
@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"<=== HTOnAssocRsp(): HT_DISABLE\0A\00", align 1
@IEEE80211_DL_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"===> HTOnAssocRsp_wq(): HT_ENABLE\0A\00", align 1
@IEEE80211_DL_DATA = common dso_local global i32 0, align 4
@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@HT_IOT_PEER_UNKNOWN = common dso_local global i64 0, align 8
@KEY_TYPE_NA = common dso_local global i64 0, align 8
@HT_AGG_SIZE_64K = common dso_local global i64 0, align 8
@HT_AGG_SIZE_32K = common dso_local global i64 0, align 8
@HT_IOT_ACT_TX_USE_AMSDU_8K = common dso_local global i32 0, align 4
@HT_AGG_FORCE_ENABLE = common dso_local global i32 0, align 4
@MIMO_PS_STATIC = common dso_local global i64 0, align 8
@MCS_FILTER_1SS = common dso_local global i32* null, align 8
@MCS_FILTER_ALL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTOnAssocRsp(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 7
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %17 = call i32 @IEEE80211_DEBUG(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %367

18:                                               ; preds = %1
  %19 = load i32, i32* @IEEE80211_DL_HT, align 4
  %20 = call i32 @IEEE80211_DEBUG(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 28
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcmp(i32* %23, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @HTOnAssocRsp.EWC11NHTCap, i64 0, i64 0), i32 16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 28
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = bitcast i32* %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %4, align 8
  br label %37

32:                                               ; preds = %18
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 28
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %4, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 27
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcmp(i32* %40, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @HTOnAssocRsp.EWC11NHTInfo, i64 0, i64 0), i32 16)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 27
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = bitcast i32* %47 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %5, align 8
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 27
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %5, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @IEEE80211_DL_DATA, align 4
  %56 = load i32, i32* @IEEE80211_DL_HT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = call i32 @IEEE80211_DEBUG_DATA(i32 %57, %struct.TYPE_11__* %58, i32 4)
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @HTSetConnectBwMode(%struct.ieee80211_device* %60, i32 %64, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 26
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %54
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  br label %90

89:                                               ; preds = %54
  br label %90

90:                                               ; preds = %89, %82
  %91 = phi i32 [ %88, %82 ], [ 0, %89 ]
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 25
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  br label %106

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi i32 [ %104, %98 ], [ 0, %105 ]
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 24
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  br label %122

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %114
  %123 = phi i32 [ %120, %114 ], [ 0, %121 ]
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 22
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 23
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 3839, i32 7935
  store i32 %136, i32* %6, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %122
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  br label %152

146:                                              ; preds = %122
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %146, %142
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %159 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %158, i32 0, i32 6
  %160 = load i64 (i32)*, i64 (i32)** %159, align 8
  %161 = icmp ne i64 (i32)* %160, null
  br i1 %161, label %162, label %187

162:                                              ; preds = %152
  %163 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %164 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %163, i32 0, i32 6
  %165 = load i64 (i32)*, i64 (i32)** %164, align 8
  %166 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %167 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i64 %165(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %162
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @HT_IOT_PEER_UNKNOWN, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177, %171
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 7
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %183, %177
  br label %187

187:                                              ; preds = %186, %162, %152
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 21
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %213, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 10
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %195, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 11
  store i64 %203, i64* %205, align 8
  br label %212

206:                                              ; preds = %192
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 10
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 11
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %206, %200
  br label %255

213:                                              ; preds = %187
  %214 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %215 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %222 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @KEY_TYPE_NA, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 11
  store i64 %229, i64* %231, align 8
  br label %236

232:                                              ; preds = %220
  %233 = load i64, i64* @HT_AGG_SIZE_64K, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 11
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %232, %226
  br label %254

237:                                              ; preds = %213
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @HT_AGG_SIZE_32K, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 11
  store i64 %246, i64* %248, align 8
  br label %253

249:                                              ; preds = %237
  %250 = load i64, i64* @HT_AGG_SIZE_32K, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 11
  store i64 %250, i64* %252, align 8
  br label %253

253:                                              ; preds = %249, %243
  br label %254

254:                                              ; preds = %253, %236
  br label %255

255:                                              ; preds = %254, %212
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %258, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %255
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 12
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 13
  store i32 %266, i32* %268, align 4
  br label %275

269:                                              ; preds = %255
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 13
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %269, %263
  %276 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %277 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @KEY_TYPE_NA, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 13
  store i32 7, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %275
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 14
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @HT_IOT_ACT_TX_USE_AMSDU_8K, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %284
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 7
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* @HT_AGG_FORCE_ENABLE, align 4
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 20
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 15
  store i32 7935, i32* %298, align 4
  br label %299

299:                                              ; preds = %291, %284
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 18
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 19
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 6
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %299
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 6
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 255, i32* %315, align 4
  br label %316

316:                                              ; preds = %311, %299
  %317 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 6
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = call i32 @HTIOTActDetermineRaFunc(%struct.ieee80211_device* %317, i32 %324)
  %326 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %331 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @HTFilterMCSRate(%struct.ieee80211_device* %326, i32* %329, i32 %332)
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 7
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 16
  store i64 %336, i64* %338, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 16
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @MIMO_PS_STATIC, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %316
  %345 = load i32*, i32** @MCS_FILTER_1SS, align 8
  store i32* %345, i32** %7, align 8
  br label %348

346:                                              ; preds = %316
  %347 = load i32*, i32** @MCS_FILTER_ALL, align 8
  store i32* %347, i32** %7, align 8
  br label %348

348:                                              ; preds = %346, %344
  %349 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %350 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %351 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load i32*, i32** %7, align 8
  %354 = call i32 @HTGetHighestMCSRate(%struct.ieee80211_device* %349, i32 %352, i32* %353)
  %355 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %356 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %355, i32 0, i32 1
  store i32 %354, i32* %356, align 8
  %357 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %358 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %361 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 4
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 17
  store i32 %364, i32* %366, align 8
  br label %367

367:                                              ; preds = %348, %15
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_DATA(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @HTSetConnectBwMode(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @HTIOTActDetermineRaFunc(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @HTFilterMCSRate(%struct.ieee80211_device*, i32*, i32) #1

declare dso_local i32 @HTGetHighestMCSRate(%struct.ieee80211_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
