; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_free_for_value_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_free_for_value_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i64 }

@reload_reg_unavailable = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64, i64, i32, i32)* @reload_reg_free_for_value_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_reg_free_for_value_p(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* @reload_reg_unavailable, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @TEST_HARD_REG_BIT(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %455

30:                                               ; preds = %8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @const0_rtx, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  store i32 1, i32* %21, align 4
  %35 = load i64, i64* @NULL_RTX, align 8
  store i64 %35, i64* %15, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %13, align 4
  switch i32 %37, label %103 [
    i32 132, label %38
    i32 128, label %43
    i32 138, label %53
    i32 136, label %57
    i32 137, label %61
    i32 134, label %74
    i32 133, label %78
    i32 131, label %91
    i32 129, label %97
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %21, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  store i32 %42, i32* %18, align 4
  br label %107

43:                                               ; preds = %36
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %49 = mul nsw i32 %48, 5
  %50 = add nsw i32 %49, 5
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i32 [ 1, %46 ], [ %50, %47 ]
  store i32 %52, i32* %18, align 4
  br label %107

53:                                               ; preds = %36
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %18, align 4
  br label %107

57:                                               ; preds = %36
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %18, align 4
  br label %107

61:                                               ; preds = %36
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %66, 4
  br label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 %70, 3
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ]
  store i32 %73, i32* %18, align 4
  br label %107

74:                                               ; preds = %36
  %75 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %107

78:                                               ; preds = %36
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %83 = mul nsw i32 %82, 4
  %84 = add nsw i32 %83, 2
  br label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %87 = mul nsw i32 %86, 4
  %88 = add nsw i32 %87, 3
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %84, %81 ], [ %88, %85 ]
  store i32 %90, i32* %18, align 4
  br label %107

91:                                               ; preds = %36
  %92 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %93 = mul nsw i32 %92, 4
  %94 = add nsw i32 %93, 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %18, align 4
  br label %107

97:                                               ; preds = %36
  %98 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %99 = mul nsw i32 %98, 4
  %100 = add nsw i32 %99, 5
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %18, align 4
  br label %107

103:                                              ; preds = %36
  %104 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %105 = mul nsw i32 %104, 5
  %106 = add nsw i32 %105, 5
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %103, %97, %91, %89, %74, %72, %57, %53, %51, %38
  store i32 0, i32* %20, align 4
  br label %108

108:                                              ; preds = %440, %107
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* @n_reloads, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %443

112:                                              ; preds = %108
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %22, align 8
  %119 = load i64, i64* %22, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %439

121:                                              ; preds = %112
  %122 = load i64, i64* %22, align 8
  %123 = call i64 @REG_P(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %439

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = load i64, i64* %22, align 8
  %128 = call i32 @true_regnum(i64 %127)
  %129 = sub i32 %126, %128
  %130 = load i32**, i32*** @hard_regno_nregs, align 8
  %131 = load i64, i64* %22, align 8
  %132 = call i64 @REGNO(i64 %131)
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %22, align 8
  %136 = call i64 @GET_MODE(i64 %135)
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %138, 1
  %140 = icmp ule i32 %129, %139
  br i1 %140, label %141, label %439

141:                                              ; preds = %125
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %439

145:                                              ; preds = %141
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %23, align 8
  %152 = load i64, i64* %22, align 8
  %153 = call i32 @true_regnum(i64 %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i64, i64* @NULL_RTX, align 8
  store i64 %157, i64* %23, align 8
  br label %158

158:                                              ; preds = %156, %145
  %159 = load i64, i64* %23, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i64 @rtx_equal_p(i64 %162, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %166
  %175 = load i64, i64* %15, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %438

177:                                              ; preds = %174, %166, %161, %158
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %393 [
    i32 132, label %184
    i32 138, label %185
    i32 136, label %238
    i32 137, label %271
    i32 134, label %280
    i32 133, label %304
    i32 135, label %308
    i32 130, label %312
    i32 131, label %316
    i32 129, label %347
    i32 128, label %358
  ]

184:                                              ; preds = %177
  store i32 0, i32* %24, align 4
  br label %394

185:                                              ; preds = %177
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 136
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %20, align 4
  %191 = add nsw i32 %190, 1
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  br label %440

205:                                              ; preds = %196, %193, %188, %185
  %206 = load i32, i32* %13, align 4
  %207 = icmp eq i32 %206, 137
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %209, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %208
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %220
  br label %440

229:                                              ; preds = %220, %217, %208, %205
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %235, 4
  %237 = add nsw i32 %236, 2
  store i32 %237, i32* %24, align 4
  br label %394

238:                                              ; preds = %177
  %239 = load i32, i32* %13, align 4
  %240 = icmp eq i32 %239, 137
  br i1 %240, label %241, label %262

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %242, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %241
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %253
  br label %440

262:                                              ; preds = %253, %250, %241, %238
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 %268, 4
  %270 = add nsw i32 %269, 3
  store i32 %270, i32* %24, align 4
  br label %394

271:                                              ; preds = %177
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %273 = load i32, i32* %20, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 %277, 4
  %279 = add nsw i32 %278, 4
  store i32 %279, i32* %24, align 4
  store i32 1, i32* %19, align 4
  br label %394

280:                                              ; preds = %177
  %281 = load i32, i32* %13, align 4
  %282 = icmp eq i32 %281, 133
  br i1 %282, label %283, label %300

283:                                              ; preds = %280
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %285, 1
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %300

288:                                              ; preds = %283
  %289 = load i32, i32* %17, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %291
  br label %440

300:                                              ; preds = %291, %288, %283, %280
  %301 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %302 = mul nsw i32 %301, 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %24, align 4
  br label %394

304:                                              ; preds = %177
  %305 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %306 = mul nsw i32 %305, 4
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %24, align 4
  store i32 1, i32* %19, align 4
  br label %394

308:                                              ; preds = %177
  %309 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %310 = mul nsw i32 %309, 4
  %311 = add nsw i32 %310, 3
  store i32 %311, i32* %24, align 4
  br label %394

312:                                              ; preds = %177
  %313 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %314 = mul nsw i32 %313, 4
  %315 = add nsw i32 %314, 4
  store i32 %315, i32* %24, align 4
  br label %394

316:                                              ; preds = %177
  %317 = load i32, i32* %13, align 4
  %318 = icmp eq i32 %317, 129
  br i1 %318, label %319, label %336

319:                                              ; preds = %316
  %320 = load i32, i32* %16, align 4
  %321 = load i32, i32* %20, align 4
  %322 = add nsw i32 %321, 1
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %319
  %325 = load i32, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %324
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %329 = load i32, i32* %16, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %327
  br label %440

336:                                              ; preds = %327, %324, %319, %316
  %337 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %338 = mul nsw i32 %337, 4
  %339 = add nsw i32 %338, 4
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %339, %345
  store i32 %346, i32* %24, align 4
  br label %394

347:                                              ; preds = %177
  %348 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %349 = mul nsw i32 %348, 4
  %350 = add nsw i32 %349, 5
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %352 = load i32, i32* %20, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %350, %356
  store i32 %357, i32* %24, align 4
  br label %394

358:                                              ; preds = %177
  %359 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %360 = load i32, i32* %20, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %358
  %367 = load i64, i64* %23, align 8
  %368 = load i64, i64* %14, align 8
  %369 = call i64 @rtx_equal_p(i64 %367, i64 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %388

371:                                              ; preds = %366, %358
  %372 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %373 = mul nsw i32 %372, 4
  %374 = add nsw i32 %373, 4
  store i32 %374, i32* %24, align 4
  %375 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %376 = load i32, i32* %20, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = call i64 @earlyclobber_operand_p(i64 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %371
  %384 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %385 = mul nsw i32 %384, 4
  %386 = add nsw i32 %385, 3
  store i32 %386, i32* %24, align 4
  br label %387

387:                                              ; preds = %383, %371
  br label %394

388:                                              ; preds = %366
  store i32 1, i32* %24, align 4
  %389 = load i64, i64* %15, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %388
  store i32 0, i32* %9, align 4
  br label %455

392:                                              ; preds = %388
  br label %394

393:                                              ; preds = %177
  store i32 0, i32* %9, align 4
  br label %455

394:                                              ; preds = %392, %387, %347, %336, %312, %308, %304, %300, %271, %262, %229, %184
  %395 = load i32, i32* %18, align 4
  %396 = load i32, i32* %24, align 4
  %397 = icmp sge i32 %395, %396
  br i1 %397, label %398, label %419

398:                                              ; preds = %394
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %400 = load i32, i32* %20, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %436

406:                                              ; preds = %398
  %407 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %408 = load i32, i32* %20, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %436, label %414

414:                                              ; preds = %406
  %415 = load i64, i64* %23, align 8
  %416 = load i64, i64* %14, align 8
  %417 = call i64 @rtx_equal_p(i64 %415, i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %436

419:                                              ; preds = %414, %394
  %420 = load i64, i64* %15, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %437

422:                                              ; preds = %419
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %424 = load i32, i32* %16, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 5
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %422
  %431 = load i32, i32* %24, align 4
  %432 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %433 = mul nsw i32 %432, 4
  %434 = add nsw i32 %433, 3
  %435 = icmp sge i32 %431, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %430, %414, %406, %398
  store i32 0, i32* %9, align 4
  br label %455

437:                                              ; preds = %430, %422, %419
  br label %438

438:                                              ; preds = %437, %174
  br label %439

439:                                              ; preds = %438, %141, %125, %121, %112
  br label %440

440:                                              ; preds = %439, %335, %299, %261, %228, %204
  %441 = load i32, i32* %20, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %20, align 4
  br label %108

443:                                              ; preds = %108
  %444 = load i32, i32* %19, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %454

446:                                              ; preds = %443
  %447 = load i64, i64* %15, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %446
  %450 = load i64, i64* %15, align 8
  %451 = call i64 @earlyclobber_operand_p(i64 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %449
  store i32 0, i32* %9, align 4
  br label %455

454:                                              ; preds = %449, %446, %443
  store i32 1, i32* %9, align 4
  br label %455

455:                                              ; preds = %454, %453, %436, %393, %391, %29
  %456 = load i32, i32* %9, align 4
  ret i32 %456
}

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @true_regnum(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @earlyclobber_operand_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
