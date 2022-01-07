; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, i32 }

@fdiag = common dso_local global i32* null, align 8
@bdiag = common dso_local global i32* null, align 8
@xvec = common dso_local global i32* null, align 8
@yvec = common dso_local global i32* null, align 8
@SNAKE_LIMIT = common dso_local global i32 0, align 4
@LIN_MAX = common dso_local global i32 0, align 4
@speed_large_files = common dso_local global i64 0, align 8
@too_expensive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, %struct.partition*)* @diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.partition* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.partition*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.partition* %5, %struct.partition** %12, align 8
  %58 = load i32*, i32** @fdiag, align 8
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** @bdiag, align 8
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** @xvec, align 8
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** @yvec, align 8
  store i32* %61, i32** %16, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %20, align 4
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sub nsw i32 %78, %79
  %81 = and i32 %80, 1
  store i32 %81, i32* %26, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  store i32 1, i32* %25, align 4
  br label %92

92:                                               ; preds = %724, %6
  store i32 0, i32* %28, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %21, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32 -1, i32* %102, align 4
  br label %106

103:                                              ; preds = %92
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = phi i32 [ -1, %96 ], [ %105, %103 ]
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %22, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 -1, i32* %117, align 4
  br label %121

118:                                              ; preds = %106
  %119 = load i32, i32* %22, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %22, align 4
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi i32 [ -1, %111 ], [ %120, %118 ]
  %123 = load i32, i32* %22, align 4
  store i32 %123, i32* %27, align 4
  br label %124

124:                                              ; preds = %224, %121
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %227

128:                                              ; preds = %124
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %27, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %32, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %27, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %33, align 4
  %141 = load i32, i32* %32, align 4
  %142 = load i32, i32* %33, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %128
  %145 = load i32, i32* %32, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %29, align 4
  br label %149

147:                                              ; preds = %128
  %148 = load i32, i32* %33, align 4
  store i32 %148, i32* %29, align 4
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i32, i32* %29, align 4
  store i32 %150, i32* %31, align 4
  %151 = load i32, i32* %29, align 4
  %152 = load i32, i32* %27, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %30, align 4
  br label %154

154:                                              ; preds = %176, %149
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = load i32, i32* %30, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i32*, i32** %15, align 8
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %30, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %167, %172
  br label %174

174:                                              ; preds = %162, %158, %154
  %175 = phi i1 [ false, %158 ], [ false, %154 ], [ %173, %162 ]
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = load i32, i32* %29, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %29, align 4
  %179 = load i32, i32* %30, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %30, align 4
  br label %154

181:                                              ; preds = %174
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %31, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* @SNAKE_LIMIT, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 1, i32* %28, align 4
  br label %188

188:                                              ; preds = %187, %181
  %189 = load i32, i32* %29, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %27, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* %26, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %188
  %197 = load i32, i32* %23, align 4
  %198 = load i32, i32* %27, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %223

200:                                              ; preds = %196
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %24, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %200
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %27, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %29, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %204
  %213 = load i32, i32* %29, align 4
  %214 = load %struct.partition*, %struct.partition** %12, align 8
  %215 = getelementptr inbounds %struct.partition, %struct.partition* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %30, align 4
  %217 = load %struct.partition*, %struct.partition** %12, align 8
  %218 = getelementptr inbounds %struct.partition, %struct.partition* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.partition*, %struct.partition** %12, align 8
  %220 = getelementptr inbounds %struct.partition, %struct.partition* %219, i32 0, i32 3
  store i32 1, i32* %220, align 4
  %221 = load %struct.partition*, %struct.partition** %12, align 8
  %222 = getelementptr inbounds %struct.partition, %struct.partition* %221, i32 0, i32 2
  store i32 1, i32* %222, align 4
  br label %727

223:                                              ; preds = %204, %200, %196, %188
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %27, align 4
  %226 = sub nsw i32 %225, 2
  store i32 %226, i32* %27, align 4
  br label %124

227:                                              ; preds = %124
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i32, i32* @LIN_MAX, align 4
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %23, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  store i32 %232, i32* %238, align 4
  br label %242

239:                                              ; preds = %227
  %240 = load i32, i32* %23, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %23, align 4
  br label %242

242:                                              ; preds = %239, %231
  %243 = phi i32 [ %232, %231 ], [ %241, %239 ]
  %244 = load i32, i32* %24, align 4
  %245 = load i32, i32* %18, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load i32, i32* @LIN_MAX, align 4
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %24, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %24, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  store i32 %248, i32* %254, align 4
  br label %258

255:                                              ; preds = %242
  %256 = load i32, i32* %24, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %24, align 4
  br label %258

258:                                              ; preds = %255, %247
  %259 = phi i32 [ %248, %247 ], [ %257, %255 ]
  %260 = load i32, i32* %24, align 4
  store i32 %260, i32* %27, align 4
  br label %261

261:                                              ; preds = %363, %258
  %262 = load i32, i32* %27, align 4
  %263 = load i32, i32* %23, align 4
  %264 = icmp sge i32 %262, %263
  br i1 %264, label %265, label %366

265:                                              ; preds = %261
  %266 = load i32*, i32** %14, align 8
  %267 = load i32, i32* %27, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %37, align 4
  %272 = load i32*, i32** %14, align 8
  %273 = load i32, i32* %27, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %38, align 4
  %278 = load i32, i32* %37, align 4
  %279 = load i32, i32* %38, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %265
  %282 = load i32, i32* %37, align 4
  store i32 %282, i32* %34, align 4
  br label %286

283:                                              ; preds = %265
  %284 = load i32, i32* %38, align 4
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %34, align 4
  br label %286

286:                                              ; preds = %283, %281
  %287 = load i32, i32* %34, align 4
  store i32 %287, i32* %36, align 4
  %288 = load i32, i32* %34, align 4
  %289 = load i32, i32* %27, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %35, align 4
  br label %291

291:                                              ; preds = %315, %286
  %292 = load i32, i32* %34, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %313

295:                                              ; preds = %291
  %296 = load i32, i32* %35, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %313

299:                                              ; preds = %295
  %300 = load i32*, i32** %15, align 8
  %301 = load i32, i32* %34, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %16, align 8
  %307 = load i32, i32* %35, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %305, %311
  br label %313

313:                                              ; preds = %299, %295, %291
  %314 = phi i1 [ false, %295 ], [ false, %291 ], [ %312, %299 ]
  br i1 %314, label %315, label %320

315:                                              ; preds = %313
  %316 = load i32, i32* %34, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %34, align 4
  %318 = load i32, i32* %35, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %35, align 4
  br label %291

320:                                              ; preds = %313
  %321 = load i32, i32* %36, align 4
  %322 = load i32, i32* %34, align 4
  %323 = sub nsw i32 %321, %322
  %324 = load i32, i32* @SNAKE_LIMIT, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  store i32 1, i32* %28, align 4
  br label %327

327:                                              ; preds = %326, %320
  %328 = load i32, i32* %34, align 4
  %329 = load i32*, i32** %14, align 8
  %330 = load i32, i32* %27, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %328, i32* %332, align 4
  %333 = load i32, i32* %26, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %362, label %335

335:                                              ; preds = %327
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %27, align 4
  %338 = icmp sle i32 %336, %337
  br i1 %338, label %339, label %362

339:                                              ; preds = %335
  %340 = load i32, i32* %27, align 4
  %341 = load i32, i32* %22, align 4
  %342 = icmp sle i32 %340, %341
  br i1 %342, label %343, label %362

343:                                              ; preds = %339
  %344 = load i32, i32* %34, align 4
  %345 = load i32*, i32** %13, align 8
  %346 = load i32, i32* %27, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp sle i32 %344, %349
  br i1 %350, label %351, label %362

351:                                              ; preds = %343
  %352 = load i32, i32* %34, align 4
  %353 = load %struct.partition*, %struct.partition** %12, align 8
  %354 = getelementptr inbounds %struct.partition, %struct.partition* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* %35, align 4
  %356 = load %struct.partition*, %struct.partition** %12, align 8
  %357 = getelementptr inbounds %struct.partition, %struct.partition* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 4
  %358 = load %struct.partition*, %struct.partition** %12, align 8
  %359 = getelementptr inbounds %struct.partition, %struct.partition* %358, i32 0, i32 3
  store i32 1, i32* %359, align 4
  %360 = load %struct.partition*, %struct.partition** %12, align 8
  %361 = getelementptr inbounds %struct.partition, %struct.partition* %360, i32 0, i32 2
  store i32 1, i32* %361, align 4
  br label %727

362:                                              ; preds = %343, %339, %335, %327
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %27, align 4
  %365 = sub nsw i32 %364, 2
  store i32 %365, i32* %27, align 4
  br label %261

366:                                              ; preds = %261
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  br label %724

370:                                              ; preds = %366
  %371 = load i32, i32* %25, align 4
  %372 = icmp slt i32 200, %371
  br i1 %372, label %373, label %599

373:                                              ; preds = %370
  %374 = load i32, i32* %28, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %599

376:                                              ; preds = %373
  %377 = load i64, i64* @speed_large_files, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %599

379:                                              ; preds = %376
  store i32 0, i32* %39, align 4
  %380 = load i32, i32* %22, align 4
  store i32 %380, i32* %27, align 4
  br label %381

381:                                              ; preds = %477, %379
  %382 = load i32, i32* %27, align 4
  %383 = load i32, i32* %21, align 4
  %384 = icmp sge i32 %382, %383
  br i1 %384, label %385, label %480

385:                                              ; preds = %381
  %386 = load i32, i32* %27, align 4
  %387 = load i32, i32* %19, align 4
  %388 = sub nsw i32 %386, %387
  store i32 %388, i32* %40, align 4
  %389 = load i32*, i32** %13, align 8
  %390 = load i32, i32* %27, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %41, align 4
  %394 = load i32, i32* %41, align 4
  %395 = load i32, i32* %27, align 4
  %396 = sub nsw i32 %394, %395
  store i32 %396, i32* %42, align 4
  %397 = load i32, i32* %41, align 4
  %398 = load i32, i32* %7, align 4
  %399 = sub nsw i32 %397, %398
  %400 = mul nsw i32 %399, 2
  %401 = load i32, i32* %40, align 4
  %402 = sub nsw i32 %400, %401
  store i32 %402, i32* %43, align 4
  %403 = load i32, i32* %43, align 4
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* %40, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %385
  %408 = load i32, i32* %40, align 4
  %409 = sub nsw i32 0, %408
  br label %412

410:                                              ; preds = %385
  %411 = load i32, i32* %40, align 4
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi i32 [ %409, %407 ], [ %411, %410 ]
  %414 = add nsw i32 %404, %413
  %415 = mul nsw i32 12, %414
  %416 = icmp sgt i32 %403, %415
  br i1 %416, label %417, label %476

417:                                              ; preds = %412
  %418 = load i32, i32* %43, align 4
  %419 = load i32, i32* %39, align 4
  %420 = icmp sgt i32 %418, %419
  br i1 %420, label %421, label %475

421:                                              ; preds = %417
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* @SNAKE_LIMIT, align 4
  %424 = add nsw i32 %422, %423
  %425 = load i32, i32* %41, align 4
  %426 = icmp sle i32 %424, %425
  br i1 %426, label %427, label %475

427:                                              ; preds = %421
  %428 = load i32, i32* %41, align 4
  %429 = load i32, i32* %8, align 4
  %430 = icmp slt i32 %428, %429
  br i1 %430, label %431, label %475

431:                                              ; preds = %427
  %432 = load i32, i32* %9, align 4
  %433 = load i32, i32* @SNAKE_LIMIT, align 4
  %434 = add nsw i32 %432, %433
  %435 = load i32, i32* %42, align 4
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %475

437:                                              ; preds = %431
  %438 = load i32, i32* %42, align 4
  %439 = load i32, i32* %10, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %475

441:                                              ; preds = %437
  store i32 1, i32* %44, align 4
  br label %442

442:                                              ; preds = %471, %441
  %443 = load i32*, i32** %15, align 8
  %444 = load i32, i32* %41, align 4
  %445 = load i32, i32* %44, align 4
  %446 = sub nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %443, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32*, i32** %16, align 8
  %451 = load i32, i32* %42, align 4
  %452 = load i32, i32* %44, align 4
  %453 = sub nsw i32 %451, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %450, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %449, %456
  br i1 %457, label %458, label %474

458:                                              ; preds = %442
  %459 = load i32, i32* %44, align 4
  %460 = load i32, i32* @SNAKE_LIMIT, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %458
  %463 = load i32, i32* %43, align 4
  store i32 %463, i32* %39, align 4
  %464 = load i32, i32* %41, align 4
  %465 = load %struct.partition*, %struct.partition** %12, align 8
  %466 = getelementptr inbounds %struct.partition, %struct.partition* %465, i32 0, i32 0
  store i32 %464, i32* %466, align 4
  %467 = load i32, i32* %42, align 4
  %468 = load %struct.partition*, %struct.partition** %12, align 8
  %469 = getelementptr inbounds %struct.partition, %struct.partition* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 4
  br label %474

470:                                              ; preds = %458
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %44, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %44, align 4
  br label %442

474:                                              ; preds = %462, %442
  br label %475

475:                                              ; preds = %474, %437, %431, %427, %421, %417
  br label %476

476:                                              ; preds = %475, %412
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %27, align 4
  %479 = sub nsw i32 %478, 2
  store i32 %479, i32* %27, align 4
  br label %381

480:                                              ; preds = %381
  %481 = load i32, i32* %39, align 4
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %480
  %484 = load %struct.partition*, %struct.partition** %12, align 8
  %485 = getelementptr inbounds %struct.partition, %struct.partition* %484, i32 0, i32 2
  store i32 1, i32* %485, align 4
  %486 = load %struct.partition*, %struct.partition** %12, align 8
  %487 = getelementptr inbounds %struct.partition, %struct.partition* %486, i32 0, i32 3
  store i32 0, i32* %487, align 4
  br label %727

488:                                              ; preds = %480
  store i32 0, i32* %39, align 4
  %489 = load i32, i32* %24, align 4
  store i32 %489, i32* %27, align 4
  br label %490

490:                                              ; preds = %587, %488
  %491 = load i32, i32* %27, align 4
  %492 = load i32, i32* %23, align 4
  %493 = icmp sge i32 %491, %492
  br i1 %493, label %494, label %590

494:                                              ; preds = %490
  %495 = load i32, i32* %27, align 4
  %496 = load i32, i32* %20, align 4
  %497 = sub nsw i32 %495, %496
  store i32 %497, i32* %45, align 4
  %498 = load i32*, i32** %14, align 8
  %499 = load i32, i32* %27, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  store i32 %502, i32* %46, align 4
  %503 = load i32, i32* %46, align 4
  %504 = load i32, i32* %27, align 4
  %505 = sub nsw i32 %503, %504
  store i32 %505, i32* %47, align 4
  %506 = load i32, i32* %8, align 4
  %507 = load i32, i32* %46, align 4
  %508 = sub nsw i32 %506, %507
  %509 = mul nsw i32 %508, 2
  %510 = load i32, i32* %45, align 4
  %511 = add nsw i32 %509, %510
  store i32 %511, i32* %48, align 4
  %512 = load i32, i32* %48, align 4
  %513 = load i32, i32* %25, align 4
  %514 = load i32, i32* %45, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %494
  %517 = load i32, i32* %45, align 4
  %518 = sub nsw i32 0, %517
  br label %521

519:                                              ; preds = %494
  %520 = load i32, i32* %45, align 4
  br label %521

521:                                              ; preds = %519, %516
  %522 = phi i32 [ %518, %516 ], [ %520, %519 ]
  %523 = add nsw i32 %513, %522
  %524 = mul nsw i32 12, %523
  %525 = icmp sgt i32 %512, %524
  br i1 %525, label %526, label %586

526:                                              ; preds = %521
  %527 = load i32, i32* %48, align 4
  %528 = load i32, i32* %39, align 4
  %529 = icmp sgt i32 %527, %528
  br i1 %529, label %530, label %585

530:                                              ; preds = %526
  %531 = load i32, i32* %7, align 4
  %532 = load i32, i32* %46, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %585

534:                                              ; preds = %530
  %535 = load i32, i32* %46, align 4
  %536 = load i32, i32* %8, align 4
  %537 = load i32, i32* @SNAKE_LIMIT, align 4
  %538 = sub nsw i32 %536, %537
  %539 = icmp sle i32 %535, %538
  br i1 %539, label %540, label %585

540:                                              ; preds = %534
  %541 = load i32, i32* %9, align 4
  %542 = load i32, i32* %47, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %585

544:                                              ; preds = %540
  %545 = load i32, i32* %47, align 4
  %546 = load i32, i32* %10, align 4
  %547 = load i32, i32* @SNAKE_LIMIT, align 4
  %548 = sub nsw i32 %546, %547
  %549 = icmp sle i32 %545, %548
  br i1 %549, label %550, label %585

550:                                              ; preds = %544
  store i32 0, i32* %49, align 4
  br label %551

551:                                              ; preds = %581, %550
  %552 = load i32*, i32** %15, align 8
  %553 = load i32, i32* %46, align 4
  %554 = load i32, i32* %49, align 4
  %555 = add nsw i32 %553, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %552, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = load i32*, i32** %16, align 8
  %560 = load i32, i32* %47, align 4
  %561 = load i32, i32* %49, align 4
  %562 = add nsw i32 %560, %561
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %559, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %558, %565
  br i1 %566, label %567, label %584

567:                                              ; preds = %551
  %568 = load i32, i32* %49, align 4
  %569 = load i32, i32* @SNAKE_LIMIT, align 4
  %570 = sub nsw i32 %569, 1
  %571 = icmp eq i32 %568, %570
  br i1 %571, label %572, label %580

572:                                              ; preds = %567
  %573 = load i32, i32* %48, align 4
  store i32 %573, i32* %39, align 4
  %574 = load i32, i32* %46, align 4
  %575 = load %struct.partition*, %struct.partition** %12, align 8
  %576 = getelementptr inbounds %struct.partition, %struct.partition* %575, i32 0, i32 0
  store i32 %574, i32* %576, align 4
  %577 = load i32, i32* %47, align 4
  %578 = load %struct.partition*, %struct.partition** %12, align 8
  %579 = getelementptr inbounds %struct.partition, %struct.partition* %578, i32 0, i32 1
  store i32 %577, i32* %579, align 4
  br label %584

580:                                              ; preds = %567
  br label %581

581:                                              ; preds = %580
  %582 = load i32, i32* %49, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %49, align 4
  br label %551

584:                                              ; preds = %572, %551
  br label %585

585:                                              ; preds = %584, %544, %540, %534, %530, %526
  br label %586

586:                                              ; preds = %585, %521
  br label %587

587:                                              ; preds = %586
  %588 = load i32, i32* %27, align 4
  %589 = sub nsw i32 %588, 2
  store i32 %589, i32* %27, align 4
  br label %490

590:                                              ; preds = %490
  %591 = load i32, i32* %39, align 4
  %592 = icmp sgt i32 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  %594 = load %struct.partition*, %struct.partition** %12, align 8
  %595 = getelementptr inbounds %struct.partition, %struct.partition* %594, i32 0, i32 2
  store i32 0, i32* %595, align 4
  %596 = load %struct.partition*, %struct.partition** %12, align 8
  %597 = getelementptr inbounds %struct.partition, %struct.partition* %596, i32 0, i32 3
  store i32 1, i32* %597, align 4
  br label %727

598:                                              ; preds = %590
  br label %599

599:                                              ; preds = %598, %376, %373, %370
  %600 = load i32, i32* %25, align 4
  %601 = load i32, i32* @too_expensive, align 4
  %602 = icmp sge i32 %600, %601
  br i1 %602, label %603, label %723

603:                                              ; preds = %599
  store i32 0, i32* %53, align 4
  store i32 0, i32* %51, align 4
  store i32 -1, i32* %50, align 4
  %604 = load i32, i32* %22, align 4
  store i32 %604, i32* %27, align 4
  br label %605

605:                                              ; preds = %640, %603
  %606 = load i32, i32* %27, align 4
  %607 = load i32, i32* %21, align 4
  %608 = icmp sge i32 %606, %607
  br i1 %608, label %609, label %643

609:                                              ; preds = %605
  %610 = load i32*, i32** %13, align 8
  %611 = load i32, i32* %27, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %610, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %8, align 4
  %616 = call i32 @MIN(i32 %614, i32 %615)
  store i32 %616, i32* %54, align 4
  %617 = load i32, i32* %54, align 4
  %618 = load i32, i32* %27, align 4
  %619 = sub nsw i32 %617, %618
  store i32 %619, i32* %55, align 4
  %620 = load i32, i32* %10, align 4
  %621 = load i32, i32* %55, align 4
  %622 = icmp slt i32 %620, %621
  br i1 %622, label %623, label %628

623:                                              ; preds = %609
  %624 = load i32, i32* %10, align 4
  %625 = load i32, i32* %27, align 4
  %626 = add nsw i32 %624, %625
  store i32 %626, i32* %54, align 4
  %627 = load i32, i32* %10, align 4
  store i32 %627, i32* %55, align 4
  br label %628

628:                                              ; preds = %623, %609
  %629 = load i32, i32* %50, align 4
  %630 = load i32, i32* %54, align 4
  %631 = load i32, i32* %55, align 4
  %632 = add nsw i32 %630, %631
  %633 = icmp slt i32 %629, %632
  br i1 %633, label %634, label %639

634:                                              ; preds = %628
  %635 = load i32, i32* %54, align 4
  %636 = load i32, i32* %55, align 4
  %637 = add nsw i32 %635, %636
  store i32 %637, i32* %50, align 4
  %638 = load i32, i32* %54, align 4
  store i32 %638, i32* %51, align 4
  br label %639

639:                                              ; preds = %634, %628
  br label %640

640:                                              ; preds = %639
  %641 = load i32, i32* %27, align 4
  %642 = sub nsw i32 %641, 2
  store i32 %642, i32* %27, align 4
  br label %605

643:                                              ; preds = %605
  %644 = load i32, i32* @LIN_MAX, align 4
  store i32 %644, i32* %52, align 4
  %645 = load i32, i32* %24, align 4
  store i32 %645, i32* %27, align 4
  br label %646

646:                                              ; preds = %681, %643
  %647 = load i32, i32* %27, align 4
  %648 = load i32, i32* %23, align 4
  %649 = icmp sge i32 %647, %648
  br i1 %649, label %650, label %684

650:                                              ; preds = %646
  %651 = load i32, i32* %7, align 4
  %652 = load i32*, i32** %14, align 8
  %653 = load i32, i32* %27, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @MAX(i32 %651, i32 %656)
  store i32 %657, i32* %56, align 4
  %658 = load i32, i32* %56, align 4
  %659 = load i32, i32* %27, align 4
  %660 = sub nsw i32 %658, %659
  store i32 %660, i32* %57, align 4
  %661 = load i32, i32* %57, align 4
  %662 = load i32, i32* %9, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %669

664:                                              ; preds = %650
  %665 = load i32, i32* %9, align 4
  %666 = load i32, i32* %27, align 4
  %667 = add nsw i32 %665, %666
  store i32 %667, i32* %56, align 4
  %668 = load i32, i32* %9, align 4
  store i32 %668, i32* %57, align 4
  br label %669

669:                                              ; preds = %664, %650
  %670 = load i32, i32* %56, align 4
  %671 = load i32, i32* %57, align 4
  %672 = add nsw i32 %670, %671
  %673 = load i32, i32* %52, align 4
  %674 = icmp slt i32 %672, %673
  br i1 %674, label %675, label %680

675:                                              ; preds = %669
  %676 = load i32, i32* %56, align 4
  %677 = load i32, i32* %57, align 4
  %678 = add nsw i32 %676, %677
  store i32 %678, i32* %52, align 4
  %679 = load i32, i32* %56, align 4
  store i32 %679, i32* %53, align 4
  br label %680

680:                                              ; preds = %675, %669
  br label %681

681:                                              ; preds = %680
  %682 = load i32, i32* %27, align 4
  %683 = sub nsw i32 %682, 2
  store i32 %683, i32* %27, align 4
  br label %646

684:                                              ; preds = %646
  %685 = load i32, i32* %8, align 4
  %686 = load i32, i32* %10, align 4
  %687 = add nsw i32 %685, %686
  %688 = load i32, i32* %52, align 4
  %689 = sub nsw i32 %687, %688
  %690 = load i32, i32* %50, align 4
  %691 = load i32, i32* %7, align 4
  %692 = load i32, i32* %9, align 4
  %693 = add nsw i32 %691, %692
  %694 = sub nsw i32 %690, %693
  %695 = icmp slt i32 %689, %694
  br i1 %695, label %696, label %709

696:                                              ; preds = %684
  %697 = load i32, i32* %51, align 4
  %698 = load %struct.partition*, %struct.partition** %12, align 8
  %699 = getelementptr inbounds %struct.partition, %struct.partition* %698, i32 0, i32 0
  store i32 %697, i32* %699, align 4
  %700 = load i32, i32* %50, align 4
  %701 = load i32, i32* %51, align 4
  %702 = sub nsw i32 %700, %701
  %703 = load %struct.partition*, %struct.partition** %12, align 8
  %704 = getelementptr inbounds %struct.partition, %struct.partition* %703, i32 0, i32 1
  store i32 %702, i32* %704, align 4
  %705 = load %struct.partition*, %struct.partition** %12, align 8
  %706 = getelementptr inbounds %struct.partition, %struct.partition* %705, i32 0, i32 2
  store i32 1, i32* %706, align 4
  %707 = load %struct.partition*, %struct.partition** %12, align 8
  %708 = getelementptr inbounds %struct.partition, %struct.partition* %707, i32 0, i32 3
  store i32 0, i32* %708, align 4
  br label %722

709:                                              ; preds = %684
  %710 = load i32, i32* %53, align 4
  %711 = load %struct.partition*, %struct.partition** %12, align 8
  %712 = getelementptr inbounds %struct.partition, %struct.partition* %711, i32 0, i32 0
  store i32 %710, i32* %712, align 4
  %713 = load i32, i32* %52, align 4
  %714 = load i32, i32* %53, align 4
  %715 = sub nsw i32 %713, %714
  %716 = load %struct.partition*, %struct.partition** %12, align 8
  %717 = getelementptr inbounds %struct.partition, %struct.partition* %716, i32 0, i32 1
  store i32 %715, i32* %717, align 4
  %718 = load %struct.partition*, %struct.partition** %12, align 8
  %719 = getelementptr inbounds %struct.partition, %struct.partition* %718, i32 0, i32 2
  store i32 0, i32* %719, align 4
  %720 = load %struct.partition*, %struct.partition** %12, align 8
  %721 = getelementptr inbounds %struct.partition, %struct.partition* %720, i32 0, i32 3
  store i32 1, i32* %721, align 4
  br label %722

722:                                              ; preds = %709, %696
  br label %727

723:                                              ; preds = %599
  br label %724

724:                                              ; preds = %723, %369
  %725 = load i32, i32* %25, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %25, align 4
  br label %92

727:                                              ; preds = %722, %593, %483, %351, %212
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
