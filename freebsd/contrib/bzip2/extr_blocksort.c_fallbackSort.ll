; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackSort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_fallbackSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @fallbackSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fallbackSort(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [257 x i32], align 16
  %12 = alloca [256 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = bitcast i32* %24 to i64*
  store i64* %25, i64** %23, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 @VPrintf0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %5
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 257
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %31

41:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i64*, i64** %23, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %42

58:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %59

73:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 257
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %74

91:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %117, %91
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load i64*, i64** %23, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %96
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %92

120:                                              ; preds = %92
  %121 = load i32, i32* %9, align 4
  %122 = sdiv i32 %121, 32
  %123 = add nsw i32 2, %122
  store i32 %123, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %133, %120
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %22, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %124

136:                                              ; preds = %124
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %146, %136
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 256
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [257 x i32], [257 x i32]* %11, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @SET_BH(i32 %144)
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %137

149:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %165, %149
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 32
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %14, align 4
  %156 = mul nsw i32 2, %155
  %157 = add nsw i32 %154, %156
  %158 = call i32 @SET_BH(i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %14, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %159, %161
  %163 = add nsw i32 %162, 1
  %164 = call i32 @CLEAR_BH(i32 %163)
  br label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %150

168:                                              ; preds = %150
  store i32 1, i32* %13, align 4
  br label %169

169:                                              ; preds = %168, %357
  %170 = load i32, i32* %10, align 4
  %171 = icmp sge i32 %170, 4
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @VPrintf1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %206, %175
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %209

180:                                              ; preds = %176
  %181 = load i32, i32* %14, align 4
  %182 = call i64 @ISSET_BH(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %184, %180
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %186
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %196, %186
  %201 = load i32, i32* %15, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %201, i32* %205, align 4
  br label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %176

209:                                              ; preds = %176
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %18, align 4
  br label %210

210:                                              ; preds = %209, %340
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %223, %210
  %214 = load i32, i32* %16, align 4
  %215 = call i64 @ISSET_BH(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i32, i32* %16, align 4
  %219 = call i64 @UNALIGNED_BH(i32 %218)
  %220 = icmp ne i64 %219, 0
  br label %221

221:                                              ; preds = %217, %213
  %222 = phi i1 [ false, %213 ], [ %220, %217 ]
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %213

226:                                              ; preds = %221
  %227 = load i32, i32* %16, align 4
  %228 = call i64 @ISSET_BH(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %235, %230
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @WORD_BH(i32 %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 32
  store i32 %237, i32* %16, align 4
  br label %231

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %243, %238
  %240 = load i32, i32* %16, align 4
  %241 = call i64 @ISSET_BH(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  br label %239

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %226
  %248 = load i32, i32* %16, align 4
  %249 = sub nsw i32 %248, 1
  store i32 %249, i32* %17, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  br label %341

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %265, %254
  %256 = load i32, i32* %16, align 4
  %257 = call i64 @ISSET_BH(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %16, align 4
  %261 = call i64 @UNALIGNED_BH(i32 %260)
  %262 = icmp ne i64 %261, 0
  br label %263

263:                                              ; preds = %259, %255
  %264 = phi i1 [ false, %255 ], [ %262, %259 ]
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = load i32, i32* %16, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %16, align 4
  br label %255

268:                                              ; preds = %263
  %269 = load i32, i32* %16, align 4
  %270 = call i64 @ISSET_BH(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %268
  br label %273

273:                                              ; preds = %277, %272
  %274 = load i32, i32* %16, align 4
  %275 = call i32 @WORD_BH(i32 %274)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 32
  store i32 %279, i32* %16, align 4
  br label %273

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %286, %280
  %282 = load i32, i32* %16, align 4
  %283 = call i64 @ISSET_BH(i32 %282)
  %284 = icmp ne i64 %283, 0
  %285 = xor i1 %284, true
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %16, align 4
  br label %281

289:                                              ; preds = %281
  br label %290

290:                                              ; preds = %289, %268
  %291 = load i32, i32* %16, align 4
  %292 = sub nsw i32 %291, 1
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  br label %341

297:                                              ; preds = %290
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %17, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %340

301:                                              ; preds = %297
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %17, align 4
  %304 = sub nsw i32 %302, %303
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* %21, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %21, align 4
  %308 = load i32*, i32** %6, align 8
  %309 = load i32*, i32** %7, align 8
  %310 = load i32, i32* %17, align 4
  %311 = load i32, i32* %18, align 4
  %312 = call i32 @fallbackQSort3(i32* %308, i32* %309, i32 %310, i32 %311)
  store i32 -1, i32* %19, align 4
  %313 = load i32, i32* %17, align 4
  store i32 %313, i32* %14, align 4
  br label %314

314:                                              ; preds = %336, %301
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %18, align 4
  %317 = icmp sle i32 %315, %316
  br i1 %317, label %318, label %339

318:                                              ; preds = %314
  %319 = load i32*, i32** %7, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %319, i64 %325
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %20, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %318
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @SET_BH(i32 %332)
  %334 = load i32, i32* %20, align 4
  store i32 %334, i32* %19, align 4
  br label %335

335:                                              ; preds = %331, %318
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %14, align 4
  br label %314

339:                                              ; preds = %314
  br label %340

340:                                              ; preds = %339, %297
  br label %210

341:                                              ; preds = %296, %253
  %342 = load i32, i32* %10, align 4
  %343 = icmp sge i32 %342, 4
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32, i32* %21, align 4
  %346 = call i32 @VPrintf1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i32, i32* %13, align 4
  %349 = mul nsw i32 %348, 2
  store i32 %349, i32* %13, align 4
  %350 = load i32, i32* %13, align 4
  %351 = load i32, i32* %9, align 4
  %352 = icmp sgt i32 %350, %351
  br i1 %352, label %356, label %353

353:                                              ; preds = %347
  %354 = load i32, i32* %21, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353, %347
  br label %358

357:                                              ; preds = %353
  br label %169

358:                                              ; preds = %356
  %359 = load i32, i32* %10, align 4
  %360 = icmp sge i32 %359, 4
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i32 @VPrintf0(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %358
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %364

364:                                              ; preds = %394, %363
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %9, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %397

368:                                              ; preds = %364
  br label %369

369:                                              ; preds = %375, %368
  %370 = load i32, i32* %15, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %369
  %376 = load i32, i32* %15, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %15, align 4
  br label %369

378:                                              ; preds = %369
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %381, align 4
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = load i64*, i64** %23, align 8
  %387 = load i32*, i32** %6, align 8
  %388 = load i32, i32* %14, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i64, i64* %386, i64 %392
  store i64 %385, i64* %393, align 8
  br label %394

394:                                              ; preds = %378
  %395 = load i32, i32* %14, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %14, align 4
  br label %364

397:                                              ; preds = %364
  %398 = load i32, i32* %15, align 4
  %399 = icmp slt i32 %398, 256
  %400 = zext i1 %399 to i32
  %401 = call i32 @AssertH(i32 %400, i32 1005)
  ret void
}

declare dso_local i32 @VPrintf0(i8*) #1

declare dso_local i32 @SET_BH(i32) #1

declare dso_local i32 @CLEAR_BH(i32) #1

declare dso_local i32 @VPrintf1(i8*, i32) #1

declare dso_local i64 @ISSET_BH(i32) #1

declare dso_local i64 @UNALIGNED_BH(i32) #1

declare dso_local i32 @WORD_BH(i32) #1

declare dso_local i32 @fallbackQSort3(i32*, i32*, i32, i32) #1

declare dso_local i32 @AssertH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
