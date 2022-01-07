; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_to_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_to_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i32 0, align 4
@REG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@CONST_VECTOR = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32)* @ix86_split_to_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_split_to_parts(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i64], align 16
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @TARGET_64BIT, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @GET_MODE_SIZE(i32 %24)
  %26 = sdiv i32 %25, 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 3, %22 ], [ %26, %23 ]
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @GET_MODE_SIZE(i32 %30)
  %32 = add nsw i32 %31, 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @GET_CODE(i32* %35)
  %37 = load i64, i64* @REG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @REGNO(i32* %40)
  %42 = call i32 @MMX_REGNO_P(i64 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ true, %34 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @gcc_assert(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %52, 3
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i1 [ false, %45 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @gcc_assert(i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @GET_CODE(i32* %58)
  %60 = load i64, i64* @MEM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @MEM_READONLY_P(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = call i32* @maybe_get_pool_constant(i32* %67)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %5, align 8
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %62, %54
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @GET_CODE(i32* %75)
  %77 = load i64, i64* @MEM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @offsettable_memref_p(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @VOIDmode, align 4
  %86 = call i32 @push_operand(i32* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @gcc_assert(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32* @copy_rtx(i32* %89)
  store i32* %90, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @Pmode, align 4
  %93 = call i32 @PUT_MODE(i32* %91, i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32**, i32*** %6, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 2
  store i32* %94, i32** %96, align 8
  %97 = load i32**, i32*** %6, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* %94, i32** %98, align 8
  %99 = load i32**, i32*** %6, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  store i32* %94, i32** %100, align 8
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %381

102:                                              ; preds = %79, %74
  %103 = load i32*, i32** %5, align 8
  %104 = call i64 @GET_CODE(i32* %103)
  %105 = load i64, i64* @CONST_VECTOR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @int_mode_for_mode(i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @GET_MODE(i32* %112)
  %114 = call i32* @simplify_subreg(i32 %110, i32* %111, i32 %113, i32 0)
  store i32* %114, i32** %5, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = icmp ne i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @gcc_assert(i32 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %107, %102
  %121 = load i32, i32* @TARGET_64BIT, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %235, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @DImode, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32**, i32*** %6, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32**, i32*** %6, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = call i32 @split_di(i32** %5, i32 1, i32** %129, i32** %131)
  br label %234

133:                                              ; preds = %123
  %134 = load i32*, i32** %5, align 8
  %135 = call i64 @REG_P(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %133
  %138 = load i32, i32* @reload_completed, align 4
  %139 = call i32 @gcc_assert(i32 %138)
  %140 = load i32, i32* @SImode, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = call i64 @REGNO(i32* %141)
  %143 = add nsw i64 %142, 0
  %144 = call i32* @gen_rtx_REG(i32 %140, i64 %143)
  %145 = load i32**, i32*** %6, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  store i32* %144, i32** %146, align 8
  %147 = load i32, i32* @SImode, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = call i64 @REGNO(i32* %148)
  %150 = add nsw i64 %149, 1
  %151 = call i32* @gen_rtx_REG(i32 %147, i64 %150)
  %152 = load i32**, i32*** %6, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* %151, i32** %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %164

156:                                              ; preds = %137
  %157 = load i32, i32* @SImode, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = call i64 @REGNO(i32* %158)
  %160 = add nsw i64 %159, 2
  %161 = call i32* @gen_rtx_REG(i32 %157, i64 %160)
  %162 = load i32**, i32*** %6, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 2
  store i32* %161, i32** %163, align 8
  br label %164

164:                                              ; preds = %156, %137
  br label %233

165:                                              ; preds = %133
  %166 = load i32*, i32** %5, align 8
  %167 = call i64 @offsettable_memref_p(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* @SImode, align 4
  %172 = call i32* @adjust_address(i32* %170, i32 %171, i32 0)
  store i32* %172, i32** %5, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = load i32**, i32*** %6, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 0
  store i32* %173, i32** %175, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* @SImode, align 4
  %178 = call i32* @adjust_address(i32* %176, i32 %177, i32 4)
  %179 = load i32**, i32*** %6, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  store i32* %178, i32** %180, align 8
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %183, label %189

183:                                              ; preds = %169
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @SImode, align 4
  %186 = call i32* @adjust_address(i32* %184, i32 %185, i32 8)
  %187 = load i32**, i32*** %6, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 2
  store i32* %186, i32** %188, align 8
  br label %189

189:                                              ; preds = %183, %169
  br label %232

190:                                              ; preds = %165
  %191 = load i32*, i32** %5, align 8
  %192 = call i64 @GET_CODE(i32* %191)
  %193 = load i64, i64* @CONST_DOUBLE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %190
  %196 = load i32, i32* %12, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %196, i32* %197)
  %199 = load i32, i32* %7, align 4
  switch i32 %199, label %214 [
    i32 128, label %200
    i32 129, label %210
  ]

200:                                              ; preds = %195
  %201 = load i32, i32* %12, align 4
  %202 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %203 = call i32 @REAL_VALUE_TO_TARGET_LONG_DOUBLE(i32 %201, i64* %202)
  %204 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %205 = load i64, i64* %204, align 16
  %206 = load i32, i32* @SImode, align 4
  %207 = call i32* @gen_int_mode(i64 %205, i32 %206)
  %208 = load i32**, i32*** %6, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 2
  store i32* %207, i32** %209, align 8
  br label %216

210:                                              ; preds = %195
  %211 = load i32, i32* %12, align 4
  %212 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %213 = call i32 @REAL_VALUE_TO_TARGET_DOUBLE(i32 %211, i64* %212)
  br label %216

214:                                              ; preds = %195
  %215 = call i32 (...) @gcc_unreachable()
  br label %216

216:                                              ; preds = %214, %210, %200
  %217 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @SImode, align 4
  %220 = call i32* @gen_int_mode(i64 %218, i32 %219)
  %221 = load i32**, i32*** %6, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 1
  store i32* %220, i32** %222, align 8
  %223 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %224 = load i64, i64* %223, align 16
  %225 = load i32, i32* @SImode, align 4
  %226 = call i32* @gen_int_mode(i64 %224, i32 %225)
  %227 = load i32**, i32*** %6, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 0
  store i32* %226, i32** %228, align 8
  br label %231

229:                                              ; preds = %190
  %230 = call i32 (...) @gcc_unreachable()
  br label %231

231:                                              ; preds = %229, %216
  br label %232

232:                                              ; preds = %231, %189
  br label %233

233:                                              ; preds = %232, %164
  br label %234

234:                                              ; preds = %233, %127
  br label %379

235:                                              ; preds = %120
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @TImode, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i32**, i32*** %6, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32**, i32*** %6, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 1
  %244 = call i32 @split_ti(i32** %5, i32 1, i32** %241, i32** %243)
  br label %245

245:                                              ; preds = %239, %235
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %246, 128
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @TFmode, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %378

252:                                              ; preds = %248, %245
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %253, 128
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* @SImode, align 4
  br label %259

257:                                              ; preds = %252
  %258 = load i32, i32* @DImode, align 4
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  store i32 %260, i32* %14, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = call i64 @REG_P(i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %259
  %265 = load i32, i32* @reload_completed, align 4
  %266 = call i32 @gcc_assert(i32 %265)
  %267 = load i32, i32* @DImode, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = call i64 @REGNO(i32* %268)
  %270 = add nsw i64 %269, 0
  %271 = call i32* @gen_rtx_REG(i32 %267, i64 %270)
  %272 = load i32**, i32*** %6, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 0
  store i32* %271, i32** %273, align 8
  %274 = load i32, i32* %14, align 4
  %275 = load i32*, i32** %5, align 8
  %276 = call i64 @REGNO(i32* %275)
  %277 = add nsw i64 %276, 1
  %278 = call i32* @gen_rtx_REG(i32 %274, i64 %277)
  %279 = load i32**, i32*** %6, align 8
  %280 = getelementptr inbounds i32*, i32** %279, i64 1
  store i32* %278, i32** %280, align 8
  br label %377

281:                                              ; preds = %259
  %282 = load i32*, i32** %5, align 8
  %283 = call i64 @offsettable_memref_p(i32* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = load i32*, i32** %5, align 8
  %287 = load i32, i32* @DImode, align 4
  %288 = call i32* @adjust_address(i32* %286, i32 %287, i32 0)
  store i32* %288, i32** %5, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = load i32**, i32*** %6, align 8
  %291 = getelementptr inbounds i32*, i32** %290, i64 0
  store i32* %289, i32** %291, align 8
  %292 = load i32*, i32** %5, align 8
  %293 = load i32, i32* %14, align 4
  %294 = call i32* @adjust_address(i32* %292, i32 %293, i32 8)
  %295 = load i32**, i32*** %6, align 8
  %296 = getelementptr inbounds i32*, i32** %295, i64 1
  store i32* %294, i32** %296, align 8
  br label %376

297:                                              ; preds = %281
  %298 = load i32*, i32** %5, align 8
  %299 = call i64 @GET_CODE(i32* %298)
  %300 = load i64, i64* @CONST_DOUBLE, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %373

302:                                              ; preds = %297
  %303 = load i32, i32* %15, align 4
  %304 = load i32*, i32** %5, align 8
  %305 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %303, i32* %304)
  %306 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @real_to_target(i64* %306, i32* %15, i32 %307)
  %309 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %310 = icmp sge i32 %309, 64
  br i1 %310, label %311, label %325

311:                                              ; preds = %302
  %312 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %313 = load i64, i64* %312, align 16
  %314 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 1
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = shl i32 %316, 31
  %318 = shl i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %313, %319
  %321 = load i32, i32* @DImode, align 4
  %322 = call i32* @gen_int_mode(i64 %320, i32 %321)
  %323 = load i32**, i32*** %6, align 8
  %324 = getelementptr inbounds i32*, i32** %323, i64 0
  store i32* %322, i32** %324, align 8
  br label %334

325:                                              ; preds = %302
  %326 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %327 = load i64, i64* %326, align 16
  %328 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 1
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* @DImode, align 4
  %331 = call i32* @immed_double_const(i64 %327, i64 %329, i32 %330)
  %332 = load i32**, i32*** %6, align 8
  %333 = getelementptr inbounds i32*, i32** %332, i64 0
  store i32* %331, i32** %333, align 8
  br label %334

334:                                              ; preds = %325, %311
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @SImode, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 2
  %340 = load i64, i64* %339, align 16
  %341 = load i32, i32* @SImode, align 4
  %342 = call i32* @gen_int_mode(i64 %340, i32 %341)
  %343 = load i32**, i32*** %6, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 1
  store i32* %342, i32** %344, align 8
  br label %372

345:                                              ; preds = %334
  %346 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %347 = icmp sge i32 %346, 64
  br i1 %347, label %348, label %362

348:                                              ; preds = %345
  %349 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 2
  %350 = load i64, i64* %349, align 16
  %351 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 3
  %352 = load i64, i64* %351, align 8
  %353 = trunc i64 %352 to i32
  %354 = shl i32 %353, 31
  %355 = shl i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %350, %356
  %358 = load i32, i32* @DImode, align 4
  %359 = call i32* @gen_int_mode(i64 %357, i32 %358)
  %360 = load i32**, i32*** %6, align 8
  %361 = getelementptr inbounds i32*, i32** %360, i64 1
  store i32* %359, i32** %361, align 8
  br label %371

362:                                              ; preds = %345
  %363 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 2
  %364 = load i64, i64* %363, align 16
  %365 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 3
  %366 = load i64, i64* %365, align 8
  %367 = load i32, i32* @DImode, align 4
  %368 = call i32* @immed_double_const(i64 %364, i64 %366, i32 %367)
  %369 = load i32**, i32*** %6, align 8
  %370 = getelementptr inbounds i32*, i32** %369, i64 1
  store i32* %368, i32** %370, align 8
  br label %371

371:                                              ; preds = %362, %348
  br label %372

372:                                              ; preds = %371, %338
  br label %375

373:                                              ; preds = %297
  %374 = call i32 (...) @gcc_unreachable()
  br label %375

375:                                              ; preds = %373, %372
  br label %376

376:                                              ; preds = %375, %285
  br label %377

377:                                              ; preds = %376, %264
  br label %378

378:                                              ; preds = %377, %248
  br label %379

379:                                              ; preds = %378, %234
  %380 = load i32, i32* %8, align 4
  store i32 %380, i32* %4, align 4
  br label %381

381:                                              ; preds = %379, %83
  %382 = load i32, i32* %4, align 4
  ret i32 %382
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @MMX_REGNO_P(i64) #1

declare dso_local i64 @REGNO(i32*) #1

declare dso_local i64 @MEM_READONLY_P(i32*) #1

declare dso_local i32* @maybe_get_pool_constant(i32*) #1

declare dso_local i64 @offsettable_memref_p(i32*) #1

declare dso_local i32 @push_operand(i32*, i32) #1

declare dso_local i32* @copy_rtx(i32*) #1

declare dso_local i32 @PUT_MODE(i32*, i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i32* @simplify_subreg(i32, i32*, i32, i32) #1

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32 @split_di(i32**, i32, i32**, i32**) #1

declare dso_local i64 @REG_P(i32*) #1

declare dso_local i32* @gen_rtx_REG(i32, i64) #1

declare dso_local i32* @adjust_address(i32*, i32, i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32*) #1

declare dso_local i32 @REAL_VALUE_TO_TARGET_LONG_DOUBLE(i32, i64*) #1

declare dso_local i32* @gen_int_mode(i64, i32) #1

declare dso_local i32 @REAL_VALUE_TO_TARGET_DOUBLE(i32, i64*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @split_ti(i32**, i32, i32**, i32**) #1

declare dso_local i32 @real_to_target(i64*, i32*, i32) #1

declare dso_local i32* @immed_double_const(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
