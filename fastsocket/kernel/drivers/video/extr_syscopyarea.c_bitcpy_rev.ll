; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_syscopyarea.c_bitcpy_rev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_syscopyarea.c_bitcpy_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64*, i32, i32, i32)* @bitcpy_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitcpy_rev(%struct.fb_info* %0, i64* %1, i32 %2, i64* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sub i32 %23, 1
  %25 = load i32, i32* %13, align 4
  %26 = udiv i32 %24, %25
  %27 = load i64*, i64** %9, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64* %29, i64** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sub i32 %30, 1
  %32 = load i32, i32* %13, align 4
  %33 = udiv i32 %31, %32
  %34 = load i64*, i64** %11, align 8
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64* %36, i64** %11, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sub i32 %37, 1
  %39 = load i32, i32* %13, align 4
  %40 = urem i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %7
  %43 = load i32, i32* %14, align 4
  %44 = sub i32 %43, 1
  %45 = load i32, i32* %13, align 4
  %46 = urem i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ffs(i32 %50)
  %52 = sub nsw i32 %51, 1
  %53 = ashr i32 %49, %52
  %54 = load i64*, i64** %9, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub i32 %61, 1
  %63 = load i32, i32* %13, align 4
  %64 = urem i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ffs(i32 %68)
  %70 = sub nsw i32 %69, 1
  %71 = ashr i32 %67, %70
  %72 = load i64*, i64** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64* %74, i64** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %42, %7
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %17, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i64 @FB_SHIFT_LOW(%struct.fb_info* %83, i64 -1, i32 %87)
  store i64 %88, i64* %15, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub i32 %92, %93
  %95 = load i32, i32* %13, align 4
  %96 = urem i32 %94, %95
  %97 = sub i32 %91, %96
  %98 = call i64 @FB_SHIFT_LOW(%struct.fb_info* %89, i64 -1, i32 %97)
  %99 = xor i64 %98, -1
  store i64 %99, i64* %16, align 8
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %217, label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 1
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = icmp uge i64 %105, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load i64, i64* %16, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %15, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %15, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i64 @comp(i64 %118, i64 %120, i64 %121)
  %123 = load i64*, i64** %9, align 8
  store i64 %122, i64* %123, align 8
  br label %216

124:                                              ; preds = %102
  %125 = load i64, i64* %15, align 8
  %126 = icmp ne i64 %125, -1
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i64*, i64** %11, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i64 @comp(i64 %129, i64 %131, i64 %132)
  %134 = load i64*, i64** %9, align 8
  store i64 %133, i64* %134, align 8
  %135 = load i64*, i64** %9, align 8
  %136 = getelementptr inbounds i64, i64* %135, i32 -1
  store i64* %136, i64** %9, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 -1
  store i64* %138, i64** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* %14, align 4
  %142 = sub i32 %141, %140
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %127, %124
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = udiv i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %150, %143
  %148 = load i32, i32* %14, align 4
  %149 = icmp uge i32 %148, 8
  br i1 %149, label %150, label %193

150:                                              ; preds = %147
  %151 = load i64*, i64** %11, align 8
  %152 = getelementptr inbounds i64, i64* %151, i32 -1
  store i64* %152, i64** %11, align 8
  %153 = load i64, i64* %151, align 8
  %154 = load i64*, i64** %9, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 -1
  store i64* %155, i64** %9, align 8
  store i64 %153, i64* %154, align 8
  %156 = load i64*, i64** %11, align 8
  %157 = getelementptr inbounds i64, i64* %156, i32 -1
  store i64* %157, i64** %11, align 8
  %158 = load i64, i64* %156, align 8
  %159 = load i64*, i64** %9, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 -1
  store i64* %160, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  %161 = load i64*, i64** %11, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 -1
  store i64* %162, i64** %11, align 8
  %163 = load i64, i64* %161, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = getelementptr inbounds i64, i64* %164, i32 -1
  store i64* %165, i64** %9, align 8
  store i64 %163, i64* %164, align 8
  %166 = load i64*, i64** %11, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 -1
  store i64* %167, i64** %11, align 8
  %168 = load i64, i64* %166, align 8
  %169 = load i64*, i64** %9, align 8
  %170 = getelementptr inbounds i64, i64* %169, i32 -1
  store i64* %170, i64** %9, align 8
  store i64 %168, i64* %169, align 8
  %171 = load i64*, i64** %11, align 8
  %172 = getelementptr inbounds i64, i64* %171, i32 -1
  store i64* %172, i64** %11, align 8
  %173 = load i64, i64* %171, align 8
  %174 = load i64*, i64** %9, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 -1
  store i64* %175, i64** %9, align 8
  store i64 %173, i64* %174, align 8
  %176 = load i64*, i64** %11, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 -1
  store i64* %177, i64** %11, align 8
  %178 = load i64, i64* %176, align 8
  %179 = load i64*, i64** %9, align 8
  %180 = getelementptr inbounds i64, i64* %179, i32 -1
  store i64* %180, i64** %9, align 8
  store i64 %178, i64* %179, align 8
  %181 = load i64*, i64** %11, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 -1
  store i64* %182, i64** %11, align 8
  %183 = load i64, i64* %181, align 8
  %184 = load i64*, i64** %9, align 8
  %185 = getelementptr inbounds i64, i64* %184, i32 -1
  store i64* %185, i64** %9, align 8
  store i64 %183, i64* %184, align 8
  %186 = load i64*, i64** %11, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 -1
  store i64* %187, i64** %11, align 8
  %188 = load i64, i64* %186, align 8
  %189 = load i64*, i64** %9, align 8
  %190 = getelementptr inbounds i64, i64* %189, i32 -1
  store i64* %190, i64** %9, align 8
  store i64 %188, i64* %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sub i32 %191, 8
  store i32 %192, i32* %14, align 4
  br label %147

193:                                              ; preds = %147
  br label %194

194:                                              ; preds = %198, %193
  %195 = load i32, i32* %14, align 4
  %196 = add i32 %195, -1
  store i32 %196, i32* %14, align 4
  %197 = icmp ne i32 %195, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i64*, i64** %11, align 8
  %200 = getelementptr inbounds i64, i64* %199, i32 -1
  store i64* %200, i64** %11, align 8
  %201 = load i64, i64* %199, align 8
  %202 = load i64*, i64** %9, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 -1
  store i64* %203, i64** %9, align 8
  store i64 %201, i64* %202, align 8
  br label %194

204:                                              ; preds = %194
  %205 = load i64, i64* %16, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i64*, i64** %11, align 8
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %9, align 8
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %16, align 8
  %213 = call i64 @comp(i64 %209, i64 %211, i64 %212)
  %214 = load i64*, i64** %9, align 8
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %207, %204
  br label %216

216:                                              ; preds = %215, %116
  br label %464

217:                                              ; preds = %79
  %218 = load i32, i32* %17, align 4
  %219 = sub nsw i32 0, %218
  %220 = load i32, i32* %13, align 4
  %221 = sub nsw i32 %220, 1
  %222 = and i32 %219, %221
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %13, align 4
  %225 = sub nsw i32 %224, 1
  %226 = and i32 %223, %225
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = add i64 %228, 1
  %230 = load i32, i32* %14, align 4
  %231 = zext i32 %230 to i64
  %232 = icmp uge i64 %229, %231
  br i1 %232, label %233, label %292

233:                                              ; preds = %217
  %234 = load i64, i64* %16, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i64, i64* %16, align 8
  %238 = load i64, i64* %15, align 8
  %239 = and i64 %238, %237
  store i64 %239, i64* %15, align 8
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load i64*, i64** %11, align 8
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = zext i32 %246 to i64
  %248 = shl i64 %245, %247
  %249 = load i64*, i64** %9, align 8
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %15, align 8
  %252 = call i64 @comp(i64 %248, i64 %250, i64 %251)
  %253 = load i64*, i64** %9, align 8
  store i64 %252, i64* %253, align 8
  br label %291

254:                                              ; preds = %240
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 1, %256
  %258 = load i32, i32* %14, align 4
  %259 = zext i32 %258 to i64
  %260 = icmp uge i64 %257, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %254
  %262 = load i64*, i64** %11, align 8
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = zext i32 %264 to i64
  %266 = lshr i64 %263, %265
  %267 = load i64*, i64** %9, align 8
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %15, align 8
  %270 = call i64 @comp(i64 %266, i64 %268, i64 %269)
  %271 = load i64*, i64** %9, align 8
  store i64 %270, i64* %271, align 8
  br label %290

272:                                              ; preds = %254
  %273 = load i64*, i64** %11, align 8
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* %19, align 4
  %276 = zext i32 %275 to i64
  %277 = lshr i64 %274, %276
  %278 = load i64*, i64** %11, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 -1
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %18, align 4
  %282 = zext i32 %281 to i64
  %283 = shl i64 %280, %282
  %284 = or i64 %277, %283
  %285 = load i64*, i64** %9, align 8
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %15, align 8
  %288 = call i64 @comp(i64 %284, i64 %286, i64 %287)
  %289 = load i64*, i64** %9, align 8
  store i64 %288, i64* %289, align 8
  br label %290

290:                                              ; preds = %272, %261
  br label %291

291:                                              ; preds = %290, %243
  br label %463

292:                                              ; preds = %217
  %293 = load i64*, i64** %11, align 8
  %294 = getelementptr inbounds i64, i64* %293, i32 -1
  store i64* %294, i64** %11, align 8
  %295 = load i64, i64* %293, align 8
  store i64 %295, i64* %20, align 8
  %296 = load i32, i32* %17, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load i64, i64* %20, align 8
  %300 = load i32, i32* %18, align 4
  %301 = zext i32 %300 to i64
  %302 = shl i64 %299, %301
  %303 = load i64*, i64** %9, align 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* %15, align 8
  %306 = call i64 @comp(i64 %302, i64 %304, i64 %305)
  %307 = load i64*, i64** %9, align 8
  store i64 %306, i64* %307, align 8
  br label %327

308:                                              ; preds = %292
  %309 = load i64*, i64** %11, align 8
  %310 = getelementptr inbounds i64, i64* %309, i32 -1
  store i64* %310, i64** %11, align 8
  %311 = load i64, i64* %309, align 8
  store i64 %311, i64* %21, align 8
  %312 = load i64, i64* %20, align 8
  %313 = load i32, i32* %19, align 4
  %314 = zext i32 %313 to i64
  %315 = lshr i64 %312, %314
  %316 = load i64, i64* %21, align 8
  %317 = load i32, i32* %18, align 4
  %318 = zext i32 %317 to i64
  %319 = shl i64 %316, %318
  %320 = or i64 %315, %319
  %321 = load i64*, i64** %9, align 8
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %15, align 8
  %324 = call i64 @comp(i64 %320, i64 %322, i64 %323)
  %325 = load i64*, i64** %9, align 8
  store i64 %324, i64* %325, align 8
  %326 = load i64, i64* %21, align 8
  store i64 %326, i64* %20, align 8
  br label %327

327:                                              ; preds = %308, %298
  %328 = load i64*, i64** %9, align 8
  %329 = getelementptr inbounds i64, i64* %328, i32 -1
  store i64* %329, i64** %9, align 8
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  %332 = load i32, i32* %14, align 4
  %333 = sub i32 %332, %331
  store i32 %333, i32* %14, align 4
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* %13, align 4
  %336 = urem i32 %334, %335
  store i32 %336, i32* %22, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %14, align 4
  %339 = udiv i32 %338, %337
  store i32 %339, i32* %14, align 4
  br label %340

340:                                              ; preds = %343, %327
  %341 = load i32, i32* %14, align 4
  %342 = icmp uge i32 %341, 4
  br i1 %342, label %343, label %406

343:                                              ; preds = %340
  %344 = load i64*, i64** %11, align 8
  %345 = getelementptr inbounds i64, i64* %344, i32 -1
  store i64* %345, i64** %11, align 8
  %346 = load i64, i64* %344, align 8
  store i64 %346, i64* %21, align 8
  %347 = load i64, i64* %20, align 8
  %348 = load i32, i32* %19, align 4
  %349 = zext i32 %348 to i64
  %350 = lshr i64 %347, %349
  %351 = load i64, i64* %21, align 8
  %352 = load i32, i32* %18, align 4
  %353 = zext i32 %352 to i64
  %354 = shl i64 %351, %353
  %355 = or i64 %350, %354
  %356 = load i64*, i64** %9, align 8
  %357 = getelementptr inbounds i64, i64* %356, i32 -1
  store i64* %357, i64** %9, align 8
  store i64 %355, i64* %356, align 8
  %358 = load i64, i64* %21, align 8
  store i64 %358, i64* %20, align 8
  %359 = load i64*, i64** %11, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 -1
  store i64* %360, i64** %11, align 8
  %361 = load i64, i64* %359, align 8
  store i64 %361, i64* %21, align 8
  %362 = load i64, i64* %20, align 8
  %363 = load i32, i32* %19, align 4
  %364 = zext i32 %363 to i64
  %365 = lshr i64 %362, %364
  %366 = load i64, i64* %21, align 8
  %367 = load i32, i32* %18, align 4
  %368 = zext i32 %367 to i64
  %369 = shl i64 %366, %368
  %370 = or i64 %365, %369
  %371 = load i64*, i64** %9, align 8
  %372 = getelementptr inbounds i64, i64* %371, i32 -1
  store i64* %372, i64** %9, align 8
  store i64 %370, i64* %371, align 8
  %373 = load i64, i64* %21, align 8
  store i64 %373, i64* %20, align 8
  %374 = load i64*, i64** %11, align 8
  %375 = getelementptr inbounds i64, i64* %374, i32 -1
  store i64* %375, i64** %11, align 8
  %376 = load i64, i64* %374, align 8
  store i64 %376, i64* %21, align 8
  %377 = load i64, i64* %20, align 8
  %378 = load i32, i32* %19, align 4
  %379 = zext i32 %378 to i64
  %380 = lshr i64 %377, %379
  %381 = load i64, i64* %21, align 8
  %382 = load i32, i32* %18, align 4
  %383 = zext i32 %382 to i64
  %384 = shl i64 %381, %383
  %385 = or i64 %380, %384
  %386 = load i64*, i64** %9, align 8
  %387 = getelementptr inbounds i64, i64* %386, i32 -1
  store i64* %387, i64** %9, align 8
  store i64 %385, i64* %386, align 8
  %388 = load i64, i64* %21, align 8
  store i64 %388, i64* %20, align 8
  %389 = load i64*, i64** %11, align 8
  %390 = getelementptr inbounds i64, i64* %389, i32 -1
  store i64* %390, i64** %11, align 8
  %391 = load i64, i64* %389, align 8
  store i64 %391, i64* %21, align 8
  %392 = load i64, i64* %20, align 8
  %393 = load i32, i32* %19, align 4
  %394 = zext i32 %393 to i64
  %395 = lshr i64 %392, %394
  %396 = load i64, i64* %21, align 8
  %397 = load i32, i32* %18, align 4
  %398 = zext i32 %397 to i64
  %399 = shl i64 %396, %398
  %400 = or i64 %395, %399
  %401 = load i64*, i64** %9, align 8
  %402 = getelementptr inbounds i64, i64* %401, i32 -1
  store i64* %402, i64** %9, align 8
  store i64 %400, i64* %401, align 8
  %403 = load i64, i64* %21, align 8
  store i64 %403, i64* %20, align 8
  %404 = load i32, i32* %14, align 4
  %405 = sub i32 %404, 4
  store i32 %405, i32* %14, align 4
  br label %340

406:                                              ; preds = %340
  br label %407

407:                                              ; preds = %411, %406
  %408 = load i32, i32* %14, align 4
  %409 = add i32 %408, -1
  store i32 %409, i32* %14, align 4
  %410 = icmp ne i32 %408, 0
  br i1 %410, label %411, label %427

411:                                              ; preds = %407
  %412 = load i64*, i64** %11, align 8
  %413 = getelementptr inbounds i64, i64* %412, i32 -1
  store i64* %413, i64** %11, align 8
  %414 = load i64, i64* %412, align 8
  store i64 %414, i64* %21, align 8
  %415 = load i64, i64* %20, align 8
  %416 = load i32, i32* %19, align 4
  %417 = zext i32 %416 to i64
  %418 = lshr i64 %415, %417
  %419 = load i64, i64* %21, align 8
  %420 = load i32, i32* %18, align 4
  %421 = zext i32 %420 to i64
  %422 = shl i64 %419, %421
  %423 = or i64 %418, %422
  %424 = load i64*, i64** %9, align 8
  %425 = getelementptr inbounds i64, i64* %424, i32 -1
  store i64* %425, i64** %9, align 8
  store i64 %423, i64* %424, align 8
  %426 = load i64, i64* %21, align 8
  store i64 %426, i64* %20, align 8
  br label %407

427:                                              ; preds = %407
  %428 = load i64, i64* %16, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %462

430:                                              ; preds = %427
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* %18, align 4
  %433 = icmp sle i32 %431, %432
  br i1 %433, label %434, label %444

434:                                              ; preds = %430
  %435 = load i64, i64* %20, align 8
  %436 = load i32, i32* %19, align 4
  %437 = zext i32 %436 to i64
  %438 = lshr i64 %435, %437
  %439 = load i64*, i64** %9, align 8
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* %16, align 8
  %442 = call i64 @comp(i64 %438, i64 %440, i64 %441)
  %443 = load i64*, i64** %9, align 8
  store i64 %442, i64* %443, align 8
  br label %461

444:                                              ; preds = %430
  %445 = load i64*, i64** %11, align 8
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %21, align 8
  %447 = load i64, i64* %20, align 8
  %448 = load i32, i32* %19, align 4
  %449 = zext i32 %448 to i64
  %450 = lshr i64 %447, %449
  %451 = load i64, i64* %21, align 8
  %452 = load i32, i32* %18, align 4
  %453 = zext i32 %452 to i64
  %454 = shl i64 %451, %453
  %455 = or i64 %450, %454
  %456 = load i64*, i64** %9, align 8
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* %16, align 8
  %459 = call i64 @comp(i64 %455, i64 %457, i64 %458)
  %460 = load i64*, i64** %9, align 8
  store i64 %459, i64* %460, align 8
  br label %461

461:                                              ; preds = %444, %434
  br label %462

462:                                              ; preds = %461, %427
  br label %463

463:                                              ; preds = %462, %291
  br label %464

464:                                              ; preds = %463, %216
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @FB_SHIFT_LOW(%struct.fb_info*, i64, i32) #1

declare dso_local i64 @comp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
