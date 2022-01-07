; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTOnAssocRsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTOnAssocRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.ieee80211_device = type { i64, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i32, i32*, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i64 }

@HTOnAssocRsp.EWC11NHTCap = internal global [4 x i32] [i32 0, i32 144, i32 76, i32 51], align 16
@HTOnAssocRsp.EWC11NHTInfo = internal global [4 x i32] [i32 0, i32 144, i32 76, i32 52], align 16
@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"<=== HTOnAssocRsp(): HT_DISABLE\0A\00", align 1
@IEEE80211_DL_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"===> HTOnAssocRsp_wq(): HT_ENABLE\0A\00", align 1
@IEEE80211_DL_DATA = common dso_local global i32 0, align 4
@KEY_TYPE_NA = common dso_local global i64 0, align 8
@HT_AGG_SIZE_64K = common dso_local global i64 0, align 8
@HT_AGG_SIZE_32K = common dso_local global i64 0, align 8
@MIMO_PS_STATIC = common dso_local global i64 0, align 8
@MCS_FILTER_1SS = common dso_local global i32* null, align 8
@MCS_FILTER_ALL = common dso_local global i32* null, align 8
@EID_Vendor = common dso_local global i32 0, align 4
@HT_AGG_FORCE_ENABLE = common dso_local global i32 0, align 4
@HT_IOT_ACT_TX_USE_AMSDU_8K = common dso_local global i32 0, align 4
@OUI_SUBTYPE_DONT_CARE = common dso_local global i32 0, align 4
@OUI_SUB_REALTEK_AGG = common dso_local global i32 0, align 4
@asocpdu = common dso_local global i32 0, align 4
@osTmp = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTOnAssocRsp(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 5
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %17 = call i32 @IEEE80211_DEBUG(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %313

18:                                               ; preds = %1
  %19 = load i32, i32* @IEEE80211_DL_HT, align 4
  %20 = call i32 @IEEE80211_DEBUG(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 27
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcmp(i32* %23, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @HTOnAssocRsp.EWC11NHTCap, i64 0, i64 0), i32 16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = bitcast i32* %30 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %4, align 8
  br label %37

32:                                               ; preds = %18
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 27
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %4, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 26
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcmp(i32* %40, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @HTOnAssocRsp.EWC11NHTInfo, i64 0, i64 0), i32 16)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 26
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = bitcast i32* %47 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %5, align 8
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 26
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %5, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @IEEE80211_DL_DATA, align 4
  %56 = load i32, i32* @IEEE80211_DL_HT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = call i32 @IEEE80211_DEBUG_DATA(i32 %57, %struct.TYPE_13__* %58, i32 4)
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @HTSetConnectBwMode(%struct.ieee80211_device* %60, i32 %64, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 25
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %54
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  br label %90

89:                                               ; preds = %54
  br label %90

90:                                               ; preds = %89, %82
  %91 = phi i32 [ %88, %82 ], [ 0, %89 ]
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 24
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  br label %106

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi i32 [ %104, %98 ], [ 0, %105 ]
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 23
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  br label %122

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %114
  %123 = phi i32 [ %120, %114 ], [ 0, %121 ]
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 21
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 22
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 3839, i32 7935
  store i32 %136, i32* %6, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %122
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  br label %152

146:                                              ; preds = %122
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %146, %142
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 20
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %152
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 10
  store i64 %173, i64* %175, align 8
  br label %182

176:                                              ; preds = %162
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 9
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 10
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %176, %170
  br label %225

183:                                              ; preds = %152
  %184 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %185 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %183
  %191 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %192 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @KEY_TYPE_NA, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 10
  store i64 %199, i64* %201, align 8
  br label %206

202:                                              ; preds = %190
  %203 = load i64, i64* @HT_AGG_SIZE_64K, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 10
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %196
  br label %224

207:                                              ; preds = %183
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @HT_AGG_SIZE_32K, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 10
  store i64 %216, i64* %218, align 8
  br label %223

219:                                              ; preds = %207
  %220 = load i64, i64* @HT_AGG_SIZE_32K, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 10
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %219, %213
  br label %224

224:                                              ; preds = %223, %206
  br label %225

225:                                              ; preds = %224, %182
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = icmp sgt i32 %228, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 11
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 12
  store i32 %236, i32* %238, align 4
  br label %245

239:                                              ; preds = %225
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 12
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %239, %233
  %246 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %247 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @KEY_TYPE_NA, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 12
  store i32 7, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %245
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 16
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 17
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %254
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 255, i32* %270, align 4
  br label %271

271:                                              ; preds = %266, %254
  %272 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 6
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %277 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @HTFilterMCSRate(%struct.ieee80211_device* %272, i32* %275, i32 %278)
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 14
  store i64 %282, i64* %284, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 14
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @MIMO_PS_STATIC, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %271
  %291 = load i32*, i32** @MCS_FILTER_1SS, align 8
  store i32* %291, i32** %7, align 8
  br label %294

292:                                              ; preds = %271
  %293 = load i32*, i32** @MCS_FILTER_ALL, align 8
  store i32* %293, i32** %7, align 8
  br label %294

294:                                              ; preds = %292, %290
  %295 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %296 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %297 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = call i32 @HTGetHighestMCSRate(%struct.ieee80211_device* %295, i32 %298, i32* %299)
  %301 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %302 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %304 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %307 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 4
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 15
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %294, %15
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_DATA(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @HTSetConnectBwMode(%struct.ieee80211_device*, i32, i32) #1

declare dso_local i32 @HTFilterMCSRate(%struct.ieee80211_device*, i32*, i32) #1

declare dso_local i32 @HTGetHighestMCSRate(%struct.ieee80211_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
