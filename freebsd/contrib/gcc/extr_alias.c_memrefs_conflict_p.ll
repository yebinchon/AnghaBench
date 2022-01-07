; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_memrefs_conflict_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_memrefs_conflict_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VALUE = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @memrefs_conflict_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memrefs_conflict_p(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GET_CODE(i32 %22)
  %24 = load i32, i32* @VALUE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @get_addr(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %5
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @GET_CODE(i32 %30)
  %32 = load i32, i32* @VALUE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @get_addr(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @GET_CODE(i32 %38)
  %40 = load i32, i32* @HIGH, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @XEXP(i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  br label %58

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @GET_CODE(i32 %46)
  %48 = load i32, i32* @LO_SUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @XEXP(i32 %51, i32 1)
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @addr_side_effect_eval(i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @GET_CODE(i32 %59)
  %61 = load i32, i32* @HIGH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @XEXP(i32 %64, i32 0)
  store i32 %65, i32* %10, align 4
  br label %79

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @GET_CODE(i32 %67)
  %69 = load i32, i32* @LO_SUM, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @XEXP(i32 %72, i32 1)
  store i32 %73, i32* %10, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @addr_side_effect_eval(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @rtx_equal_for_memref_p(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84
  store i32 1, i32* %6, align 4
  br label %530

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %6, align 4
  br label %530

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %530

108:                                              ; preds = %102, %99
  store i32 0, i32* %6, align 4
  br label %530

109:                                              ; preds = %79
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @GET_CODE(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @PLUS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %220

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @XEXP(i32 %116, i32 0)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @XEXP(i32 %118, i32 1)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @GET_CODE(i32 %120)
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @PLUS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %203

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @XEXP(i32 %126, i32 0)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @XEXP(i32 %128, i32 1)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i64 @rtx_equal_for_memref_p(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @memrefs_conflict_p(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %6, align 4
  br label %530

141:                                              ; preds = %125
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i64 @rtx_equal_for_memref_p(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @memrefs_conflict_p(i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %6, align 4
  br label %530

153:                                              ; preds = %141
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @GET_CODE(i32 %154)
  %156 = load i32, i32* @CONST_INT, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @GET_CODE(i32 %159)
  %161 = load i32, i32* @CONST_INT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @INTVAL(i32 %169)
  %171 = sub nsw i32 %168, %170
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @INTVAL(i32 %172)
  %174 = add nsw i32 %171, %173
  %175 = call i32 @memrefs_conflict_p(i32 %164, i32 %165, i32 %166, i32 %167, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %530

176:                                              ; preds = %158
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @INTVAL(i32 %182)
  %184 = sub nsw i32 %181, %183
  %185 = call i32 @memrefs_conflict_p(i32 %177, i32 %178, i32 %179, i32 %180, i32 %184)
  store i32 %185, i32* %6, align 4
  br label %530

186:                                              ; preds = %153
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @GET_CODE(i32 %187)
  %189 = load i32, i32* @CONST_INT, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @INTVAL(i32 %197)
  %199 = add nsw i32 %196, %198
  %200 = call i32 @memrefs_conflict_p(i32 %192, i32 %193, i32 %194, i32 %195, i32 %199)
  store i32 %200, i32* %6, align 4
  br label %530

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201
  store i32 1, i32* %6, align 4
  br label %530

203:                                              ; preds = %115
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @GET_CODE(i32 %204)
  %206 = load i32, i32* @CONST_INT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @INTVAL(i32 %214)
  %216 = sub nsw i32 %213, %215
  %217 = call i32 @memrefs_conflict_p(i32 %209, i32 %210, i32 %211, i32 %212, i32 %216)
  store i32 %217, i32* %6, align 4
  br label %530

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218
  br label %247

220:                                              ; preds = %109
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @GET_CODE(i32 %221)
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* @PLUS, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %246

226:                                              ; preds = %220
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @XEXP(i32 %227, i32 0)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @XEXP(i32 %229, i32 1)
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @GET_CODE(i32 %231)
  %233 = load i32, i32* @CONST_INT, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %226
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @INTVAL(i32 %241)
  %243 = add nsw i32 %240, %242
  %244 = call i32 @memrefs_conflict_p(i32 %236, i32 %237, i32 %238, i32 %239, i32 %243)
  store i32 %244, i32* %6, align 4
  br label %530

245:                                              ; preds = %226
  store i32 1, i32* %6, align 4
  br label %530

246:                                              ; preds = %220
  br label %247

247:                                              ; preds = %246, %219
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @GET_CODE(i32 %248)
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @GET_CODE(i32 %250)
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %332

253:                                              ; preds = %247
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @GET_CODE(i32 %254)
  switch i32 %255, label %330 [
    i32 128, label %256
  ]

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @XEXP(i32 %257, i32 1)
  %259 = call i32 @canon_rtx(i32 %258)
  store i32 %259, i32* %20, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @XEXP(i32 %260, i32 1)
  %262 = call i32 @canon_rtx(i32 %261)
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %21, align 4
  %265 = call i64 @rtx_equal_for_memref_p(i32 %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %256
  store i32 1, i32* %6, align 4
  br label %530

268:                                              ; preds = %256
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @XEXP(i32 %269, i32 0)
  %271 = call i32 @canon_rtx(i32 %270)
  store i32 %271, i32* %18, align 4
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @XEXP(i32 %272, i32 0)
  %274 = call i32 @canon_rtx(i32 %273)
  store i32 %274, i32* %19, align 4
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %19, align 4
  %277 = call i64 @rtx_equal_for_memref_p(i32 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %305

279:                                              ; preds = %268
  %280 = load i32, i32* %7, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %302, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %9, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %302, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %11, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %302, label %292

292:                                              ; preds = %288, %285
  %293 = load i32, i32* %11, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %11, align 4
  %298 = add nsw i32 %296, %297
  %299 = icmp sgt i32 %298, 0
  br label %300

300:                                              ; preds = %295, %292
  %301 = phi i1 [ false, %292 ], [ %299, %295 ]
  br label %302

302:                                              ; preds = %300, %288, %282, %279
  %303 = phi i1 [ true, %288 ], [ true, %282 ], [ true, %279 ], [ %301, %300 ]
  %304 = zext i1 %303 to i32
  store i32 %304, i32* %6, align 4
  br label %530

305:                                              ; preds = %268
  %306 = load i32, i32* %20, align 4
  %307 = call i32 @GET_CODE(i32 %306)
  %308 = load i32, i32* @CONST_INT, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  store i32 1, i32* %6, align 4
  br label %530

311:                                              ; preds = %305
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @INTVAL(i32 %312)
  %314 = load i32, i32* %7, align 4
  %315 = sdiv i32 %314, %313
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %20, align 4
  %317 = call i32 @INTVAL(i32 %316)
  %318 = load i32, i32* %9, align 4
  %319 = sdiv i32 %318, %317
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %20, align 4
  %321 = call i32 @INTVAL(i32 %320)
  %322 = load i32, i32* %11, align 4
  %323 = sdiv i32 %322, %321
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %11, align 4
  %329 = call i32 @memrefs_conflict_p(i32 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %6, align 4
  br label %530

330:                                              ; preds = %253
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331, %247
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @GET_CODE(i32 %333)
  %335 = load i32, i32* @AND, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %365

337:                                              ; preds = %332
  %338 = load i32, i32* %8, align 4
  %339 = call i32 @XEXP(i32 %338, i32 1)
  %340 = call i32 @GET_CODE(i32 %339)
  %341 = load i32, i32* @CONST_INT, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %365

343:                                              ; preds = %337
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @GET_CODE(i32 %344)
  %346 = load i32, i32* @AND, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %355, label %348

348:                                              ; preds = %343
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %8, align 4
  %351 = call i32 @XEXP(i32 %350, i32 1)
  %352 = call i32 @INTVAL(i32 %351)
  %353 = sub nsw i32 0, %352
  %354 = icmp slt i32 %349, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %348, %343
  store i32 -1, i32* %7, align 4
  br label %356

356:                                              ; preds = %355, %348
  %357 = load i32, i32* %7, align 4
  %358 = load i32, i32* %8, align 4
  %359 = call i32 @XEXP(i32 %358, i32 0)
  %360 = call i32 @canon_rtx(i32 %359)
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @memrefs_conflict_p(i32 %357, i32 %360, i32 %361, i32 %362, i32 %363)
  store i32 %364, i32* %6, align 4
  br label %530

365:                                              ; preds = %337, %332
  %366 = load i32, i32* %10, align 4
  %367 = call i32 @GET_CODE(i32 %366)
  %368 = load i32, i32* @AND, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %398

370:                                              ; preds = %365
  %371 = load i32, i32* %10, align 4
  %372 = call i32 @XEXP(i32 %371, i32 1)
  %373 = call i32 @GET_CODE(i32 %372)
  %374 = load i32, i32* @CONST_INT, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %398

376:                                              ; preds = %370
  %377 = load i32, i32* %8, align 4
  %378 = call i32 @GET_CODE(i32 %377)
  %379 = load i32, i32* @AND, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %388, label %381

381:                                              ; preds = %376
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* %10, align 4
  %384 = call i32 @XEXP(i32 %383, i32 1)
  %385 = call i32 @INTVAL(i32 %384)
  %386 = sub nsw i32 0, %385
  %387 = icmp slt i32 %382, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %381, %376
  store i32 -1, i32* %9, align 4
  br label %389

389:                                              ; preds = %388, %381
  %390 = load i32, i32* %7, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @XEXP(i32 %393, i32 0)
  %395 = call i32 @canon_rtx(i32 %394)
  %396 = load i32, i32* %11, align 4
  %397 = call i32 @memrefs_conflict_p(i32 %390, i32 %391, i32 %392, i32 %395, i32 %396)
  store i32 %397, i32* %6, align 4
  br label %530

398:                                              ; preds = %370, %365
  %399 = load i32, i32* %8, align 4
  %400 = call i64 @CONSTANT_P(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %529

402:                                              ; preds = %398
  %403 = load i32, i32* %8, align 4
  %404 = call i32 @GET_CODE(i32 %403)
  %405 = load i32, i32* @CONST_INT, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %445

407:                                              ; preds = %402
  %408 = load i32, i32* %10, align 4
  %409 = call i32 @GET_CODE(i32 %408)
  %410 = load i32, i32* @CONST_INT, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %445

412:                                              ; preds = %407
  %413 = load i32, i32* %10, align 4
  %414 = call i32 @INTVAL(i32 %413)
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @INTVAL(i32 %415)
  %417 = sub nsw i32 %414, %416
  %418 = load i32, i32* %11, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %11, align 4
  %420 = load i32, i32* %7, align 4
  %421 = icmp sle i32 %420, 0
  br i1 %421, label %442, label %422

422:                                              ; preds = %412
  %423 = load i32, i32* %9, align 4
  %424 = icmp sle i32 %423, 0
  br i1 %424, label %442, label %425

425:                                              ; preds = %422
  %426 = load i32, i32* %11, align 4
  %427 = icmp sge i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load i32, i32* %7, align 4
  %430 = load i32, i32* %11, align 4
  %431 = icmp sgt i32 %429, %430
  br i1 %431, label %442, label %432

432:                                              ; preds = %428, %425
  %433 = load i32, i32* %11, align 4
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* %11, align 4
  %438 = add nsw i32 %436, %437
  %439 = icmp sgt i32 %438, 0
  br label %440

440:                                              ; preds = %435, %432
  %441 = phi i1 [ false, %432 ], [ %439, %435 ]
  br label %442

442:                                              ; preds = %440, %428, %422, %412
  %443 = phi i1 [ true, %428 ], [ true, %422 ], [ true, %412 ], [ %441, %440 ]
  %444 = zext i1 %443 to i32
  store i32 %444, i32* %6, align 4
  br label %530

445:                                              ; preds = %407, %402
  %446 = load i32, i32* %8, align 4
  %447 = call i32 @GET_CODE(i32 %446)
  %448 = load i32, i32* @CONST, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %475

450:                                              ; preds = %445
  %451 = load i32, i32* %10, align 4
  %452 = call i32 @GET_CODE(i32 %451)
  %453 = load i32, i32* @CONST, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %466

455:                                              ; preds = %450
  %456 = load i32, i32* %7, align 4
  %457 = load i32, i32* %8, align 4
  %458 = call i32 @XEXP(i32 %457, i32 0)
  %459 = call i32 @canon_rtx(i32 %458)
  %460 = load i32, i32* %9, align 4
  %461 = load i32, i32* %10, align 4
  %462 = call i32 @XEXP(i32 %461, i32 0)
  %463 = call i32 @canon_rtx(i32 %462)
  %464 = load i32, i32* %11, align 4
  %465 = call i32 @memrefs_conflict_p(i32 %456, i32 %459, i32 %460, i32 %463, i32 %464)
  store i32 %465, i32* %6, align 4
  br label %530

466:                                              ; preds = %450
  %467 = load i32, i32* %7, align 4
  %468 = load i32, i32* %8, align 4
  %469 = call i32 @XEXP(i32 %468, i32 0)
  %470 = call i32 @canon_rtx(i32 %469)
  %471 = load i32, i32* %9, align 4
  %472 = load i32, i32* %10, align 4
  %473 = load i32, i32* %11, align 4
  %474 = call i32 @memrefs_conflict_p(i32 %467, i32 %470, i32 %471, i32 %472, i32 %473)
  store i32 %474, i32* %6, align 4
  br label %530

475:                                              ; preds = %445
  %476 = load i32, i32* %10, align 4
  %477 = call i32 @GET_CODE(i32 %476)
  %478 = load i32, i32* @CONST, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %489

480:                                              ; preds = %475
  %481 = load i32, i32* %7, align 4
  %482 = load i32, i32* %8, align 4
  %483 = load i32, i32* %9, align 4
  %484 = load i32, i32* %10, align 4
  %485 = call i32 @XEXP(i32 %484, i32 0)
  %486 = call i32 @canon_rtx(i32 %485)
  %487 = load i32, i32* %11, align 4
  %488 = call i32 @memrefs_conflict_p(i32 %481, i32 %482, i32 %483, i32 %486, i32 %487)
  store i32 %488, i32* %6, align 4
  br label %530

489:                                              ; preds = %475
  %490 = load i32, i32* %10, align 4
  %491 = call i64 @CONSTANT_P(i32 %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %528

493:                                              ; preds = %489
  %494 = load i32, i32* %7, align 4
  %495 = icmp sle i32 %494, 0
  br i1 %495, label %525, label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %9, align 4
  %498 = icmp sle i32 %497, 0
  br i1 %498, label %525, label %499

499:                                              ; preds = %496
  %500 = load i32, i32* %8, align 4
  %501 = load i32, i32* %10, align 4
  %502 = call i64 @rtx_equal_for_memref_p(i32 %500, i32 %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %523

504:                                              ; preds = %499
  %505 = load i32, i32* %11, align 4
  %506 = icmp sge i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load i32, i32* %7, align 4
  %509 = load i32, i32* %11, align 4
  %510 = icmp sgt i32 %508, %509
  br i1 %510, label %521, label %511

511:                                              ; preds = %507, %504
  %512 = load i32, i32* %11, align 4
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %519

514:                                              ; preds = %511
  %515 = load i32, i32* %9, align 4
  %516 = load i32, i32* %11, align 4
  %517 = add nsw i32 %515, %516
  %518 = icmp sgt i32 %517, 0
  br label %519

519:                                              ; preds = %514, %511
  %520 = phi i1 [ false, %511 ], [ %518, %514 ]
  br label %521

521:                                              ; preds = %519, %507
  %522 = phi i1 [ true, %507 ], [ %520, %519 ]
  br label %523

523:                                              ; preds = %521, %499
  %524 = phi i1 [ false, %499 ], [ %522, %521 ]
  br label %525

525:                                              ; preds = %523, %496, %493
  %526 = phi i1 [ true, %496 ], [ true, %493 ], [ %524, %523 ]
  %527 = zext i1 %526 to i32
  store i32 %527, i32* %6, align 4
  br label %530

528:                                              ; preds = %489
  store i32 1, i32* %6, align 4
  br label %530

529:                                              ; preds = %398
  store i32 1, i32* %6, align 4
  br label %530

530:                                              ; preds = %529, %528, %525, %480, %466, %455, %442, %389, %356, %311, %310, %302, %267, %245, %235, %208, %202, %191, %176, %163, %146, %134, %108, %107, %98, %90
  %531 = load i32, i32* %6, align 4
  ret i32 %531
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @get_addr(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @addr_side_effect_eval(i32, i32, i32) #1

declare dso_local i64 @rtx_equal_for_memref_p(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @canon_rtx(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
