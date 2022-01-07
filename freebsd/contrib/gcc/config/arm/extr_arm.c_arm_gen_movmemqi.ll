; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_gen_movmemqi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_gen_movmemqi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@const2_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_gen_movmemqi(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* null, i32** %14, align 8
  %19 = load i32**, i32*** %3, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @GET_CODE(i32* %21)
  %23 = load i64, i64* @CONST_INT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %1
  %26 = load i32**, i32*** %3, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @GET_CODE(i32* %28)
  %30 = load i64, i64* @CONST_INT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load i32**, i32*** %3, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @INTVAL(i32* %35)
  %37 = icmp sgt i32 %36, 64
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32**, i32*** %3, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @INTVAL(i32* %41)
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %32, %25, %1
  store i32 0, i32* %2, align 4
  br label %342

46:                                               ; preds = %38
  %47 = load i32**, i32*** %3, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %13, align 8
  %50 = load i32**, i32*** %3, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %12, align 8
  %53 = load i32, i32* @SImode, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i32* @XEXP(i32* %54, i32 0)
  %56 = call i32* @copy_to_mode_reg(i32 %53, i32* %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32, i32* @SImode, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32* @XEXP(i32* %58, i32 0)
  %60 = call i32* @copy_to_mode_reg(i32 %57, i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32**, i32*** %3, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @INTVAL(i32* %63)
  %65 = call i32 @ARM_NUM_INTS(i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32**, i32*** %3, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @INTVAL(i32* %68)
  %70 = sdiv i32 %69, 4
  store i32 %70, i32* %5, align 4
  %71 = load i32**, i32*** %3, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @INTVAL(i32* %73)
  %75 = and i32 %74, 3
  store i32 %75, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %46
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @SImode, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %87, 3
  %89 = call i32* @gen_rtx_REG(i32 %85, i32 %88)
  store i32* %89, i32** %14, align 8
  br label %90

90:                                               ; preds = %84, %79, %46
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %185, %90
  %92 = load i32, i32* %4, align 4
  %93 = icmp sge i32 %92, 2
  br i1 %93, label %94, label %188

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @arm_gen_load_multiple(i32 0, i32 4, i32* %98, i32 %99, i32 %100, i32* %101, i32* %7)
  %103 = call i32 @emit_insn(i32 %102)
  br label %112

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @TRUE, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @arm_gen_load_multiple(i32 0, i32 %105, i32* %106, i32 %107, i32 %108, i32* %109, i32* %7)
  %111 = call i32 @emit_insn(i32 %110)
  br label %112

112:                                              ; preds = %104, %97
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %166

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp sgt i32 %116, 4
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i32, i32* @TRUE, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @arm_gen_store_multiple(i32 0, i32 4, i32* %119, i32 %120, i32 %121, i32* %122, i32* %8)
  %124 = call i32 @emit_insn(i32 %123)
  br label %165

125:                                              ; preds = %115
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @FALSE, align 4
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @TRUE, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @arm_gen_store_multiple(i32 0, i32 %129, i32* %130, i32 %131, i32 %139, i32* %140, i32* %8)
  %142 = call i32 @emit_insn(i32 %141)
  br label %164

143:                                              ; preds = %125
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* @SImode, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32* @adjust_automodify_address(i32* %144, i32 %145, i32* %146, i32 %147)
  store i32* %148, i32** %15, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* @SImode, align 4
  %151 = call i32* @gen_rtx_REG(i32 %150, i32 0)
  %152 = call i32 @emit_move_insn(i32* %149, i32* %151)
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %143
  %156 = load i32*, i32** %11, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @GEN_INT(i32 4)
  %159 = call i32 @gen_addsi3(i32* %156, i32* %157, i32 %158)
  %160 = call i32 @emit_insn(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %155, %143
  br label %164

164:                                              ; preds = %163, %138
  br label %165

165:                                              ; preds = %164, %118
  br label %166

166:                                              ; preds = %165, %112
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* %4, align 4
  br label %172

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 4, %171 ]
  %174 = load i32, i32* %4, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp slt i32 %176, 4
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  br label %181

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 4, %180 ]
  %183 = load i32, i32* %5, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 4
  store i32 %187, i32* %9, align 4
  br label %91

188:                                              ; preds = %91
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* @SImode, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32* @adjust_automodify_address(i32* %192, i32 %193, i32* %194, i32 %195)
  store i32* %196, i32** %15, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = call i32* @copy_to_reg(i32* %197)
  store i32* %198, i32** %16, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* @SImode, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32* @adjust_automodify_address(i32* %199, i32 %200, i32* %201, i32 %202)
  store i32* %203, i32** %15, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %16, align 8
  %206 = call i32 @emit_move_insn(i32* %204, i32* %205)
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %4, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = call i32 @gcc_assert(i32 %212)
  br label %214

214:                                              ; preds = %191, %188
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = load i32, i32* %4, align 4
  %219 = icmp sgt i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @gcc_assert(i32 %220)
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* @SImode, align 4
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call i32* @adjust_automodify_address(i32* %222, i32 %223, i32* %224, i32 %225)
  store i32* %226, i32** %15, align 8
  %227 = load i32, i32* @SImode, align 4
  %228 = load i32*, i32** %15, align 8
  %229 = call i32* @copy_to_mode_reg(i32 %227, i32* %228)
  store i32* %229, i32** %14, align 8
  br label %230

230:                                              ; preds = %217, %214
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32*, i32** %14, align 8
  %235 = icmp ne i32* %234, null
  br label %236

236:                                              ; preds = %233, %230
  %237 = phi i1 [ true, %230 ], [ %235, %233 ]
  %238 = zext i1 %237 to i32
  %239 = call i32 @gcc_assert(i32 %238)
  %240 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %291

242:                                              ; preds = %236
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %291

245:                                              ; preds = %242
  %246 = load i32, i32* @SImode, align 4
  %247 = call i32* @gen_reg_rtx(i32 %246)
  store i32* %247, i32** %17, align 8
  %248 = load i32*, i32** %17, align 8
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sub nsw i32 4, %250
  %252 = mul nsw i32 8, %251
  %253 = call i32 @GEN_INT(i32 %252)
  %254 = call i32 @gen_lshrsi3(i32* %248, i32* %249, i32 %253)
  %255 = call i32 @emit_insn(i32 %254)
  %256 = load i32*, i32** %17, align 8
  store i32* %256, i32** %14, align 8
  br label %257

257:                                              ; preds = %289, %245
  %258 = load i32, i32* %6, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %290

260:                                              ; preds = %257
  %261 = load i32*, i32** %13, align 8
  %262 = load i32, i32* @QImode, align 4
  %263 = load i32*, i32** %11, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sub nsw i32 %264, 1
  %266 = call i32* @plus_constant(i32* %263, i32 %265)
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %267, %268
  %270 = sub nsw i32 %269, 1
  %271 = call i32* @adjust_automodify_address(i32* %261, i32 %262, i32* %266, i32 %270)
  store i32* %271, i32** %15, align 8
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* @QImode, align 4
  %274 = load i32*, i32** %14, align 8
  %275 = call i32* @gen_lowpart(i32 %273, i32* %274)
  %276 = call i32 @emit_move_insn(i32* %272, i32* %275)
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %6, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %260
  %281 = load i32, i32* @SImode, align 4
  %282 = call i32* @gen_reg_rtx(i32 %281)
  store i32* %282, i32** %17, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = load i32*, i32** %14, align 8
  %285 = call i32 @GEN_INT(i32 8)
  %286 = call i32 @gen_lshrsi3(i32* %283, i32* %284, i32 %285)
  %287 = call i32 @emit_insn(i32 %286)
  %288 = load i32*, i32** %17, align 8
  store i32* %288, i32** %14, align 8
  br label %289

289:                                              ; preds = %280, %260
  br label %257

290:                                              ; preds = %257
  br label %341

291:                                              ; preds = %242, %236
  %292 = load i32, i32* %6, align 4
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %326

294:                                              ; preds = %291
  %295 = load i32*, i32** %13, align 8
  %296 = load i32, i32* @HImode, align 4
  %297 = load i32*, i32** %11, align 8
  %298 = load i32, i32* %8, align 4
  %299 = call i32* @adjust_automodify_address(i32* %295, i32 %296, i32* %297, i32 %298)
  store i32* %299, i32** %15, align 8
  %300 = load i32*, i32** %15, align 8
  %301 = load i32, i32* @HImode, align 4
  %302 = load i32*, i32** %14, align 8
  %303 = call i32* @gen_lowpart(i32 %301, i32* %302)
  %304 = call i32 @emit_move_insn(i32* %300, i32* %303)
  %305 = load i32, i32* %6, align 4
  %306 = sub nsw i32 %305, 2
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %294
  %310 = load i32, i32* @SImode, align 4
  %311 = call i32* @gen_reg_rtx(i32 %310)
  store i32* %311, i32** %18, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = load i32*, i32** %11, align 8
  %314 = load i32, i32* @const2_rtx, align 4
  %315 = call i32 @gen_addsi3(i32* %312, i32* %313, i32 %314)
  %316 = call i32 @emit_insn(i32 %315)
  %317 = load i32*, i32** %18, align 8
  %318 = load i32*, i32** %14, align 8
  %319 = call i32 @GEN_INT(i32 16)
  %320 = call i32 @gen_lshrsi3(i32* %317, i32* %318, i32 %319)
  %321 = call i32 @emit_insn(i32 %320)
  %322 = load i32*, i32** %18, align 8
  store i32* %322, i32** %14, align 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 2
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %309, %294
  br label %326

326:                                              ; preds = %325, %291
  %327 = load i32, i32* %6, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %326
  %330 = load i32*, i32** %13, align 8
  %331 = load i32, i32* @QImode, align 4
  %332 = load i32*, i32** %11, align 8
  %333 = load i32, i32* %8, align 4
  %334 = call i32* @adjust_automodify_address(i32* %330, i32 %331, i32* %332, i32 %333)
  store i32* %334, i32** %15, align 8
  %335 = load i32*, i32** %15, align 8
  %336 = load i32, i32* @QImode, align 4
  %337 = load i32*, i32** %14, align 8
  %338 = call i32* @gen_lowpart(i32 %336, i32* %337)
  %339 = call i32 @emit_move_insn(i32* %335, i32* %338)
  br label %340

340:                                              ; preds = %329, %326
  br label %341

341:                                              ; preds = %340, %290
  store i32 1, i32* %2, align 4
  br label %342

342:                                              ; preds = %341, %45
  %343 = load i32, i32* %2, align 4
  ret i32 %343
}

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32 @INTVAL(i32*) #1

declare dso_local i32* @copy_to_mode_reg(i32, i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i32 @ARM_NUM_INTS(i32) #1

declare dso_local i32* @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @arm_gen_load_multiple(i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @arm_gen_store_multiple(i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @adjust_automodify_address(i32*, i32, i32*, i32) #1

declare dso_local i32 @emit_move_insn(i32*, i32*) #1

declare dso_local i32 @gen_addsi3(i32*, i32*, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32* @copy_to_reg(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_lshrsi3(i32*, i32*, i32) #1

declare dso_local i32* @plus_constant(i32*, i32) #1

declare dso_local i32* @gen_lowpart(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
