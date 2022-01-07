; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_print_multilib_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_print_multilib_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@multilib_select = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"multilib select '%s' is invalid\00", align 1
@multilib_exclusions = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"multilib exclusion '%s' is invalid\00", align 1
@multilib_extra = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_multilib_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_multilib_info() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = load i8*, i8** @multilib_select, align 8
  store i8* %19, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %477, %30, %0
  %21 = load i8*, i8** %1, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %480

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  %26 = load i8*, i8** %1, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %1, align 8
  br label %20

33:                                               ; preds = %25
  %34 = load i8*, i8** %1, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load i8*, i8** %1, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8*, i8** %1, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %414, %379, %313, %286, %163, %143, %45
  %47 = load i8*, i8** @multilib_select, align 8
  %48 = call i32 @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %1, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %1, align 8
  br label %35

52:                                               ; preds = %35
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %58, %52
  %66 = load i8*, i8** @multilib_exclusions, align 8
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %237, %77, %65
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %238

72:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  br label %67

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %224, %98, %80
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 59
  br i1 %85, label %86, label %225

86:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %120, %91
  %93 = load i8*, i8** @multilib_exclusions, align 8
  %94 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  br label %81

101:                                              ; preds = %95
  %102 = load i8*, i8** %6, align 8
  store i8* %102, i8** %7, align 8
  br label %103

103:                                              ; preds = %121, %101
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 59
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ false, %103 ], [ %112, %108 ]
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %92

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  br label %103

124:                                              ; preds = %113
  %125 = load i8*, i8** %1, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %211, %124
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 59
  br i1 %131, label %132, label %212

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %46

144:                                              ; preds = %132
  %145 = load i8*, i8** %9, align 8
  store i8* %145, i8** %11, align 8
  br label %146

146:                                              ; preds = %164, %144
  %147 = load i8*, i8** %9, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 32
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 59
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br i1 %157, label %158, label %167

158:                                              ; preds = %156
  %159 = load i8*, i8** %9, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %46

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %9, align 8
  br label %146

167:                                              ; preds = %156
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = load i8*, i8** %9, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = icmp slt i64 %171, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %167
  %179 = load i8*, i8** %9, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  br label %187

184:                                              ; preds = %167
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  br label %187

187:                                              ; preds = %184, %178
  %188 = phi i64 [ %183, %178 ], [ %186, %184 ]
  %189 = trunc i64 %188 to i32
  %190 = call i32 @strncmp(i8* %168, i8* %169, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i64 @default_arg(i8* %193, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192, %187
  store i32 1, i32* %10, align 4
  br label %212

203:                                              ; preds = %192
  %204 = load i8*, i8** %9, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 32
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %9, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %9, align 8
  br label %211

211:                                              ; preds = %208, %203
  br label %127

212:                                              ; preds = %202, %127
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  store i32 0, i32* %8, align 4
  br label %216

216:                                              ; preds = %215, %212
  %217 = load i8*, i8** %6, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 32
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %6, align 8
  br label %224

224:                                              ; preds = %221, %216
  br label %81

225:                                              ; preds = %81
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 1, i32* %4, align 4
  br label %238

229:                                              ; preds = %225
  %230 = load i8*, i8** %6, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %6, align 8
  br label %237

237:                                              ; preds = %234, %229
  br label %67

238:                                              ; preds = %228, %67
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %270, label %241

241:                                              ; preds = %238
  %242 = load i8*, i8** %2, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %260

244:                                              ; preds = %241
  %245 = load i8*, i8** %1, align 8
  %246 = load i8*, i8** %3, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = trunc i64 %249 to i32
  %251 = load i32, i32* %5, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %244
  %254 = load i8*, i8** %2, align 8
  %255 = load i8*, i8** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @strncmp(i8* %254, i8* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  br label %260

260:                                              ; preds = %253, %244, %241
  %261 = phi i1 [ false, %244 ], [ false, %241 ], [ %259, %253 ]
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %4, align 4
  %263 = load i8*, i8** %3, align 8
  store i8* %263, i8** %2, align 8
  %264 = load i8*, i8** %1, align 8
  %265 = load i8*, i8** %3, align 8
  %266 = ptrtoint i8* %264 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %260, %238
  %271 = load i32, i32* %4, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %341, label %273

273:                                              ; preds = %270
  %274 = load i8*, i8** %1, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  store i8* %275, i8** %13, align 8
  br label %276

276:                                              ; preds = %339, %273
  %277 = load i8*, i8** %13, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 59
  br i1 %280, label %281, label %340

281:                                              ; preds = %276
  %282 = load i8*, i8** %13, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %46

287:                                              ; preds = %281
  %288 = load i8*, i8** %13, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 33
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i8* null, i8** %14, align 8
  br label %295

293:                                              ; preds = %287
  %294 = load i8*, i8** %13, align 8
  store i8* %294, i8** %14, align 8
  br label %295

295:                                              ; preds = %293, %292
  br label %296

296:                                              ; preds = %314, %295
  %297 = load i8*, i8** %13, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 32
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i8*, i8** %13, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 59
  br label %306

306:                                              ; preds = %301, %296
  %307 = phi i1 [ false, %296 ], [ %305, %301 ]
  br i1 %307, label %308, label %317

308:                                              ; preds = %306
  %309 = load i8*, i8** %13, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %46

314:                                              ; preds = %308
  %315 = load i8*, i8** %13, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %13, align 8
  br label %296

317:                                              ; preds = %306
  %318 = load i8*, i8** %14, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %331

320:                                              ; preds = %317
  %321 = load i8*, i8** %14, align 8
  %322 = load i8*, i8** %13, align 8
  %323 = load i8*, i8** %14, align 8
  %324 = ptrtoint i8* %322 to i64
  %325 = ptrtoint i8* %323 to i64
  %326 = sub i64 %324, %325
  %327 = trunc i64 %326 to i32
  %328 = call i64 @default_arg(i8* %321, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %320
  store i32 1, i32* %4, align 4
  br label %340

331:                                              ; preds = %320, %317
  %332 = load i8*, i8** %13, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 32
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = load i8*, i8** %13, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %13, align 8
  br label %339

339:                                              ; preds = %336, %331
  br label %276

340:                                              ; preds = %330, %276
  br label %341

341:                                              ; preds = %340, %270
  %342 = load i32, i32* %4, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %366, label %344

344:                                              ; preds = %341
  %345 = load i8*, i8** %2, align 8
  store i8* %345, i8** %15, align 8
  br label %346

346:                                              ; preds = %361, %344
  %347 = load i8*, i8** %15, align 8
  %348 = load i8*, i8** %1, align 8
  %349 = icmp ult i8* %347, %348
  br i1 %349, label %350, label %355

350:                                              ; preds = %346
  %351 = load i8*, i8** %15, align 8
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp ne i32 %353, 58
  br label %355

355:                                              ; preds = %350, %346
  %356 = phi i1 [ false, %346 ], [ %354, %350 ]
  br i1 %356, label %357, label %364

357:                                              ; preds = %355
  %358 = load i8*, i8** %15, align 8
  %359 = load i8, i8* %358, align 1
  %360 = call i32 @putchar(i8 signext %359)
  br label %361

361:                                              ; preds = %357
  %362 = load i8*, i8** %15, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %15, align 8
  br label %346

364:                                              ; preds = %355
  %365 = call i32 @putchar(i8 signext 59)
  br label %366

366:                                              ; preds = %364, %341
  %367 = load i8*, i8** %1, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %1, align 8
  br label %369

369:                                              ; preds = %433, %383, %366
  %370 = load i8*, i8** %1, align 8
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 59
  br i1 %373, label %374, label %434

374:                                              ; preds = %369
  %375 = load i8*, i8** %1, align 8
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %46

380:                                              ; preds = %374
  %381 = load i32, i32* %4, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i8*, i8** %1, align 8
  %385 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %385, i8** %1, align 8
  br label %369

386:                                              ; preds = %380
  %387 = load i8*, i8** %1, align 8
  %388 = load i8, i8* %387, align 1
  %389 = sext i8 %388 to i32
  %390 = icmp ne i32 %389, 33
  %391 = zext i1 %390 to i32
  store i32 %391, i32* %16, align 4
  %392 = load i32, i32* %16, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %386
  %395 = call i32 @putchar(i8 signext 64)
  br label %396

396:                                              ; preds = %394, %386
  br label %397

397:                                              ; preds = %422, %396
  %398 = load i8*, i8** %1, align 8
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 32
  br i1 %401, label %402, label %407

402:                                              ; preds = %397
  %403 = load i8*, i8** %1, align 8
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = icmp ne i32 %405, 59
  br label %407

407:                                              ; preds = %402, %397
  %408 = phi i1 [ false, %397 ], [ %406, %402 ]
  br i1 %408, label %409, label %425

409:                                              ; preds = %407
  %410 = load i8*, i8** %1, align 8
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %409
  br label %46

415:                                              ; preds = %409
  %416 = load i32, i32* %16, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = load i8*, i8** %1, align 8
  %420 = load i8, i8* %419, align 1
  %421 = call i32 @putchar(i8 signext %420)
  br label %422

422:                                              ; preds = %418, %415
  %423 = load i8*, i8** %1, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %1, align 8
  br label %397

425:                                              ; preds = %407
  %426 = load i8*, i8** %1, align 8
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 32
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load i8*, i8** %1, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %1, align 8
  br label %433

433:                                              ; preds = %430, %425
  br label %369

434:                                              ; preds = %369
  %435 = load i32, i32* %4, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %477, label %437

437:                                              ; preds = %434
  %438 = load i8*, i8** @multilib_extra, align 8
  %439 = icmp ne i8* %438, null
  br i1 %439, label %440, label %475

440:                                              ; preds = %437
  %441 = load i8*, i8** @multilib_extra, align 8
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %475

445:                                              ; preds = %440
  %446 = load i32, i32* @TRUE, align 4
  store i32 %446, i32* %17, align 4
  %447 = load i8*, i8** @multilib_extra, align 8
  store i8* %447, i8** %18, align 8
  br label %448

448:                                              ; preds = %471, %445
  %449 = load i8*, i8** %18, align 8
  %450 = load i8, i8* %449, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %474

453:                                              ; preds = %448
  %454 = load i8*, i8** %18, align 8
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp eq i32 %456, 32
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = load i32, i32* @TRUE, align 4
  store i32 %459, i32* %17, align 4
  br label %470

460:                                              ; preds = %453
  %461 = load i32, i32* %17, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %460
  %464 = call i32 @putchar(i8 signext 64)
  br label %465

465:                                              ; preds = %463, %460
  %466 = load i8*, i8** %18, align 8
  %467 = load i8, i8* %466, align 1
  %468 = call i32 @putchar(i8 signext %467)
  %469 = load i32, i32* @FALSE, align 4
  store i32 %469, i32* %17, align 4
  br label %470

470:                                              ; preds = %465, %458
  br label %471

471:                                              ; preds = %470
  %472 = load i8*, i8** %18, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %18, align 8
  br label %448

474:                                              ; preds = %448
  br label %475

475:                                              ; preds = %474, %440, %437
  %476 = call i32 @putchar(i8 signext 10)
  br label %477

477:                                              ; preds = %475, %434
  %478 = load i8*, i8** %1, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %1, align 8
  br label %20

480:                                              ; preds = %20
  ret void
}

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @default_arg(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
