; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@CONCAT = common dso_local global i64 0, align 8
@direct_store = common dso_local global i32* null, align 8
@MODE_COMPLEX_INT = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32, i32, i32, i32)* @store_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_field(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @ERROR_MARK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i64, i64* @const0_rtx, align 8
  store i64 %27, i64* %8, align 8
  br label %363

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = load i64, i64* @const0_rtx, align 8
  %34 = load i32, i32* @VOIDmode, align 4
  %35 = call i64 @expand_expr(i32 %32, i64 %33, i32 %34, i32 0)
  store i64 %35, i64* %8, align 8
  br label %363

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %43, %39, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @BLKmode, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @REG_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @SUBREG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @assign_temp(i32 %62, i32 0, i32 1, i32 1)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i32, i32* @BLKmode, align 4
  %66 = call i64 @adjust_address(i64 %64, i32 %65, i32 0)
  store i64 %66, i64* %18, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @GET_MODE(i64 %68)
  %70 = call i32 @GET_MODE_BITSIZE(i32 %69)
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @emit_move_insn(i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %61
  %77 = load i64, i64* %18, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @store_field(i64 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @emit_move_insn(i64 %85, i64 %86)
  %88 = load i64, i64* %18, align 8
  store i64 %88, i64* %8, align 8
  br label %363

89:                                               ; preds = %56, %48
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @GET_CODE(i64 %90)
  %92 = load i64, i64* @CONCAT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @gcc_assert(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @store_expr(i32 %100, i64 %101, i32 0)
  store i64 %102, i64* %8, align 8
  br label %363

103:                                              ; preds = %89
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @VOIDmode, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %181, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @BLKmode, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i32*, i32** @direct_store, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  %120 = call i64 @GET_MODE_CLASS(i32 %119)
  %121 = load i64, i64* @MODE_COMPLEX_INT, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @GET_MODE_CLASS(i32 %124)
  %126 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %181, label %128

128:                                              ; preds = %123, %118, %111, %107
  %129 = load i64, i64* %9, align 8
  %130 = call i64 @REG_P(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %181, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %9, align 8
  %134 = call i64 @GET_CODE(i64 %133)
  %135 = load i64, i64* @SUBREG, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %181, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @BLKmode, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @MEM_ALIGN(i64 %142)
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @GET_MODE_ALIGNMENT(i32 %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @GET_MODE_ALIGNMENT(i32 %149)
  %151 = srem i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147, %141
  %154 = load i32, i32* %12, align 4
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @MEM_ALIGN(i64 %155)
  %157 = call i64 @SLOW_UNALIGNED_ACCESS(i32 %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %153, %147
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @BITS_PER_UNIT, align 4
  %162 = srem i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %159, %137
  %165 = load i32, i32* %10, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %332

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @TREE_TYPE(i32 %168)
  %170 = call i32 @TYPE_SIZE(i32 %169)
  %171 = call i64 @TREE_CODE(i32 %170)
  %172 = load i64, i64* @INTEGER_CST, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %332

174:                                              ; preds = %167
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @TREE_TYPE(i32 %175)
  %177 = call i32 @TYPE_SIZE(i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = call i64 @compare_tree_int(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %332

181:                                              ; preds = %174, %159, %153, %132, %128, %123, %103
  %182 = load i32, i32* %13, align 4
  %183 = call i64 @TREE_CODE(i32 %182)
  %184 = load i64, i64* @NOP_EXPR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @TREE_TYPE(i32 %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = call i64 @INTEGRAL_TYPE_P(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %220

192:                                              ; preds = %186
  %193 = load i32, i32* %20, align 4
  %194 = call i32 @TYPE_PRECISION(i32 %193)
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @TYPE_MODE(i32 %195)
  %197 = call i32 @GET_MODE_BITSIZE(i32 %196)
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %192
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @TYPE_PRECISION(i32 %201)
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @TREE_OPERAND(i32 %205, i32 0)
  %207 = call i32 @TREE_TYPE(i32 %206)
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %20, align 4
  %209 = call i64 @INTEGRAL_TYPE_P(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %204
  %212 = load i32, i32* %20, align 4
  %213 = call i32 @TYPE_PRECISION(i32 %212)
  %214 = load i32, i32* %10, align 4
  %215 = icmp sge i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @TREE_OPERAND(i32 %217, i32 0)
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %216, %211, %204
  br label %220

220:                                              ; preds = %219, %199, %192, %186
  br label %221

221:                                              ; preds = %220, %181
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @expand_normal(i32 %222)
  store i64 %223, i64* %19, align 8
  %224 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %257

226:                                              ; preds = %221
  %227 = load i64, i64* %19, align 8
  %228 = call i32 @GET_MODE(i64 %227)
  %229 = call i64 @GET_MODE_CLASS(i32 %228)
  %230 = load i64, i64* @MODE_INT, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %226
  %233 = load i32, i32* %10, align 4
  %234 = load i64, i64* %19, align 8
  %235 = call i32 @GET_MODE(i64 %234)
  %236 = call i32 @GET_MODE_BITSIZE(i32 %235)
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %232
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @TREE_TYPE(i32 %239)
  %241 = call i64 @TREE_CODE(i32 %240)
  %242 = load i64, i64* @RECORD_TYPE, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %238
  %245 = load i32, i32* @RSHIFT_EXPR, align 4
  %246 = load i64, i64* %19, align 8
  %247 = call i32 @GET_MODE(i64 %246)
  %248 = load i64, i64* %19, align 8
  %249 = load i64, i64* %19, align 8
  %250 = call i32 @GET_MODE(i64 %249)
  %251 = call i32 @GET_MODE_BITSIZE(i32 %250)
  %252 = load i32, i32* %10, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i32 @size_int(i32 %253)
  %255 = load i32, i32* @NULL_RTX, align 4
  %256 = call i64 @expand_shift(i32 %245, i32 %247, i64 %248, i32 %254, i32 %255, i32 1)
  store i64 %256, i64* %19, align 8
  br label %257

257:                                              ; preds = %244, %238, %232, %226, %221
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @VOIDmode, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %278

261:                                              ; preds = %257
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @BLKmode, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %261
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @TREE_TYPE(i32 %267)
  %269 = call i32 @TYPE_MODE(i32 %268)
  %270 = icmp ne i32 %266, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %265
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @TREE_TYPE(i32 %273)
  %275 = call i32 @TYPE_MODE(i32 %274)
  %276 = load i64, i64* %19, align 8
  %277 = call i64 @convert_modes(i32 %272, i32 %275, i64 %276, i32 1)
  store i64 %277, i64* %19, align 8
  br label %278

278:                                              ; preds = %271, %265, %261, %257
  %279 = load i64, i64* %9, align 8
  %280 = call i32 @GET_MODE(i64 %279)
  %281 = load i32, i32* @BLKmode, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %324

283:                                              ; preds = %278
  %284 = load i64, i64* %19, align 8
  %285 = call i32 @GET_MODE(i64 %284)
  %286 = load i32, i32* @BLKmode, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %324

288:                                              ; preds = %283
  %289 = load i64, i64* %9, align 8
  %290 = call i64 @MEM_P(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = load i64, i64* %19, align 8
  %294 = call i64 @MEM_P(i64 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @BITS_PER_UNIT, align 4
  %299 = srem i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  br label %302

302:                                              ; preds = %296, %292, %288
  %303 = phi i1 [ false, %292 ], [ false, %288 ], [ %301, %296 ]
  %304 = zext i1 %303 to i32
  %305 = call i32 @gcc_assert(i32 %304)
  %306 = load i64, i64* %9, align 8
  %307 = load i32, i32* @VOIDmode, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* @BITS_PER_UNIT, align 4
  %310 = sdiv i32 %308, %309
  %311 = call i64 @adjust_address(i64 %306, i32 %307, i32 %310)
  store i64 %311, i64* %9, align 8
  %312 = load i64, i64* %9, align 8
  %313 = load i64, i64* %19, align 8
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* @BITS_PER_UNIT, align 4
  %316 = add nsw i32 %314, %315
  %317 = sub nsw i32 %316, 1
  %318 = load i32, i32* @BITS_PER_UNIT, align 4
  %319 = sdiv i32 %317, %318
  %320 = call i32 @GEN_INT(i32 %319)
  %321 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %322 = call i32 @emit_block_move(i64 %312, i64 %313, i32 %320, i32 %321)
  %323 = load i64, i64* @const0_rtx, align 8
  store i64 %323, i64* %8, align 8
  br label %363

324:                                              ; preds = %283, %278
  %325 = load i64, i64* %9, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %12, align 4
  %329 = load i64, i64* %19, align 8
  %330 = call i32 @store_bit_field(i64 %325, i32 %326, i32 %327, i32 %328, i64 %329)
  %331 = load i64, i64* @const0_rtx, align 8
  store i64 %331, i64* %8, align 8
  br label %363

332:                                              ; preds = %174, %167, %164
  %333 = load i64, i64* %9, align 8
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %11, align 4
  %336 = load i32, i32* @BITS_PER_UNIT, align 4
  %337 = sdiv i32 %335, %336
  %338 = call i64 @adjust_address(i64 %333, i32 %334, i32 %337)
  store i64 %338, i64* %21, align 8
  %339 = load i64, i64* %21, align 8
  %340 = load i64, i64* %9, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %332
  %343 = load i64, i64* %21, align 8
  %344 = call i64 @copy_rtx(i64 %343)
  store i64 %344, i64* %21, align 8
  br label %345

345:                                              ; preds = %342, %332
  %346 = load i64, i64* %21, align 8
  %347 = call i32 @MEM_SET_IN_STRUCT_P(i64 %346, i32 1)
  %348 = load i64, i64* %21, align 8
  %349 = call i32 @MEM_KEEP_ALIAS_SET_P(i64 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %345
  %352 = load i64, i64* %21, align 8
  %353 = call i64 @MEM_ALIAS_SET(i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load i64, i64* %21, align 8
  %357 = load i32, i32* %15, align 4
  %358 = call i32 @set_mem_alias_set(i64 %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %351, %345
  %360 = load i32, i32* %13, align 4
  %361 = load i64, i64* %21, align 8
  %362 = call i64 @store_expr(i32 %360, i64 %361, i32 0)
  store i64 %362, i64* %8, align 8
  br label %363

363:                                              ; preds = %359, %324, %302, %94, %76, %31, %26
  %364 = load i64, i64* %8, align 8
  ret i64 %364
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @expand_expr(i32, i64, i32, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @assign_temp(i32, i32, i32, i32) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @store_expr(i32, i64, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @MEM_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i64 @SLOW_UNALIGNED_ACCESS(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @compare_tree_int(i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @expand_normal(i32) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i64 @convert_modes(i32, i32, i64, i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @emit_block_move(i64, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @store_bit_field(i64, i32, i32, i32, i64) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i32 @MEM_SET_IN_STRUCT_P(i64, i32) #1

declare dso_local i32 @MEM_KEEP_ALIAS_SET_P(i64) #1

declare dso_local i64 @MEM_ALIAS_SET(i64) #1

declare dso_local i32 @set_mem_alias_set(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
