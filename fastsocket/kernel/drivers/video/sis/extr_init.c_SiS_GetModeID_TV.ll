; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_GetModeID_TV.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_GetModeID_TV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VB2_CHRONTEL = common dso_local global i32 0, align 4
@SIS_315_VGA = common dso_local global i32 0, align 4
@ModeIndex_512x384 = common dso_local global i16* null, align 8
@ModeIndex_640x480 = common dso_local global i16* null, align 8
@ModeIndex_640x400 = common dso_local global i16* null, align 8
@ModeIndex_800x600 = common dso_local global i16* null, align 8
@ModeIndex_1024x768 = common dso_local global i16* null, align 8
@VB2_SISTVBRIDGE = common dso_local global i32 0, align 4
@ModeIndex_320x200 = common dso_local global i16* null, align 8
@ModeIndex_320x240 = common dso_local global i16* null, align 8
@ModeIndex_400x300 = common dso_local global i16* null, align 8
@TV_YPBPR = common dso_local global i32 0, align 4
@TV_YPBPR750P = common dso_local global i32 0, align 4
@TV_YPBPR1080I = common dso_local global i32 0, align 4
@TV_HIVISION = common dso_local global i32 0, align 4
@TV_PALM = common dso_local global i32 0, align 4
@TV_PAL = common dso_local global i32 0, align 4
@ModeIndex_720x480 = common dso_local global i16* null, align 8
@ModeIndex_720x576 = common dso_local global i16* null, align 8
@ModeIndex_768x576 = common dso_local global i16* null, align 8
@ModeIndex_800x480 = common dso_local global i16* null, align 8
@ModeIndex_960x600 = common dso_local global i16* null, align 8
@VB2_30xBLV = common dso_local global i32 0, align 4
@ModeIndex_1024x576 = common dso_local global i16* null, align 8
@ModeIndex_1280x720 = common dso_local global i16* null, align 8
@ModeIndex_1280x1024 = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetModeID_TV(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i16 0, i16* %13, align 2
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @VB2_CHRONTEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %80 [
    i32 512, label %20
    i32 640, label %35
    i32 800, label %55
    i32 1024, label %65
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIS_315_VGA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 384
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i16*, i16** @ModeIndex_512x384, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %13, align 2
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33, %20
  br label %80

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 480
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i16*, i16** @ModeIndex_640x480, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %13, align 2
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 400
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i16*, i16** @ModeIndex_640x400, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  %52 = load i16, i16* %51, align 2
  store i16 %52, i16* %13, align 2
  br label %53

53:                                               ; preds = %47, %44
  br label %54

54:                                               ; preds = %53, %38
  br label %80

55:                                               ; preds = %18
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 600
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i16*, i16** @ModeIndex_800x600, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  store i16 %63, i16* %13, align 2
  br label %64

64:                                               ; preds = %58, %55
  br label %80

65:                                               ; preds = %18
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SIS_315_VGA, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 768
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i16*, i16** @ModeIndex_1024x768, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  store i16 %77, i16* %13, align 2
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %18, %79, %64, %54, %34
  br label %463

81:                                               ; preds = %6
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @VB2_SISTVBRIDGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %462

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  switch i32 %87, label %461 [
    i32 320, label %88
    i32 400, label %108
    i32 512, label %118
    i32 640, label %158
    i32 720, label %178
    i32 768, label %237
    i32 800, label %286
    i32 960, label %317
    i32 1024, label %348
    i32 1280, label %407
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 200
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i16*, i16** @ModeIndex_320x200, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  %96 = load i16, i16* %95, align 2
  store i16 %96, i16* %13, align 2
  br label %107

97:                                               ; preds = %88
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 240
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i16*, i16** @ModeIndex_320x240, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  store i16 %105, i16* %13, align 2
  br label %106

106:                                              ; preds = %100, %97
  br label %107

107:                                              ; preds = %106, %91
  br label %461

108:                                              ; preds = %86
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 300
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i16*, i16** @ModeIndex_400x300, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  %116 = load i16, i16* %115, align 2
  store i16 %116, i16* %13, align 2
  br label %117

117:                                              ; preds = %111, %108
  br label %461

118:                                              ; preds = %86
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @TV_YPBPR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @TV_YPBPR750P, align 4
  %126 = load i32, i32* @TV_YPBPR1080I, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %123, %118
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @TV_HIVISION, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @TV_YPBPR, align 4
  %138 = load i32, i32* @TV_PALM, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @TV_PAL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142, %130, %123
  %148 = load i32, i32* %10, align 4
  %149 = icmp eq i32 %148, 384
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i16*, i16** @ModeIndex_512x384, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, i16* %151, i64 %153
  %155 = load i16, i16* %154, align 2
  store i16 %155, i16* %13, align 2
  br label %156

156:                                              ; preds = %150, %147
  br label %157

157:                                              ; preds = %156, %142, %135
  br label %461

158:                                              ; preds = %86
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 480
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i16*, i16** @ModeIndex_640x480, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %162, i64 %164
  %166 = load i16, i16* %165, align 2
  store i16 %166, i16* %13, align 2
  br label %177

167:                                              ; preds = %158
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 400
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i16*, i16** @ModeIndex_640x400, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %171, i64 %173
  %175 = load i16, i16* %174, align 2
  store i16 %175, i16* %13, align 2
  br label %176

176:                                              ; preds = %170, %167
  br label %177

177:                                              ; preds = %176, %161
  br label %461

178:                                              ; preds = %86
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @TV_HIVISION, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %236, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @TV_YPBPR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @TV_YPBPR1080I, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %236, label %193

193:                                              ; preds = %188, %183
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 480
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i16*, i16** @ModeIndex_720x480, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16, i16* %197, i64 %199
  %201 = load i16, i16* %200, align 2
  store i16 %201, i16* %13, align 2
  br label %235

202:                                              ; preds = %193
  %203 = load i32, i32* %10, align 4
  %204 = icmp eq i32 %203, 576
  br i1 %204, label %205, label %234

205:                                              ; preds = %202
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @TV_YPBPR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @TV_YPBPR750P, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %210, %205
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @TV_YPBPR, align 4
  %218 = load i32, i32* @TV_PALM, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @TV_PAL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222, %210
  %228 = load i16*, i16** @ModeIndex_720x576, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %228, i64 %230
  %232 = load i16, i16* %231, align 2
  store i16 %232, i16* %13, align 2
  br label %233

233:                                              ; preds = %227, %222, %215
  br label %234

234:                                              ; preds = %233, %202
  br label %235

235:                                              ; preds = %234, %196
  br label %236

236:                                              ; preds = %235, %188, %178
  br label %461

237:                                              ; preds = %86
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @TV_HIVISION, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %285, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @TV_YPBPR, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @TV_YPBPR1080I, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %285, label %252

252:                                              ; preds = %247, %242
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @TV_YPBPR, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @TV_YPBPR750P, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %257, %252
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @TV_YPBPR, align 4
  %265 = load i32, i32* @TV_PALM, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %284, label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @TV_PAL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %269, %257
  %275 = load i32, i32* %10, align 4
  %276 = icmp eq i32 %275, 576
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load i16*, i16** @ModeIndex_768x576, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i16, i16* %278, i64 %280
  %282 = load i16, i16* %281, align 2
  store i16 %282, i16* %13, align 2
  br label %283

283:                                              ; preds = %277, %274
  br label %284

284:                                              ; preds = %283, %269, %262
  br label %285

285:                                              ; preds = %284, %247, %237
  br label %461

286:                                              ; preds = %86
  %287 = load i32, i32* %10, align 4
  %288 = icmp eq i32 %287, 600
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = load i16*, i16** @ModeIndex_800x600, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i16, i16* %290, i64 %292
  %294 = load i16, i16* %293, align 2
  store i16 %294, i16* %13, align 2
  br label %316

295:                                              ; preds = %286
  %296 = load i32, i32* %10, align 4
  %297 = icmp eq i32 %296, 480
  br i1 %297, label %298, label %315

298:                                              ; preds = %295
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @TV_YPBPR, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @TV_YPBPR750P, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %303, %298
  %309 = load i16*, i16** @ModeIndex_800x480, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i16, i16* %309, i64 %311
  %313 = load i16, i16* %312, align 2
  store i16 %313, i16* %13, align 2
  br label %314

314:                                              ; preds = %308, %303
  br label %315

315:                                              ; preds = %314, %295
  br label %316

316:                                              ; preds = %315, %289
  br label %461

317:                                              ; preds = %86
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* @SIS_315_VGA, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %347

321:                                              ; preds = %317
  %322 = load i32, i32* %10, align 4
  %323 = icmp eq i32 %322, 600
  br i1 %323, label %324, label %346

324:                                              ; preds = %321
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @TV_HIVISION, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %339, label %329

329:                                              ; preds = %324
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* @TV_YPBPR, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %329
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* @TV_YPBPR1080I, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %334, %324
  %340 = load i16*, i16** @ModeIndex_960x600, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i16, i16* %340, i64 %342
  %344 = load i16, i16* %343, align 2
  store i16 %344, i16* %13, align 2
  br label %345

345:                                              ; preds = %339, %334, %329
  br label %346

346:                                              ; preds = %345, %321
  br label %347

347:                                              ; preds = %346, %317
  br label %461

348:                                              ; preds = %86
  %349 = load i32, i32* %10, align 4
  %350 = icmp eq i32 %349, 768
  br i1 %350, label %351, label %363

351:                                              ; preds = %348
  %352 = load i32, i32* %12, align 4
  %353 = load i32, i32* @VB2_30xBLV, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %351
  %357 = load i16*, i16** @ModeIndex_1024x768, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i16, i16* %357, i64 %359
  %361 = load i16, i16* %360, align 2
  store i16 %361, i16* %13, align 2
  br label %362

362:                                              ; preds = %356, %351
  br label %406

363:                                              ; preds = %348
  %364 = load i32, i32* %10, align 4
  %365 = icmp eq i32 %364, 576
  br i1 %365, label %366, label %405

366:                                              ; preds = %363
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* @TV_HIVISION, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %398, label %371

371:                                              ; preds = %366
  %372 = load i32, i32* %8, align 4
  %373 = load i32, i32* @TV_YPBPR, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %371
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @TV_YPBPR1080I, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %398, label %381

381:                                              ; preds = %376, %371
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* @VB2_30xBLV, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %404

386:                                              ; preds = %381
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @TV_YPBPR, align 4
  %389 = load i32, i32* @TV_PALM, align 4
  %390 = or i32 %388, %389
  %391 = and i32 %387, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %404, label %393

393:                                              ; preds = %386
  %394 = load i32, i32* %8, align 4
  %395 = load i32, i32* @TV_PAL, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %393, %376, %366
  %399 = load i16*, i16** @ModeIndex_1024x576, align 8
  %400 = load i32, i32* %11, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i16, i16* %399, i64 %401
  %403 = load i16, i16* %402, align 2
  store i16 %403, i16* %13, align 2
  br label %404

404:                                              ; preds = %398, %393, %386, %381
  br label %405

405:                                              ; preds = %404, %363
  br label %406

406:                                              ; preds = %405, %362
  br label %461

407:                                              ; preds = %86
  %408 = load i32, i32* %10, align 4
  %409 = icmp eq i32 %408, 720
  br i1 %409, label %410, label %434

410:                                              ; preds = %407
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* @TV_HIVISION, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %427, label %415

415:                                              ; preds = %410
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* @TV_YPBPR, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %433

420:                                              ; preds = %415
  %421 = load i32, i32* %8, align 4
  %422 = load i32, i32* @TV_YPBPR1080I, align 4
  %423 = load i32, i32* @TV_YPBPR750P, align 4
  %424 = or i32 %422, %423
  %425 = and i32 %421, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %420, %410
  %428 = load i16*, i16** @ModeIndex_1280x720, align 8
  %429 = load i32, i32* %11, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i16, i16* %428, i64 %430
  %432 = load i16, i16* %431, align 2
  store i16 %432, i16* %13, align 2
  br label %433

433:                                              ; preds = %427, %420, %415
  br label %460

434:                                              ; preds = %407
  %435 = load i32, i32* %10, align 4
  %436 = icmp eq i32 %435, 1024
  br i1 %436, label %437, label %459

437:                                              ; preds = %434
  %438 = load i32, i32* %8, align 4
  %439 = load i32, i32* @TV_HIVISION, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %452, label %442

442:                                              ; preds = %437
  %443 = load i32, i32* %8, align 4
  %444 = load i32, i32* @TV_YPBPR, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %458

447:                                              ; preds = %442
  %448 = load i32, i32* %8, align 4
  %449 = load i32, i32* @TV_YPBPR1080I, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %447, %437
  %453 = load i16*, i16** @ModeIndex_1280x1024, align 8
  %454 = load i32, i32* %11, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i16, i16* %453, i64 %455
  %457 = load i16, i16* %456, align 2
  store i16 %457, i16* %13, align 2
  br label %458

458:                                              ; preds = %452, %447, %442
  br label %459

459:                                              ; preds = %458, %434
  br label %460

460:                                              ; preds = %459, %433
  br label %461

461:                                              ; preds = %86, %460, %406, %347, %316, %285, %236, %177, %157, %117, %107
  br label %462

462:                                              ; preds = %461, %81
  br label %463

463:                                              ; preds = %462, %80
  %464 = load i16, i16* %13, align 2
  ret i16 %464
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
