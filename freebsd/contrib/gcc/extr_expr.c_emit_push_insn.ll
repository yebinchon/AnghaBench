; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_push_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_push_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@upward = common dso_local global i32 0, align 4
@STACK_PUSH_CODE = common dso_local global i64 0, align 8
@POST_DEC = common dso_local global i64 0, align 8
@none = common dso_local global i32 0, align 4
@downward = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@sub_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@ACCUMULATE_OUTGOING_ARGS = common dso_local global i32 0, align 4
@virtual_stack_dynamic_rtx = common dso_local global i32 0, align 4
@virtual_outgoing_args_rtx = common dso_local global i32 0, align 4
@BLOCK_OP_CALL_PARM = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@PUSH_ARGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_push_insn(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6, i32 %7, i64 %8, i64 %9, i32 %10, i64 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store i64 %0, i64* %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i32 %10, i32* %23, align 4
  store i64 %11, i64* %24, align 8
  %41 = load i32, i32* @upward, align 4
  store i32 %41, i32* %26, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @FUNCTION_ARG_PADDING(i32 %42, i32 %43)
  store i32 %44, i32* %27, align 4
  %45 = load i64, i64* @STACK_PUSH_CODE, align 8
  %46 = load i64, i64* @POST_DEC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %12
  %49 = load i32, i32* %27, align 4
  %50 = load i32, i32* @none, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32, i32* %27, align 4
  %54 = load i32, i32* @downward, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @upward, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @downward, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %27, align 4
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62, %12
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %25, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @BLKmode, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %183

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @PARM_BOUNDARY, align 4
  %71 = load i32, i32* @BITS_PER_UNIT, align 4
  %72 = sdiv i32 %70, %71
  %73 = srem i32 %69, %72
  store i32 %73, i32* %30, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %30, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %29, align 4
  %77 = load i64, i64* %16, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @gcc_assert(i32 %78)
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load i64, i64* %25, align 8
  %84 = load i32, i32* @BLKmode, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i64 @adjust_address(i64 %83, i32 %84, i32 %85)
  store i64 %86, i64* %25, align 8
  br label %87

87:                                               ; preds = %82, %68
  %88 = load i32, i32* %23, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %29, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 0, %90 ], [ %92, %91 ]
  store i32 %94, i32* %31, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @GET_CODE(i64 %98)
  %100 = load i64, i64* @CONST_INT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @INTVAL(i64 %103)
  %105 = load i32, i32* %29, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i64 @GEN_INT(i32 %106)
  store i64 %107, i64* %16, align 8
  br label %118

108:                                              ; preds = %97
  %109 = load i64, i64* %16, align 8
  %110 = call i32 @GET_MODE(i64 %109)
  %111 = load i32, i32* @sub_optab, align 4
  %112 = load i64, i64* %16, align 8
  %113 = load i32, i32* %29, align 4
  %114 = call i64 @GEN_INT(i32 %113)
  %115 = load i64, i64* @NULL_RTX, align 8
  %116 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %117 = call i64 @expand_binop(i32 %110, i32 %111, i64 %112, i64 %114, i64 %115, i32 0, i32 %116)
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %108, %102
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i64, i64* %21, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %16, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* @downward, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @push_block(i64 %123, i32 %124, i32 %128)
  store i64 %129, i64* %28, align 8
  store i32 0, i32* %20, align 4
  br label %154

130:                                              ; preds = %119
  %131 = load i64, i64* %22, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @CONST_INT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32, i32* @BLKmode, align 4
  %137 = load i64, i64* %21, align 8
  %138 = load i32, i32* %31, align 4
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @INTVAL(i64 %139)
  %141 = add nsw i32 %138, %140
  %142 = call i64 @plus_constant(i64 %137, i32 %141)
  %143 = call i64 @memory_address(i32 %136, i64 %142)
  store i64 %143, i64* %28, align 8
  br label %153

144:                                              ; preds = %130
  %145 = load i32, i32* @BLKmode, align 4
  %146 = load i32, i32* @Pmode, align 4
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* %22, align 8
  %149 = call i64 @gen_rtx_PLUS(i32 %146, i64 %147, i64 %148)
  %150 = load i32, i32* %31, align 4
  %151 = call i64 @plus_constant(i64 %149, i32 %150)
  %152 = call i64 @memory_address(i32 %145, i64 %151)
  store i64 %152, i64* %28, align 8
  br label %153

153:                                              ; preds = %144, %135
  br label %154

154:                                              ; preds = %153, %122
  %155 = load i32, i32* @ACCUMULATE_OUTGOING_ARGS, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @virtual_stack_dynamic_rtx, align 4
  %159 = load i64, i64* %28, align 8
  %160 = call i64 @reg_mentioned_p(i32 %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %164 = load i64, i64* %28, align 8
  %165 = call i64 @reg_mentioned_p(i32 %163, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %157
  %168 = load i64, i64* %28, align 8
  %169 = call i64 @copy_to_reg(i64 %168)
  store i64 %169, i64* %28, align 8
  br label %170

170:                                              ; preds = %167, %162
  br label %171

171:                                              ; preds = %170, %154
  %172 = load i32, i32* @BLKmode, align 4
  %173 = load i64, i64* %28, align 8
  %174 = call i64 @gen_rtx_MEM(i32 %172, i64 %173)
  store i64 %174, i64* %32, align 8
  %175 = load i64, i64* %32, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @set_mem_align(i64 %175, i32 %176)
  %178 = load i64, i64* %32, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i32, i32* @BLOCK_OP_CALL_PARM, align 4
  %182 = call i32 @emit_block_move(i64 %178, i64 %179, i64 %180, i32 %181)
  br label %353

183:                                              ; preds = %63
  %184 = load i32, i32* %18, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %305

186:                                              ; preds = %183
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @GET_MODE_SIZE(i32 %187)
  %189 = load i32, i32* @UNITS_PER_WORD, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %33, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @PARM_BOUNDARY, align 4
  %193 = load i32, i32* @BITS_PER_UNIT, align 4
  %194 = sdiv i32 %192, %193
  %195 = srem i32 %191, %194
  store i32 %195, i32* %36, align 4
  %196 = load i64, i64* %22, align 8
  %197 = call i32 @INTVAL(i64 %196)
  store i32 %197, i32* %37, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %186
  %201 = load i64, i64* %21, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* @none, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load i32, i32* %27, align 4
  %209 = load i32, i32* %26, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i32, i32* %20, align 4
  %213 = call i64 @GEN_INT(i32 %212)
  %214 = call i32 @anti_adjust_stack(i64 %213)
  br label %215

215:                                              ; preds = %211, %207, %203, %200, %186
  %216 = load i64, i64* %21, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 0, i32* %36, align 4
  br label %219

219:                                              ; preds = %218, %215
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %36, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* @UNITS_PER_WORD, align 4
  %224 = sdiv i32 %222, %223
  store i32 %224, i32* %35, align 4
  %225 = load i32, i32* @UNITS_PER_WORD, align 4
  %226 = load i32, i32* %36, align 4
  %227 = sdiv i32 %226, %225
  store i32 %227, i32* %36, align 4
  %228 = load i32, i32* %23, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  br label %233

231:                                              ; preds = %219
  %232 = load i32, i32* %35, align 4
  br label %233

233:                                              ; preds = %231, %230
  %234 = phi i32 [ 0, %230 ], [ %232, %231 ]
  store i32 %234, i32* %38, align 4
  %235 = load i64, i64* %13, align 8
  %236 = call i64 @CONSTANT_P(i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load i64, i64* %13, align 8
  %240 = call i32 @LEGITIMATE_CONSTANT_P(i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %14, align 4
  %244 = load i64, i64* %13, align 8
  %245 = call i32 @force_const_mem(i32 %243, i64 %244)
  %246 = call i64 @validize_mem(i32 %245)
  store i64 %246, i64* %13, align 8
  br label %247

247:                                              ; preds = %242, %238, %233
  %248 = load i64, i64* %13, align 8
  %249 = call i64 @REG_P(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %247
  %252 = load i64, i64* %13, align 8
  %253 = call i64 @REGNO(i64 %252)
  %254 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load i64, i64* %13, align 8
  %258 = call i32 @GET_MODE(i64 %257)
  %259 = call i64 @GET_MODE_CLASS(i32 %258)
  %260 = load i64, i64* @MODE_INT, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i64, i64* %13, align 8
  %264 = call i64 @copy_to_reg(i64 %263)
  store i64 %264, i64* %13, align 8
  br label %265

265:                                              ; preds = %262, %256, %251, %247
  %266 = load i32, i32* %35, align 4
  store i32 %266, i32* %34, align 4
  br label %267

267:                                              ; preds = %301, %265
  %268 = load i32, i32* %34, align 4
  %269 = load i32, i32* %33, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %304

271:                                              ; preds = %267
  %272 = load i32, i32* %34, align 4
  %273 = load i32, i32* %35, align 4
  %274 = load i32, i32* %36, align 4
  %275 = add nsw i32 %273, %274
  %276 = icmp sge i32 %272, %275
  br i1 %276, label %277, label %300

277:                                              ; preds = %271
  %278 = load i64, i64* %13, align 8
  %279 = load i32, i32* %34, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i64 @operand_subword_force(i64 %278, i32 %279, i32 %280)
  %282 = load i32, i32* @word_mode, align 4
  %283 = load i32, i32* @NULL_TREE, align 4
  %284 = load i64, i64* @NULL_RTX, align 8
  %285 = load i32, i32* %17, align 4
  %286 = load i64, i64* @NULL_RTX, align 8
  %287 = load i64, i64* %21, align 8
  %288 = load i32, i32* %37, align 4
  %289 = load i32, i32* %34, align 4
  %290 = load i32, i32* %35, align 4
  %291 = sub nsw i32 %289, %290
  %292 = load i32, i32* %38, align 4
  %293 = add nsw i32 %291, %292
  %294 = load i32, i32* @UNITS_PER_WORD, align 4
  %295 = mul nsw i32 %293, %294
  %296 = add nsw i32 %288, %295
  %297 = call i64 @GEN_INT(i32 %296)
  %298 = load i32, i32* %23, align 4
  %299 = load i64, i64* %24, align 8
  call void @emit_push_insn(i64 %281, i32 %282, i32 %283, i64 %284, i32 %285, i32 0, i64 %286, i32 0, i64 %287, i64 %297, i32 %298, i64 %299)
  br label %300

300:                                              ; preds = %277, %271
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %34, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %34, align 4
  br label %267

304:                                              ; preds = %267
  br label %352

305:                                              ; preds = %183
  %306 = load i32, i32* %20, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = load i64, i64* %21, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %308
  %312 = load i32, i32* %27, align 4
  %313 = load i32, i32* @none, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %311
  %316 = load i32, i32* %27, align 4
  %317 = load i32, i32* %26, align 4
  %318 = icmp ne i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = load i32, i32* %20, align 4
  %321 = call i64 @GEN_INT(i32 %320)
  %322 = call i32 @anti_adjust_stack(i64 %321)
  br label %323

323:                                              ; preds = %319, %315, %311, %308, %305
  %324 = load i64, i64* %22, align 8
  %325 = call i64 @GET_CODE(i64 %324)
  %326 = load i64, i64* @CONST_INT, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %323
  %329 = load i32, i32* %14, align 4
  %330 = load i64, i64* %21, align 8
  %331 = load i64, i64* %22, align 8
  %332 = call i32 @INTVAL(i64 %331)
  %333 = call i64 @plus_constant(i64 %330, i32 %332)
  %334 = call i64 @memory_address(i32 %329, i64 %333)
  store i64 %334, i64* %39, align 8
  br label %342

335:                                              ; preds = %323
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* @Pmode, align 4
  %338 = load i64, i64* %21, align 8
  %339 = load i64, i64* %22, align 8
  %340 = call i64 @gen_rtx_PLUS(i32 %337, i64 %338, i64 %339)
  %341 = call i64 @memory_address(i32 %336, i64 %340)
  store i64 %341, i64* %39, align 8
  br label %342

342:                                              ; preds = %335, %328
  %343 = load i32, i32* %14, align 4
  %344 = load i64, i64* %39, align 8
  %345 = call i64 @gen_rtx_MEM(i32 %343, i64 %344)
  store i64 %345, i64* %40, align 8
  %346 = load i64, i64* %40, align 8
  %347 = load i32, i32* %17, align 4
  %348 = call i32 @set_mem_align(i64 %346, i32 %347)
  %349 = load i64, i64* %40, align 8
  %350 = load i64, i64* %13, align 8
  %351 = call i32 @emit_move_insn(i64 %349, i64 %350)
  br label %352

352:                                              ; preds = %342, %304
  br label %353

353:                                              ; preds = %352, %171
  %354 = load i32, i32* %18, align 4
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %385

356:                                              ; preds = %353
  %357 = load i64, i64* %19, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %385

359:                                              ; preds = %356
  %360 = load i64, i64* %19, align 8
  %361 = call i64 @GET_CODE(i64 %360)
  %362 = load i64, i64* @PARALLEL, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load i64, i64* %19, align 8
  %366 = load i64, i64* %13, align 8
  %367 = load i32, i32* %15, align 4
  %368 = call i32 @emit_group_load(i64 %365, i64 %366, i32 %367, i32 -1)
  br label %384

369:                                              ; preds = %359
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* @UNITS_PER_WORD, align 4
  %372 = srem i32 %370, %371
  %373 = icmp eq i32 %372, 0
  %374 = zext i1 %373 to i32
  %375 = call i32 @gcc_assert(i32 %374)
  %376 = load i64, i64* %19, align 8
  %377 = call i64 @REGNO(i64 %376)
  %378 = load i64, i64* %13, align 8
  %379 = load i32, i32* %18, align 4
  %380 = load i32, i32* @UNITS_PER_WORD, align 4
  %381 = sdiv i32 %379, %380
  %382 = load i32, i32* %14, align 4
  %383 = call i32 @move_block_to_reg(i64 %377, i64 %378, i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %369, %364
  br label %385

385:                                              ; preds = %384, %356, %353
  %386 = load i32, i32* %20, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %385
  %389 = load i64, i64* %21, align 8
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %399

391:                                              ; preds = %388
  %392 = load i32, i32* %27, align 4
  %393 = load i32, i32* %26, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %391
  %396 = load i32, i32* %20, align 4
  %397 = call i64 @GEN_INT(i32 %396)
  %398 = call i32 @anti_adjust_stack(i64 %397)
  br label %399

399:                                              ; preds = %395, %391, %388, %385
  %400 = load i64, i64* %24, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %399
  %403 = load i64, i64* %21, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %402
  %406 = load i64, i64* %24, align 8
  %407 = call i32 @anti_adjust_stack(i64 %406)
  br label %408

408:                                              ; preds = %405, %402, %399
  ret void
}

declare dso_local i32 @FUNCTION_ARG_PADDING(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @push_block(i64, i32, i32) #1

declare dso_local i64 @memory_address(i32, i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @reg_mentioned_p(i32, i64) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @set_mem_align(i64, i32) #1

declare dso_local i32 @emit_block_move(i64, i64, i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @anti_adjust_stack(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @LEGITIMATE_CONSTANT_P(i64) #1

declare dso_local i64 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @emit_group_load(i64, i64, i32, i32) #1

declare dso_local i32 @move_block_to_reg(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
