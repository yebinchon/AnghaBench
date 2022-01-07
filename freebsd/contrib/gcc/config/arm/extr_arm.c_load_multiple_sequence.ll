; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_load_multiple_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_load_multiple_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@REG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@arm_ld_sched = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_multiple_sequence(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
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

29:                                               ; preds = %269, %25
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %272

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
  br label %470

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
  br i1 %116, label %117, label %267

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
  br i1 %134, label %135, label %267

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @SUBREG_REG(i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = call i64 @GET_CODE(i32 %137)
  %139 = load i64, i64* @REG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %267

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
  br i1 %153, label %154, label %267

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
  br label %470

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
  br i1 %241, label %260, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 14
  br i1 %247, label %260, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %8, align 4
  %251 = sub nsw i32 %250, 1
  %252 = icmp ne i32 %249, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %15, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %253, %242, %236
  store i32 0, i32* %6, align 4
  br label %470

261:                                              ; preds = %253, %248
  %262 = load i32, i32* %18, align 4
  %263 = call i32 @INTVAL(i32 %262)
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %265
  store i32 %263, i32* %266, align 4
  br label %268

267:                                              ; preds = %141, %135, %130, %105
  store i32 0, i32* %6, align 4
  br label %470

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  br label %29

272:                                              ; preds = %29
  store i32 1, i32* %16, align 4
  br label %273

273:                                              ; preds = %369, %272
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %372

277:                                              ; preds = %273
  %278 = load i32, i32* %16, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %284
  store i32 %282, i32* %285, align 4
  store i32 0, i32* %19, align 4
  br label %286

286:                                              ; preds = %334, %277
  %287 = load i32, i32* %19, align 4
  %288 = load i32, i32* %8, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %337

290:                                              ; preds = %286
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %16, align 4
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %294, %302
  br i1 %303, label %304, label %333

304:                                              ; preds = %290
  %305 = load i32, i32* %16, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %16, align 4
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %308, %313
  br i1 %314, label %328, label %315

315:                                              ; preds = %304
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %16, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %319, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %315, %304
  %329 = load i32, i32* %19, align 4
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %331
  store i32 %329, i32* %332, align 4
  br label %333

333:                                              ; preds = %328, %315, %290
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %19, align 4
  br label %286

337:                                              ; preds = %286
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %16, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %341, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %337
  store i32 0, i32* %6, align 4
  br label %470

349:                                              ; preds = %337
  %350 = load i32, i32* %16, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %16, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, 4
  %366 = icmp ne i32 %356, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %349
  store i32 0, i32* %6, align 4
  br label %470

368:                                              ; preds = %349
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %16, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %16, align 4
  br label %273

372:                                              ; preds = %273
  %373 = load i32*, i32** %10, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %404

375:                                              ; preds = %372
  %376 = load i32, i32* %15, align 4
  %377 = load i32*, i32** %10, align 8
  store i32 %376, i32* %377, align 4
  store i32 0, i32* %16, align 4
  br label %378

378:                                              ; preds = %394, %375
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* %8, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %397

382:                                              ; preds = %378
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %9, align 8
  %391 = load i32, i32* %16, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %382
  %395 = load i32, i32* %16, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %16, align 4
  br label %378

397:                                              ; preds = %378
  %398 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %399 = load i32, i32* %398, align 16
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** %11, align 8
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %397, %372
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %406 = load i32, i32* %405, align 16
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %404
  store i32 1, i32* %6, align 4
  br label %470

412:                                              ; preds = %404
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %414 = load i32, i32* %413, align 16
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %417, 4
  br i1 %418, label %419, label %420

419:                                              ; preds = %412
  store i32 2, i32* %6, align 4
  br label %470

420:                                              ; preds = %412
  %421 = load i32, i32* %8, align 4
  %422 = sub nsw i32 %421, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %420
  store i32 3, i32* %6, align 4
  br label %470

431:                                              ; preds = %420
  %432 = load i32, i32* %8, align 4
  %433 = sub nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp eq i32 %439, -4
  br i1 %440, label %441, label %442

441:                                              ; preds = %431
  store i32 4, i32* %6, align 4
  br label %470

442:                                              ; preds = %431
  %443 = load i32, i32* %8, align 4
  %444 = icmp eq i32 %443, 2
  br i1 %444, label %445, label %449

445:                                              ; preds = %442
  %446 = load i64, i64* @arm_ld_sched, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32 0, i32* %6, align 4
  br label %470

449:                                              ; preds = %445, %442
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %451 = load i32, i32* %450, align 16
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i64 @const_ok_for_arm(i32 %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %466, label %457

457:                                              ; preds = %449
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %459 = load i32, i32* %458, align 16
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 0, %462
  %464 = call i64 @const_ok_for_arm(i32 %463)
  %465 = icmp ne i64 %464, 0
  br label %466

466:                                              ; preds = %457, %449
  %467 = phi i1 [ true, %449 ], [ %465, %457 ]
  %468 = zext i1 %467 to i64
  %469 = select i1 %467, i32 5, i32 0
  store i32 %469, i32* %6, align 4
  br label %470

470:                                              ; preds = %466, %448, %441, %430, %419, %411, %367, %348, %267, %260, %192, %80
  %471 = load i32, i32* %6, align 4
  ret i32 %471
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @alter_subreg(i32*) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @const_ok_for_arm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
