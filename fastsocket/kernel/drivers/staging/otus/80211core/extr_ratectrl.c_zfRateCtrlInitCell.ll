; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlInitCell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlInitCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64*, i64*, i64*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.zsRcCell = type { i32*, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@zcHtRateTable = common dso_local global i8*** null, align 8
@ZM_BANDWIDTH_40MHZ = common dso_local global i64 0, align 8
@zcHtOneTxStreamRateTable = common dso_local global i8*** null, align 8
@ZM_RATE_TABLE_SIZE = common dso_local global i32 0, align 4
@BAFail = common dso_local global i64* null, align 8
@BAPER = common dso_local global i64* null, align 8
@TxMPDU = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfRateCtrlInitCell(i32* %0, %struct.zsRcCell* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zsRcCell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %287

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %31 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %25

39:                                               ; preds = %25
  store i32 4, i32* %11, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 2, %44
  %46 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %47 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %57 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %56, i32 0, i32 1
  store i32 10, i32* %57, align 8
  %58 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %59 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %58, i32 0, i32 2
  store i32 5, i32* %59, align 4
  br label %286

60:                                               ; preds = %21
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %179

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ZM_MODE_AP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 15
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i8***, i8**** @zcHtRateTable, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8**, i8*** %74, i64 %76
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %83 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %70

91:                                               ; preds = %70
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %96 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 13
  store i32 27, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 14, %100
  %102 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %103 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %105 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %104, i32 0, i32 2
  store i32 10, i32* %105, align 4
  br label %178

106:                                              ; preds = %63
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ZM_BANDWIDTH_40MHZ, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %150

113:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 15
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load i8***, i8**** @zcHtRateTable, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8**, i8*** %118, i64 %120
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 3
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %127 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %114

135:                                              ; preds = %114
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %140 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 13
  store i32 27, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 14, %144
  %146 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %147 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %149 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %148, i32 0, i32 2
  store i32 10, i32* %149, align 4
  br label %177

150:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %169, %150
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 13
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %155 = load i8***, i8**** @zcHtRateTable, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8**, i8*** %155, i64 %157
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 2
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %164 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %174 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %173, i32 0, i32 1
  store i32 13, i32* %174, align 8
  %175 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %176 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %175, i32 0, i32 2
  store i32 9, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %143
  br label %178

178:                                              ; preds = %177, %99
  br label %285

179:                                              ; preds = %60
  %180 = load i32, i32* %8, align 4
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %182, label %260

182:                                              ; preds = %179
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ZM_BANDWIDTH_40MHZ, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %227

189:                                              ; preds = %182
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 13, i32* %12, align 4
  br label %194

193:                                              ; preds = %189
  store i32 12, i32* %12, align 4
  br label %194

194:                                              ; preds = %193, %192
  store i32 0, i32* %11, align 4
  br label %195

195:                                              ; preds = %214, %194
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %195
  %200 = load i8***, i8**** @zcHtOneTxStreamRateTable, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8**, i8*** %200, i64 %202
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 3
  %206 = load i8*, i8** %205, align 8
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %209 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  br label %214

214:                                              ; preds = %199
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %195

217:                                              ; preds = %195
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %220 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  %223 = mul nsw i32 %222, 3
  %224 = sdiv i32 %223, 4
  %225 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %226 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  br label %259

227:                                              ; preds = %182
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %246, %227
  %229 = load i32, i32* %11, align 4
  %230 = icmp slt i32 %229, 11
  br i1 %230, label %231, label %249

231:                                              ; preds = %228
  %232 = load i8***, i8**** @zcHtOneTxStreamRateTable, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8**, i8*** %232, i64 %234
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 2
  %238 = load i8*, i8** %237, align 8
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %241 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %239, i32* %245, align 4
  br label %246

246:                                              ; preds = %231
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %228

249:                                              ; preds = %228
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %252 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  %255 = mul nsw i32 %254, 3
  %256 = sdiv i32 %255, 4
  %257 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %258 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %249, %217
  br label %284

260:                                              ; preds = %179
  store i32 0, i32* %11, align 4
  br label %261

261:                                              ; preds = %272, %260
  %262 = load i32, i32* %11, align 4
  %263 = icmp slt i32 %262, 4
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %267 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %265, i32* %271, align 4
  br label %272

272:                                              ; preds = %264
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %261

275:                                              ; preds = %261
  %276 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %277 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %276, i32 0, i32 1
  store i32 4, i32* %277, align 8
  %278 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %279 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 1
  %282 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %283 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %275, %259
  br label %285

285:                                              ; preds = %284, %178
  br label %286

286:                                              ; preds = %285, %55
  br label %498

287:                                              ; preds = %18
  %288 = load i32, i32* %8, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %394

290:                                              ; preds = %287
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @ZM_MODE_AP, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %327

296:                                              ; preds = %290
  store i32 0, i32* %11, align 4
  br label %297

297:                                              ; preds = %317, %296
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 12, %299
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %320

302:                                              ; preds = %297
  %303 = load i8***, i8**** @zcHtRateTable, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8**, i8*** %303, i64 %305
  %307 = load i8**, i8*** %306, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 1
  %309 = load i8*, i8** %308, align 8
  %310 = ptrtoint i8* %309 to i32
  %311 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %312 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %310, i32* %316, align 4
  br label %317

317:                                              ; preds = %302
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  br label %297

320:                                              ; preds = %297
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 12, %321
  %323 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %324 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 8
  %325 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %326 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %325, i32 0, i32 2
  store i32 8, i32* %326, align 4
  br label %393

327:                                              ; preds = %290
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @ZM_BANDWIDTH_40MHZ, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %365

334:                                              ; preds = %327
  store i32 0, i32* %11, align 4
  br label %335

335:                                              ; preds = %355, %334
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 12, %337
  %339 = icmp slt i32 %336, %338
  br i1 %339, label %340, label %358

340:                                              ; preds = %335
  %341 = load i8***, i8**** @zcHtRateTable, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8**, i8*** %341, i64 %343
  %345 = load i8**, i8*** %344, align 8
  %346 = getelementptr inbounds i8*, i8** %345, i64 1
  %347 = load i8*, i8** %346, align 8
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %350 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  store i32 %348, i32* %354, align 4
  br label %355

355:                                              ; preds = %340
  %356 = load i32, i32* %11, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %11, align 4
  br label %335

358:                                              ; preds = %335
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 12, %359
  %361 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %362 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 8
  %363 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %364 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %363, i32 0, i32 2
  store i32 8, i32* %364, align 4
  br label %392

365:                                              ; preds = %327
  store i32 0, i32* %11, align 4
  br label %366

366:                                              ; preds = %384, %365
  %367 = load i32, i32* %11, align 4
  %368 = icmp slt i32 %367, 11
  br i1 %368, label %369, label %387

369:                                              ; preds = %366
  %370 = load i8***, i8**** @zcHtRateTable, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8**, i8*** %370, i64 %372
  %374 = load i8**, i8*** %373, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  %376 = load i8*, i8** %375, align 8
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %379 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %11, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  store i32 %377, i32* %383, align 4
  br label %384

384:                                              ; preds = %369
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %11, align 4
  br label %366

387:                                              ; preds = %366
  %388 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %389 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %388, i32 0, i32 1
  store i32 11, i32* %389, align 8
  %390 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %391 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %390, i32 0, i32 2
  store i32 7, i32* %391, align 4
  br label %392

392:                                              ; preds = %387, %358
  br label %393

393:                                              ; preds = %392, %320
  br label %497

394:                                              ; preds = %287
  %395 = load i32, i32* %8, align 4
  %396 = icmp eq i32 %395, 3
  br i1 %396, label %397, label %475

397:                                              ; preds = %394
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 7
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @ZM_BANDWIDTH_40MHZ, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %442

404:                                              ; preds = %397
  %405 = load i32, i32* %10, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 11, i32* %12, align 4
  br label %409

408:                                              ; preds = %404
  store i32 10, i32* %12, align 4
  br label %409

409:                                              ; preds = %408, %407
  store i32 0, i32* %11, align 4
  br label %410

410:                                              ; preds = %429, %409
  %411 = load i32, i32* %11, align 4
  %412 = load i32, i32* %12, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %432

414:                                              ; preds = %410
  %415 = load i8***, i8**** @zcHtOneTxStreamRateTable, align 8
  %416 = load i32, i32* %11, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8**, i8*** %415, i64 %417
  %419 = load i8**, i8*** %418, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 1
  %421 = load i8*, i8** %420, align 8
  %422 = ptrtoint i8* %421 to i32
  %423 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %424 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %11, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %422, i32* %428, align 4
  br label %429

429:                                              ; preds = %414
  %430 = load i32, i32* %11, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %11, align 4
  br label %410

432:                                              ; preds = %410
  %433 = load i32, i32* %11, align 4
  %434 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %435 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %434, i32 0, i32 1
  store i32 %433, i32* %435, align 8
  %436 = load i32, i32* %11, align 4
  %437 = add nsw i32 %436, 1
  %438 = mul nsw i32 %437, 3
  %439 = sdiv i32 %438, 4
  %440 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %441 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  br label %474

442:                                              ; preds = %397
  store i32 0, i32* %11, align 4
  br label %443

443:                                              ; preds = %461, %442
  %444 = load i32, i32* %11, align 4
  %445 = icmp slt i32 %444, 9
  br i1 %445, label %446, label %464

446:                                              ; preds = %443
  %447 = load i8***, i8**** @zcHtOneTxStreamRateTable, align 8
  %448 = load i32, i32* %11, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8**, i8*** %447, i64 %449
  %451 = load i8**, i8*** %450, align 8
  %452 = getelementptr inbounds i8*, i8** %451, i64 0
  %453 = load i8*, i8** %452, align 8
  %454 = ptrtoint i8* %453 to i32
  %455 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %456 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %455, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %11, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  store i32 %454, i32* %460, align 4
  br label %461

461:                                              ; preds = %446
  %462 = load i32, i32* %11, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %11, align 4
  br label %443

464:                                              ; preds = %443
  %465 = load i32, i32* %11, align 4
  %466 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %467 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 8
  %468 = load i32, i32* %11, align 4
  %469 = add nsw i32 %468, 1
  %470 = mul nsw i32 %469, 3
  %471 = sdiv i32 %470, 4
  %472 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %473 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %472, i32 0, i32 2
  store i32 %471, i32* %473, align 4
  br label %474

474:                                              ; preds = %464, %432
  br label %496

475:                                              ; preds = %394
  store i32 0, i32* %11, align 4
  br label %476

476:                                              ; preds = %488, %475
  %477 = load i32, i32* %11, align 4
  %478 = icmp slt i32 %477, 8
  br i1 %478, label %479, label %491

479:                                              ; preds = %476
  %480 = load i32, i32* %11, align 4
  %481 = add nsw i32 %480, 4
  %482 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %483 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %482, i32 0, i32 0
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %11, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %481, i32* %487, align 4
  br label %488

488:                                              ; preds = %479
  %489 = load i32, i32* %11, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %11, align 4
  br label %476

491:                                              ; preds = %476
  %492 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %493 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %492, i32 0, i32 1
  store i32 8, i32* %493, align 8
  %494 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %495 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %494, i32 0, i32 2
  store i32 4, i32* %495, align 4
  br label %496

496:                                              ; preds = %491, %474
  br label %497

497:                                              ; preds = %496, %393
  br label %498

498:                                              ; preds = %497, %286
  %499 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %500 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %499, i32 0, i32 9
  store i64 0, i64* %500, align 8
  %501 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %502 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %501, i32 0, i32 8
  store i64 0, i64* %502, align 8
  %503 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %504 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %503, i32 0, i32 7
  store i64 0, i64* %504, align 8
  %505 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %506 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %505, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %509 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %507, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %515 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %514, i32 0, i32 3
  store i32 %513, i32* %515, align 8
  %516 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %517 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %516, i32 0, i32 6
  store i64 0, i64* %517, align 8
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 6
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %522 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %521, i32 0, i32 5
  store i32 %520, i32* %522, align 8
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 6
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.zsRcCell*, %struct.zsRcCell** %7, align 8
  %527 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %526, i32 0, i32 4
  store i32 %525, i32* %527, align 4
  store i32 0, i32* %11, align 4
  br label %528

528:                                              ; preds = %551, %498
  %529 = load i32, i32* %11, align 4
  %530 = load i32, i32* @ZM_RATE_TABLE_SIZE, align 4
  %531 = icmp slt i32 %529, %530
  br i1 %531, label %532, label %554

532:                                              ; preds = %528
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 5
  %535 = load i64*, i64** %534, align 8
  %536 = load i32, i32* %11, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i64, i64* %535, i64 %537
  store i64 0, i64* %538, align 8
  %539 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %539, i32 0, i32 3
  %541 = load i64*, i64** %540, align 8
  %542 = load i32, i32* %11, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  store i64 0, i64* %544, align 8
  %545 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %546 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i32 0, i32 4
  %547 = load i64*, i64** %546, align 8
  %548 = load i32, i32* %11, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i64, i64* %547, i64 %549
  store i64 0, i64* %550, align 8
  br label %551

551:                                              ; preds = %532
  %552 = load i32, i32* %11, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %11, align 4
  br label %528

554:                                              ; preds = %528
  %555 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 2
  store i64 0, i64* %556, align 8
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 1
  store i64 0, i64* %558, align 8
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
