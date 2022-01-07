; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }

@VOIDmode = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@UNSIGNED_FLOAT = common dso_local global i32 0, align 4
@FLOAT = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@and_optab = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i64 0, align 8
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@ior_optab = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@ufloat_optab = common dso_local global %struct.TYPE_6__* null, align 8
@sfloat_optab = common dso_local global %struct.TYPE_6__* null, align 8
@SImode = common dso_local global i64 0, align 8
@LCT_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_float(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @GET_MODE(i64 %24)
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = call i32 @gcc_assert(i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @GET_MODE(i64 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %143, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %146

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @GET_MODE(i64 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %139, %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %142

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @GET_MODE(i64 %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @significand_size(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @GET_MODE(i64 %57)
  %59 = call i64 @GET_MODE_BITSIZE(i64 %58)
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %139

62:                                               ; preds = %54, %47
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @can_float_p(i32 %63, i64 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CODE_FOR_nothing, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = call i32 @can_float_p(i32 %75, i64 %77, i32 0)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @CODE_FOR_nothing, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @GET_MODE(i64 %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %71, %62
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CODE_FOR_nothing, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %138

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @GET_MODE(i64 %99)
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @convert_to_mode(i64 %104, i64 %105, i32 %106)
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %4, align 8
  %112 = call i64 @GET_MODE(i64 %111)
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @gen_reg_rtx(i32 %115)
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i32, i32* %7, align 4
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @UNSIGNED_FLOAT, align 4
  br label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @FLOAT, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = call i32 @emit_unop_insn(i32 %118, i64 %119, i64 %120, i32 %128)
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @convert_move(i64 %134, i64 %135, i32 0)
  br label %137

137:                                              ; preds = %133, %127
  br label %410

138:                                              ; preds = %92
  br label %139

139:                                              ; preds = %138, %61
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @GET_MODE_WIDER_MODE(i32 %140)
  store i32 %141, i32* %10, align 4
  br label %43

142:                                              ; preds = %43
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @GET_MODE_WIDER_MODE(i32 %144)
  store i32 %145, i32* %9, align 4
  br label %35

146:                                              ; preds = %35
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %336

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %336

152:                                              ; preds = %149
  %153 = load i64, i64* %4, align 8
  %154 = call i64 @GET_MODE(i64 %153)
  %155 = call i32 @DECIMAL_FLOAT_MODE_P(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %336, label %157

157:                                              ; preds = %152
  %158 = call i64 (...) @gen_label_rtx()
  store i64 %158, i64* %14, align 8
  %159 = load i64, i64* %4, align 8
  %160 = call i64 @GET_MODE(i64 %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %183, %157
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @VOIDmode, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %162
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @GET_MODE(i64 %167)
  %169 = call i64 @GET_MODE_BITSIZE(i64 %168)
  %170 = load i32, i32* %9, align 4
  %171 = zext i32 %170 to i64
  %172 = call i64 @GET_MODE_BITSIZE(i64 %171)
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = load i32, i32* %9, align 4
  %176 = load i64, i64* %5, align 8
  %177 = call i64 @GET_MODE(i64 %176)
  %178 = call i32 @can_float_p(i32 %175, i64 %177, i32 0)
  %179 = load i32, i32* @CODE_FOR_nothing, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %186

182:                                              ; preds = %174, %166
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @GET_MODE_WIDER_MODE(i32 %184)
  store i32 %185, i32* %9, align 4
  br label %162

186:                                              ; preds = %181, %162
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @VOIDmode, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %282

190:                                              ; preds = %186
  %191 = load i64, i64* %4, align 8
  %192 = call i64 @GET_MODE(i64 %191)
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i64 @significand_size(i32 %194)
  %196 = add nsw i64 %195, 1
  %197 = load i64, i64* %5, align 8
  %198 = call i64 @GET_MODE(i64 %197)
  %199 = call i64 @GET_MODE_BITSIZE(i64 %198)
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %281

201:                                              ; preds = %190
  %202 = call i64 (...) @gen_label_rtx()
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i32 @REG_P(i64 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load i64, i64* %8, align 8
  %208 = call i64 @REGNO(i64 %207)
  %209 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %206
  %212 = load i64, i64* %8, align 8
  %213 = call i64 @GET_MODE(i64 %212)
  %214 = load i32, i32* %9, align 4
  %215 = zext i32 %214 to i64
  %216 = icmp ne i64 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211, %206, %201
  %218 = load i32, i32* %9, align 4
  %219 = call i64 @gen_reg_rtx(i32 %218)
  store i64 %219, i64* %8, align 8
  br label %220

220:                                              ; preds = %217, %211
  %221 = load i64, i64* %5, align 8
  %222 = call i64 @GET_MODE(i64 %221)
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %10, align 4
  %224 = call i32 (...) @do_pending_stack_adjust()
  %225 = load i64, i64* %5, align 8
  %226 = load i32, i32* @const0_rtx, align 4
  %227 = load i32, i32* @LT, align 4
  %228 = load i64, i64* @NULL_RTX, align 8
  %229 = load i32, i32* %10, align 4
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %18, align 8
  %232 = call i32 @emit_cmp_and_jump_insns(i64 %225, i32 %226, i32 %227, i64 %228, i64 %230, i32 0, i64 %231)
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* %5, align 8
  call void @expand_float(i64 %233, i64 %234, i32 0)
  %235 = load i64, i64* %14, align 8
  %236 = call i32 @gen_jump(i64 %235)
  %237 = call i32 @emit_jump_insn(i32 %236)
  %238 = call i32 (...) @emit_barrier()
  %239 = load i64, i64* %18, align 8
  %240 = call i32 @emit_label(i64 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @and_optab, align 4
  %243 = load i64, i64* %5, align 8
  %244 = load i64, i64* @const1_rtx, align 8
  %245 = load i64, i64* @NULL_RTX, align 8
  %246 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %247 = call i64 @expand_binop(i32 %241, i32 %242, i64 %243, i64 %244, i64 %245, i32 1, i32 %246)
  store i64 %247, i64* %15, align 8
  %248 = load i32, i32* @RSHIFT_EXPR, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i64, i64* %5, align 8
  %251 = load i32, i32* @integer_one_node, align 4
  %252 = load i64, i64* @NULL_RTX, align 8
  %253 = call i64 @expand_shift(i32 %248, i32 %249, i64 %250, i32 %251, i64 %252, i32 1)
  store i64 %253, i64* %17, align 8
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @ior_optab, align 4
  %256 = load i64, i64* %15, align 8
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* %15, align 8
  %259 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %260 = call i64 @expand_binop(i32 %254, i32 %255, i64 %256, i64 %257, i64 %258, i32 1, i32 %259)
  store i64 %260, i64* %15, align 8
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* %15, align 8
  call void @expand_float(i64 %261, i64 %262, i32 0)
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @add_optab, align 4
  %265 = load i64, i64* %8, align 8
  %266 = load i64, i64* %8, align 8
  %267 = load i64, i64* %8, align 8
  %268 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %269 = call i64 @expand_binop(i32 %263, i32 %264, i64 %265, i64 %266, i64 %267, i32 0, i32 %268)
  store i64 %269, i64* %15, align 8
  %270 = load i64, i64* %15, align 8
  %271 = load i64, i64* %8, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %220
  %274 = load i64, i64* %8, align 8
  %275 = load i64, i64* %15, align 8
  %276 = call i32 @emit_move_insn(i64 %274, i64 %275)
  br label %277

277:                                              ; preds = %273, %220
  %278 = call i32 (...) @do_pending_stack_adjust()
  %279 = load i64, i64* %14, align 8
  %280 = call i32 @emit_label(i64 %279)
  br label %391

281:                                              ; preds = %190
  br label %282

282:                                              ; preds = %281, %186
  %283 = load i64, i64* %4, align 8
  %284 = call i64 @GET_MODE(i64 %283)
  %285 = load i32, i32* %9, align 4
  %286 = zext i32 %285 to i64
  %287 = icmp ne i64 %284, %286
  br i1 %287, label %297, label %288

288:                                              ; preds = %282
  %289 = load i64, i64* %4, align 8
  %290 = call i32 @REG_P(i64 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load i64, i64* %4, align 8
  %294 = call i64 @REGNO(i64 %293)
  %295 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %292, %288, %282
  %298 = load i32, i32* %9, align 4
  %299 = call i64 @gen_reg_rtx(i32 %298)
  store i64 %299, i64* %8, align 8
  br label %300

300:                                              ; preds = %297, %292
  %301 = load i64, i64* %8, align 8
  %302 = load i64, i64* %5, align 8
  call void @expand_float(i64 %301, i64 %302, i32 0)
  %303 = call i32 (...) @do_pending_stack_adjust()
  %304 = load i64, i64* %5, align 8
  %305 = load i32, i32* @const0_rtx, align 4
  %306 = load i32, i32* @GE, align 4
  %307 = load i64, i64* @NULL_RTX, align 8
  %308 = load i64, i64* %5, align 8
  %309 = call i64 @GET_MODE(i64 %308)
  %310 = load i64, i64* %14, align 8
  %311 = call i32 @emit_cmp_and_jump_insns(i64 %304, i32 %305, i32 %306, i64 %307, i64 %309, i32 0, i64 %310)
  %312 = load i64, i64* %5, align 8
  %313 = call i64 @GET_MODE(i64 %312)
  %314 = call i64 @GET_MODE_BITSIZE(i64 %313)
  %315 = call i32 @real_2expN(i32* %16, i64 %314)
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* @add_optab, align 4
  %318 = load i64, i64* %8, align 8
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* %9, align 4
  %321 = call i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %319, i32 %320)
  %322 = load i64, i64* %8, align 8
  %323 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %324 = call i64 @expand_binop(i32 %316, i32 %317, i64 %318, i64 %321, i64 %322, i32 0, i32 %323)
  store i64 %324, i64* %15, align 8
  %325 = load i64, i64* %15, align 8
  %326 = load i64, i64* %8, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %300
  %329 = load i64, i64* %8, align 8
  %330 = load i64, i64* %15, align 8
  %331 = call i32 @emit_move_insn(i64 %329, i64 %330)
  br label %332

332:                                              ; preds = %328, %300
  %333 = call i32 (...) @do_pending_stack_adjust()
  %334 = load i64, i64* %14, align 8
  %335 = call i32 @emit_label(i64 %334)
  br label %391

336:                                              ; preds = %152, %149, %146
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ufloat_optab, align 8
  br label %343

341:                                              ; preds = %336
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sfloat_optab, align 8
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi %struct.TYPE_6__* [ %340, %339 ], [ %342, %341 ]
  store %struct.TYPE_6__* %344, %struct.TYPE_6__** %22, align 8
  %345 = load i64, i64* %5, align 8
  %346 = call i64 @GET_MODE(i64 %345)
  %347 = call i64 @GET_MODE_SIZE(i64 %346)
  %348 = load i64, i64* @SImode, align 8
  %349 = call i64 @GET_MODE_SIZE(i64 %348)
  %350 = icmp slt i64 %347, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %343
  %352 = load i64, i64* @SImode, align 8
  %353 = load i64, i64* %5, align 8
  %354 = load i32, i32* %6, align 4
  %355 = call i64 @convert_to_mode(i64 %352, i64 %353, i32 %354)
  store i64 %355, i64* %5, align 8
  br label %356

356:                                              ; preds = %351, %343
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %358, align 8
  %360 = load i64, i64* %4, align 8
  %361 = call i64 @GET_MODE(i64 %360)
  %362 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %359, i64 %361
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %362, align 8
  %364 = load i64, i64* %5, align 8
  %365 = call i64 @GET_MODE(i64 %364)
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %19, align 8
  %369 = load i64, i64* %19, align 8
  %370 = call i32 @gcc_assert(i64 %369)
  %371 = call i32 (...) @start_sequence()
  %372 = load i64, i64* %19, align 8
  %373 = load i64, i64* @NULL_RTX, align 8
  %374 = load i32, i32* @LCT_CONST, align 4
  %375 = load i64, i64* %4, align 8
  %376 = call i64 @GET_MODE(i64 %375)
  %377 = load i64, i64* %5, align 8
  %378 = load i64, i64* %5, align 8
  %379 = call i64 @GET_MODE(i64 %378)
  %380 = call i64 @emit_library_call_value(i64 %372, i64 %373, i32 %374, i64 %376, i32 1, i64 %377, i64 %379)
  store i64 %380, i64* %21, align 8
  %381 = call i64 (...) @get_insns()
  store i64 %381, i64* %20, align 8
  %382 = call i32 (...) @end_sequence()
  %383 = load i64, i64* %20, align 8
  %384 = load i64, i64* %8, align 8
  %385 = load i64, i64* %21, align 8
  %386 = load i64, i64* %4, align 8
  %387 = call i64 @GET_MODE(i64 %386)
  %388 = load i64, i64* %5, align 8
  %389 = call i32 @gen_rtx_FLOAT(i64 %387, i64 %388)
  %390 = call i32 @emit_libcall_block(i64 %383, i64 %384, i64 %385, i32 %389)
  br label %391

391:                                              ; preds = %356, %332, %277
  %392 = load i64, i64* %8, align 8
  %393 = load i64, i64* %4, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %410

395:                                              ; preds = %391
  %396 = load i64, i64* %8, align 8
  %397 = call i64 @GET_MODE(i64 %396)
  %398 = load i64, i64* %4, align 8
  %399 = call i64 @GET_MODE(i64 %398)
  %400 = icmp eq i64 %397, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %395
  %402 = load i64, i64* %4, align 8
  %403 = load i64, i64* %8, align 8
  %404 = call i32 @emit_move_insn(i64 %402, i64 %403)
  br label %409

405:                                              ; preds = %395
  %406 = load i64, i64* %4, align 8
  %407 = load i64, i64* %8, align 8
  %408 = call i32 @convert_move(i64 %406, i64 %407, i32 0)
  br label %409

409:                                              ; preds = %405, %401
  br label %410

410:                                              ; preds = %137, %409, %391
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @significand_size(i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i64) #1

declare dso_local i32 @can_float_p(i32, i64, i32) #1

declare dso_local i64 @convert_to_mode(i64, i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_unop_insn(i32, i64, i64, i32) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @DECIMAL_FLOAT_MODE_P(i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i32, i32, i64, i64, i32, i64) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_jump(i64) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @real_2expN(i32*, i64) #1

declare dso_local i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @emit_library_call_value(i64, i64, i32, i64, i32, i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_libcall_block(i64, i64, i64, i32) #1

declare dso_local i32 @gen_rtx_FLOAT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
