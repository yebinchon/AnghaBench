; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_convert_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_convert_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@UNKNOWN = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i64 0, align 8
@trunc_optab = common dso_local global %struct.TYPE_9__* null, align 8
@sext_optab = common dso_local global %struct.TYPE_9__* null, align 8
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@FLOAT_EXTEND = common dso_local global i32 0, align 4
@FLOAT_TRUNCATE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@LCT_CONST = common dso_local global i32 0, align 4
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@direct_load = common dso_local global i64* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@CODE_FOR_slt = common dso_local global i64 0, align 8
@HAVE_slt = common dso_local global i64 0, align 8
@NE = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GET_MODE(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GET_MODE(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SCALAR_FLOAT_MODE_P(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @SCALAR_FLOAT_MODE_P(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @UNKNOWN, align 4
  br label %54

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @ZERO_EXTEND, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @SIGN_EXTEND, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %43
  %55 = phi i32 [ %44, %43 ], [ %53, %52 ]
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @gcc_assert(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @BLKmode, align 4
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @gcc_assert(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @BLKmode, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @gcc_assert(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %870

75:                                               ; preds = %54
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @GET_CODE(i32 %76)
  %78 = load i64, i64* @SUBREG, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @SUBREG_PROMOTED_VAR_P(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @SUBREG_REG(i32 %85)
  %87 = call i32 @GET_MODE(i32 %86)
  %88 = call i64 @GET_MODE_SIZE(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @GET_MODE_SIZE(i32 %89)
  %91 = icmp sge i64 %88, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @gen_lowpart(i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %92, %84, %80, %75
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @GET_CODE(i32 %103)
  %105 = load i64, i64* @SUBREG, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @SUBREG_PROMOTED_VAR_P(i32 %108)
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i1 [ true, %102 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @gcc_assert(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @VOIDmode, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = call i64 @CONSTANT_P(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123, %112
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @emit_move_insn(i32 %128, i32 %129)
  br label %870

131:                                              ; preds = %123, %119
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @VECTOR_MODE_P(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @VECTOR_MODE_P(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %135, %131
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @GET_MODE_BITSIZE(i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = call i64 @GET_MODE_BITSIZE(i32 %142)
  %144 = icmp eq i64 %141, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @gcc_assert(i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = call i64 @VECTOR_MODE_P(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @GET_MODE(i32 %153)
  %155 = call i32 @simplify_gen_subreg(i32 %151, i32 %152, i32 %154, i32 0)
  store i32 %155, i32* %5, align 4
  br label %162

156:                                              ; preds = %139
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @GET_MODE(i32 %159)
  %161 = call i32 @simplify_gen_subreg(i32 %157, i32 %158, i32 %160, i32 0)
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @emit_move_insn(i32 %163, i32 %164)
  br label %870

166:                                              ; preds = %135
  %167 = load i32, i32* %4, align 4
  %168 = call i64 @GET_CODE(i32 %167)
  %169 = load i64, i64* @CONCAT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load i32, i32* %5, align 4
  %173 = call i64 @GET_CODE(i32 %172)
  %174 = load i64, i64* @CONCAT, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @XEXP(i32 %177, i32 0)
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @XEXP(i32 %179, i32 0)
  %181 = load i32, i32* %6, align 4
  call void @convert_move(i32 %178, i32 %180, i32 %181)
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @XEXP(i32 %182, i32 1)
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @XEXP(i32 %184, i32 1)
  %186 = load i32, i32* %6, align 4
  call void @convert_move(i32 %183, i32 %185, i32 %186)
  br label %870

187:                                              ; preds = %171, %166
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %304

190:                                              ; preds = %187
  %191 = load i32, i32* %8, align 4
  %192 = call i64 @GET_MODE_PRECISION(i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = call i64 @GET_MODE_PRECISION(i32 %193)
  %195 = icmp ne i64 %192, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %199)
  %201 = icmp ne i64 %198, %200
  br label %202

202:                                              ; preds = %196, %190
  %203 = phi i1 [ true, %190 ], [ %201, %196 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @gcc_assert(i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = call i64 @GET_MODE_PRECISION(i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = call i64 @GET_MODE_PRECISION(i32 %208)
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %202
  %212 = load i32, i32* %8, align 4
  %213 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  br label %219

217:                                              ; preds = %211
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi %struct.TYPE_9__* [ %216, %215 ], [ %218, %217 ]
  store %struct.TYPE_9__* %220, %struct.TYPE_9__** %16, align 8
  br label %232

221:                                              ; preds = %202
  %222 = load i32, i32* %8, align 4
  %223 = call i64 @GET_MODE_PRECISION(i32 %222)
  %224 = load i32, i32* %7, align 4
  %225 = call i64 @GET_MODE_PRECISION(i32 %224)
  %226 = icmp slt i64 %223, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  store %struct.TYPE_9__* %228, %struct.TYPE_9__** %16, align 8
  br label %231

229:                                              ; preds = %221
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  store %struct.TYPE_9__* %230, %struct.TYPE_9__** %16, align 8
  br label %231

231:                                              ; preds = %229, %227
  br label %232

232:                                              ; preds = %231, %219
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %235, i64 %237
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @CODE_FOR_nothing, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %232
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  %254 = icmp eq %struct.TYPE_9__* %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %248
  %256 = load i32, i32* @FLOAT_EXTEND, align 4
  br label %259

257:                                              ; preds = %248
  %258 = load i32, i32* @FLOAT_TRUNCATE, align 4
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  %261 = call i32 @emit_unop_insn(i32 %249, i32 %250, i32 %251, i32 %260)
  br label %870

262:                                              ; preds = %232
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %265, i64 %267
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @gcc_assert(i32 %275)
  %277 = call i32 (...) @start_sequence()
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @NULL_RTX, align 4
  %280 = load i32, i32* @LCT_CONST, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @emit_library_call_value(i32 %278, i32 %279, i32 %280, i32 %281, i32 1, i32 %282, i32 %283)
  store i32 %284, i32* %14, align 4
  %285 = call i32 (...) @get_insns()
  store i32 %285, i32* %15, align 4
  %286 = call i32 (...) @end_sequence()
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  %292 = icmp eq %struct.TYPE_9__* %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %262
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* %5, align 4
  %296 = call i32 @gen_rtx_FLOAT_TRUNCATE(i32 %294, i32 %295)
  br label %301

297:                                              ; preds = %262
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @gen_rtx_FLOAT_EXTEND(i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %297, %293
  %302 = phi i32 [ %296, %293 ], [ %300, %297 ]
  %303 = call i32 @emit_libcall_block(i32 %287, i32 %288, i32 %289, i32 %302)
  br label %870

304:                                              ; preds = %187
  %305 = load i32, i32* %7, align 4
  %306 = call i64 @GET_MODE_CLASS(i32 %305)
  %307 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %355

309:                                              ; preds = %304
  %310 = load i32, i32* %7, align 4
  %311 = call i64 @GET_MODE_BITSIZE(i32 %310)
  %312 = load i32, i32* @MODE_INT, align 4
  %313 = call i32 @smallest_mode_for_size(i64 %311, i32 %312)
  store i32 %313, i32* %17, align 4
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %316, i64 %318
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = load i32, i32* %17, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @CODE_FOR_nothing, align 4
  %327 = icmp ne i32 %325, %326
  %328 = zext i1 %327 to i32
  %329 = call i32 @gcc_assert(i32 %328)
  %330 = load i32, i32* %17, align 4
  %331 = load i32, i32* %8, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %309
  %334 = load i32, i32* %17, align 4
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* %6, align 4
  %337 = call i32 @convert_to_mode(i32 %334, i32 %335, i32 %336)
  store i32 %337, i32* %5, align 4
  br label %338

338:                                              ; preds = %333, %309
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %341, i64 %343
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = load i32, i32* %17, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* @UNKNOWN, align 4
  %354 = call i32 @emit_unop_insn(i32 %350, i32 %351, i32 %352, i32 %353)
  br label %870

355:                                              ; preds = %304
  %356 = load i32, i32* %8, align 4
  %357 = call i64 @GET_MODE_CLASS(i32 %356)
  %358 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %422

360:                                              ; preds = %355
  %361 = load i32, i32* %8, align 4
  %362 = call i64 @GET_MODE_BITSIZE(i32 %361)
  %363 = load i32, i32* @MODE_INT, align 4
  %364 = call i32 @smallest_mode_for_size(i64 %362, i32 %363)
  store i32 %364, i32* %19, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %366, align 8
  %368 = load i32, i32* %19, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %367, i64 %369
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @CODE_FOR_nothing, align 4
  %378 = icmp ne i32 %376, %377
  %379 = zext i1 %378 to i32
  %380 = call i32 @gcc_assert(i32 %379)
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* %19, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %401

384:                                              ; preds = %360
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %386, align 8
  %388 = load i32, i32* %19, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %387, i64 %389
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %390, align 8
  %392 = load i32, i32* %8, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %4, align 4
  %398 = load i32, i32* %5, align 4
  %399 = load i32, i32* @UNKNOWN, align 4
  %400 = call i32 @emit_unop_insn(i32 %396, i32 %397, i32 %398, i32 %399)
  br label %870

401:                                              ; preds = %360
  %402 = load i32, i32* %19, align 4
  %403 = call i32 @gen_reg_rtx(i32 %402)
  store i32 %403, i32* %18, align 4
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sext_optab, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %405, align 8
  %407 = load i32, i32* %19, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %406, i64 %408
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %409, align 8
  %411 = load i32, i32* %8, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %18, align 4
  %417 = load i32, i32* %5, align 4
  %418 = load i32, i32* @UNKNOWN, align 4
  %419 = call i32 @emit_unop_insn(i32 %415, i32 %416, i32 %417, i32 %418)
  %420 = load i32, i32* %19, align 4
  store i32 %420, i32* %8, align 4
  %421 = load i32, i32* %18, align 4
  store i32 %421, i32* %5, align 4
  br label %422

422:                                              ; preds = %401, %355
  %423 = load i32, i32* %8, align 4
  %424 = call i64 @GET_MODE_BITSIZE(i32 %423)
  %425 = load i32, i32* %7, align 4
  %426 = call i64 @GET_MODE_BITSIZE(i32 %425)
  %427 = icmp slt i64 %424, %426
  br i1 %427, label %428, label %605

428:                                              ; preds = %422
  %429 = load i32, i32* %7, align 4
  %430 = call i64 @GET_MODE_BITSIZE(i32 %429)
  %431 = load i64, i64* @BITS_PER_WORD, align 8
  %432 = icmp sgt i64 %430, %431
  br i1 %432, label %433, label %605

433:                                              ; preds = %428
  %434 = load i32, i32* %7, align 4
  %435 = call i64 @GET_MODE_SIZE(i32 %434)
  %436 = load i64, i64* @UNITS_PER_WORD, align 8
  %437 = call i32 @CEIL(i64 %435, i64 %436)
  store i32 %437, i32* %26, align 4
  %438 = load i32, i32* %7, align 4
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %6, align 4
  %441 = call i32 @can_extend_p(i32 %438, i32 %439, i32 %440)
  store i32 %441, i32* %11, align 4
  %442 = load i32, i32* @CODE_FOR_nothing, align 4
  %443 = icmp ne i32 %441, %442
  br i1 %443, label %444, label %462

444:                                              ; preds = %433
  %445 = load i64, i64* @optimize, align 8
  %446 = icmp sgt i64 %445, 0
  br i1 %446, label %447, label %456

447:                                              ; preds = %444
  %448 = load i32, i32* %5, align 4
  %449 = call i64 @GET_CODE(i32 %448)
  %450 = load i64, i64* @SUBREG, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %447
  %453 = load i32, i32* %8, align 4
  %454 = load i32, i32* %5, align 4
  %455 = call i32 @force_reg(i32 %453, i32 %454)
  store i32 %455, i32* %5, align 4
  br label %456

456:                                              ; preds = %452, %447, %444
  %457 = load i32, i32* %11, align 4
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* %5, align 4
  %460 = load i32, i32* %13, align 4
  %461 = call i32 @emit_unop_insn(i32 %457, i32 %458, i32 %459, i32 %460)
  br label %870

462:                                              ; preds = %433
  %463 = load i32, i32* %8, align 4
  %464 = call i64 @GET_MODE_BITSIZE(i32 %463)
  %465 = load i64, i64* @BITS_PER_WORD, align 8
  %466 = icmp slt i64 %464, %465
  br i1 %466, label %467, label %505

467:                                              ; preds = %462
  %468 = load i32, i32* %7, align 4
  %469 = load i32, i32* @word_mode, align 4
  %470 = load i32, i32* %6, align 4
  %471 = call i32 @can_extend_p(i32 %468, i32 %469, i32 %470)
  store i32 %471, i32* %11, align 4
  %472 = load i32, i32* @CODE_FOR_nothing, align 4
  %473 = icmp ne i32 %471, %472
  br i1 %473, label %474, label %505

474:                                              ; preds = %467
  %475 = load i32, i32* %4, align 4
  %476 = call i64 @REG_P(i32 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %492

478:                                              ; preds = %474
  %479 = load i32, i32* %4, align 4
  %480 = load i32, i32* %5, align 4
  %481 = call i64 @reg_overlap_mentioned_p(i32 %479, i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %478
  %484 = load i32, i32* %8, align 4
  %485 = load i32, i32* %5, align 4
  %486 = call i32 @force_reg(i32 %484, i32 %485)
  store i32 %486, i32* %5, align 4
  br label %487

487:                                              ; preds = %483, %478
  %488 = load i32, i32* @VOIDmode, align 4
  %489 = load i32, i32* %4, align 4
  %490 = call i32 @gen_rtx_CLOBBER(i32 %488, i32 %489)
  %491 = call i32 @emit_insn(i32 %490)
  br label %492

492:                                              ; preds = %487, %474
  %493 = load i32, i32* @word_mode, align 4
  %494 = load i32, i32* %4, align 4
  %495 = call i32 @gen_lowpart(i32 %493, i32 %494)
  %496 = load i32, i32* %5, align 4
  %497 = load i32, i32* %6, align 4
  call void @convert_move(i32 %495, i32 %496, i32 %497)
  %498 = load i32, i32* %11, align 4
  %499 = load i32, i32* %4, align 4
  %500 = load i32, i32* @word_mode, align 4
  %501 = load i32, i32* %4, align 4
  %502 = call i32 @gen_lowpart(i32 %500, i32 %501)
  %503 = load i32, i32* %13, align 4
  %504 = call i32 @emit_unop_insn(i32 %498, i32 %499, i32 %502, i32 %503)
  br label %870

505:                                              ; preds = %467, %462
  br label %506

506:                                              ; preds = %505
  %507 = call i32 (...) @start_sequence()
  %508 = load i32, i32* %4, align 4
  %509 = load i32, i32* %5, align 4
  %510 = call i64 @reg_overlap_mentioned_p(i32 %508, i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %506
  %513 = load i32, i32* %8, align 4
  %514 = load i32, i32* %5, align 4
  %515 = call i32 @force_reg(i32 %513, i32 %514)
  store i32 %515, i32* %5, align 4
  br label %516

516:                                              ; preds = %512, %506
  %517 = load i32, i32* %8, align 4
  %518 = call i64 @GET_MODE_BITSIZE(i32 %517)
  %519 = load i64, i64* @BITS_PER_WORD, align 8
  %520 = icmp slt i64 %518, %519
  br i1 %520, label %521, label %523

521:                                              ; preds = %516
  %522 = load i32, i32* @word_mode, align 4
  store i32 %522, i32* %25, align 4
  br label %525

523:                                              ; preds = %516
  %524 = load i32, i32* %8, align 4
  store i32 %524, i32* %25, align 4
  br label %525

525:                                              ; preds = %523, %521
  %526 = load i32, i32* %25, align 4
  %527 = load i32, i32* %5, align 4
  %528 = load i32, i32* %6, align 4
  %529 = call i32 @convert_to_mode(i32 %526, i32 %527, i32 %528)
  store i32 %529, i32* %23, align 4
  %530 = load i32, i32* %25, align 4
  %531 = load i32, i32* %4, align 4
  %532 = call i32 @gen_lowpart(i32 %530, i32 %531)
  store i32 %532, i32* %21, align 4
  %533 = load i32, i32* %21, align 4
  %534 = load i32, i32* %23, align 4
  %535 = call i32 @emit_move_insn(i32 %533, i32 %534)
  %536 = load i32, i32* %6, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %540

538:                                              ; preds = %525
  %539 = load i32, i32* @const0_rtx, align 4
  store i32 %539, i32* %22, align 4
  br label %553

540:                                              ; preds = %525
  %541 = load i32, i32* @RSHIFT_EXPR, align 4
  %542 = load i32, i32* %25, align 4
  %543 = load i32, i32* %23, align 4
  %544 = load i32, i32* %25, align 4
  %545 = call i64 @GET_MODE_BITSIZE(i32 %544)
  %546 = sub nsw i64 %545, 1
  %547 = call i32 @size_int(i64 %546)
  %548 = load i32, i32* @NULL_RTX, align 4
  %549 = call i32 @expand_shift(i32 %541, i32 %542, i32 %543, i32 %547, i32 %548, i32 0)
  store i32 %549, i32* %22, align 4
  %550 = load i32, i32* @word_mode, align 4
  %551 = load i32, i32* %22, align 4
  %552 = call i32 @convert_to_mode(i32 %550, i32 %551, i32 1)
  store i32 %552, i32* %22, align 4
  br label %553

553:                                              ; preds = %540, %538
  %554 = load i32, i32* %25, align 4
  %555 = call i64 @GET_MODE_SIZE(i32 %554)
  %556 = load i64, i64* @UNITS_PER_WORD, align 8
  %557 = sdiv i64 %555, %556
  %558 = trunc i64 %557 to i32
  store i32 %558, i32* %24, align 4
  br label %559

559:                                              ; preds = %589, %553
  %560 = load i32, i32* %24, align 4
  %561 = load i32, i32* %26, align 4
  %562 = icmp slt i32 %560, %561
  br i1 %562, label %563, label %592

563:                                              ; preds = %559
  %564 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %563
  %567 = load i32, i32* %26, align 4
  %568 = load i32, i32* %24, align 4
  %569 = sub nsw i32 %567, %568
  %570 = sub nsw i32 %569, 1
  br label %573

571:                                              ; preds = %563
  %572 = load i32, i32* %24, align 4
  br label %573

573:                                              ; preds = %571, %566
  %574 = phi i32 [ %570, %566 ], [ %572, %571 ]
  store i32 %574, i32* %27, align 4
  %575 = load i32, i32* %4, align 4
  %576 = load i32, i32* %27, align 4
  %577 = load i32, i32* %7, align 4
  %578 = call i32 @operand_subword(i32 %575, i32 %576, i32 1, i32 %577)
  store i32 %578, i32* %28, align 4
  %579 = load i32, i32* %28, align 4
  %580 = call i32 @gcc_assert(i32 %579)
  %581 = load i32, i32* %22, align 4
  %582 = load i32, i32* %28, align 4
  %583 = icmp ne i32 %581, %582
  br i1 %583, label %584, label %588

584:                                              ; preds = %573
  %585 = load i32, i32* %28, align 4
  %586 = load i32, i32* %22, align 4
  %587 = call i32 @emit_move_insn(i32 %585, i32 %586)
  br label %588

588:                                              ; preds = %584, %573
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %24, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %24, align 4
  br label %559

592:                                              ; preds = %559
  %593 = call i32 (...) @get_insns()
  store i32 %593, i32* %20, align 4
  %594 = call i32 (...) @end_sequence()
  %595 = load i32, i32* %20, align 4
  %596 = load i32, i32* %4, align 4
  %597 = load i32, i32* %5, align 4
  %598 = load i32, i32* @NULL_RTX, align 4
  %599 = load i32, i32* %13, align 4
  %600 = load i32, i32* %7, align 4
  %601 = load i32, i32* %5, align 4
  %602 = call i32 @copy_rtx(i32 %601)
  %603 = call i32 @gen_rtx_fmt_e(i32 %599, i32 %600, i32 %602)
  %604 = call i32 @emit_no_conflict_block(i32 %595, i32 %596, i32 %597, i32 %598, i32 %603)
  br label %870

605:                                              ; preds = %428, %422
  %606 = load i32, i32* %8, align 4
  %607 = call i64 @GET_MODE_BITSIZE(i32 %606)
  %608 = load i64, i64* @BITS_PER_WORD, align 8
  %609 = icmp sgt i64 %607, %608
  br i1 %609, label %610, label %653

610:                                              ; preds = %605
  %611 = load i32, i32* %7, align 4
  %612 = call i64 @GET_MODE_BITSIZE(i32 %611)
  %613 = load i64, i64* @BITS_PER_WORD, align 8
  %614 = icmp sle i64 %612, %613
  br i1 %614, label %615, label %653

615:                                              ; preds = %610
  %616 = load i32, i32* %5, align 4
  %617 = call i64 @MEM_P(i32 %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %635

619:                                              ; preds = %615
  %620 = load i32, i32* %5, align 4
  %621 = call i32 @MEM_VOLATILE_P(i32 %620)
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %635, label %623

623:                                              ; preds = %619
  %624 = load i64*, i64** @direct_load, align 8
  %625 = load i32, i32* %7, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i64, i64* %624, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %635

630:                                              ; preds = %623
  %631 = load i32, i32* %5, align 4
  %632 = call i32 @XEXP(i32 %631, i32 0)
  %633 = call i32 @mode_dependent_address_p(i32 %632)
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %648

635:                                              ; preds = %630, %623, %619, %615
  %636 = load i32, i32* %5, align 4
  %637 = call i64 @REG_P(i32 %636)
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %648, label %639

639:                                              ; preds = %635
  %640 = load i32, i32* %5, align 4
  %641 = call i64 @GET_CODE(i32 %640)
  %642 = load i64, i64* @SUBREG, align 8
  %643 = icmp eq i64 %641, %642
  br i1 %643, label %648, label %644

644:                                              ; preds = %639
  %645 = load i32, i32* %8, align 4
  %646 = load i32, i32* %5, align 4
  %647 = call i32 @force_reg(i32 %645, i32 %646)
  store i32 %647, i32* %5, align 4
  br label %648

648:                                              ; preds = %644, %639, %635, %630
  %649 = load i32, i32* %4, align 4
  %650 = load i32, i32* @word_mode, align 4
  %651 = load i32, i32* %5, align 4
  %652 = call i32 @gen_lowpart(i32 %650, i32 %651)
  call void @convert_move(i32 %649, i32 %652, i32 0)
  br label %870

653:                                              ; preds = %610, %605
  %654 = load i32, i32* %7, align 4
  %655 = call i64 @GET_MODE_BITSIZE(i32 %654)
  %656 = load i32, i32* %8, align 4
  %657 = call i64 @GET_MODE_BITSIZE(i32 %656)
  %658 = icmp slt i64 %655, %657
  br i1 %658, label %659, label %723

659:                                              ; preds = %653
  %660 = load i32, i32* %7, align 4
  %661 = call i64 @GET_MODE_BITSIZE(i32 %660)
  %662 = load i32, i32* %8, align 4
  %663 = call i64 @GET_MODE_BITSIZE(i32 %662)
  %664 = call i64 @TRULY_NOOP_TRUNCATION(i64 %661, i64 %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %723

666:                                              ; preds = %659
  %667 = load i32, i32* %5, align 4
  %668 = call i64 @MEM_P(i32 %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %686

670:                                              ; preds = %666
  %671 = load i32, i32* %5, align 4
  %672 = call i32 @MEM_VOLATILE_P(i32 %671)
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %686, label %674

674:                                              ; preds = %670
  %675 = load i64*, i64** @direct_load, align 8
  %676 = load i32, i32* %7, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i64, i64* %675, i64 %677
  %679 = load i64, i64* %678, align 8
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %681, label %686

681:                                              ; preds = %674
  %682 = load i32, i32* %5, align 4
  %683 = call i32 @XEXP(i32 %682, i32 0)
  %684 = call i32 @mode_dependent_address_p(i32 %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %699

686:                                              ; preds = %681, %674, %670, %666
  %687 = load i32, i32* %5, align 4
  %688 = call i64 @REG_P(i32 %687)
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %699, label %690

690:                                              ; preds = %686
  %691 = load i32, i32* %5, align 4
  %692 = call i64 @GET_CODE(i32 %691)
  %693 = load i64, i64* @SUBREG, align 8
  %694 = icmp eq i64 %692, %693
  br i1 %694, label %699, label %695

695:                                              ; preds = %690
  %696 = load i32, i32* %8, align 4
  %697 = load i32, i32* %5, align 4
  %698 = call i32 @force_reg(i32 %696, i32 %697)
  store i32 %698, i32* %5, align 4
  br label %699

699:                                              ; preds = %695, %690, %686, %681
  %700 = load i32, i32* %5, align 4
  %701 = call i64 @REG_P(i32 %700)
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %703, label %717

703:                                              ; preds = %699
  %704 = load i32, i32* %5, align 4
  %705 = call i64 @REGNO(i32 %704)
  %706 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %707 = icmp slt i64 %705, %706
  br i1 %707, label %708, label %717

708:                                              ; preds = %703
  %709 = load i32, i32* %5, align 4
  %710 = call i64 @REGNO(i32 %709)
  %711 = load i32, i32* %7, align 4
  %712 = call i32 @HARD_REGNO_MODE_OK(i64 %710, i32 %711)
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %717, label %714

714:                                              ; preds = %708
  %715 = load i32, i32* %5, align 4
  %716 = call i32 @copy_to_reg(i32 %715)
  store i32 %716, i32* %5, align 4
  br label %717

717:                                              ; preds = %714, %708, %703, %699
  %718 = load i32, i32* %4, align 4
  %719 = load i32, i32* %7, align 4
  %720 = load i32, i32* %5, align 4
  %721 = call i32 @gen_lowpart(i32 %719, i32 %720)
  %722 = call i32 @emit_move_insn(i32 %718, i32 %721)
  br label %870

723:                                              ; preds = %659, %653
  %724 = load i32, i32* %7, align 4
  %725 = call i64 @GET_MODE_BITSIZE(i32 %724)
  %726 = load i32, i32* %8, align 4
  %727 = call i64 @GET_MODE_BITSIZE(i32 %726)
  %728 = icmp sgt i64 %725, %727
  br i1 %728, label %729, label %821

729:                                              ; preds = %723
  %730 = load i32, i32* %7, align 4
  %731 = load i32, i32* %8, align 4
  %732 = load i32, i32* %6, align 4
  %733 = call i32 @can_extend_p(i32 %730, i32 %731, i32 %732)
  store i32 %733, i32* %11, align 4
  %734 = load i32, i32* @CODE_FOR_nothing, align 4
  %735 = icmp ne i32 %733, %734
  br i1 %735, label %736, label %742

736:                                              ; preds = %729
  %737 = load i32, i32* %11, align 4
  %738 = load i32, i32* %4, align 4
  %739 = load i32, i32* %5, align 4
  %740 = load i32, i32* %13, align 4
  %741 = call i32 @emit_unop_insn(i32 %737, i32 %738, i32 %739, i32 %740)
  br label %870

742:                                              ; preds = %729
  %743 = load i32, i32* %8, align 4
  store i32 %743, i32* %29, align 4
  br label %744

744:                                              ; preds = %783, %742
  %745 = load i32, i32* %29, align 4
  %746 = load i32, i32* @VOIDmode, align 4
  %747 = icmp ne i32 %745, %746
  br i1 %747, label %748, label %786

748:                                              ; preds = %744
  %749 = load i32, i32* %7, align 4
  %750 = load i32, i32* %29, align 4
  %751 = load i32, i32* %6, align 4
  %752 = call i32 @can_extend_p(i32 %749, i32 %750, i32 %751)
  %753 = load i32, i32* @CODE_FOR_nothing, align 4
  %754 = icmp ne i32 %752, %753
  br i1 %754, label %768, label %755

755:                                              ; preds = %748
  %756 = load i32, i32* %7, align 4
  %757 = call i64 @GET_MODE_SIZE(i32 %756)
  %758 = load i32, i32* %29, align 4
  %759 = call i64 @GET_MODE_SIZE(i32 %758)
  %760 = icmp slt i64 %757, %759
  br i1 %760, label %761, label %782

761:                                              ; preds = %755
  %762 = load i32, i32* %7, align 4
  %763 = call i64 @GET_MODE_BITSIZE(i32 %762)
  %764 = load i32, i32* %29, align 4
  %765 = call i64 @GET_MODE_BITSIZE(i32 %764)
  %766 = call i64 @TRULY_NOOP_TRUNCATION(i64 %763, i64 %765)
  %767 = icmp ne i64 %766, 0
  br i1 %767, label %768, label %782

768:                                              ; preds = %761, %748
  %769 = load i32, i32* %29, align 4
  %770 = load i32, i32* %8, align 4
  %771 = load i32, i32* %6, align 4
  %772 = call i32 @can_extend_p(i32 %769, i32 %770, i32 %771)
  %773 = load i32, i32* @CODE_FOR_nothing, align 4
  %774 = icmp ne i32 %772, %773
  br i1 %774, label %775, label %782

775:                                              ; preds = %768
  %776 = load i32, i32* %4, align 4
  %777 = load i32, i32* %29, align 4
  %778 = load i32, i32* %5, align 4
  %779 = load i32, i32* %6, align 4
  %780 = call i32 @convert_to_mode(i32 %777, i32 %778, i32 %779)
  %781 = load i32, i32* %6, align 4
  call void @convert_move(i32 %776, i32 %780, i32 %781)
  br label %870

782:                                              ; preds = %768, %761, %755
  br label %783

783:                                              ; preds = %782
  %784 = load i32, i32* %29, align 4
  %785 = call i32 @GET_MODE_WIDER_MODE(i32 %784)
  store i32 %785, i32* %29, align 4
  br label %744

786:                                              ; preds = %744
  %787 = load i32, i32* @NULL_TREE, align 4
  %788 = load i32, i32* %7, align 4
  %789 = call i64 @GET_MODE_BITSIZE(i32 %788)
  %790 = load i32, i32* %8, align 4
  %791 = call i64 @GET_MODE_BITSIZE(i32 %790)
  %792 = sub nsw i64 %789, %791
  %793 = call i32 @build_int_cst(i32 %787, i64 %792)
  store i32 %793, i32* %31, align 4
  %794 = load i32, i32* %7, align 4
  %795 = load i32, i32* %8, align 4
  %796 = load i32, i32* %5, align 4
  %797 = call i32 @force_reg(i32 %795, i32 %796)
  %798 = call i32 @gen_lowpart(i32 %794, i32 %797)
  store i32 %798, i32* %5, align 4
  %799 = load i32, i32* @LSHIFT_EXPR, align 4
  %800 = load i32, i32* %7, align 4
  %801 = load i32, i32* %5, align 4
  %802 = load i32, i32* %31, align 4
  %803 = load i32, i32* %4, align 4
  %804 = load i32, i32* %6, align 4
  %805 = call i32 @expand_shift(i32 %799, i32 %800, i32 %801, i32 %802, i32 %803, i32 %804)
  store i32 %805, i32* %30, align 4
  %806 = load i32, i32* @RSHIFT_EXPR, align 4
  %807 = load i32, i32* %7, align 4
  %808 = load i32, i32* %30, align 4
  %809 = load i32, i32* %31, align 4
  %810 = load i32, i32* %4, align 4
  %811 = load i32, i32* %6, align 4
  %812 = call i32 @expand_shift(i32 %806, i32 %807, i32 %808, i32 %809, i32 %810, i32 %811)
  store i32 %812, i32* %30, align 4
  %813 = load i32, i32* %30, align 4
  %814 = load i32, i32* %4, align 4
  %815 = icmp ne i32 %813, %814
  br i1 %815, label %816, label %820

816:                                              ; preds = %786
  %817 = load i32, i32* %4, align 4
  %818 = load i32, i32* %30, align 4
  %819 = call i32 @emit_move_insn(i32 %817, i32 %818)
  br label %820

820:                                              ; preds = %816, %786
  br label %870

821:                                              ; preds = %723
  %822 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  %823 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %822, i32 0, i32 0
  %824 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %823, align 8
  %825 = load i32, i32* %7, align 4
  %826 = zext i32 %825 to i64
  %827 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %824, i64 %826
  %828 = load %struct.TYPE_8__*, %struct.TYPE_8__** %827, align 8
  %829 = load i32, i32* %8, align 4
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %828, i64 %830
  %832 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* @CODE_FOR_nothing, align 4
  %835 = icmp ne i32 %833, %834
  br i1 %835, label %836, label %853

836:                                              ; preds = %821
  %837 = load %struct.TYPE_9__*, %struct.TYPE_9__** @trunc_optab, align 8
  %838 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %837, i32 0, i32 0
  %839 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %838, align 8
  %840 = load i32, i32* %7, align 4
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %839, i64 %841
  %843 = load %struct.TYPE_8__*, %struct.TYPE_8__** %842, align 8
  %844 = load i32, i32* %8, align 4
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %843, i64 %845
  %847 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 4
  %849 = load i32, i32* %4, align 4
  %850 = load i32, i32* %5, align 4
  %851 = load i32, i32* @UNKNOWN, align 4
  %852 = call i32 @emit_unop_insn(i32 %848, i32 %849, i32 %850, i32 %851)
  br label %870

853:                                              ; preds = %821
  %854 = load i32, i32* %7, align 4
  %855 = call i64 @GET_MODE_BITSIZE(i32 %854)
  %856 = load i32, i32* %8, align 4
  %857 = call i64 @GET_MODE_BITSIZE(i32 %856)
  %858 = icmp slt i64 %855, %857
  br i1 %858, label %859, label %868

859:                                              ; preds = %853
  %860 = load i32, i32* %7, align 4
  %861 = load i32, i32* %7, align 4
  %862 = load i32, i32* %5, align 4
  %863 = call i32 @gen_lowpart(i32 %861, i32 %862)
  %864 = call i32 @force_reg(i32 %860, i32 %863)
  store i32 %864, i32* %32, align 4
  %865 = load i32, i32* %4, align 4
  %866 = load i32, i32* %32, align 4
  %867 = call i32 @emit_move_insn(i32 %865, i32 %866)
  br label %870

868:                                              ; preds = %853
  %869 = call i32 (...) @gcc_unreachable()
  br label %870

870:                                              ; preds = %868, %859, %836, %820, %775, %736, %717, %648, %592, %492, %456, %384, %338, %301, %259, %176, %162, %127, %74
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SUBREG_PROMOTED_VAR_P(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_PROMOTED_UNSIGNED_P(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_MODE_PRECISION(i32) #1

declare dso_local i64 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i32 @emit_unop_insn(i32, i32, i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_library_call_value(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_libcall_block(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_FLOAT_TRUNCATE(i32, i32) #1

declare dso_local i32 @gen_rtx_FLOAT_EXTEND(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @smallest_mode_for_size(i64, i32) #1

declare dso_local i32 @convert_to_mode(i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @CEIL(i64, i64) #1

declare dso_local i32 @can_extend_p(i32, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @expand_shift(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @size_int(i64) #1

declare dso_local i32 @operand_subword(i32, i32, i32, i32) #1

declare dso_local i32 @emit_no_conflict_block(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_e(i32, i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @mode_dependent_address_p(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i64, i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @HARD_REGNO_MODE_OK(i64, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @build_int_cst(i32, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
