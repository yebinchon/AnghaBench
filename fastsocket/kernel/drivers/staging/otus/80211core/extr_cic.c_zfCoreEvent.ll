; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cic.c_zfCoreEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cic.c_zfCoreEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32, %struct.TYPE_6__*, i32** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64*, i64*, %struct.TYPE_8__*, i32*** }
%struct.TYPE_8__ = type { i32 }

@wd = common dso_local global %struct.TYPE_10__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_BCMC_ARRAY_SIZE = common dso_local global i32 0, align 4
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_STA_PS_NONE = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_BIT_15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfCoreEvent(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @zmw_get_wlan_dev(i32* %18)
  %20 = call i32 (...) @zmw_declare_for_critical_section()
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %179

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZM_MODE_AP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %124

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @zfApSendBeacon(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %119, %36
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @zmw_enter_critical_section(i32* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %55, label %107

55:                                               ; preds = %37
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32***, i32**** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32**, i32*** %59, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %62, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = load i32, i32* @ZM_BCMC_ARRAY_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %55
  store i64 32, i64* %9, align 8
  br label %106

106:                                              ; preds = %105, %55
  br label %107

107:                                              ; preds = %106, %37
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @zmw_leave_critical_section(i32* %108)
  %110 = load i32*, i32** %8, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @zfTxSendEth(i32* %113, i32* %114, i32 0, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %112, %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %37, label %122

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %29
  br label %178

124:                                              ; preds = %23
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ZM_STA_PS_NONE, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  store i64 0, i64* %7, align 8
  br label %132

132:                                              ; preds = %150, %131
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %133, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %132
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = load i32**, i32*** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i32*, i32** %144, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %149 = call i32 @zfTxSendEth(i32* %140, i32* %147, i32 0, i32 %148, i64 0)
  br label %150

150:                                              ; preds = %139
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %7, align 8
  br label %132

153:                                              ; preds = %132
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %124
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ZM_MODE_IBSS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @zfStaSendBeacon(i32* %164)
  %166 = load i32, i32* @ZM_BIT_15, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %166, %170
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 8
  br label %175

175:                                              ; preds = %163, %157
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @zfPowerSavingMgrPreTBTTInterrupt(i32* %176)
  br label %178

178:                                              ; preds = %175, %123
  br label %462

179:                                              ; preds = %3
  %180 = load i64, i64* %5, align 8
  %181 = icmp eq i64 %180, 1
  br i1 %181, label %182, label %258

182:                                              ; preds = %179
  %183 = load i64*, i64** %6, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 6
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i64*, i64** %6, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 7
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = shl i32 %190, 8
  %192 = add nsw i32 %186, %191
  %193 = load i64*, i64** %6, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 8
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = shl i32 %196, 16
  %198 = add nsw i32 %192, %197
  %199 = load i64*, i64** %6, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 9
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = shl i32 %202, 24
  %204 = add nsw i32 %198, %203
  store i32 %204, i32* %13, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @ZM_MODE_AP, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %182
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @zmw_enter_critical_section(i32* %211)
  %213 = load i32*, i32** %4, align 8
  %214 = load i64*, i64** %6, align 8
  %215 = call i64 @zfApFindSta(i32* %213, i64* %214)
  store i64 %215, i64* %7, align 8
  %216 = icmp ne i64 %215, 65535
  br i1 %216, label %217, label %230

217:                                              ; preds = %210
  %218 = load i32*, i32** %4, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %13, align 4
  %227 = call i64 @zfPhyCtrlToRate(i32 %226)
  %228 = trunc i64 %227 to i32
  %229 = call i32 @zfRateCtrlTxFailEvent(i32* %218, i32* %225, i64 0, i32 %228)
  br label %230

230:                                              ; preds = %217, %210
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @zmw_leave_critical_section(i32* %231)
  br label %257

233:                                              ; preds = %182
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @zmw_enter_critical_section(i32* %234)
  %236 = load i32*, i32** %4, align 8
  %237 = load i64*, i64** %6, align 8
  %238 = call i32 @zfStaFindOppositeByMACAddr(i32* %236, i64* %237, i64* %11)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %233
  %242 = load i32*, i32** %4, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i64, i64* %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %13, align 4
  %251 = call i64 @zfPhyCtrlToRate(i32 %250)
  %252 = trunc i64 %251 to i32
  %253 = call i32 @zfRateCtrlTxFailEvent(i32* %242, i32* %249, i64 0, i32 %252)
  br label %254

254:                                              ; preds = %241, %233
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @zmw_leave_critical_section(i32* %255)
  br label %257

257:                                              ; preds = %254, %230
  br label %461

258:                                              ; preds = %179
  %259 = load i64, i64* %5, align 8
  %260 = icmp eq i64 %259, 2
  br i1 %260, label %261, label %340

261:                                              ; preds = %258
  %262 = load i64*, i64** %6, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 6
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = load i64*, i64** %6, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 7
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = shl i32 %269, 8
  %271 = add nsw i32 %265, %270
  %272 = load i64*, i64** %6, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 8
  %274 = load i64, i64* %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = shl i32 %275, 16
  %277 = add nsw i32 %271, %276
  %278 = load i64*, i64** %6, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 9
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = shl i32 %281, 24
  %283 = add nsw i32 %277, %282
  store i32 %283, i32* %14, align 4
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @ZM_MODE_AP, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %315

289:                                              ; preds = %261
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @zmw_enter_critical_section(i32* %290)
  %292 = load i32*, i32** %4, align 8
  %293 = load i64*, i64** %6, align 8
  %294 = call i64 @zfApFindSta(i32* %292, i64* %293)
  store i64 %294, i64* %7, align 8
  %295 = icmp ne i64 %294, 65535
  br i1 %295, label %296, label %309

296:                                              ; preds = %289
  %297 = load i32*, i32** %4, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = load i64, i64* %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %14, align 4
  %306 = call i64 @zfPhyCtrlToRate(i32 %305)
  %307 = trunc i64 %306 to i32
  %308 = call i32 @zfRateCtrlTxFailEvent(i32* %297, i32* %304, i64 0, i32 %307)
  br label %309

309:                                              ; preds = %296, %289
  %310 = load i32*, i32** %4, align 8
  %311 = call i32 @zmw_leave_critical_section(i32* %310)
  %312 = load i32*, i32** %4, align 8
  %313 = load i64*, i64** %6, align 8
  %314 = call i32 @zfApSendFailure(i32* %312, i64* %313)
  br label %339

315:                                              ; preds = %261
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @zmw_enter_critical_section(i32* %316)
  %318 = load i32*, i32** %4, align 8
  %319 = load i64*, i64** %6, align 8
  %320 = call i32 @zfStaFindOppositeByMACAddr(i32* %318, i64* %319, i64* %11)
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %315
  %324 = load i32*, i32** %4, align 8
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = load i64, i64* %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = load i32, i32* %14, align 4
  %333 = call i64 @zfPhyCtrlToRate(i32 %332)
  %334 = trunc i64 %333 to i32
  %335 = call i32 @zfRateCtrlTxFailEvent(i32* %324, i32* %331, i64 0, i32 %334)
  br label %336

336:                                              ; preds = %323, %315
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @zmw_leave_critical_section(i32* %337)
  br label %339

339:                                              ; preds = %336, %309
  br label %460

340:                                              ; preds = %258
  %341 = load i64, i64* %5, align 8
  %342 = icmp eq i64 %341, 3
  br i1 %342, label %343, label %417

343:                                              ; preds = %340
  %344 = load i64*, i64** %6, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 6
  %346 = load i64, i64* %345, align 8
  %347 = trunc i64 %346 to i32
  %348 = load i64*, i64** %6, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 7
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %351, 8
  %353 = add nsw i32 %347, %352
  %354 = load i64*, i64** %6, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 8
  %356 = load i64, i64* %355, align 8
  %357 = trunc i64 %356 to i32
  %358 = shl i32 %357, 16
  %359 = add nsw i32 %353, %358
  %360 = load i64*, i64** %6, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 9
  %362 = load i64, i64* %361, align 8
  %363 = trunc i64 %362 to i32
  %364 = shl i32 %363, 24
  %365 = add nsw i32 %359, %364
  store i32 %365, i32* %15, align 4
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @ZM_MODE_AP, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %393

371:                                              ; preds = %343
  %372 = load i32*, i32** %4, align 8
  %373 = call i32 @zmw_enter_critical_section(i32* %372)
  %374 = load i32*, i32** %4, align 8
  %375 = load i64*, i64** %6, align 8
  %376 = call i64 @zfApFindSta(i32* %374, i64* %375)
  store i64 %376, i64* %7, align 8
  %377 = icmp ne i64 %376, 65535
  br i1 %377, label %378, label %390

378:                                              ; preds = %371
  %379 = load i32*, i32** %4, align 8
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load i64, i64* %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load i32, i32* %15, align 4
  %388 = call i64 @zfPhyCtrlToRate(i32 %387)
  %389 = call i32 @zfRateCtrlTxSuccessEvent(i32* %379, i32* %386, i64 %388)
  br label %390

390:                                              ; preds = %378, %371
  %391 = load i32*, i32** %4, align 8
  %392 = call i32 @zmw_leave_critical_section(i32* %391)
  br label %416

393:                                              ; preds = %343
  %394 = load i32*, i32** %4, align 8
  %395 = call i32 @zmw_enter_critical_section(i32* %394)
  %396 = load i32*, i32** %4, align 8
  %397 = load i64*, i64** %6, align 8
  %398 = call i32 @zfStaFindOppositeByMACAddr(i32* %396, i64* %397, i64* %11)
  store i32 %398, i32* %12, align 4
  %399 = load i32, i32* %12, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %393
  %402 = load i32*, i32** %4, align 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 4
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %405, align 8
  %407 = load i64, i64* %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = load i32, i32* %15, align 4
  %411 = call i64 @zfPhyCtrlToRate(i32 %410)
  %412 = call i32 @zfRateCtrlTxSuccessEvent(i32* %402, i32* %409, i64 %411)
  br label %413

413:                                              ; preds = %401, %393
  %414 = load i32*, i32** %4, align 8
  %415 = call i32 @zmw_leave_critical_section(i32* %414)
  br label %416

416:                                              ; preds = %413, %390
  br label %459

417:                                              ; preds = %340
  %418 = load i64, i64* %5, align 8
  %419 = icmp eq i64 %418, 4
  br i1 %419, label %420, label %458

420:                                              ; preds = %417
  store i64 0, i64* %11, align 8
  %421 = load i64*, i64** %6, align 8
  %422 = bitcast i64* %421 to i32*
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = load i32, i32* %423, align 4
  %425 = and i32 %424, 65535
  store i32 %425, i32* %16, align 4
  %426 = load i64*, i64** %6, align 8
  %427 = bitcast i64* %426 to i32*
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = ashr i32 %429, 16
  store i32 %430, i32* %17, align 4
  %431 = load i32, i32* %17, align 4
  %432 = icmp sgt i32 %431, 15
  br i1 %432, label %433, label %438

433:                                              ; preds = %420
  %434 = load i32, i32* %17, align 4
  %435 = and i32 %434, 15
  %436 = add nsw i32 %435, 12
  %437 = add nsw i32 %436, 2
  store i32 %437, i32* %17, align 4
  br label %441

438:                                              ; preds = %420
  %439 = load i32, i32* %17, align 4
  %440 = add nsw i32 %439, 12
  store i32 %440, i32* %17, align 4
  br label %441

441:                                              ; preds = %438, %433
  %442 = load i32*, i32** %4, align 8
  %443 = call i32 @zmw_enter_critical_section(i32* %442)
  %444 = load i32*, i32** %4, align 8
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 4
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %447, align 8
  %449 = load i64, i64* %11, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 0
  %452 = load i32, i32* %17, align 4
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %16, align 4
  %455 = call i32 @zfRateCtrlTxFailEvent(i32* %444, i32* %451, i64 %453, i32 %454)
  %456 = load i32*, i32** %4, align 8
  %457 = call i32 @zmw_leave_critical_section(i32* %456)
  br label %458

458:                                              ; preds = %441, %417
  br label %459

459:                                              ; preds = %458, %416
  br label %460

460:                                              ; preds = %459, %339
  br label %461

461:                                              ; preds = %460, %257
  br label %462

462:                                              ; preds = %461, %178
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfApSendBeacon(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i64) #1

declare dso_local i32 @zfStaSendBeacon(i32*) #1

declare dso_local i32 @zfPowerSavingMgrPreTBTTInterrupt(i32*) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

declare dso_local i32 @zfRateCtrlTxFailEvent(i32*, i32*, i64, i32) #1

declare dso_local i64 @zfPhyCtrlToRate(i32) #1

declare dso_local i32 @zfStaFindOppositeByMACAddr(i32*, i64*, i64*) #1

declare dso_local i32 @zfApSendFailure(i32*, i64*) #1

declare dso_local i32 @zfRateCtrlTxSuccessEvent(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
