; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getAvailableFeatures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getAvailableFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FEATURE_CMOV = common dso_local global i32 0, align 4
@FEATURE_MMX = common dso_local global i32 0, align 4
@FEATURE_SSE = common dso_local global i32 0, align 4
@FEATURE_SSE2 = common dso_local global i32 0, align 4
@FEATURE_SSE3 = common dso_local global i32 0, align 4
@FEATURE_PCLMUL = common dso_local global i32 0, align 4
@FEATURE_SSSE3 = common dso_local global i32 0, align 4
@FEATURE_FMA = common dso_local global i32 0, align 4
@FEATURE_SSE4_1 = common dso_local global i32 0, align 4
@FEATURE_SSE4_2 = common dso_local global i32 0, align 4
@FEATURE_POPCNT = common dso_local global i32 0, align 4
@FEATURE_AES = common dso_local global i32 0, align 4
@FEATURE_AVX = common dso_local global i32 0, align 4
@FEATURE_BMI = common dso_local global i32 0, align 4
@FEATURE_AVX2 = common dso_local global i32 0, align 4
@FEATURE_BMI2 = common dso_local global i32 0, align 4
@FEATURE_AVX512F = common dso_local global i32 0, align 4
@FEATURE_AVX512DQ = common dso_local global i32 0, align 4
@FEATURE_AVX512IFMA = common dso_local global i32 0, align 4
@FEATURE_AVX512PF = common dso_local global i32 0, align 4
@FEATURE_AVX512ER = common dso_local global i32 0, align 4
@FEATURE_AVX512CD = common dso_local global i32 0, align 4
@FEATURE_AVX512BW = common dso_local global i32 0, align 4
@FEATURE_AVX512VL = common dso_local global i32 0, align 4
@FEATURE_AVX512VBMI = common dso_local global i32 0, align 4
@FEATURE_AVX512VBMI2 = common dso_local global i32 0, align 4
@FEATURE_GFNI = common dso_local global i32 0, align 4
@FEATURE_VPCLMULQDQ = common dso_local global i32 0, align 4
@FEATURE_AVX512VNNI = common dso_local global i32 0, align 4
@FEATURE_AVX512BITALG = common dso_local global i32 0, align 4
@FEATURE_AVX512VPOPCNTDQ = common dso_local global i32 0, align 4
@FEATURE_AVX5124VNNIW = common dso_local global i32 0, align 4
@FEATURE_AVX5124FMAPS = common dso_local global i32 0, align 4
@FEATURE_SSE4_A = common dso_local global i32 0, align 4
@FEATURE_XOP = common dso_local global i32 0, align 4
@FEATURE_FMA4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @getAvailableFeatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getAvailableFeatures(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = lshr i32 %21, 15
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @FEATURE_CMOV, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @FEATURE_CMOV, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 1, %31
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %46

35:                                               ; preds = %26
  %36 = load i32, i32* @FEATURE_CMOV, align 4
  %37 = icmp slt i32 %36, 64
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @FEATURE_CMOV, align 4
  %40 = sub nsw i32 %39, 32
  %41 = and i32 %40, 31
  %42 = shl i32 1, %41
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i32, i32* %7, align 4
  %50 = lshr i32 %49, 23
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @FEATURE_MMX, align 4
  %56 = icmp slt i32 %55, 32
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @FEATURE_MMX, align 4
  %59 = and i32 %58, 31
  %60 = shl i32 1, %59
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %74

63:                                               ; preds = %54
  %64 = load i32, i32* @FEATURE_MMX, align 4
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @FEATURE_MMX, align 4
  %68 = sub nsw i32 %67, 32
  %69 = and i32 %68, 31
  %70 = shl i32 1, %69
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %66, %63
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i32, i32* %7, align 4
  %78 = lshr i32 %77, 25
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @FEATURE_SSE, align 4
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @FEATURE_SSE, align 4
  %87 = and i32 %86, 31
  %88 = shl i32 1, %87
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %102

91:                                               ; preds = %82
  %92 = load i32, i32* @FEATURE_SSE, align 4
  %93 = icmp slt i32 %92, 64
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* @FEATURE_SSE, align 4
  %96 = sub nsw i32 %95, 32
  %97 = and i32 %96, 31
  %98 = shl i32 1, %97
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %94, %91
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i32, i32* %7, align 4
  %106 = lshr i32 %105, 26
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @FEATURE_SSE2, align 4
  %112 = icmp slt i32 %111, 32
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* @FEATURE_SSE2, align 4
  %115 = and i32 %114, 31
  %116 = shl i32 1, %115
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %130

119:                                              ; preds = %110
  %120 = load i32, i32* @FEATURE_SSE2, align 4
  %121 = icmp slt i32 %120, 64
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* @FEATURE_SSE2, align 4
  %124 = sub nsw i32 %123, 32
  %125 = and i32 %124, 31
  %126 = shl i32 1, %125
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %122, %119
  br label %130

130:                                              ; preds = %129, %113
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %104
  %133 = load i32, i32* %6, align 4
  %134 = lshr i32 %133, 0
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* @FEATURE_SSE3, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* @FEATURE_SSE3, align 4
  %143 = and i32 %142, 31
  %144 = shl i32 1, %143
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %158

147:                                              ; preds = %138
  %148 = load i32, i32* @FEATURE_SSE3, align 4
  %149 = icmp slt i32 %148, 64
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* @FEATURE_SSE3, align 4
  %152 = sub nsw i32 %151, 32
  %153 = and i32 %152, 31
  %154 = shl i32 1, %153
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %150, %147
  br label %158

158:                                              ; preds = %157, %141
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159, %132
  %161 = load i32, i32* %6, align 4
  %162 = lshr i32 %161, 1
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* @FEATURE_PCLMUL, align 4
  %168 = icmp slt i32 %167, 32
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* @FEATURE_PCLMUL, align 4
  %171 = and i32 %170, 31
  %172 = shl i32 1, %171
  %173 = load i32, i32* %11, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %11, align 4
  br label %186

175:                                              ; preds = %166
  %176 = load i32, i32* @FEATURE_PCLMUL, align 4
  %177 = icmp slt i32 %176, 64
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* @FEATURE_PCLMUL, align 4
  %180 = sub nsw i32 %179, 32
  %181 = and i32 %180, 31
  %182 = shl i32 1, %181
  %183 = load i32, i32* %12, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %178, %175
  br label %186

186:                                              ; preds = %185, %169
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187, %160
  %189 = load i32, i32* %6, align 4
  %190 = lshr i32 %189, 9
  %191 = and i32 %190, 1
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* @FEATURE_SSSE3, align 4
  %196 = icmp slt i32 %195, 32
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* @FEATURE_SSSE3, align 4
  %199 = and i32 %198, 31
  %200 = shl i32 1, %199
  %201 = load i32, i32* %11, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %11, align 4
  br label %214

203:                                              ; preds = %194
  %204 = load i32, i32* @FEATURE_SSSE3, align 4
  %205 = icmp slt i32 %204, 64
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i32, i32* @FEATURE_SSSE3, align 4
  %208 = sub nsw i32 %207, 32
  %209 = and i32 %208, 31
  %210 = shl i32 1, %209
  %211 = load i32, i32* %12, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %12, align 4
  br label %213

213:                                              ; preds = %206, %203
  br label %214

214:                                              ; preds = %213, %197
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215, %188
  %217 = load i32, i32* %6, align 4
  %218 = lshr i32 %217, 12
  %219 = and i32 %218, 1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* @FEATURE_FMA, align 4
  %224 = icmp slt i32 %223, 32
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* @FEATURE_FMA, align 4
  %227 = and i32 %226, 31
  %228 = shl i32 1, %227
  %229 = load i32, i32* %11, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %11, align 4
  br label %242

231:                                              ; preds = %222
  %232 = load i32, i32* @FEATURE_FMA, align 4
  %233 = icmp slt i32 %232, 64
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* @FEATURE_FMA, align 4
  %236 = sub nsw i32 %235, 32
  %237 = and i32 %236, 31
  %238 = shl i32 1, %237
  %239 = load i32, i32* %12, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %12, align 4
  br label %241

241:                                              ; preds = %234, %231
  br label %242

242:                                              ; preds = %241, %225
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243, %216
  %245 = load i32, i32* %6, align 4
  %246 = lshr i32 %245, 19
  %247 = and i32 %246, 1
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %272

249:                                              ; preds = %244
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* @FEATURE_SSE4_1, align 4
  %252 = icmp slt i32 %251, 32
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i32, i32* @FEATURE_SSE4_1, align 4
  %255 = and i32 %254, 31
  %256 = shl i32 1, %255
  %257 = load i32, i32* %11, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %11, align 4
  br label %270

259:                                              ; preds = %250
  %260 = load i32, i32* @FEATURE_SSE4_1, align 4
  %261 = icmp slt i32 %260, 64
  br i1 %261, label %262, label %269

262:                                              ; preds = %259
  %263 = load i32, i32* @FEATURE_SSE4_1, align 4
  %264 = sub nsw i32 %263, 32
  %265 = and i32 %264, 31
  %266 = shl i32 1, %265
  %267 = load i32, i32* %12, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %262, %259
  br label %270

270:                                              ; preds = %269, %253
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271, %244
  %273 = load i32, i32* %6, align 4
  %274 = lshr i32 %273, 20
  %275 = and i32 %274, 1
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %300

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* @FEATURE_SSE4_2, align 4
  %280 = icmp slt i32 %279, 32
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = load i32, i32* @FEATURE_SSE4_2, align 4
  %283 = and i32 %282, 31
  %284 = shl i32 1, %283
  %285 = load i32, i32* %11, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %11, align 4
  br label %298

287:                                              ; preds = %278
  %288 = load i32, i32* @FEATURE_SSE4_2, align 4
  %289 = icmp slt i32 %288, 64
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load i32, i32* @FEATURE_SSE4_2, align 4
  %292 = sub nsw i32 %291, 32
  %293 = and i32 %292, 31
  %294 = shl i32 1, %293
  %295 = load i32, i32* %12, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %12, align 4
  br label %297

297:                                              ; preds = %290, %287
  br label %298

298:                                              ; preds = %297, %281
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299, %272
  %301 = load i32, i32* %6, align 4
  %302 = lshr i32 %301, 23
  %303 = and i32 %302, 1
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %328

305:                                              ; preds = %300
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* @FEATURE_POPCNT, align 4
  %308 = icmp slt i32 %307, 32
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load i32, i32* @FEATURE_POPCNT, align 4
  %311 = and i32 %310, 31
  %312 = shl i32 1, %311
  %313 = load i32, i32* %11, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %11, align 4
  br label %326

315:                                              ; preds = %306
  %316 = load i32, i32* @FEATURE_POPCNT, align 4
  %317 = icmp slt i32 %316, 64
  br i1 %317, label %318, label %325

318:                                              ; preds = %315
  %319 = load i32, i32* @FEATURE_POPCNT, align 4
  %320 = sub nsw i32 %319, 32
  %321 = and i32 %320, 31
  %322 = shl i32 1, %321
  %323 = load i32, i32* %12, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %12, align 4
  br label %325

325:                                              ; preds = %318, %315
  br label %326

326:                                              ; preds = %325, %309
  br label %327

327:                                              ; preds = %326
  br label %328

328:                                              ; preds = %327, %300
  %329 = load i32, i32* %6, align 4
  %330 = lshr i32 %329, 25
  %331 = and i32 %330, 1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %356

333:                                              ; preds = %328
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* @FEATURE_AES, align 4
  %336 = icmp slt i32 %335, 32
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i32, i32* @FEATURE_AES, align 4
  %339 = and i32 %338, 31
  %340 = shl i32 1, %339
  %341 = load i32, i32* %11, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %11, align 4
  br label %354

343:                                              ; preds = %334
  %344 = load i32, i32* @FEATURE_AES, align 4
  %345 = icmp slt i32 %344, 64
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load i32, i32* @FEATURE_AES, align 4
  %348 = sub nsw i32 %347, 32
  %349 = and i32 %348, 31
  %350 = shl i32 1, %349
  %351 = load i32, i32* %12, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %12, align 4
  br label %353

353:                                              ; preds = %346, %343
  br label %354

354:                                              ; preds = %353, %337
  br label %355

355:                                              ; preds = %354
  br label %356

356:                                              ; preds = %355, %328
  store i32 402653184, i32* %15, align 4
  %357 = load i32, i32* %6, align 4
  %358 = and i32 %357, 402653184
  %359 = icmp eq i32 %358, 402653184
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = call i32 @getX86XCR0(i32* %13, i32* %7)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %13, align 4
  %365 = and i32 %364, 6
  %366 = icmp eq i32 %365, 6
  br label %367

367:                                              ; preds = %363, %360, %356
  %368 = phi i1 [ false, %360 ], [ false, %356 ], [ %366, %363 ]
  %369 = zext i1 %368 to i32
  store i32 %369, i32* %16, align 4
  %370 = load i32, i32* %16, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load i32, i32* %13, align 4
  %374 = and i32 %373, 224
  %375 = icmp eq i32 %374, 224
  br label %376

376:                                              ; preds = %372, %367
  %377 = phi i1 [ false, %367 ], [ %375, %372 ]
  %378 = zext i1 %377 to i32
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %16, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %404

381:                                              ; preds = %376
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* @FEATURE_AVX, align 4
  %384 = icmp slt i32 %383, 32
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  %386 = load i32, i32* @FEATURE_AVX, align 4
  %387 = and i32 %386, 31
  %388 = shl i32 1, %387
  %389 = load i32, i32* %11, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %11, align 4
  br label %402

391:                                              ; preds = %382
  %392 = load i32, i32* @FEATURE_AVX, align 4
  %393 = icmp slt i32 %392, 64
  br i1 %393, label %394, label %401

394:                                              ; preds = %391
  %395 = load i32, i32* @FEATURE_AVX, align 4
  %396 = sub nsw i32 %395, 32
  %397 = and i32 %396, 31
  %398 = shl i32 1, %397
  %399 = load i32, i32* %12, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %12, align 4
  br label %401

401:                                              ; preds = %394, %391
  br label %402

402:                                              ; preds = %401, %385
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403, %376
  %405 = load i32, i32* %8, align 4
  %406 = icmp uge i32 %405, 7
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  %408 = call i32 @getX86CpuIDAndInfoEx(i32 7, i32 0, i32* %13, i32* %14, i32* %6, i32* %7)
  %409 = icmp ne i32 %408, 0
  %410 = xor i1 %409, true
  br label %411

411:                                              ; preds = %407, %404
  %412 = phi i1 [ false, %404 ], [ %410, %407 ]
  %413 = zext i1 %412 to i32
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %444

416:                                              ; preds = %411
  %417 = load i32, i32* %14, align 4
  %418 = lshr i32 %417, 3
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %444

421:                                              ; preds = %416
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* @FEATURE_BMI, align 4
  %424 = icmp slt i32 %423, 32
  br i1 %424, label %425, label %431

425:                                              ; preds = %422
  %426 = load i32, i32* @FEATURE_BMI, align 4
  %427 = and i32 %426, 31
  %428 = shl i32 1, %427
  %429 = load i32, i32* %11, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %11, align 4
  br label %442

431:                                              ; preds = %422
  %432 = load i32, i32* @FEATURE_BMI, align 4
  %433 = icmp slt i32 %432, 64
  br i1 %433, label %434, label %441

434:                                              ; preds = %431
  %435 = load i32, i32* @FEATURE_BMI, align 4
  %436 = sub nsw i32 %435, 32
  %437 = and i32 %436, 31
  %438 = shl i32 1, %437
  %439 = load i32, i32* %12, align 4
  %440 = or i32 %439, %438
  store i32 %440, i32* %12, align 4
  br label %441

441:                                              ; preds = %434, %431
  br label %442

442:                                              ; preds = %441, %425
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443, %416, %411
  %445 = load i32, i32* %18, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %478

447:                                              ; preds = %444
  %448 = load i32, i32* %14, align 4
  %449 = lshr i32 %448, 5
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %478

452:                                              ; preds = %447
  %453 = load i32, i32* %16, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %478

455:                                              ; preds = %452
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* @FEATURE_AVX2, align 4
  %458 = icmp slt i32 %457, 32
  br i1 %458, label %459, label %465

459:                                              ; preds = %456
  %460 = load i32, i32* @FEATURE_AVX2, align 4
  %461 = and i32 %460, 31
  %462 = shl i32 1, %461
  %463 = load i32, i32* %11, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %11, align 4
  br label %476

465:                                              ; preds = %456
  %466 = load i32, i32* @FEATURE_AVX2, align 4
  %467 = icmp slt i32 %466, 64
  br i1 %467, label %468, label %475

468:                                              ; preds = %465
  %469 = load i32, i32* @FEATURE_AVX2, align 4
  %470 = sub nsw i32 %469, 32
  %471 = and i32 %470, 31
  %472 = shl i32 1, %471
  %473 = load i32, i32* %12, align 4
  %474 = or i32 %473, %472
  store i32 %474, i32* %12, align 4
  br label %475

475:                                              ; preds = %468, %465
  br label %476

476:                                              ; preds = %475, %459
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477, %452, %447, %444
  %479 = load i32, i32* %18, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %509

481:                                              ; preds = %478
  %482 = load i32, i32* %14, align 4
  %483 = lshr i32 %482, 8
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %509

486:                                              ; preds = %481
  br label %487

487:                                              ; preds = %486
  %488 = load i32, i32* @FEATURE_BMI2, align 4
  %489 = icmp slt i32 %488, 32
  br i1 %489, label %490, label %496

490:                                              ; preds = %487
  %491 = load i32, i32* @FEATURE_BMI2, align 4
  %492 = and i32 %491, 31
  %493 = shl i32 1, %492
  %494 = load i32, i32* %11, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %11, align 4
  br label %507

496:                                              ; preds = %487
  %497 = load i32, i32* @FEATURE_BMI2, align 4
  %498 = icmp slt i32 %497, 64
  br i1 %498, label %499, label %506

499:                                              ; preds = %496
  %500 = load i32, i32* @FEATURE_BMI2, align 4
  %501 = sub nsw i32 %500, 32
  %502 = and i32 %501, 31
  %503 = shl i32 1, %502
  %504 = load i32, i32* %12, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %12, align 4
  br label %506

506:                                              ; preds = %499, %496
  br label %507

507:                                              ; preds = %506, %490
  br label %508

508:                                              ; preds = %507
  br label %509

509:                                              ; preds = %508, %481, %478
  %510 = load i32, i32* %18, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %543

512:                                              ; preds = %509
  %513 = load i32, i32* %14, align 4
  %514 = lshr i32 %513, 16
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %543

517:                                              ; preds = %512
  %518 = load i32, i32* %17, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %543

520:                                              ; preds = %517
  br label %521

521:                                              ; preds = %520
  %522 = load i32, i32* @FEATURE_AVX512F, align 4
  %523 = icmp slt i32 %522, 32
  br i1 %523, label %524, label %530

524:                                              ; preds = %521
  %525 = load i32, i32* @FEATURE_AVX512F, align 4
  %526 = and i32 %525, 31
  %527 = shl i32 1, %526
  %528 = load i32, i32* %11, align 4
  %529 = or i32 %528, %527
  store i32 %529, i32* %11, align 4
  br label %541

530:                                              ; preds = %521
  %531 = load i32, i32* @FEATURE_AVX512F, align 4
  %532 = icmp slt i32 %531, 64
  br i1 %532, label %533, label %540

533:                                              ; preds = %530
  %534 = load i32, i32* @FEATURE_AVX512F, align 4
  %535 = sub nsw i32 %534, 32
  %536 = and i32 %535, 31
  %537 = shl i32 1, %536
  %538 = load i32, i32* %12, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %12, align 4
  br label %540

540:                                              ; preds = %533, %530
  br label %541

541:                                              ; preds = %540, %524
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542, %517, %512, %509
  %544 = load i32, i32* %18, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %577

546:                                              ; preds = %543
  %547 = load i32, i32* %14, align 4
  %548 = lshr i32 %547, 17
  %549 = and i32 %548, 1
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %577

551:                                              ; preds = %546
  %552 = load i32, i32* %17, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %577

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %554
  %556 = load i32, i32* @FEATURE_AVX512DQ, align 4
  %557 = icmp slt i32 %556, 32
  br i1 %557, label %558, label %564

558:                                              ; preds = %555
  %559 = load i32, i32* @FEATURE_AVX512DQ, align 4
  %560 = and i32 %559, 31
  %561 = shl i32 1, %560
  %562 = load i32, i32* %11, align 4
  %563 = or i32 %562, %561
  store i32 %563, i32* %11, align 4
  br label %575

564:                                              ; preds = %555
  %565 = load i32, i32* @FEATURE_AVX512DQ, align 4
  %566 = icmp slt i32 %565, 64
  br i1 %566, label %567, label %574

567:                                              ; preds = %564
  %568 = load i32, i32* @FEATURE_AVX512DQ, align 4
  %569 = sub nsw i32 %568, 32
  %570 = and i32 %569, 31
  %571 = shl i32 1, %570
  %572 = load i32, i32* %12, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %12, align 4
  br label %574

574:                                              ; preds = %567, %564
  br label %575

575:                                              ; preds = %574, %558
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576, %551, %546, %543
  %578 = load i32, i32* %18, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %611

580:                                              ; preds = %577
  %581 = load i32, i32* %14, align 4
  %582 = lshr i32 %581, 21
  %583 = and i32 %582, 1
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %611

585:                                              ; preds = %580
  %586 = load i32, i32* %17, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %611

588:                                              ; preds = %585
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* @FEATURE_AVX512IFMA, align 4
  %591 = icmp slt i32 %590, 32
  br i1 %591, label %592, label %598

592:                                              ; preds = %589
  %593 = load i32, i32* @FEATURE_AVX512IFMA, align 4
  %594 = and i32 %593, 31
  %595 = shl i32 1, %594
  %596 = load i32, i32* %11, align 4
  %597 = or i32 %596, %595
  store i32 %597, i32* %11, align 4
  br label %609

598:                                              ; preds = %589
  %599 = load i32, i32* @FEATURE_AVX512IFMA, align 4
  %600 = icmp slt i32 %599, 64
  br i1 %600, label %601, label %608

601:                                              ; preds = %598
  %602 = load i32, i32* @FEATURE_AVX512IFMA, align 4
  %603 = sub nsw i32 %602, 32
  %604 = and i32 %603, 31
  %605 = shl i32 1, %604
  %606 = load i32, i32* %12, align 4
  %607 = or i32 %606, %605
  store i32 %607, i32* %12, align 4
  br label %608

608:                                              ; preds = %601, %598
  br label %609

609:                                              ; preds = %608, %592
  br label %610

610:                                              ; preds = %609
  br label %611

611:                                              ; preds = %610, %585, %580, %577
  %612 = load i32, i32* %18, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %645

614:                                              ; preds = %611
  %615 = load i32, i32* %14, align 4
  %616 = lshr i32 %615, 26
  %617 = and i32 %616, 1
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %645

619:                                              ; preds = %614
  %620 = load i32, i32* %17, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %645

622:                                              ; preds = %619
  br label %623

623:                                              ; preds = %622
  %624 = load i32, i32* @FEATURE_AVX512PF, align 4
  %625 = icmp slt i32 %624, 32
  br i1 %625, label %626, label %632

626:                                              ; preds = %623
  %627 = load i32, i32* @FEATURE_AVX512PF, align 4
  %628 = and i32 %627, 31
  %629 = shl i32 1, %628
  %630 = load i32, i32* %11, align 4
  %631 = or i32 %630, %629
  store i32 %631, i32* %11, align 4
  br label %643

632:                                              ; preds = %623
  %633 = load i32, i32* @FEATURE_AVX512PF, align 4
  %634 = icmp slt i32 %633, 64
  br i1 %634, label %635, label %642

635:                                              ; preds = %632
  %636 = load i32, i32* @FEATURE_AVX512PF, align 4
  %637 = sub nsw i32 %636, 32
  %638 = and i32 %637, 31
  %639 = shl i32 1, %638
  %640 = load i32, i32* %12, align 4
  %641 = or i32 %640, %639
  store i32 %641, i32* %12, align 4
  br label %642

642:                                              ; preds = %635, %632
  br label %643

643:                                              ; preds = %642, %626
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644, %619, %614, %611
  %646 = load i32, i32* %18, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %679

648:                                              ; preds = %645
  %649 = load i32, i32* %14, align 4
  %650 = lshr i32 %649, 27
  %651 = and i32 %650, 1
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %679

653:                                              ; preds = %648
  %654 = load i32, i32* %17, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %679

656:                                              ; preds = %653
  br label %657

657:                                              ; preds = %656
  %658 = load i32, i32* @FEATURE_AVX512ER, align 4
  %659 = icmp slt i32 %658, 32
  br i1 %659, label %660, label %666

660:                                              ; preds = %657
  %661 = load i32, i32* @FEATURE_AVX512ER, align 4
  %662 = and i32 %661, 31
  %663 = shl i32 1, %662
  %664 = load i32, i32* %11, align 4
  %665 = or i32 %664, %663
  store i32 %665, i32* %11, align 4
  br label %677

666:                                              ; preds = %657
  %667 = load i32, i32* @FEATURE_AVX512ER, align 4
  %668 = icmp slt i32 %667, 64
  br i1 %668, label %669, label %676

669:                                              ; preds = %666
  %670 = load i32, i32* @FEATURE_AVX512ER, align 4
  %671 = sub nsw i32 %670, 32
  %672 = and i32 %671, 31
  %673 = shl i32 1, %672
  %674 = load i32, i32* %12, align 4
  %675 = or i32 %674, %673
  store i32 %675, i32* %12, align 4
  br label %676

676:                                              ; preds = %669, %666
  br label %677

677:                                              ; preds = %676, %660
  br label %678

678:                                              ; preds = %677
  br label %679

679:                                              ; preds = %678, %653, %648, %645
  %680 = load i32, i32* %18, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %713

682:                                              ; preds = %679
  %683 = load i32, i32* %14, align 4
  %684 = lshr i32 %683, 28
  %685 = and i32 %684, 1
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %713

687:                                              ; preds = %682
  %688 = load i32, i32* %17, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %713

690:                                              ; preds = %687
  br label %691

691:                                              ; preds = %690
  %692 = load i32, i32* @FEATURE_AVX512CD, align 4
  %693 = icmp slt i32 %692, 32
  br i1 %693, label %694, label %700

694:                                              ; preds = %691
  %695 = load i32, i32* @FEATURE_AVX512CD, align 4
  %696 = and i32 %695, 31
  %697 = shl i32 1, %696
  %698 = load i32, i32* %11, align 4
  %699 = or i32 %698, %697
  store i32 %699, i32* %11, align 4
  br label %711

700:                                              ; preds = %691
  %701 = load i32, i32* @FEATURE_AVX512CD, align 4
  %702 = icmp slt i32 %701, 64
  br i1 %702, label %703, label %710

703:                                              ; preds = %700
  %704 = load i32, i32* @FEATURE_AVX512CD, align 4
  %705 = sub nsw i32 %704, 32
  %706 = and i32 %705, 31
  %707 = shl i32 1, %706
  %708 = load i32, i32* %12, align 4
  %709 = or i32 %708, %707
  store i32 %709, i32* %12, align 4
  br label %710

710:                                              ; preds = %703, %700
  br label %711

711:                                              ; preds = %710, %694
  br label %712

712:                                              ; preds = %711
  br label %713

713:                                              ; preds = %712, %687, %682, %679
  %714 = load i32, i32* %18, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %747

716:                                              ; preds = %713
  %717 = load i32, i32* %14, align 4
  %718 = lshr i32 %717, 30
  %719 = and i32 %718, 1
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %747

721:                                              ; preds = %716
  %722 = load i32, i32* %17, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %747

724:                                              ; preds = %721
  br label %725

725:                                              ; preds = %724
  %726 = load i32, i32* @FEATURE_AVX512BW, align 4
  %727 = icmp slt i32 %726, 32
  br i1 %727, label %728, label %734

728:                                              ; preds = %725
  %729 = load i32, i32* @FEATURE_AVX512BW, align 4
  %730 = and i32 %729, 31
  %731 = shl i32 1, %730
  %732 = load i32, i32* %11, align 4
  %733 = or i32 %732, %731
  store i32 %733, i32* %11, align 4
  br label %745

734:                                              ; preds = %725
  %735 = load i32, i32* @FEATURE_AVX512BW, align 4
  %736 = icmp slt i32 %735, 64
  br i1 %736, label %737, label %744

737:                                              ; preds = %734
  %738 = load i32, i32* @FEATURE_AVX512BW, align 4
  %739 = sub nsw i32 %738, 32
  %740 = and i32 %739, 31
  %741 = shl i32 1, %740
  %742 = load i32, i32* %12, align 4
  %743 = or i32 %742, %741
  store i32 %743, i32* %12, align 4
  br label %744

744:                                              ; preds = %737, %734
  br label %745

745:                                              ; preds = %744, %728
  br label %746

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746, %721, %716, %713
  %748 = load i32, i32* %18, align 4
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %781

750:                                              ; preds = %747
  %751 = load i32, i32* %14, align 4
  %752 = lshr i32 %751, 31
  %753 = and i32 %752, 1
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %781

755:                                              ; preds = %750
  %756 = load i32, i32* %17, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %781

758:                                              ; preds = %755
  br label %759

759:                                              ; preds = %758
  %760 = load i32, i32* @FEATURE_AVX512VL, align 4
  %761 = icmp slt i32 %760, 32
  br i1 %761, label %762, label %768

762:                                              ; preds = %759
  %763 = load i32, i32* @FEATURE_AVX512VL, align 4
  %764 = and i32 %763, 31
  %765 = shl i32 1, %764
  %766 = load i32, i32* %11, align 4
  %767 = or i32 %766, %765
  store i32 %767, i32* %11, align 4
  br label %779

768:                                              ; preds = %759
  %769 = load i32, i32* @FEATURE_AVX512VL, align 4
  %770 = icmp slt i32 %769, 64
  br i1 %770, label %771, label %778

771:                                              ; preds = %768
  %772 = load i32, i32* @FEATURE_AVX512VL, align 4
  %773 = sub nsw i32 %772, 32
  %774 = and i32 %773, 31
  %775 = shl i32 1, %774
  %776 = load i32, i32* %12, align 4
  %777 = or i32 %776, %775
  store i32 %777, i32* %12, align 4
  br label %778

778:                                              ; preds = %771, %768
  br label %779

779:                                              ; preds = %778, %762
  br label %780

780:                                              ; preds = %779
  br label %781

781:                                              ; preds = %780, %755, %750, %747
  %782 = load i32, i32* %18, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %815

784:                                              ; preds = %781
  %785 = load i32, i32* %6, align 4
  %786 = lshr i32 %785, 1
  %787 = and i32 %786, 1
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %815

789:                                              ; preds = %784
  %790 = load i32, i32* %17, align 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %815

792:                                              ; preds = %789
  br label %793

793:                                              ; preds = %792
  %794 = load i32, i32* @FEATURE_AVX512VBMI, align 4
  %795 = icmp slt i32 %794, 32
  br i1 %795, label %796, label %802

796:                                              ; preds = %793
  %797 = load i32, i32* @FEATURE_AVX512VBMI, align 4
  %798 = and i32 %797, 31
  %799 = shl i32 1, %798
  %800 = load i32, i32* %11, align 4
  %801 = or i32 %800, %799
  store i32 %801, i32* %11, align 4
  br label %813

802:                                              ; preds = %793
  %803 = load i32, i32* @FEATURE_AVX512VBMI, align 4
  %804 = icmp slt i32 %803, 64
  br i1 %804, label %805, label %812

805:                                              ; preds = %802
  %806 = load i32, i32* @FEATURE_AVX512VBMI, align 4
  %807 = sub nsw i32 %806, 32
  %808 = and i32 %807, 31
  %809 = shl i32 1, %808
  %810 = load i32, i32* %12, align 4
  %811 = or i32 %810, %809
  store i32 %811, i32* %12, align 4
  br label %812

812:                                              ; preds = %805, %802
  br label %813

813:                                              ; preds = %812, %796
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814, %789, %784, %781
  %816 = load i32, i32* %18, align 4
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %849

818:                                              ; preds = %815
  %819 = load i32, i32* %6, align 4
  %820 = lshr i32 %819, 6
  %821 = and i32 %820, 1
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %849

823:                                              ; preds = %818
  %824 = load i32, i32* %17, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %849

826:                                              ; preds = %823
  br label %827

827:                                              ; preds = %826
  %828 = load i32, i32* @FEATURE_AVX512VBMI2, align 4
  %829 = icmp slt i32 %828, 32
  br i1 %829, label %830, label %836

830:                                              ; preds = %827
  %831 = load i32, i32* @FEATURE_AVX512VBMI2, align 4
  %832 = and i32 %831, 31
  %833 = shl i32 1, %832
  %834 = load i32, i32* %11, align 4
  %835 = or i32 %834, %833
  store i32 %835, i32* %11, align 4
  br label %847

836:                                              ; preds = %827
  %837 = load i32, i32* @FEATURE_AVX512VBMI2, align 4
  %838 = icmp slt i32 %837, 64
  br i1 %838, label %839, label %846

839:                                              ; preds = %836
  %840 = load i32, i32* @FEATURE_AVX512VBMI2, align 4
  %841 = sub nsw i32 %840, 32
  %842 = and i32 %841, 31
  %843 = shl i32 1, %842
  %844 = load i32, i32* %12, align 4
  %845 = or i32 %844, %843
  store i32 %845, i32* %12, align 4
  br label %846

846:                                              ; preds = %839, %836
  br label %847

847:                                              ; preds = %846, %830
  br label %848

848:                                              ; preds = %847
  br label %849

849:                                              ; preds = %848, %823, %818, %815
  %850 = load i32, i32* %18, align 4
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %880

852:                                              ; preds = %849
  %853 = load i32, i32* %6, align 4
  %854 = lshr i32 %853, 8
  %855 = and i32 %854, 1
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %880

857:                                              ; preds = %852
  br label %858

858:                                              ; preds = %857
  %859 = load i32, i32* @FEATURE_GFNI, align 4
  %860 = icmp slt i32 %859, 32
  br i1 %860, label %861, label %867

861:                                              ; preds = %858
  %862 = load i32, i32* @FEATURE_GFNI, align 4
  %863 = and i32 %862, 31
  %864 = shl i32 1, %863
  %865 = load i32, i32* %11, align 4
  %866 = or i32 %865, %864
  store i32 %866, i32* %11, align 4
  br label %878

867:                                              ; preds = %858
  %868 = load i32, i32* @FEATURE_GFNI, align 4
  %869 = icmp slt i32 %868, 64
  br i1 %869, label %870, label %877

870:                                              ; preds = %867
  %871 = load i32, i32* @FEATURE_GFNI, align 4
  %872 = sub nsw i32 %871, 32
  %873 = and i32 %872, 31
  %874 = shl i32 1, %873
  %875 = load i32, i32* %12, align 4
  %876 = or i32 %875, %874
  store i32 %876, i32* %12, align 4
  br label %877

877:                                              ; preds = %870, %867
  br label %878

878:                                              ; preds = %877, %861
  br label %879

879:                                              ; preds = %878
  br label %880

880:                                              ; preds = %879, %852, %849
  %881 = load i32, i32* %18, align 4
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %914

883:                                              ; preds = %880
  %884 = load i32, i32* %6, align 4
  %885 = lshr i32 %884, 10
  %886 = and i32 %885, 1
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %888, label %914

888:                                              ; preds = %883
  %889 = load i32, i32* %16, align 4
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %891, label %914

891:                                              ; preds = %888
  br label %892

892:                                              ; preds = %891
  %893 = load i32, i32* @FEATURE_VPCLMULQDQ, align 4
  %894 = icmp slt i32 %893, 32
  br i1 %894, label %895, label %901

895:                                              ; preds = %892
  %896 = load i32, i32* @FEATURE_VPCLMULQDQ, align 4
  %897 = and i32 %896, 31
  %898 = shl i32 1, %897
  %899 = load i32, i32* %11, align 4
  %900 = or i32 %899, %898
  store i32 %900, i32* %11, align 4
  br label %912

901:                                              ; preds = %892
  %902 = load i32, i32* @FEATURE_VPCLMULQDQ, align 4
  %903 = icmp slt i32 %902, 64
  br i1 %903, label %904, label %911

904:                                              ; preds = %901
  %905 = load i32, i32* @FEATURE_VPCLMULQDQ, align 4
  %906 = sub nsw i32 %905, 32
  %907 = and i32 %906, 31
  %908 = shl i32 1, %907
  %909 = load i32, i32* %12, align 4
  %910 = or i32 %909, %908
  store i32 %910, i32* %12, align 4
  br label %911

911:                                              ; preds = %904, %901
  br label %912

912:                                              ; preds = %911, %895
  br label %913

913:                                              ; preds = %912
  br label %914

914:                                              ; preds = %913, %888, %883, %880
  %915 = load i32, i32* %18, align 4
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %917, label %948

917:                                              ; preds = %914
  %918 = load i32, i32* %6, align 4
  %919 = lshr i32 %918, 11
  %920 = and i32 %919, 1
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %948

922:                                              ; preds = %917
  %923 = load i32, i32* %17, align 4
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %948

925:                                              ; preds = %922
  br label %926

926:                                              ; preds = %925
  %927 = load i32, i32* @FEATURE_AVX512VNNI, align 4
  %928 = icmp slt i32 %927, 32
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = load i32, i32* @FEATURE_AVX512VNNI, align 4
  %931 = and i32 %930, 31
  %932 = shl i32 1, %931
  %933 = load i32, i32* %11, align 4
  %934 = or i32 %933, %932
  store i32 %934, i32* %11, align 4
  br label %946

935:                                              ; preds = %926
  %936 = load i32, i32* @FEATURE_AVX512VNNI, align 4
  %937 = icmp slt i32 %936, 64
  br i1 %937, label %938, label %945

938:                                              ; preds = %935
  %939 = load i32, i32* @FEATURE_AVX512VNNI, align 4
  %940 = sub nsw i32 %939, 32
  %941 = and i32 %940, 31
  %942 = shl i32 1, %941
  %943 = load i32, i32* %12, align 4
  %944 = or i32 %943, %942
  store i32 %944, i32* %12, align 4
  br label %945

945:                                              ; preds = %938, %935
  br label %946

946:                                              ; preds = %945, %929
  br label %947

947:                                              ; preds = %946
  br label %948

948:                                              ; preds = %947, %922, %917, %914
  %949 = load i32, i32* %18, align 4
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %982

951:                                              ; preds = %948
  %952 = load i32, i32* %6, align 4
  %953 = lshr i32 %952, 12
  %954 = and i32 %953, 1
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %982

956:                                              ; preds = %951
  %957 = load i32, i32* %17, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %982

959:                                              ; preds = %956
  br label %960

960:                                              ; preds = %959
  %961 = load i32, i32* @FEATURE_AVX512BITALG, align 4
  %962 = icmp slt i32 %961, 32
  br i1 %962, label %963, label %969

963:                                              ; preds = %960
  %964 = load i32, i32* @FEATURE_AVX512BITALG, align 4
  %965 = and i32 %964, 31
  %966 = shl i32 1, %965
  %967 = load i32, i32* %11, align 4
  %968 = or i32 %967, %966
  store i32 %968, i32* %11, align 4
  br label %980

969:                                              ; preds = %960
  %970 = load i32, i32* @FEATURE_AVX512BITALG, align 4
  %971 = icmp slt i32 %970, 64
  br i1 %971, label %972, label %979

972:                                              ; preds = %969
  %973 = load i32, i32* @FEATURE_AVX512BITALG, align 4
  %974 = sub nsw i32 %973, 32
  %975 = and i32 %974, 31
  %976 = shl i32 1, %975
  %977 = load i32, i32* %12, align 4
  %978 = or i32 %977, %976
  store i32 %978, i32* %12, align 4
  br label %979

979:                                              ; preds = %972, %969
  br label %980

980:                                              ; preds = %979, %963
  br label %981

981:                                              ; preds = %980
  br label %982

982:                                              ; preds = %981, %956, %951, %948
  %983 = load i32, i32* %18, align 4
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %1016

985:                                              ; preds = %982
  %986 = load i32, i32* %6, align 4
  %987 = lshr i32 %986, 14
  %988 = and i32 %987, 1
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %990, label %1016

990:                                              ; preds = %985
  %991 = load i32, i32* %17, align 4
  %992 = icmp ne i32 %991, 0
  br i1 %992, label %993, label %1016

993:                                              ; preds = %990
  br label %994

994:                                              ; preds = %993
  %995 = load i32, i32* @FEATURE_AVX512VPOPCNTDQ, align 4
  %996 = icmp slt i32 %995, 32
  br i1 %996, label %997, label %1003

997:                                              ; preds = %994
  %998 = load i32, i32* @FEATURE_AVX512VPOPCNTDQ, align 4
  %999 = and i32 %998, 31
  %1000 = shl i32 1, %999
  %1001 = load i32, i32* %11, align 4
  %1002 = or i32 %1001, %1000
  store i32 %1002, i32* %11, align 4
  br label %1014

1003:                                             ; preds = %994
  %1004 = load i32, i32* @FEATURE_AVX512VPOPCNTDQ, align 4
  %1005 = icmp slt i32 %1004, 64
  br i1 %1005, label %1006, label %1013

1006:                                             ; preds = %1003
  %1007 = load i32, i32* @FEATURE_AVX512VPOPCNTDQ, align 4
  %1008 = sub nsw i32 %1007, 32
  %1009 = and i32 %1008, 31
  %1010 = shl i32 1, %1009
  %1011 = load i32, i32* %12, align 4
  %1012 = or i32 %1011, %1010
  store i32 %1012, i32* %12, align 4
  br label %1013

1013:                                             ; preds = %1006, %1003
  br label %1014

1014:                                             ; preds = %1013, %997
  br label %1015

1015:                                             ; preds = %1014
  br label %1016

1016:                                             ; preds = %1015, %990, %985, %982
  %1017 = load i32, i32* %18, align 4
  %1018 = icmp ne i32 %1017, 0
  br i1 %1018, label %1019, label %1050

1019:                                             ; preds = %1016
  %1020 = load i32, i32* %7, align 4
  %1021 = lshr i32 %1020, 2
  %1022 = and i32 %1021, 1
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1024, label %1050

1024:                                             ; preds = %1019
  %1025 = load i32, i32* %17, align 4
  %1026 = icmp ne i32 %1025, 0
  br i1 %1026, label %1027, label %1050

1027:                                             ; preds = %1024
  br label %1028

1028:                                             ; preds = %1027
  %1029 = load i32, i32* @FEATURE_AVX5124VNNIW, align 4
  %1030 = icmp slt i32 %1029, 32
  br i1 %1030, label %1031, label %1037

1031:                                             ; preds = %1028
  %1032 = load i32, i32* @FEATURE_AVX5124VNNIW, align 4
  %1033 = and i32 %1032, 31
  %1034 = shl i32 1, %1033
  %1035 = load i32, i32* %11, align 4
  %1036 = or i32 %1035, %1034
  store i32 %1036, i32* %11, align 4
  br label %1048

1037:                                             ; preds = %1028
  %1038 = load i32, i32* @FEATURE_AVX5124VNNIW, align 4
  %1039 = icmp slt i32 %1038, 64
  br i1 %1039, label %1040, label %1047

1040:                                             ; preds = %1037
  %1041 = load i32, i32* @FEATURE_AVX5124VNNIW, align 4
  %1042 = sub nsw i32 %1041, 32
  %1043 = and i32 %1042, 31
  %1044 = shl i32 1, %1043
  %1045 = load i32, i32* %12, align 4
  %1046 = or i32 %1045, %1044
  store i32 %1046, i32* %12, align 4
  br label %1047

1047:                                             ; preds = %1040, %1037
  br label %1048

1048:                                             ; preds = %1047, %1031
  br label %1049

1049:                                             ; preds = %1048
  br label %1050

1050:                                             ; preds = %1049, %1024, %1019, %1016
  %1051 = load i32, i32* %18, align 4
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1053, label %1084

1053:                                             ; preds = %1050
  %1054 = load i32, i32* %7, align 4
  %1055 = lshr i32 %1054, 3
  %1056 = and i32 %1055, 1
  %1057 = icmp ne i32 %1056, 0
  br i1 %1057, label %1058, label %1084

1058:                                             ; preds = %1053
  %1059 = load i32, i32* %17, align 4
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1061, label %1084

1061:                                             ; preds = %1058
  br label %1062

1062:                                             ; preds = %1061
  %1063 = load i32, i32* @FEATURE_AVX5124FMAPS, align 4
  %1064 = icmp slt i32 %1063, 32
  br i1 %1064, label %1065, label %1071

1065:                                             ; preds = %1062
  %1066 = load i32, i32* @FEATURE_AVX5124FMAPS, align 4
  %1067 = and i32 %1066, 31
  %1068 = shl i32 1, %1067
  %1069 = load i32, i32* %11, align 4
  %1070 = or i32 %1069, %1068
  store i32 %1070, i32* %11, align 4
  br label %1082

1071:                                             ; preds = %1062
  %1072 = load i32, i32* @FEATURE_AVX5124FMAPS, align 4
  %1073 = icmp slt i32 %1072, 64
  br i1 %1073, label %1074, label %1081

1074:                                             ; preds = %1071
  %1075 = load i32, i32* @FEATURE_AVX5124FMAPS, align 4
  %1076 = sub nsw i32 %1075, 32
  %1077 = and i32 %1076, 31
  %1078 = shl i32 1, %1077
  %1079 = load i32, i32* %12, align 4
  %1080 = or i32 %1079, %1078
  store i32 %1080, i32* %12, align 4
  br label %1081

1081:                                             ; preds = %1074, %1071
  br label %1082

1082:                                             ; preds = %1081, %1065
  br label %1083

1083:                                             ; preds = %1082
  br label %1084

1084:                                             ; preds = %1083, %1058, %1053, %1050
  %1085 = call i32 @getX86CpuIDAndInfo(i32 -2147483648, i32* %19, i32* %14, i32* %6, i32* %7)
  %1086 = load i32, i32* %19, align 4
  %1087 = icmp uge i32 %1086, -2147483647
  br i1 %1087, label %1088, label %1092

1088:                                             ; preds = %1084
  %1089 = call i32 @getX86CpuIDAndInfo(i32 -2147483647, i32* %13, i32* %14, i32* %6, i32* %7)
  %1090 = icmp ne i32 %1089, 0
  %1091 = xor i1 %1090, true
  br label %1092

1092:                                             ; preds = %1088, %1084
  %1093 = phi i1 [ false, %1084 ], [ %1091, %1088 ]
  %1094 = zext i1 %1093 to i32
  store i32 %1094, i32* %20, align 4
  %1095 = load i32, i32* %20, align 4
  %1096 = icmp ne i32 %1095, 0
  br i1 %1096, label %1097, label %1125

1097:                                             ; preds = %1092
  %1098 = load i32, i32* %6, align 4
  %1099 = lshr i32 %1098, 6
  %1100 = and i32 %1099, 1
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1102, label %1125

1102:                                             ; preds = %1097
  br label %1103

1103:                                             ; preds = %1102
  %1104 = load i32, i32* @FEATURE_SSE4_A, align 4
  %1105 = icmp slt i32 %1104, 32
  br i1 %1105, label %1106, label %1112

1106:                                             ; preds = %1103
  %1107 = load i32, i32* @FEATURE_SSE4_A, align 4
  %1108 = and i32 %1107, 31
  %1109 = shl i32 1, %1108
  %1110 = load i32, i32* %11, align 4
  %1111 = or i32 %1110, %1109
  store i32 %1111, i32* %11, align 4
  br label %1123

1112:                                             ; preds = %1103
  %1113 = load i32, i32* @FEATURE_SSE4_A, align 4
  %1114 = icmp slt i32 %1113, 64
  br i1 %1114, label %1115, label %1122

1115:                                             ; preds = %1112
  %1116 = load i32, i32* @FEATURE_SSE4_A, align 4
  %1117 = sub nsw i32 %1116, 32
  %1118 = and i32 %1117, 31
  %1119 = shl i32 1, %1118
  %1120 = load i32, i32* %12, align 4
  %1121 = or i32 %1120, %1119
  store i32 %1121, i32* %12, align 4
  br label %1122

1122:                                             ; preds = %1115, %1112
  br label %1123

1123:                                             ; preds = %1122, %1106
  br label %1124

1124:                                             ; preds = %1123
  br label %1125

1125:                                             ; preds = %1124, %1097, %1092
  %1126 = load i32, i32* %20, align 4
  %1127 = icmp ne i32 %1126, 0
  br i1 %1127, label %1128, label %1156

1128:                                             ; preds = %1125
  %1129 = load i32, i32* %6, align 4
  %1130 = lshr i32 %1129, 11
  %1131 = and i32 %1130, 1
  %1132 = icmp ne i32 %1131, 0
  br i1 %1132, label %1133, label %1156

1133:                                             ; preds = %1128
  br label %1134

1134:                                             ; preds = %1133
  %1135 = load i32, i32* @FEATURE_XOP, align 4
  %1136 = icmp slt i32 %1135, 32
  br i1 %1136, label %1137, label %1143

1137:                                             ; preds = %1134
  %1138 = load i32, i32* @FEATURE_XOP, align 4
  %1139 = and i32 %1138, 31
  %1140 = shl i32 1, %1139
  %1141 = load i32, i32* %11, align 4
  %1142 = or i32 %1141, %1140
  store i32 %1142, i32* %11, align 4
  br label %1154

1143:                                             ; preds = %1134
  %1144 = load i32, i32* @FEATURE_XOP, align 4
  %1145 = icmp slt i32 %1144, 64
  br i1 %1145, label %1146, label %1153

1146:                                             ; preds = %1143
  %1147 = load i32, i32* @FEATURE_XOP, align 4
  %1148 = sub nsw i32 %1147, 32
  %1149 = and i32 %1148, 31
  %1150 = shl i32 1, %1149
  %1151 = load i32, i32* %12, align 4
  %1152 = or i32 %1151, %1150
  store i32 %1152, i32* %12, align 4
  br label %1153

1153:                                             ; preds = %1146, %1143
  br label %1154

1154:                                             ; preds = %1153, %1137
  br label %1155

1155:                                             ; preds = %1154
  br label %1156

1156:                                             ; preds = %1155, %1128, %1125
  %1157 = load i32, i32* %20, align 4
  %1158 = icmp ne i32 %1157, 0
  br i1 %1158, label %1159, label %1187

1159:                                             ; preds = %1156
  %1160 = load i32, i32* %6, align 4
  %1161 = lshr i32 %1160, 16
  %1162 = and i32 %1161, 1
  %1163 = icmp ne i32 %1162, 0
  br i1 %1163, label %1164, label %1187

1164:                                             ; preds = %1159
  br label %1165

1165:                                             ; preds = %1164
  %1166 = load i32, i32* @FEATURE_FMA4, align 4
  %1167 = icmp slt i32 %1166, 32
  br i1 %1167, label %1168, label %1174

1168:                                             ; preds = %1165
  %1169 = load i32, i32* @FEATURE_FMA4, align 4
  %1170 = and i32 %1169, 31
  %1171 = shl i32 1, %1170
  %1172 = load i32, i32* %11, align 4
  %1173 = or i32 %1172, %1171
  store i32 %1173, i32* %11, align 4
  br label %1185

1174:                                             ; preds = %1165
  %1175 = load i32, i32* @FEATURE_FMA4, align 4
  %1176 = icmp slt i32 %1175, 64
  br i1 %1176, label %1177, label %1184

1177:                                             ; preds = %1174
  %1178 = load i32, i32* @FEATURE_FMA4, align 4
  %1179 = sub nsw i32 %1178, 32
  %1180 = and i32 %1179, 31
  %1181 = shl i32 1, %1180
  %1182 = load i32, i32* %12, align 4
  %1183 = or i32 %1182, %1181
  store i32 %1183, i32* %12, align 4
  br label %1184

1184:                                             ; preds = %1177, %1174
  br label %1185

1185:                                             ; preds = %1184, %1168
  br label %1186

1186:                                             ; preds = %1185
  br label %1187

1187:                                             ; preds = %1186, %1159, %1156
  %1188 = load i32, i32* %11, align 4
  %1189 = load i32*, i32** %9, align 8
  store i32 %1188, i32* %1189, align 4
  %1190 = load i32, i32* %12, align 4
  %1191 = load i32*, i32** %10, align 8
  store i32 %1190, i32* %1191, align 4
  ret void
}

declare dso_local i32 @getX86XCR0(i32*, i32*) #1

declare dso_local i32 @getX86CpuIDAndInfoEx(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getX86CpuIDAndInfo(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
