; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_darwin-fallback.c_interpret_libc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_darwin-fallback.c_interpret_libc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }

@CR2_REGNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct._Unwind_Context*)* @interpret_libc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_libc(i32* %0, %struct._Unwind_Context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct._Unwind_Context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct._Unwind_Context* %1, %struct._Unwind_Context** %5, align 8
  %28 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %29 = call i64 @_Unwind_GetIP(%struct._Unwind_Context* %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %31 to i32
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %41, %2
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 13
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %33

44:                                               ; preds = %33
  %45 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %46 = call i32 @_Unwind_GetCFA(%struct._Unwind_Context* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %60, %44
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %65 = load i32, i32* @CR2_REGNO, align 4
  %66 = call i32 @_Unwind_GetGR(%struct._Unwind_Context* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %456, %450, %432, %400, %388, %376, %371, %322, %282, %253, %212, %183, %143, %138, %113, %74, %63
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, -67108861
  %73 = icmp eq i32 %72, 1207959552
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 67108860
  %77 = xor i32 %76, 33554432
  %78 = sub nsw i32 %77, 33554436
  %79 = sdiv i32 %78, 4
  %80 = load i32*, i32** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %6, align 8
  br label %67

83:                                               ; preds = %67
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, -60817408
  %86 = icmp eq i32 %85, 738197504
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %12, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 31
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %12, align 4
  %97 = ashr i32 %96, 21
  %98 = and i32 %97, 28
  %99 = xor i32 %98, 28
  %100 = shl i32 15, %99
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %113

108:                                              ; preds = %87
  %109 = load i32, i32* %15, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %104
  br label %67

114:                                              ; preds = %83
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, -20742141
  %117 = icmp eq i32 %116, 1082261504
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %12, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 31
  %123 = xor i32 %122, 31
  %124 = ashr i32 %119, %123
  %125 = and i32 %124, 1
  %126 = load i32, i32* %12, align 4
  %127 = ashr i32 %126, 24
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, 32764
  %133 = sdiv i32 %132, 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32*, i32** %6, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %6, align 8
  br label %138

138:                                              ; preds = %130, %118
  br label %67

139:                                              ; preds = %114
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, -67106817
  %142 = icmp eq i32 %141, 2080375672
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %12, align 4
  %146 = ashr i32 %145, 11
  %147 = and i32 %146, 31
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 21
  %154 = and i32 %153, 31
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %150, %157
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %12, align 4
  %161 = ashr i32 %160, 16
  %162 = and i32 %161, 31
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32 %158, i32* %164, align 4
  br label %67

165:                                              ; preds = %139
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 26
  %168 = icmp eq i32 %167, 14
  br i1 %168, label %169, label %194

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = ashr i32 %170, 16
  %172 = and i32 %171, 31
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %183

175:                                              ; preds = %169
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = ashr i32 %177, 16
  %179 = and i32 %178, 31
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  br label %183

183:                                              ; preds = %175, %174
  %184 = phi i32 [ 0, %174 ], [ %182, %175 ]
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* %12, align 4
  %190 = ashr i32 %189, 21
  %191 = and i32 %190, 31
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  store i32 %187, i32* %193, align 4
  br label %67

194:                                              ; preds = %165
  %195 = load i32, i32* %12, align 4
  %196 = ashr i32 %195, 26
  %197 = icmp eq i32 %196, 15
  br i1 %197, label %198, label %224

198:                                              ; preds = %194
  %199 = load i32, i32* %12, align 4
  %200 = ashr i32 %199, 16
  %201 = and i32 %200, 31
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %212

204:                                              ; preds = %198
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* %12, align 4
  %207 = ashr i32 %206, 16
  %208 = and i32 %207, 31
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  br label %212

212:                                              ; preds = %204, %203
  %213 = phi i32 [ 0, %203 ], [ %211, %204 ]
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %12, align 4
  %216 = shl i32 %215, 16
  %217 = add nsw i32 %214, %216
  %218 = load i32*, i32** %4, align 8
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 21
  %221 = and i32 %220, 31
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  store i32 %217, i32* %223, align 4
  br label %67

224:                                              ; preds = %194
  %225 = load i32, i32* %12, align 4
  %226 = ashr i32 %225, 26
  %227 = icmp eq i32 %226, 32
  br i1 %227, label %228, label %262

228:                                              ; preds = %224
  %229 = load i32, i32* %12, align 4
  %230 = ashr i32 %229, 16
  %231 = and i32 %230, 31
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %242

234:                                              ; preds = %228
  %235 = load i32*, i32** %4, align 8
  %236 = load i32, i32* %12, align 4
  %237 = ashr i32 %236, 16
  %238 = and i32 %237, 31
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %235, i64 %239
  %241 = load i32, i32* %240, align 4
  br label %242

242:                                              ; preds = %234, %233
  %243 = phi i32 [ 0, %233 ], [ %241, %234 ]
  store i32 %243, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i32*
  store i32* %248, i32** %19, align 8
  %249 = load i32*, i32** %19, align 8
  %250 = load i32*, i32** %10, align 8
  %251 = icmp eq i32* %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  store i32 0, i32* %3, align 4
  br label %465

253:                                              ; preds = %242
  %254 = load i32*, i32** %19, align 8
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %4, align 8
  %257 = load i32, i32* %12, align 4
  %258 = ashr i32 %257, 21
  %259 = and i32 %258, 31
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  store i32 %255, i32* %261, align 4
  br label %67

262:                                              ; preds = %224
  %263 = load i32, i32* %12, align 4
  %264 = ashr i32 %263, 26
  %265 = icmp eq i32 %264, 33
  br i1 %265, label %266, label %291

266:                                              ; preds = %262
  %267 = load i32, i32* %12, align 4
  %268 = load i32*, i32** %4, align 8
  %269 = load i32, i32* %12, align 4
  %270 = ashr i32 %269, 16
  %271 = and i32 %270, 31
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, %267
  store i32 %275, i32* %273, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** %20, align 8
  %278 = load i32*, i32** %20, align 8
  %279 = load i32*, i32** %10, align 8
  %280 = icmp eq i32* %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %266
  store i32 0, i32* %3, align 4
  br label %465

282:                                              ; preds = %266
  %283 = load i32*, i32** %20, align 8
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* %12, align 4
  %287 = ashr i32 %286, 21
  %288 = and i32 %287, 31
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  store i32 %284, i32* %290, align 4
  br label %67

291:                                              ; preds = %262
  %292 = load i32, i32* %12, align 4
  %293 = ashr i32 %292, 26
  %294 = icmp eq i32 %293, 36
  br i1 %294, label %295, label %324

295:                                              ; preds = %291
  %296 = load i32, i32* %12, align 4
  %297 = ashr i32 %296, 16
  %298 = and i32 %297, 31
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %309

301:                                              ; preds = %295
  %302 = load i32*, i32** %4, align 8
  %303 = load i32, i32* %12, align 4
  %304 = ashr i32 %303, 16
  %305 = and i32 %304, 31
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  %308 = load i32, i32* %307, align 4
  br label %309

309:                                              ; preds = %301, %300
  %310 = phi i32 [ 0, %300 ], [ %308, %301 ]
  store i32 %310, i32* %21, align 4
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to i32*
  store i32* %315, i32** %22, align 8
  %316 = load i32*, i32** %22, align 8
  %317 = icmp eq i32* %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %309
  %319 = load i32*, i32** %10, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %322

321:                                              ; preds = %318, %309
  store i32 0, i32* %3, align 4
  br label %465

322:                                              ; preds = %318
  %323 = load i32*, i32** %22, align 8
  store i32* %323, i32** %10, align 8
  br label %67

324:                                              ; preds = %291
  %325 = load i32, i32* %12, align 4
  %326 = ashr i32 %325, 26
  %327 = icmp eq i32 %326, 46
  br i1 %327, label %328, label %372

328:                                              ; preds = %324
  %329 = load i32, i32* %12, align 4
  %330 = ashr i32 %329, 16
  %331 = and i32 %330, 31
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %342

334:                                              ; preds = %328
  %335 = load i32*, i32** %4, align 8
  %336 = load i32, i32* %12, align 4
  %337 = ashr i32 %336, 16
  %338 = and i32 %337, 31
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  %341 = load i32, i32* %340, align 4
  br label %342

342:                                              ; preds = %334, %333
  %343 = phi i32 [ 0, %333 ], [ %341, %334 ]
  store i32 %343, i32* %23, align 4
  %344 = load i32, i32* %23, align 4
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = inttoptr i64 %347 to i32*
  store i32* %348, i32** %24, align 8
  %349 = load i32, i32* %12, align 4
  %350 = ashr i32 %349, 21
  %351 = and i32 %350, 31
  store i32 %351, i32* %25, align 4
  br label %352

352:                                              ; preds = %368, %342
  %353 = load i32, i32* %25, align 4
  %354 = icmp slt i32 %353, 32
  br i1 %354, label %355, label %371

355:                                              ; preds = %352
  %356 = load i32*, i32** %24, align 8
  %357 = load i32*, i32** %10, align 8
  %358 = icmp eq i32* %356, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  store i32 0, i32* %3, align 4
  br label %465

360:                                              ; preds = %355
  %361 = load i32*, i32** %24, align 8
  %362 = getelementptr inbounds i32, i32* %361, i32 1
  store i32* %362, i32** %24, align 8
  %363 = load i32, i32* %361, align 4
  %364 = load i32*, i32** %4, align 8
  %365 = load i32, i32* %25, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %363, i32* %367, align 4
  br label %368

368:                                              ; preds = %360
  %369 = load i32, i32* %25, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %25, align 4
  br label %352

371:                                              ; preds = %352
  br label %67

372:                                              ; preds = %324
  %373 = load i32, i32* %12, align 4
  %374 = and i32 %373, -65011713
  %375 = icmp eq i32 %374, 2080900006
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load i32*, i32** %4, align 8
  %378 = load i32, i32* %12, align 4
  %379 = ashr i32 %378, 21
  %380 = and i32 %379, 31
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %8, align 4
  br label %67

384:                                              ; preds = %372
  %385 = load i32, i32* %12, align 4
  %386 = and i32 %385, -65011713
  %387 = icmp eq i32 %386, 2080899750
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load i32, i32* %8, align 4
  %390 = load i32*, i32** %4, align 8
  %391 = load i32, i32* %12, align 4
  %392 = ashr i32 %391, 21
  %393 = and i32 %392, 31
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %390, i64 %394
  store i32 %389, i32* %395, align 4
  br label %67

396:                                              ; preds = %384
  %397 = load i32, i32* %12, align 4
  %398 = and i32 %397, -65011713
  %399 = icmp eq i32 %398, 2080965542
  br i1 %399, label %400, label %408

400:                                              ; preds = %396
  %401 = load i32*, i32** %4, align 8
  %402 = load i32, i32* %12, align 4
  %403 = ashr i32 %402, 21
  %404 = and i32 %403, 31
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %401, i64 %405
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %9, align 4
  br label %67

408:                                              ; preds = %396
  %409 = load i32, i32* %12, align 4
  %410 = and i32 %409, -67104769
  %411 = icmp eq i32 %410, 2080375072
  br i1 %411, label %412, label %447

412:                                              ; preds = %408
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %413

413:                                              ; preds = %429, %412
  %414 = load i32, i32* %26, align 4
  %415 = icmp slt i32 %414, 8
  br i1 %415, label %416, label %432

416:                                              ; preds = %413
  %417 = load i32, i32* %12, align 4
  %418 = load i32, i32* %26, align 4
  %419 = add nsw i32 12, %418
  %420 = ashr i32 %417, %419
  %421 = and i32 %420, 1
  %422 = sub nsw i32 0, %421
  %423 = and i32 %422, 15
  %424 = load i32, i32* %26, align 4
  %425 = mul nsw i32 4, %424
  %426 = shl i32 %423, %425
  %427 = load i32, i32* %27, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %27, align 4
  br label %429

429:                                              ; preds = %416
  %430 = load i32, i32* %26, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %26, align 4
  br label %413

432:                                              ; preds = %413
  %433 = load i32, i32* %7, align 4
  %434 = load i32, i32* %27, align 4
  %435 = xor i32 %434, -1
  %436 = and i32 %433, %435
  %437 = load i32*, i32** %4, align 8
  %438 = load i32, i32* %12, align 4
  %439 = ashr i32 %438, 21
  %440 = and i32 %439, 31
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %437, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %27, align 4
  %445 = and i32 %443, %444
  %446 = or i32 %436, %445
  store i32 %446, i32* %7, align 4
  br label %67

447:                                              ; preds = %408
  %448 = load i32, i32* %12, align 4
  %449 = icmp eq i32 %448, 1117716485
  br i1 %449, label %450, label %453

450:                                              ; preds = %447
  %451 = load i32*, i32** %6, align 8
  %452 = ptrtoint i32* %451 to i32
  store i32 %452, i32* %8, align 4
  br label %67

453:                                              ; preds = %447
  %454 = load i32, i32* %12, align 4
  %455 = icmp eq i32 %454, 1317012512
  br i1 %455, label %456, label %460

456:                                              ; preds = %453
  %457 = load i32, i32* %9, align 4
  %458 = sext i32 %457 to i64
  %459 = inttoptr i64 %458 to i32*
  store i32* %459, i32** %6, align 8
  br label %67

460:                                              ; preds = %453
  %461 = load i32, i32* %12, align 4
  %462 = icmp eq i32 %461, 1140850690
  br i1 %462, label %463, label %464

463:                                              ; preds = %460
  store i32 1, i32* %3, align 4
  br label %465

464:                                              ; preds = %460
  store i32 0, i32* %3, align 4
  br label %465

465:                                              ; preds = %464, %463, %359, %321, %281, %252
  %466 = load i32, i32* %3, align 4
  ret i32 %466
}

declare dso_local i64 @_Unwind_GetIP(%struct._Unwind_Context*) #1

declare dso_local i32 @_Unwind_GetCFA(%struct._Unwind_Context*) #1

declare dso_local i32 @_Unwind_GetGR(%struct._Unwind_Context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
