; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_store_multiple_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_store_multiple_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@REG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_multiple_sequence(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi i1 [ false, %5 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %257, %25
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %260

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @SUBREG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = call i32 @alter_subreg(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %33
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @MEM, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @gcc_assert(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @MEM_VOLATILE_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %431

81:                                               ; preds = %58
  %82 = load i32, i32* @const0_rtx, align 4
  store i32 %82, i32* %18, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @XEXP(i32 %89, i32 0)
  store i32 %90, i32* %17, align 4
  %91 = call i64 @GET_CODE(i32 %90)
  %92 = load i64, i64* @REG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %154, label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %17, align 4
  %96 = call i64 @GET_CODE(i32 %95)
  %97 = load i64, i64* @SUBREG, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @SUBREG_REG(i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = call i64 @GET_CODE(i32 %101)
  %103 = load i64, i64* @REG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %154, label %105

105:                                              ; preds = %99, %94
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @XEXP(i32 %112, i32 0)
  %114 = call i64 @GET_CODE(i32 %113)
  %115 = load i64, i64* @PLUS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %255

117:                                              ; preds = %105
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @XEXP(i32 %124, i32 0)
  %126 = call i32 @XEXP(i32 %125, i32 0)
  store i32 %126, i32* %17, align 4
  %127 = call i64 @GET_CODE(i32 %126)
  %128 = load i64, i64* @REG, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %141, label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %17, align 4
  %132 = call i64 @GET_CODE(i32 %131)
  %133 = load i64, i64* @SUBREG, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %255

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @SUBREG_REG(i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = call i64 @GET_CODE(i32 %137)
  %139 = load i64, i64* @REG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %255

141:                                              ; preds = %135, %117
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @XEXP(i32 %148, i32 0)
  %150 = call i32 @XEXP(i32 %149, i32 1)
  store i32 %150, i32* %18, align 4
  %151 = call i64 @GET_CODE(i32 %150)
  %152 = load i64, i64* @CONST_INT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %255

154:                                              ; preds = %141, %99, %81
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @REGNO(i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @GET_CODE(i32 %164)
  %166 = load i64, i64* @REG, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %157
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @REGNO(i32 %173)
  br label %183

175:                                              ; preds = %157
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @SUBREG_REG(i32 %180)
  %182 = call i32 @REGNO(i32 %181)
  br label %183

183:                                              ; preds = %175, %168
  %184 = phi i32 [ %174, %168 ], [ %182, %175 ]
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %184, i32* %185, align 16
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %186, align 16
  br label %236

187:                                              ; preds = %154
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @REGNO(i32 %189)
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %431

193:                                              ; preds = %187
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @GET_CODE(i32 %198)
  %200 = load i64, i64* @REG, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @REGNO(i32 %207)
  br label %217

209:                                              ; preds = %193
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @SUBREG_REG(i32 %214)
  %216 = call i32 @REGNO(i32 %215)
  br label %217

217:                                              ; preds = %209, %202
  %218 = phi i32 [ %208, %202 ], [ %216, %209 ]
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %227 = load i32, i32* %226, align 16
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %225, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %217
  %233 = load i32, i32* %16, align 4
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %233, i32* %234, align 16
  br label %235

235:                                              ; preds = %232, %217
  br label %236

236:                                              ; preds = %235, %183
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 14
  br i1 %247, label %248, label %249

248:                                              ; preds = %242, %236
  store i32 0, i32* %6, align 4
  br label %431

249:                                              ; preds = %242
  %250 = load i32, i32* %18, align 4
  %251 = call i32 @INTVAL(i32 %250)
  %252 = load i32, i32* %16, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %253
  store i32 %251, i32* %254, align 4
  br label %256

255:                                              ; preds = %141, %135, %130, %105
  store i32 0, i32* %6, align 4
  br label %431

256:                                              ; preds = %249
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %16, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %16, align 4
  br label %29

260:                                              ; preds = %29
  store i32 1, i32* %16, align 4
  br label %261

261:                                              ; preds = %357, %260
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %8, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %360

265:                                              ; preds = %261
  %266 = load i32, i32* %16, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %272
  store i32 %270, i32* %273, align 4
  store i32 0, i32* %19, align 4
  br label %274

274:                                              ; preds = %322, %265
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %325

278:                                              ; preds = %274
  %279 = load i32, i32* %19, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %16, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %282, %290
  br i1 %291, label %292, label %321

292:                                              ; preds = %278
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %16, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %296, %301
  br i1 %302, label %316, label %303

303:                                              ; preds = %292
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %307, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %303, %292
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %319
  store i32 %317, i32* %320, align 4
  br label %321

321:                                              ; preds = %316, %303, %278
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %19, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %19, align 4
  br label %274

325:                                              ; preds = %274
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %16, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %329, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %325
  store i32 0, i32* %6, align 4
  br label %431

337:                                              ; preds = %325
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %16, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 4
  %354 = icmp ne i32 %344, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %337
  store i32 0, i32* %6, align 4
  br label %431

356:                                              ; preds = %337
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %16, align 4
  br label %261

360:                                              ; preds = %261
  %361 = load i32*, i32** %10, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %363, label %392

363:                                              ; preds = %360
  %364 = load i32, i32* %15, align 4
  %365 = load i32*, i32** %10, align 8
  store i32 %364, i32* %365, align 4
  store i32 0, i32* %16, align 4
  br label %366

366:                                              ; preds = %382, %363
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* %8, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %385

370:                                              ; preds = %366
  %371 = load i32, i32* %16, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %9, align 8
  %379 = load i32, i32* %16, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  br label %382

382:                                              ; preds = %370
  %383 = load i32, i32* %16, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %16, align 4
  br label %366

385:                                              ; preds = %366
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %387 = load i32, i32* %386, align 16
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** %11, align 8
  store i32 %390, i32* %391, align 4
  br label %392

392:                                              ; preds = %385, %360
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %394 = load i32, i32* %393, align 16
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %392
  store i32 1, i32* %6, align 4
  br label %431

400:                                              ; preds = %392
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %402 = load i32, i32* %401, align 16
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 4
  br i1 %406, label %407, label %408

407:                                              ; preds = %400
  store i32 2, i32* %6, align 4
  br label %431

408:                                              ; preds = %400
  %409 = load i32, i32* %8, align 4
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %408
  store i32 3, i32* %6, align 4
  br label %431

419:                                              ; preds = %408
  %420 = load i32, i32* %8, align 4
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, -4
  br i1 %428, label %429, label %430

429:                                              ; preds = %419
  store i32 4, i32* %6, align 4
  br label %431

430:                                              ; preds = %419
  store i32 0, i32* %6, align 4
  br label %431

431:                                              ; preds = %430, %429, %418, %407, %399, %355, %336, %255, %248, %192, %80
  %432 = load i32, i32* %6, align 4
  ret i32 %432
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @alter_subreg(i32*) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
