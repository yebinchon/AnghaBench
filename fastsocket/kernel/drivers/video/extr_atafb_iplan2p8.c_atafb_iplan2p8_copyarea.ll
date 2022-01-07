; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_iplan2p8.c_atafb_iplan2p8_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_iplan2p8.c_atafb_iplan2p8_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

@BPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_iplan2p8_copyarea(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca [4 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca [4 x i32], align 16
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br label %60

60:                                               ; preds = %58, %8
  %61 = phi i1 [ true, %8 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %64, %65
  %67 = and i32 %66, 15
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %353, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %26, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %202

72:                                               ; preds = %69
  %73 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, -16
  %84 = load i32, i32* @BPL, align 4
  %85 = sdiv i32 8, %84
  %86 = sdiv i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  store i32* %88, i32** %17, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %14, align 4
  %99 = and i32 %98, -16
  %100 = load i32, i32* @BPL, align 4
  %101 = sdiv i32 8, %100
  %102 = sdiv i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  store i32* %104, i32** %18, align 8
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 15
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %72
  %109 = load i32*, i32** %18, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @BPL, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sub nsw i32 %112, %114
  %116 = call i32 @memmove32_col(i32* %109, i32* %110, i32 16711935, i32 %111, i32 %115)
  %117 = load i32, i32* @BPL, align 4
  %118 = mul nsw i32 %117, 2
  %119 = load i32*, i32** %17, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %17, align 8
  %122 = load i32, i32* @BPL, align 4
  %123 = mul nsw i32 %122, 2
  %124 = load i32*, i32** %18, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %18, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %127, 8
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %108, %72
  %130 = load i32, i32* %16, align 4
  %131 = ashr i32 %130, 4
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %176

134:                                              ; preds = %129
  %135 = load i32*, i32** %17, align 8
  store i32* %135, i32** %19, align 8
  %136 = load i32*, i32** %18, align 8
  store i32* %136, i32** %20, align 8
  %137 = load i32, i32* @BPL, align 4
  %138 = sdiv i32 %137, 2
  %139 = load i32, i32* %21, align 4
  %140 = mul nsw i32 %139, %138
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %21, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %172, %134
  %147 = load i32, i32* %24, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load i32, i32* %21, align 4
  store i32 %150, i32* %23, align 4
  br label %151

151:                                              ; preds = %160, %149
  %152 = load i32, i32* %23, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32*, i32** %19, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %19, align 8
  %157 = load i32, i32* %155, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %20, align 8
  store i32 %157, i32* %158, align 4
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %23, align 4
  br label %151

163:                                              ; preds = %151
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32* %167, i32** %19, align 8
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32* %171, i32** %20, align 8
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %24, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %24, align 4
  br label %146

175:                                              ; preds = %146
  br label %176

176:                                              ; preds = %175, %129
  %177 = load i32, i32* %16, align 4
  %178 = and i32 %177, 15
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load i32*, i32** %18, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @BPL, align 4
  %184 = sdiv i32 8, %183
  %185 = sdiv i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %181, i64 %186
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @BPL, align 4
  %191 = sdiv i32 8, %190
  %192 = sdiv i32 %189, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @BPL, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sub nsw i32 %196, %198
  %200 = call i32 @memmove32_col(i32* %187, i32* %194, i32 -16711936, i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %180, %176
  br label %352

202:                                              ; preds = %69
  %203 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 8
  %217 = and i32 %216, -16
  %218 = load i32, i32* @BPL, align 4
  %219 = sdiv i32 8, %218
  %220 = sdiv i32 %217, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %212, i64 %221
  store i32* %222, i32** %17, align 8
  %223 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %224 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %10, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %226, i64 %231
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %233, %234
  %236 = add nsw i32 %235, 8
  %237 = and i32 %236, -16
  %238 = load i32, i32* @BPL, align 4
  %239 = sdiv i32 8, %238
  %240 = sdiv i32 %237, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %232, i64 %241
  store i32* %242, i32** %18, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %243, %244
  %246 = and i32 %245, 15
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %202
  %249 = load i32, i32* @BPL, align 4
  %250 = mul nsw i32 %249, 2
  %251 = load i32*, i32** %17, align 8
  %252 = sext i32 %250 to i64
  %253 = sub i64 0, %252
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %17, align 8
  %255 = load i32, i32* @BPL, align 4
  %256 = mul nsw i32 %255, 2
  %257 = load i32*, i32** %18, align 8
  %258 = sext i32 %256 to i64
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32* %260, i32** %18, align 8
  %261 = load i32*, i32** %18, align 8
  %262 = load i32*, i32** %17, align 8
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %10, align 4
  %265 = sub nsw i32 0, %264
  %266 = load i32, i32* @BPL, align 4
  %267 = mul nsw i32 %266, 2
  %268 = sub nsw i32 %265, %267
  %269 = call i32 @memmove32_col(i32* %261, i32* %262, i32 -16711936, i32 %263, i32 %268)
  %270 = load i32, i32* %16, align 4
  %271 = sub nsw i32 %270, 8
  store i32 %271, i32* %16, align 4
  br label %272

272:                                              ; preds = %248, %202
  %273 = load i32, i32* %16, align 4
  %274 = ashr i32 %273, 4
  store i32 %274, i32* %21, align 4
  %275 = load i32, i32* %21, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %321

277:                                              ; preds = %272
  %278 = load i32*, i32** %17, align 8
  store i32* %278, i32** %19, align 8
  %279 = load i32*, i32** %18, align 8
  store i32* %279, i32** %20, align 8
  %280 = load i32, i32* @BPL, align 4
  %281 = sdiv i32 %280, 2
  %282 = load i32, i32* %21, align 4
  %283 = mul nsw i32 %282, %281
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %21, align 4
  %286 = mul nsw i32 %285, 4
  %287 = sub nsw i32 %284, %286
  store i32 %287, i32* %22, align 4
  %288 = load i32, i32* %15, align 4
  store i32 %288, i32* %24, align 4
  br label %289

289:                                              ; preds = %317, %277
  %290 = load i32, i32* %24, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %320

292:                                              ; preds = %289
  %293 = load i32, i32* %21, align 4
  store i32 %293, i32* %23, align 4
  br label %294

294:                                              ; preds = %303, %292
  %295 = load i32, i32* %23, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %294
  %298 = load i32*, i32** %19, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 -1
  store i32* %299, i32** %19, align 8
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %20, align 8
  %302 = getelementptr inbounds i32, i32* %301, i32 -1
  store i32* %302, i32** %20, align 8
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %297
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %23, align 4
  br label %294

306:                                              ; preds = %294
  %307 = load i32*, i32** %19, align 8
  %308 = load i32, i32* %22, align 4
  %309 = sext i32 %308 to i64
  %310 = sub i64 0, %309
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32* %311, i32** %19, align 8
  %312 = load i32*, i32** %20, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32* %316, i32** %20, align 8
  br label %317

317:                                              ; preds = %306
  %318 = load i32, i32* %24, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %24, align 4
  br label %289

320:                                              ; preds = %289
  br label %321

321:                                              ; preds = %320, %272
  %322 = load i32, i32* %12, align 4
  %323 = and i32 %322, 15
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %351

325:                                              ; preds = %321
  %326 = load i32*, i32** %18, align 8
  %327 = load i32, i32* %16, align 4
  %328 = sub nsw i32 %327, 16
  %329 = load i32, i32* @BPL, align 4
  %330 = sdiv i32 8, %329
  %331 = sdiv i32 %328, %330
  %332 = sext i32 %331 to i64
  %333 = sub i64 0, %332
  %334 = getelementptr inbounds i32, i32* %326, i64 %333
  %335 = load i32*, i32** %17, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sub nsw i32 %336, 16
  %338 = load i32, i32* @BPL, align 4
  %339 = sdiv i32 8, %338
  %340 = sdiv i32 %337, %339
  %341 = sext i32 %340 to i64
  %342 = sub i64 0, %341
  %343 = getelementptr inbounds i32, i32* %335, i64 %342
  %344 = load i32, i32* %25, align 4
  %345 = load i32, i32* %10, align 4
  %346 = sub nsw i32 0, %345
  %347 = load i32, i32* @BPL, align 4
  %348 = mul nsw i32 %347, 2
  %349 = sub nsw i32 %346, %348
  %350 = call i32 @memmove32_col(i32* %334, i32* %343, i32 16711935, i32 %344, i32 %349)
  br label %351

351:                                              ; preds = %325, %321
  br label %352

352:                                              ; preds = %351, %201
  br label %877

353:                                              ; preds = %60
  %354 = load i32, i32* %26, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %611

356:                                              ; preds = %353
  %357 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %358 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = inttoptr i64 %359 to i32*
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* %10, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %360, i64 %364
  %366 = load i32, i32* %12, align 4
  %367 = and i32 %366, -16
  %368 = load i32, i32* @BPL, align 4
  %369 = sdiv i32 8, %368
  %370 = sdiv i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %365, i64 %371
  store i32* %372, i32** %17, align 8
  %373 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %374 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = inttoptr i64 %375 to i32*
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %10, align 4
  %379 = mul nsw i32 %377, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  %382 = load i32, i32* %14, align 4
  %383 = and i32 %382, -16
  %384 = load i32, i32* @BPL, align 4
  %385 = sdiv i32 8, %384
  %386 = sdiv i32 %383, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %381, i64 %387
  store i32* %388, i32** %18, align 8
  store i32 -16711936, i32* %32, align 4
  store i32 0, i32* %36, align 4
  %389 = load i32, i32* %16, align 4
  store i32 %389, i32* %35, align 4
  %390 = load i32, i32* %12, align 4
  %391 = and i32 %390, 15
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %356
  store i32 1, i32* %36, align 4
  %394 = load i32, i32* %35, align 4
  %395 = add nsw i32 %394, 8
  store i32 %395, i32* %35, align 4
  br label %396

396:                                              ; preds = %393, %356
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %16, align 4
  %399 = add nsw i32 %397, %398
  %400 = and i32 %399, 15
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %396
  %403 = load i32, i32* %36, align 4
  %404 = or i32 %403, 2
  store i32 %404, i32* %36, align 4
  br label %405

405:                                              ; preds = %402, %396
  %406 = load i32, i32* %35, align 4
  %407 = ashr i32 %406, 4
  store i32 %407, i32* %35, align 4
  %408 = load i32, i32* %15, align 4
  store i32 %408, i32* %33, align 4
  br label %409

409:                                              ; preds = %607, %405
  %410 = load i32, i32* %33, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %610

412:                                              ; preds = %409
  %413 = load i32*, i32** %17, align 8
  store i32* %413, i32** %27, align 8
  %414 = load i32*, i32** %18, align 8
  store i32* %414, i32** %28, align 8
  %415 = load i32, i32* %36, align 4
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %447

418:                                              ; preds = %412
  %419 = load i32*, i32** %27, align 8
  %420 = getelementptr inbounds i32, i32* %419, i32 1
  store i32* %420, i32** %27, align 8
  %421 = load i32, i32* %419, align 4
  %422 = shl i32 %421, 8
  %423 = load i32, i32* %32, align 4
  %424 = and i32 %422, %423
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %424, i32* %425, align 16
  %426 = load i32*, i32** %27, align 8
  %427 = getelementptr inbounds i32, i32* %426, i32 1
  store i32* %427, i32** %27, align 8
  %428 = load i32, i32* %426, align 4
  %429 = shl i32 %428, 8
  %430 = load i32, i32* %32, align 4
  %431 = and i32 %429, %430
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1
  store i32 %431, i32* %432, align 4
  %433 = load i32*, i32** %27, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** %27, align 8
  %435 = load i32, i32* %433, align 4
  %436 = shl i32 %435, 8
  %437 = load i32, i32* %32, align 4
  %438 = and i32 %436, %437
  %439 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 2
  store i32 %438, i32* %439, align 8
  %440 = load i32*, i32** %27, align 8
  %441 = getelementptr inbounds i32, i32* %440, i32 1
  store i32* %441, i32** %27, align 8
  %442 = load i32, i32* %440, align 4
  %443 = shl i32 %442, 8
  %444 = load i32, i32* %32, align 4
  %445 = and i32 %443, %444
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  store i32 %445, i32* %446, align 4
  br label %472

447:                                              ; preds = %412
  %448 = load i32*, i32** %28, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %32, align 4
  %452 = and i32 %450, %451
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %452, i32* %453, align 16
  %454 = load i32*, i32** %28, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %32, align 4
  %458 = and i32 %456, %457
  %459 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1
  store i32 %458, i32* %459, align 4
  %460 = load i32*, i32** %28, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %32, align 4
  %464 = and i32 %462, %463
  %465 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 2
  store i32 %464, i32* %465, align 8
  %466 = load i32*, i32** %28, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 3
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %32, align 4
  %470 = and i32 %468, %469
  %471 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  store i32 %470, i32* %471, align 4
  br label %472

472:                                              ; preds = %447, %418
  %473 = load i32, i32* %35, align 4
  store i32 %473, i32* %34, align 4
  br label %474

474:                                              ; preds = %550, %472
  %475 = load i32, i32* %34, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %553

477:                                              ; preds = %474
  %478 = load i32*, i32** %27, align 8
  %479 = getelementptr inbounds i32, i32* %478, i32 1
  store i32* %479, i32** %27, align 8
  %480 = load i32, i32* %478, align 4
  store i32 %480, i32* %30, align 4
  %481 = load i32, i32* %30, align 4
  %482 = load i32, i32* %32, align 4
  %483 = and i32 %481, %482
  store i32 %483, i32* %31, align 4
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %485 = load i32, i32* %484, align 16
  %486 = load i32, i32* %31, align 4
  %487 = ashr i32 %486, 8
  %488 = or i32 %485, %487
  %489 = load i32*, i32** %28, align 8
  %490 = getelementptr inbounds i32, i32* %489, i32 1
  store i32* %490, i32** %28, align 8
  store i32 %488, i32* %489, align 4
  %491 = load i32, i32* %30, align 4
  %492 = load i32, i32* %31, align 4
  %493 = xor i32 %491, %492
  %494 = shl i32 %493, 8
  %495 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %494, i32* %495, align 16
  %496 = load i32*, i32** %27, align 8
  %497 = getelementptr inbounds i32, i32* %496, i32 1
  store i32* %497, i32** %27, align 8
  %498 = load i32, i32* %496, align 4
  store i32 %498, i32* %30, align 4
  %499 = load i32, i32* %30, align 4
  %500 = load i32, i32* %32, align 4
  %501 = and i32 %499, %500
  store i32 %501, i32* %31, align 4
  %502 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* %31, align 4
  %505 = ashr i32 %504, 8
  %506 = or i32 %503, %505
  %507 = load i32*, i32** %28, align 8
  %508 = getelementptr inbounds i32, i32* %507, i32 1
  store i32* %508, i32** %28, align 8
  store i32 %506, i32* %507, align 4
  %509 = load i32, i32* %30, align 4
  %510 = load i32, i32* %31, align 4
  %511 = xor i32 %509, %510
  %512 = shl i32 %511, 8
  %513 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1
  store i32 %512, i32* %513, align 4
  %514 = load i32*, i32** %27, align 8
  %515 = getelementptr inbounds i32, i32* %514, i32 1
  store i32* %515, i32** %27, align 8
  %516 = load i32, i32* %514, align 4
  store i32 %516, i32* %30, align 4
  %517 = load i32, i32* %30, align 4
  %518 = load i32, i32* %32, align 4
  %519 = and i32 %517, %518
  store i32 %519, i32* %31, align 4
  %520 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 2
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* %31, align 4
  %523 = ashr i32 %522, 8
  %524 = or i32 %521, %523
  %525 = load i32*, i32** %28, align 8
  %526 = getelementptr inbounds i32, i32* %525, i32 1
  store i32* %526, i32** %28, align 8
  store i32 %524, i32* %525, align 4
  %527 = load i32, i32* %30, align 4
  %528 = load i32, i32* %31, align 4
  %529 = xor i32 %527, %528
  %530 = shl i32 %529, 8
  %531 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 2
  store i32 %530, i32* %531, align 8
  %532 = load i32*, i32** %27, align 8
  %533 = getelementptr inbounds i32, i32* %532, i32 1
  store i32* %533, i32** %27, align 8
  %534 = load i32, i32* %532, align 4
  store i32 %534, i32* %30, align 4
  %535 = load i32, i32* %30, align 4
  %536 = load i32, i32* %32, align 4
  %537 = and i32 %535, %536
  store i32 %537, i32* %31, align 4
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %31, align 4
  %541 = ashr i32 %540, 8
  %542 = or i32 %539, %541
  %543 = load i32*, i32** %28, align 8
  %544 = getelementptr inbounds i32, i32* %543, i32 1
  store i32* %544, i32** %28, align 8
  store i32 %542, i32* %543, align 4
  %545 = load i32, i32* %30, align 4
  %546 = load i32, i32* %31, align 4
  %547 = xor i32 %545, %546
  %548 = shl i32 %547, 8
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  store i32 %548, i32* %549, align 4
  br label %550

550:                                              ; preds = %477
  %551 = load i32, i32* %34, align 4
  %552 = add nsw i32 %551, -1
  store i32 %552, i32* %34, align 4
  br label %474

553:                                              ; preds = %474
  %554 = load i32, i32* %36, align 4
  %555 = and i32 %554, 2
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %598

557:                                              ; preds = %553
  %558 = load i32*, i32** %28, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 0
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* %32, align 4
  %562 = and i32 %560, %561
  %563 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %564 = load i32, i32* %563, align 16
  %565 = or i32 %562, %564
  %566 = load i32*, i32** %28, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  store i32 %565, i32* %567, align 4
  %568 = load i32*, i32** %28, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* %32, align 4
  %572 = and i32 %570, %571
  %573 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 1
  %574 = load i32, i32* %573, align 4
  %575 = or i32 %572, %574
  %576 = load i32*, i32** %28, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 1
  store i32 %575, i32* %577, align 4
  %578 = load i32*, i32** %28, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 2
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* %32, align 4
  %582 = and i32 %580, %581
  %583 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 2
  %584 = load i32, i32* %583, align 8
  %585 = or i32 %582, %584
  %586 = load i32*, i32** %28, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 2
  store i32 %585, i32* %587, align 4
  %588 = load i32*, i32** %28, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 3
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %32, align 4
  %592 = and i32 %590, %591
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 3
  %594 = load i32, i32* %593, align 4
  %595 = or i32 %592, %594
  %596 = load i32*, i32** %28, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 3
  store i32 %595, i32* %597, align 4
  br label %598

598:                                              ; preds = %557, %553
  %599 = load i32, i32* %10, align 4
  %600 = load i32*, i32** %17, align 8
  %601 = sext i32 %599 to i64
  %602 = getelementptr inbounds i32, i32* %600, i64 %601
  store i32* %602, i32** %17, align 8
  %603 = load i32, i32* %10, align 4
  %604 = load i32*, i32** %18, align 8
  %605 = sext i32 %603 to i64
  %606 = getelementptr inbounds i32, i32* %604, i64 %605
  store i32* %606, i32** %18, align 8
  br label %607

607:                                              ; preds = %598
  %608 = load i32, i32* %33, align 4
  %609 = add nsw i32 %608, -1
  store i32 %609, i32* %33, align 4
  br label %409

610:                                              ; preds = %409
  br label %876

611:                                              ; preds = %353
  %612 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %613 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = inttoptr i64 %614 to i32*
  %616 = load i32, i32* %11, align 4
  %617 = sub nsw i32 %616, 1
  %618 = load i32, i32* %10, align 4
  %619 = mul nsw i32 %617, %618
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %615, i64 %620
  %622 = load i32, i32* %12, align 4
  %623 = load i32, i32* %16, align 4
  %624 = add nsw i32 %622, %623
  %625 = add nsw i32 %624, 8
  %626 = and i32 %625, -16
  %627 = load i32, i32* @BPL, align 4
  %628 = sdiv i32 8, %627
  %629 = sdiv i32 %626, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %621, i64 %630
  store i32* %631, i32** %17, align 8
  %632 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %633 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %632, i32 0, i32 0
  %634 = load i64, i64* %633, align 8
  %635 = inttoptr i64 %634 to i32*
  %636 = load i32, i32* %13, align 4
  %637 = sub nsw i32 %636, 1
  %638 = load i32, i32* %10, align 4
  %639 = mul nsw i32 %637, %638
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %635, i64 %640
  %642 = load i32, i32* %14, align 4
  %643 = load i32, i32* %16, align 4
  %644 = add nsw i32 %642, %643
  %645 = add nsw i32 %644, 8
  %646 = and i32 %645, -16
  %647 = load i32, i32* @BPL, align 4
  %648 = sdiv i32 8, %647
  %649 = sdiv i32 %646, %648
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %641, i64 %650
  store i32* %651, i32** %18, align 8
  store i32 16711935, i32* %42, align 4
  store i32 0, i32* %46, align 4
  %652 = load i32, i32* %16, align 4
  store i32 %652, i32* %45, align 4
  %653 = load i32, i32* %14, align 4
  %654 = load i32, i32* %16, align 4
  %655 = add nsw i32 %653, %654
  %656 = and i32 %655, 15
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %659

658:                                              ; preds = %611
  store i32 1, i32* %46, align 4
  br label %659

659:                                              ; preds = %658, %611
  %660 = load i32, i32* %12, align 4
  %661 = and i32 %660, 15
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %668

663:                                              ; preds = %659
  %664 = load i32, i32* %46, align 4
  %665 = or i32 %664, 2
  store i32 %665, i32* %46, align 4
  %666 = load i32, i32* %45, align 4
  %667 = add nsw i32 %666, 8
  store i32 %667, i32* %45, align 4
  br label %668

668:                                              ; preds = %663, %659
  %669 = load i32, i32* %45, align 4
  %670 = ashr i32 %669, 4
  store i32 %670, i32* %45, align 4
  %671 = load i32, i32* %15, align 4
  store i32 %671, i32* %43, align 4
  br label %672

672:                                              ; preds = %872, %668
  %673 = load i32, i32* %43, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %875

675:                                              ; preds = %672
  %676 = load i32*, i32** %17, align 8
  store i32* %676, i32** %37, align 8
  %677 = load i32*, i32** %18, align 8
  store i32* %677, i32** %38, align 8
  %678 = load i32, i32* %46, align 4
  %679 = and i32 %678, 1
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %706

681:                                              ; preds = %675
  %682 = load i32*, i32** %38, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 -1
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* %42, align 4
  %686 = and i32 %684, %685
  %687 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %686, i32* %687, align 16
  %688 = load i32*, i32** %38, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 -2
  %690 = load i32, i32* %689, align 4
  %691 = load i32, i32* %42, align 4
  %692 = and i32 %690, %691
  %693 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 1
  store i32 %692, i32* %693, align 4
  %694 = load i32*, i32** %38, align 8
  %695 = getelementptr inbounds i32, i32* %694, i64 -3
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* %42, align 4
  %698 = and i32 %696, %697
  %699 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  store i32 %698, i32* %699, align 8
  %700 = load i32*, i32** %38, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 -4
  %702 = load i32, i32* %701, align 4
  %703 = load i32, i32* %42, align 4
  %704 = and i32 %702, %703
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 3
  store i32 %704, i32* %705, align 4
  br label %735

706:                                              ; preds = %675
  %707 = load i32*, i32** %37, align 8
  %708 = getelementptr inbounds i32, i32* %707, i32 -1
  store i32* %708, i32** %37, align 8
  %709 = load i32, i32* %708, align 4
  %710 = ashr i32 %709, 8
  %711 = load i32, i32* %42, align 4
  %712 = and i32 %710, %711
  %713 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %712, i32* %713, align 16
  %714 = load i32*, i32** %37, align 8
  %715 = getelementptr inbounds i32, i32* %714, i32 -1
  store i32* %715, i32** %37, align 8
  %716 = load i32, i32* %715, align 4
  %717 = ashr i32 %716, 8
  %718 = load i32, i32* %42, align 4
  %719 = and i32 %717, %718
  %720 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 1
  store i32 %719, i32* %720, align 4
  %721 = load i32*, i32** %37, align 8
  %722 = getelementptr inbounds i32, i32* %721, i32 -1
  store i32* %722, i32** %37, align 8
  %723 = load i32, i32* %722, align 4
  %724 = ashr i32 %723, 8
  %725 = load i32, i32* %42, align 4
  %726 = and i32 %724, %725
  %727 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  store i32 %726, i32* %727, align 8
  %728 = load i32*, i32** %37, align 8
  %729 = getelementptr inbounds i32, i32* %728, i32 -1
  store i32* %729, i32** %37, align 8
  %730 = load i32, i32* %729, align 4
  %731 = ashr i32 %730, 8
  %732 = load i32, i32* %42, align 4
  %733 = and i32 %731, %732
  %734 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 3
  store i32 %733, i32* %734, align 4
  br label %735

735:                                              ; preds = %706, %681
  %736 = load i32, i32* %45, align 4
  store i32 %736, i32* %44, align 4
  br label %737

737:                                              ; preds = %813, %735
  %738 = load i32, i32* %44, align 4
  %739 = icmp sgt i32 %738, 0
  br i1 %739, label %740, label %816

740:                                              ; preds = %737
  %741 = load i32*, i32** %37, align 8
  %742 = getelementptr inbounds i32, i32* %741, i32 -1
  store i32* %742, i32** %37, align 8
  %743 = load i32, i32* %742, align 4
  store i32 %743, i32* %40, align 4
  %744 = load i32, i32* %40, align 4
  %745 = load i32, i32* %42, align 4
  %746 = and i32 %744, %745
  store i32 %746, i32* %41, align 4
  %747 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  %748 = load i32, i32* %747, align 16
  %749 = load i32, i32* %41, align 4
  %750 = shl i32 %749, 8
  %751 = or i32 %748, %750
  %752 = load i32*, i32** %38, align 8
  %753 = getelementptr inbounds i32, i32* %752, i32 -1
  store i32* %753, i32** %38, align 8
  store i32 %751, i32* %753, align 4
  %754 = load i32, i32* %40, align 4
  %755 = load i32, i32* %41, align 4
  %756 = xor i32 %754, %755
  %757 = ashr i32 %756, 8
  %758 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %757, i32* %758, align 16
  %759 = load i32*, i32** %37, align 8
  %760 = getelementptr inbounds i32, i32* %759, i32 -1
  store i32* %760, i32** %37, align 8
  %761 = load i32, i32* %760, align 4
  store i32 %761, i32* %40, align 4
  %762 = load i32, i32* %40, align 4
  %763 = load i32, i32* %42, align 4
  %764 = and i32 %762, %763
  store i32 %764, i32* %41, align 4
  %765 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 1
  %766 = load i32, i32* %765, align 4
  %767 = load i32, i32* %41, align 4
  %768 = shl i32 %767, 8
  %769 = or i32 %766, %768
  %770 = load i32*, i32** %38, align 8
  %771 = getelementptr inbounds i32, i32* %770, i32 -1
  store i32* %771, i32** %38, align 8
  store i32 %769, i32* %771, align 4
  %772 = load i32, i32* %40, align 4
  %773 = load i32, i32* %41, align 4
  %774 = xor i32 %772, %773
  %775 = ashr i32 %774, 8
  %776 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 1
  store i32 %775, i32* %776, align 4
  %777 = load i32*, i32** %37, align 8
  %778 = getelementptr inbounds i32, i32* %777, i32 -1
  store i32* %778, i32** %37, align 8
  %779 = load i32, i32* %778, align 4
  store i32 %779, i32* %40, align 4
  %780 = load i32, i32* %40, align 4
  %781 = load i32, i32* %42, align 4
  %782 = and i32 %780, %781
  store i32 %782, i32* %41, align 4
  %783 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  %784 = load i32, i32* %783, align 8
  %785 = load i32, i32* %41, align 4
  %786 = shl i32 %785, 8
  %787 = or i32 %784, %786
  %788 = load i32*, i32** %38, align 8
  %789 = getelementptr inbounds i32, i32* %788, i32 -1
  store i32* %789, i32** %38, align 8
  store i32 %787, i32* %789, align 4
  %790 = load i32, i32* %40, align 4
  %791 = load i32, i32* %41, align 4
  %792 = xor i32 %790, %791
  %793 = ashr i32 %792, 8
  %794 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  store i32 %793, i32* %794, align 8
  %795 = load i32*, i32** %37, align 8
  %796 = getelementptr inbounds i32, i32* %795, i32 -1
  store i32* %796, i32** %37, align 8
  %797 = load i32, i32* %796, align 4
  store i32 %797, i32* %40, align 4
  %798 = load i32, i32* %40, align 4
  %799 = load i32, i32* %42, align 4
  %800 = and i32 %798, %799
  store i32 %800, i32* %41, align 4
  %801 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 3
  %802 = load i32, i32* %801, align 4
  %803 = load i32, i32* %41, align 4
  %804 = shl i32 %803, 8
  %805 = or i32 %802, %804
  %806 = load i32*, i32** %38, align 8
  %807 = getelementptr inbounds i32, i32* %806, i32 -1
  store i32* %807, i32** %38, align 8
  store i32 %805, i32* %807, align 4
  %808 = load i32, i32* %40, align 4
  %809 = load i32, i32* %41, align 4
  %810 = xor i32 %808, %809
  %811 = ashr i32 %810, 8
  %812 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 3
  store i32 %811, i32* %812, align 4
  br label %813

813:                                              ; preds = %740
  %814 = load i32, i32* %44, align 4
  %815 = add nsw i32 %814, -1
  store i32 %815, i32* %44, align 4
  br label %737

816:                                              ; preds = %737
  %817 = load i32, i32* %46, align 4
  %818 = and i32 %817, 2
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %861, label %820

820:                                              ; preds = %816
  %821 = load i32*, i32** %38, align 8
  %822 = getelementptr inbounds i32, i32* %821, i64 -1
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* %42, align 4
  %825 = and i32 %823, %824
  %826 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  %827 = load i32, i32* %826, align 16
  %828 = or i32 %825, %827
  %829 = load i32*, i32** %38, align 8
  %830 = getelementptr inbounds i32, i32* %829, i64 -1
  store i32 %828, i32* %830, align 4
  %831 = load i32*, i32** %38, align 8
  %832 = getelementptr inbounds i32, i32* %831, i64 -2
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* %42, align 4
  %835 = and i32 %833, %834
  %836 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 1
  %837 = load i32, i32* %836, align 4
  %838 = or i32 %835, %837
  %839 = load i32*, i32** %38, align 8
  %840 = getelementptr inbounds i32, i32* %839, i64 -2
  store i32 %838, i32* %840, align 4
  %841 = load i32*, i32** %38, align 8
  %842 = getelementptr inbounds i32, i32* %841, i64 -3
  %843 = load i32, i32* %842, align 4
  %844 = load i32, i32* %42, align 4
  %845 = and i32 %843, %844
  %846 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 2
  %847 = load i32, i32* %846, align 8
  %848 = or i32 %845, %847
  %849 = load i32*, i32** %38, align 8
  %850 = getelementptr inbounds i32, i32* %849, i64 -3
  store i32 %848, i32* %850, align 4
  %851 = load i32*, i32** %38, align 8
  %852 = getelementptr inbounds i32, i32* %851, i64 -4
  %853 = load i32, i32* %852, align 4
  %854 = load i32, i32* %42, align 4
  %855 = and i32 %853, %854
  %856 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 3
  %857 = load i32, i32* %856, align 4
  %858 = or i32 %855, %857
  %859 = load i32*, i32** %38, align 8
  %860 = getelementptr inbounds i32, i32* %859, i64 -4
  store i32 %858, i32* %860, align 4
  br label %861

861:                                              ; preds = %820, %816
  %862 = load i32, i32* %10, align 4
  %863 = load i32*, i32** %17, align 8
  %864 = sext i32 %862 to i64
  %865 = sub i64 0, %864
  %866 = getelementptr inbounds i32, i32* %863, i64 %865
  store i32* %866, i32** %17, align 8
  %867 = load i32, i32* %10, align 4
  %868 = load i32*, i32** %18, align 8
  %869 = sext i32 %867 to i64
  %870 = sub i64 0, %869
  %871 = getelementptr inbounds i32, i32* %868, i64 %870
  store i32* %871, i32** %18, align 8
  br label %872

872:                                              ; preds = %861
  %873 = load i32, i32* %43, align 4
  %874 = add nsw i32 %873, -1
  store i32 %874, i32* %43, align 4
  br label %672

875:                                              ; preds = %672
  br label %876

876:                                              ; preds = %875, %610
  br label %877

877:                                              ; preds = %876, %352
  ret void
}

declare dso_local i32 @memmove32_col(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
