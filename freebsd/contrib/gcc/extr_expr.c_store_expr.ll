; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (i64, i32)*, i32 (i32, i64)* }

@NULL_RTX = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@EXPAND_STACK_PARM = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@NO_DEFER_POP = common dso_local global i32 0, align 4
@OK_DEFER_POP = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8
@BLOCK_OP_CALL_PARM = common dso_local global i32 0, align 4
@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i64 0, align 8
@ptr_mode = common dso_local global i64 0, align 8
@sub_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @store_expr(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i64, i64* @NULL_RTX, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i64 @VOID_TYPE_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @const0_rtx, align 8
  %32 = load i64, i64* @VOIDmode, align 8
  %33 = call i64 @expand_expr(i64 %30, i64 %31, i64 %32, i32 0)
  %34 = load i64, i64* @NULL_RTX, align 8
  store i64 %34, i64* %4, align 8
  br label %549

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @COMPOUND_EXPR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @TREE_OPERAND(i64 %41, i32 0)
  %43 = load i64, i64* @const0_rtx, align 8
  %44 = load i64, i64* @VOIDmode, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @EXPAND_STACK_PARM, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @EXPAND_NORMAL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i64 @expand_expr(i64 %42, i64 %43, i64 %44, i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TREE_OPERAND(i64 %54, i32 1)
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @store_expr(i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %4, align 8
  br label %549

59:                                               ; preds = %35
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @COND_EXPR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @GET_MODE(i64 %65)
  %67 = load i64, i64* @BLKmode, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = call i64 (...) @gen_label_rtx()
  store i64 %70, i64* %11, align 8
  %71 = call i64 (...) @gen_label_rtx()
  store i64 %71, i64* %12, align 8
  %72 = call i32 (...) @do_pending_stack_adjust()
  %73 = load i32, i32* @NO_DEFER_POP, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 0)
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @jumpifnot(i64 %75, i64 %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @TREE_OPERAND(i64 %78, i32 1)
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @store_expr(i64 %79, i64 %80, i32 %81)
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @gen_jump(i64 %83)
  %85 = call i32 @emit_jump_insn(i32 %84)
  %86 = call i32 (...) @emit_barrier()
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @emit_label(i64 %87)
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @TREE_OPERAND(i64 %89, i32 2)
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @store_expr(i64 %90, i64 %91, i32 %92)
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @emit_label(i64 %94)
  %96 = load i32, i32* @OK_DEFER_POP, align 4
  %97 = load i64, i64* @NULL_RTX, align 8
  store i64 %97, i64* %4, align 8
  br label %549

98:                                               ; preds = %64, %59
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @GET_CODE(i64 %99)
  %101 = load i64, i64* @SUBREG, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %204

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @SUBREG_PROMOTED_VAR_P(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %204

107:                                              ; preds = %103
  store i64 0, i64* %13, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @TREE_TYPE(i64 %108)
  %110 = call i64 @INTEGRAL_TYPE_P(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %156

112:                                              ; preds = %107
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @TREE_TYPE(i64 %113)
  %115 = call i64 @TREE_TYPE(i64 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %156

117:                                              ; preds = %112
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 1), align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i64, i64* %6, align 8
  %122 = call i64 @GET_MODE(i64 %121)
  %123 = call i64 @GET_MODE_PRECISION(i64 %122)
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @TREE_TYPE(i64 %124)
  %126 = call i64 @TYPE_PRECISION(i64 %125)
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %120, %117
  %129 = load i64, i64* %5, align 8
  %130 = call i64 @TREE_TYPE(i64 %129)
  %131 = call i32 @TYPE_UNSIGNED(i64 %130)
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %132)
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %137)
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @TREE_TYPE(i64 %139)
  %141 = call i32 %136(i32 %138, i64 %140)
  %142 = load i64, i64* %5, align 8
  %143 = call i64 @fold_convert(i32 %141, i64 %142)
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %135, %128
  %145 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @SUBREG_REG(i64 %146)
  %148 = call i64 @GET_MODE(i64 %147)
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %149)
  %151 = call i32 %145(i64 %148, i32 %150)
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @fold_convert(i32 %151, i64 %152)
  store i64 %153, i64* %5, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i64 @SUBREG_REG(i64 %154)
  store i64 %155, i64* %13, align 8
  br label %156

156:                                              ; preds = %144, %120, %112, %107
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @VOIDmode, align 8
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @EXPAND_STACK_PARM, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @EXPAND_NORMAL, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = call i64 @expand_expr(i64 %157, i64 %158, i64 %159, i32 %167)
  store i64 %168, i64* %8, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @CONSTANT_P(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %166
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @GET_MODE(i64 %173)
  %175 = load i64, i64* @VOIDmode, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %172
  %178 = load i64, i64* %6, align 8
  %179 = call i64 @GET_MODE(i64 %178)
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @TREE_TYPE(i64 %180)
  %182 = call i64 @TYPE_MODE(i64 %181)
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %184)
  %186 = call i64 @convert_modes(i64 %179, i64 %182, i64 %183, i32 %185)
  store i64 %186, i64* %8, align 8
  %187 = load i64, i64* %6, align 8
  %188 = call i64 @SUBREG_REG(i64 %187)
  %189 = call i64 @GET_MODE(i64 %188)
  %190 = load i64, i64* %6, align 8
  %191 = call i64 @GET_MODE(i64 %190)
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %193)
  %195 = call i64 @convert_modes(i64 %189, i64 %191, i64 %192, i32 %194)
  store i64 %195, i64* %8, align 8
  br label %196

196:                                              ; preds = %177, %172, %166
  %197 = load i64, i64* %6, align 8
  %198 = call i64 @SUBREG_REG(i64 %197)
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* %6, align 8
  %201 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i64 %200)
  %202 = call i32 @convert_move(i64 %198, i64 %199, i32 %201)
  %203 = load i64, i64* @NULL_RTX, align 8
  store i64 %203, i64* %4, align 8
  br label %549

204:                                              ; preds = %103, %98
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %6, align 8
  %208 = call i64 @GET_MODE(i64 %207)
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* @EXPAND_STACK_PARM, align 4
  br label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @EXPAND_NORMAL, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = call i64 @expand_expr_real(i64 %205, i64 %206, i64 %208, i32 %216, i64* %9)
  store i64 %217, i64* %8, align 8
  %218 = load i64, i64* %6, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load i64, i64* %6, align 8
  %222 = call i64 @REG_P(i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @REGNO(i64 %225)
  %227 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %247, label %229

229:                                              ; preds = %224, %220, %215
  %230 = load i64, i64* %6, align 8
  %231 = call i64 @MEM_P(i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i64, i64* %6, align 8
  %235 = call i64 @MEM_VOLATILE_P(i64 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %233, %229
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %6, align 8
  %240 = call i64 @rtx_equal_p(i64 %238, i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* %8, align 8
  %244 = call i64 @CONSTANT_P(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 1, i32* %10, align 4
  br label %247

247:                                              ; preds = %246, %242, %237, %233, %224
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %8, align 8
  %252 = call i64 @CONSTANT_P(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %282

254:                                              ; preds = %250
  %255 = load i64, i64* %8, align 8
  %256 = call i64 @GET_MODE(i64 %255)
  %257 = load i64, i64* @VOIDmode, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %282

259:                                              ; preds = %254
  %260 = load i64, i64* %5, align 8
  %261 = call i64 @TREE_CODE(i64 %260)
  %262 = load i64, i64* @ERROR_MARK, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %282

264:                                              ; preds = %259
  %265 = load i64, i64* %6, align 8
  %266 = call i64 @GET_MODE(i64 %265)
  %267 = load i64, i64* %5, align 8
  %268 = call i64 @TREE_TYPE(i64 %267)
  %269 = call i64 @TYPE_MODE(i64 %268)
  %270 = icmp ne i64 %266, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %264
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @GET_MODE(i64 %272)
  %274 = load i64, i64* %5, align 8
  %275 = call i64 @TREE_TYPE(i64 %274)
  %276 = call i64 @TYPE_MODE(i64 %275)
  %277 = load i64, i64* %8, align 8
  %278 = load i64, i64* %5, align 8
  %279 = call i64 @TREE_TYPE(i64 %278)
  %280 = call i32 @TYPE_UNSIGNED(i64 %279)
  %281 = call i64 @convert_modes(i64 %273, i64 %276, i64 %277, i32 %280)
  store i64 %281, i64* %8, align 8
  br label %282

282:                                              ; preds = %271, %264, %259, %254, %250
  %283 = load i64, i64* %8, align 8
  %284 = load i64, i64* %6, align 8
  %285 = call i64 @rtx_equal_p(i64 %283, i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %282
  %288 = load i64, i64* %8, align 8
  %289 = load i64, i64* %6, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %547

291:                                              ; preds = %287
  %292 = load i64, i64* %8, align 8
  %293 = call i64 @side_effects_p(i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = load i64, i64* %6, align 8
  %297 = call i64 @side_effects_p(i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %547

299:                                              ; preds = %295, %291, %282
  %300 = load i64, i64* %5, align 8
  %301 = call i64 @TREE_CODE(i64 %300)
  %302 = load i64, i64* @ERROR_MARK, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %547

304:                                              ; preds = %299
  %305 = load i64, i64* %9, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i64, i64* %9, align 8
  %309 = load i64, i64* %6, align 8
  %310 = call i64 @rtx_equal_p(i64 %308, i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %547, label %312

312:                                              ; preds = %307, %304
  %313 = load i64, i64* %5, align 8
  %314 = call i64 @expr_size(i64 %313)
  %315 = load i64, i64* @const0_rtx, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %547

317:                                              ; preds = %312
  %318 = load i64, i64* %8, align 8
  %319 = call i64 @GET_MODE(i64 %318)
  %320 = load i64, i64* %6, align 8
  %321 = call i64 @GET_MODE(i64 %320)
  %322 = icmp ne i64 %319, %321
  br i1 %322, label %323, label %369

323:                                              ; preds = %317
  %324 = load i64, i64* %8, align 8
  %325 = call i64 @GET_MODE(i64 %324)
  %326 = load i64, i64* @VOIDmode, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %369

328:                                              ; preds = %323
  %329 = load i64, i64* %5, align 8
  %330 = call i64 @TREE_TYPE(i64 %329)
  %331 = call i32 @TYPE_UNSIGNED(i64 %330)
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %328
  %335 = load i64, i64* %6, align 8
  %336 = call i64 @GET_MODE(i64 %335)
  %337 = load i64, i64* %8, align 8
  %338 = load i32, i32* %14, align 4
  %339 = call i64 @convert_to_mode(i64 %336, i64 %337, i32 %338)
  store i64 %339, i64* %8, align 8
  %340 = load i64, i64* %6, align 8
  %341 = load i64, i64* %8, align 8
  %342 = call i32 @emit_move_insn(i64 %340, i64 %341)
  br label %368

343:                                              ; preds = %328
  %344 = load i64, i64* %6, align 8
  %345 = call i64 @GET_MODE(i64 %344)
  %346 = load i64, i64* @BLKmode, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %362

348:                                              ; preds = %343
  %349 = load i64, i64* %6, align 8
  %350 = load i64, i64* %8, align 8
  %351 = load i64, i64* %5, align 8
  %352 = call i64 @expr_size(i64 %351)
  %353 = load i32, i32* %7, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %348
  %356 = load i32, i32* @BLOCK_OP_CALL_PARM, align 4
  br label %359

357:                                              ; preds = %348
  %358 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = call i32 @emit_block_move(i64 %349, i64 %350, i64 %352, i32 %360)
  br label %367

362:                                              ; preds = %343
  %363 = load i64, i64* %6, align 8
  %364 = load i64, i64* %8, align 8
  %365 = load i32, i32* %14, align 4
  %366 = call i32 @convert_move(i64 %363, i64 %364, i32 %365)
  br label %367

367:                                              ; preds = %362, %359
  br label %368

368:                                              ; preds = %367, %334
  br label %546

369:                                              ; preds = %323, %317
  %370 = load i64, i64* %8, align 8
  %371 = call i64 @GET_MODE(i64 %370)
  %372 = load i64, i64* @BLKmode, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %498

374:                                              ; preds = %369
  %375 = load i64, i64* %5, align 8
  %376 = call i64 @TREE_CODE(i64 %375)
  %377 = load i64, i64* @STRING_CST, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %498

379:                                              ; preds = %374
  %380 = load i64, i64* %5, align 8
  %381 = call i64 @expr_size(i64 %380)
  store i64 %381, i64* %15, align 8
  %382 = load i64, i64* %15, align 8
  %383 = call i64 @GET_CODE(i64 %382)
  %384 = load i64, i64* @CONST_INT, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %405

386:                                              ; preds = %379
  %387 = load i64, i64* %15, align 8
  %388 = call i64 @INTVAL(i64 %387)
  %389 = load i64, i64* %5, align 8
  %390 = call i64 @TREE_STRING_LENGTH(i64 %389)
  %391 = icmp slt i64 %388, %390
  br i1 %391, label %392, label %405

392:                                              ; preds = %386
  %393 = load i64, i64* %6, align 8
  %394 = load i64, i64* %8, align 8
  %395 = load i64, i64* %15, align 8
  %396 = load i32, i32* %7, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %392
  %399 = load i32, i32* @BLOCK_OP_CALL_PARM, align 4
  br label %402

400:                                              ; preds = %392
  %401 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i32 [ %399, %398 ], [ %401, %400 ]
  %404 = call i32 @emit_block_move(i64 %393, i64 %394, i64 %395, i32 %403)
  br label %497

405:                                              ; preds = %386, %379
  %406 = load i32, i32* @MIN_EXPR, align 4
  %407 = load i64, i64* @sizetype, align 8
  %408 = load i64, i64* %15, align 8
  %409 = call i32 @make_tree(i64 %407, i64 %408)
  %410 = load i64, i64* %5, align 8
  %411 = call i64 @TREE_STRING_LENGTH(i64 %410)
  %412 = call i32 @size_int(i64 %411)
  %413 = call i64 @size_binop(i32 %406, i32 %409, i32 %412)
  store i64 %413, i64* %16, align 8
  %414 = load i64, i64* %16, align 8
  %415 = load i64, i64* @NULL_RTX, align 8
  %416 = load i64, i64* @VOIDmode, align 8
  %417 = load i32, i32* %7, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %405
  %420 = load i32, i32* @EXPAND_STACK_PARM, align 4
  br label %423

421:                                              ; preds = %405
  %422 = load i32, i32* @EXPAND_NORMAL, align 4
  br label %423

423:                                              ; preds = %421, %419
  %424 = phi i32 [ %420, %419 ], [ %422, %421 ]
  %425 = call i64 @expand_expr(i64 %414, i64 %415, i64 %416, i32 %424)
  store i64 %425, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %426 = load i64, i64* @ptr_mode, align 8
  %427 = load i64, i64* %17, align 8
  %428 = load i64, i64* @sizetype, align 8
  %429 = call i32 @TYPE_UNSIGNED(i64 %428)
  %430 = call i64 @convert_to_mode(i64 %426, i64 %427, i32 %429)
  store i64 %430, i64* %17, align 8
  %431 = load i64, i64* %6, align 8
  %432 = load i64, i64* %8, align 8
  %433 = load i64, i64* %17, align 8
  %434 = load i32, i32* %7, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %423
  %437 = load i32, i32* @BLOCK_OP_CALL_PARM, align 4
  br label %440

438:                                              ; preds = %423
  %439 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i32 [ %437, %436 ], [ %439, %438 ]
  %442 = call i32 @emit_block_move(i64 %431, i64 %432, i64 %433, i32 %441)
  %443 = load i64, i64* %17, align 8
  %444 = call i64 @GET_CODE(i64 %443)
  %445 = load i64, i64* @CONST_INT, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %458

447:                                              ; preds = %440
  %448 = load i64, i64* %15, align 8
  %449 = load i64, i64* %17, align 8
  %450 = call i64 @INTVAL(i64 %449)
  %451 = sub nsw i64 0, %450
  %452 = call i64 @plus_constant(i64 %448, i64 %451)
  store i64 %452, i64* %15, align 8
  %453 = load i64, i64* %6, align 8
  %454 = load i64, i64* @BLKmode, align 8
  %455 = load i64, i64* %17, align 8
  %456 = call i64 @INTVAL(i64 %455)
  %457 = call i64 @adjust_address(i64 %453, i64 %454, i64 %456)
  store i64 %457, i64* %6, align 8
  br label %481

458:                                              ; preds = %440
  %459 = load i64, i64* @sizetype, align 8
  %460 = call i64 @TYPE_MODE(i64 %459)
  %461 = load i32, i32* @sub_optab, align 4
  %462 = load i64, i64* %15, align 8
  %463 = load i64, i64* %17, align 8
  %464 = load i64, i64* @NULL_RTX, align 8
  %465 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %466 = call i64 @expand_binop(i64 %460, i32 %461, i64 %462, i64 %463, i64 %464, i32 0, i32 %465)
  store i64 %466, i64* %15, align 8
  %467 = load i64, i64* %6, align 8
  %468 = load i64, i64* %17, align 8
  %469 = load i64, i64* %16, align 8
  %470 = call i32 @highest_pow2_factor(i64 %469)
  %471 = call i64 @offset_address(i64 %467, i64 %468, i32 %470)
  store i64 %471, i64* %6, align 8
  %472 = call i64 (...) @gen_label_rtx()
  store i64 %472, i64* %18, align 8
  %473 = load i64, i64* %15, align 8
  %474 = load i64, i64* @const0_rtx, align 8
  %475 = load i32, i32* @LT, align 4
  %476 = load i64, i64* @NULL_RTX, align 8
  %477 = load i64, i64* %15, align 8
  %478 = call i64 @GET_MODE(i64 %477)
  %479 = load i64, i64* %18, align 8
  %480 = call i32 @emit_cmp_and_jump_insns(i64 %473, i64 %474, i32 %475, i64 %476, i64 %478, i32 0, i64 %479)
  br label %481

481:                                              ; preds = %458, %447
  %482 = load i64, i64* %15, align 8
  %483 = load i64, i64* @const0_rtx, align 8
  %484 = icmp ne i64 %482, %483
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  %486 = load i64, i64* %6, align 8
  %487 = load i64, i64* %15, align 8
  %488 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %489 = call i32 @clear_storage(i64 %486, i64 %487, i32 %488)
  br label %490

490:                                              ; preds = %485, %481
  %491 = load i64, i64* %18, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %490
  %494 = load i64, i64* %18, align 8
  %495 = call i32 @emit_label(i64 %494)
  br label %496

496:                                              ; preds = %493, %490
  br label %497

497:                                              ; preds = %496, %402
  br label %545

498:                                              ; preds = %374, %369
  %499 = load i64, i64* %6, align 8
  %500 = call i64 @GET_CODE(i64 %499)
  %501 = load i64, i64* @PARALLEL, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %512

503:                                              ; preds = %498
  %504 = load i64, i64* %6, align 8
  %505 = load i64, i64* %8, align 8
  %506 = load i64, i64* %5, align 8
  %507 = call i64 @TREE_TYPE(i64 %506)
  %508 = load i64, i64* %5, align 8
  %509 = call i64 @TREE_TYPE(i64 %508)
  %510 = call i32 @int_size_in_bytes(i64 %509)
  %511 = call i32 @emit_group_load(i64 %504, i64 %505, i64 %507, i32 %510)
  br label %544

512:                                              ; preds = %498
  %513 = load i64, i64* %8, align 8
  %514 = call i64 @GET_MODE(i64 %513)
  %515 = load i64, i64* @BLKmode, align 8
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %517, label %531

517:                                              ; preds = %512
  %518 = load i64, i64* %6, align 8
  %519 = load i64, i64* %8, align 8
  %520 = load i64, i64* %5, align 8
  %521 = call i64 @expr_size(i64 %520)
  %522 = load i32, i32* %7, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %517
  %525 = load i32, i32* @BLOCK_OP_CALL_PARM, align 4
  br label %528

526:                                              ; preds = %517
  %527 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  br label %528

528:                                              ; preds = %526, %524
  %529 = phi i32 [ %525, %524 ], [ %527, %526 ]
  %530 = call i32 @emit_block_move(i64 %518, i64 %519, i64 %521, i32 %529)
  br label %543

531:                                              ; preds = %512
  %532 = load i64, i64* %8, align 8
  %533 = load i64, i64* %6, align 8
  %534 = call i64 @force_operand(i64 %532, i64 %533)
  store i64 %534, i64* %8, align 8
  %535 = load i64, i64* %8, align 8
  %536 = load i64, i64* %6, align 8
  %537 = icmp ne i64 %535, %536
  br i1 %537, label %538, label %542

538:                                              ; preds = %531
  %539 = load i64, i64* %6, align 8
  %540 = load i64, i64* %8, align 8
  %541 = call i32 @emit_move_insn(i64 %539, i64 %540)
  br label %542

542:                                              ; preds = %538, %531
  br label %543

543:                                              ; preds = %542, %528
  br label %544

544:                                              ; preds = %543, %503
  br label %545

545:                                              ; preds = %544, %497
  br label %546

546:                                              ; preds = %545, %368
  br label %547

547:                                              ; preds = %546, %312, %307, %299, %295, %287
  %548 = load i64, i64* @NULL_RTX, align 8
  store i64 %548, i64* %4, align 8
  br label %549

549:                                              ; preds = %547, %196, %69, %51, %24
  %550 = load i64, i64* %4, align 8
  ret i64 %550
}

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @expand_expr(i64, i64, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @jumpifnot(i64, i64) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_jump(i64) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SUBREG_PROMOTED_VAR_P(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @GET_MODE_PRECISION(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @SUBREG_PROMOTED_UNSIGNED_P(i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @convert_modes(i64, i64, i64, i32) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i64 @expand_expr_real(i64, i64, i64, i32, i64*) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @side_effects_p(i64) #1

declare dso_local i64 @expr_size(i64) #1

declare dso_local i64 @convert_to_mode(i64, i64, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @emit_block_move(i64, i64, i64, i32) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @TREE_STRING_LENGTH(i64) #1

declare dso_local i64 @size_binop(i32, i32, i32) #1

declare dso_local i32 @make_tree(i64, i64) #1

declare dso_local i32 @size_int(i64) #1

declare dso_local i64 @plus_constant(i64, i64) #1

declare dso_local i64 @adjust_address(i64, i64, i64) #1

declare dso_local i64 @expand_binop(i64, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @offset_address(i64, i64, i32) #1

declare dso_local i32 @highest_pow2_factor(i64) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i64, i64, i32, i64) #1

declare dso_local i32 @clear_storage(i64, i64, i32) #1

declare dso_local i32 @emit_group_load(i64, i64, i64, i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i64 @force_operand(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
