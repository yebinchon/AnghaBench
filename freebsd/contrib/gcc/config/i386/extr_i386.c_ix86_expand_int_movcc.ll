; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_movcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_movcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix86_compare_op1 = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@GE = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i64 0, align 8
@GT = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@TARGET_FAST_PREFIX = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@ix86_compare_op0 = common dso_local global i64 0, align 8
@CCFPmode = common dso_local global i64 0, align 8
@CCFPUmode = common dso_local global i64 0, align 8
@LTU = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@TARGET_PARTIAL_REG_STALL = common dso_local global i64 0, align 8
@TARGET_CMOVE = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@ior_optab = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_int_movcc(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @GET_MODE(i64 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %42 = call i32 (...) @start_sequence()
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @ix86_expand_compare(i32 %43, i64* %8, i64* %9)
  store i64 %44, i64* %7, align 8
  %45 = call i64 (...) @get_insns()
  store i64 %45, i64* %6, align 8
  %46 = call i32 (...) @end_sequence()
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @GET_CODE(i64 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i64, i64* @ix86_compare_op1, align 8
  %51 = load i64, i64* @const0_rtx, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %1
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @GE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @LT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %1
  %62 = load i64, i64* @ix86_compare_op1, align 8
  %63 = load i64, i64* @constm1_rtx, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @LE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65, %57, %53
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %69, %61
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @HImode, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* @TARGET_FAST_PREFIX, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %750

81:                                               ; preds = %78, %74
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* @TARGET_64BIT, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TImode, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @DImode, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = icmp ne i32 %82, %90
  br i1 %91, label %92, label %750

92:                                               ; preds = %89
  %93 = load i64*, i64** %3, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @GET_CODE(i64 %95)
  %97 = load i64, i64* @CONST_INT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %750

99:                                               ; preds = %92
  %100 = load i64*, i64** %3, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @GET_CODE(i64 %102)
  %104 = load i64, i64* @CONST_INT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %750

106:                                              ; preds = %99
  %107 = load i64*, i64** %3, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %12, align 8
  %110 = load i64*, i64** %3, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @INTVAL(i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i64*, i64** %3, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @INTVAL(i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %4, align 4
  %125 = load i64, i64* @ix86_compare_op0, align 8
  %126 = load i64, i64* @ix86_compare_op1, align 8
  %127 = call i64 @ix86_expand_carry_flag_compare(i32 %124, i64 %125, i64 %126, i64* %7)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %349

129:                                              ; preds = %123, %106
  %130 = load i64, i64* %12, align 8
  store i64 %130, i64* %16, align 8
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %214, label %133

133:                                              ; preds = %129
  store i32 0, i32* %17, align 4
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @GET_CODE(i64 %134)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  %137 = load i64, i64* %7, align 8
  %138 = call i64 @XEXP(i64 %137, i32 0)
  %139 = call i64 @GET_MODE(i64 %138)
  %140 = load i64, i64* @CCFPmode, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load i64, i64* %7, align 8
  %144 = call i64 @XEXP(i64 %143, i32 0)
  %145 = call i64 @GET_MODE(i64 %144)
  %146 = load i64, i64* @CCFPUmode, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142, %133
  store i32 1, i32* %17, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @ix86_fp_compare_code_to_integer(i32 %149)
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %142
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @LTU, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @reverse_condition(i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @reverse_condition(i32 %161)
  store i32 %162, i32* %4, align 4
  br label %181

163:                                              ; preds = %151
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = call i64 @GET_CODE(i64 %168)
  %170 = trunc i64 %169 to i32
  %171 = call i32 @reverse_condition_maybe_unordered(i32 %170)
  %172 = call i32 @PUT_CODE(i64 %167, i32 %171)
  br label %180

173:                                              ; preds = %163
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i64 @GET_CODE(i64 %175)
  %177 = trunc i64 %176 to i32
  %178 = call i32 @reverse_condition(i32 %177)
  %179 = call i32 @PUT_CODE(i64 %174, i32 %178)
  br label %180

180:                                              ; preds = %173, %166
  br label %181

181:                                              ; preds = %180, %155
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %182, %183
  store i32 %184, i32* %15, align 4
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* @ix86_compare_op0, align 8
  %187 = call i64 @reg_overlap_mentioned_p(i64 %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %181
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* @ix86_compare_op1, align 8
  %192 = call i64 @reg_overlap_mentioned_p(i64 %190, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189, %181
  %195 = load i32, i32* %10, align 4
  %196 = call i64 @gen_reg_rtx(i32 %195)
  store i64 %196, i64* %16, align 8
  br label %197

197:                                              ; preds = %194, %189
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @DImode, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i64, i64* %16, align 8
  %203 = load i64, i64* %7, align 8
  %204 = call i64 @gen_x86_movdicc_0_m1_rex64(i64 %202, i64 %203)
  %205 = call i32 @emit_insn(i64 %204)
  br label %213

206:                                              ; preds = %197
  %207 = load i32, i32* @SImode, align 4
  %208 = load i64, i64* %16, align 8
  %209 = call i32 @gen_lowpart(i32 %207, i64 %208)
  %210 = load i64, i64* %7, align 8
  %211 = call i64 @gen_x86_movsicc_0_m1(i32 %209, i64 %210)
  %212 = call i32 @emit_insn(i64 %211)
  br label %213

213:                                              ; preds = %206, %201
  br label %239

214:                                              ; preds = %129
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @GT, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @GE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218, %214
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @reverse_condition(i32 %223)
  store i32 %224, i32* %4, align 4
  br label %232

225:                                              ; preds = %218
  %226 = load i32, i32* %13, align 4
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %14, align 4
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %19, align 4
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %14, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %15, align 4
  br label %232

232:                                              ; preds = %225, %222
  %233 = load i64, i64* %16, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i64, i64* @ix86_compare_op0, align 8
  %236 = load i64, i64* @ix86_compare_op1, align 8
  %237 = load i32, i32* @VOIDmode, align 4
  %238 = call i64 @emit_store_flag(i64 %233, i32 %234, i64 %235, i64 %236, i32 %237, i32 0, i32 -1)
  store i64 %238, i64* %16, align 8
  br label %239

239:                                              ; preds = %232, %213
  %240 = load i32, i32* %15, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @PLUS, align 4
  %248 = load i64, i64* %16, align 8
  %249 = load i32, i32* %13, align 4
  %250 = call i64 @GEN_INT(i32 %249)
  %251 = load i64, i64* %16, align 8
  %252 = call i64 @copy_rtx(i64 %251)
  %253 = load i32, i32* @OPTAB_DIRECT, align 4
  %254 = call i64 @expand_simple_binop(i32 %246, i32 %247, i64 %248, i64 %250, i64 %252, i32 1, i32 %253)
  store i64 %254, i64* %16, align 8
  br label %255

255:                                              ; preds = %245, %242
  br label %337

256:                                              ; preds = %239
  %257 = load i32, i32* %14, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* @IOR, align 4
  %262 = load i64, i64* %16, align 8
  %263 = load i32, i32* %13, align 4
  %264 = call i64 @GEN_INT(i32 %263)
  %265 = load i64, i64* %16, align 8
  %266 = call i64 @copy_rtx(i64 %265)
  %267 = load i32, i32* @OPTAB_DIRECT, align 4
  %268 = call i64 @expand_simple_binop(i32 %260, i32 %261, i64 %262, i64 %264, i64 %266, i32 1, i32 %267)
  store i64 %268, i64* %16, align 8
  br label %336

269:                                              ; preds = %256
  %270 = load i32, i32* %15, align 4
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %296

272:                                              ; preds = %269
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %296

275:                                              ; preds = %272
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @NOT, align 4
  %278 = load i64, i64* %16, align 8
  %279 = load i64, i64* %16, align 8
  %280 = call i64 @copy_rtx(i64 %279)
  %281 = call i64 @expand_simple_unop(i32 %276, i32 %277, i64 %278, i64 %280, i32 1)
  store i64 %281, i64* %16, align 8
  %282 = load i32, i32* %14, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %275
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @PLUS, align 4
  %287 = load i64, i64* %16, align 8
  %288 = call i64 @copy_rtx(i64 %287)
  %289 = load i32, i32* %14, align 4
  %290 = call i64 @GEN_INT(i32 %289)
  %291 = load i64, i64* %16, align 8
  %292 = call i64 @copy_rtx(i64 %291)
  %293 = load i32, i32* @OPTAB_DIRECT, align 4
  %294 = call i64 @expand_simple_binop(i32 %285, i32 %286, i64 %288, i64 %290, i64 %292, i32 1, i32 %293)
  store i64 %294, i64* %16, align 8
  br label %295

295:                                              ; preds = %284, %275
  br label %335

296:                                              ; preds = %272, %269
  %297 = load i32, i32* %14, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = load i32, i32* %13, align 4
  store i32 %300, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* @NOT, align 4
  %303 = load i64, i64* %16, align 8
  %304 = load i64, i64* %16, align 8
  %305 = call i64 @copy_rtx(i64 %304)
  %306 = call i64 @expand_simple_unop(i32 %301, i32 %302, i64 %303, i64 %305, i32 1)
  store i64 %306, i64* %16, align 8
  br label %307

307:                                              ; preds = %299, %296
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @AND, align 4
  %310 = load i64, i64* %16, align 8
  %311 = call i64 @copy_rtx(i64 %310)
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %13, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load i32, i32* %10, align 4
  %316 = call i64 @gen_int_mode(i32 %314, i32 %315)
  %317 = load i64, i64* %16, align 8
  %318 = call i64 @copy_rtx(i64 %317)
  %319 = load i32, i32* @OPTAB_DIRECT, align 4
  %320 = call i64 @expand_simple_binop(i32 %308, i32 %309, i64 %311, i64 %316, i64 %318, i32 1, i32 %319)
  store i64 %320, i64* %16, align 8
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %307
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* @PLUS, align 4
  %326 = load i64, i64* %16, align 8
  %327 = call i64 @copy_rtx(i64 %326)
  %328 = load i32, i32* %13, align 4
  %329 = call i64 @GEN_INT(i32 %328)
  %330 = load i64, i64* %16, align 8
  %331 = call i64 @copy_rtx(i64 %330)
  %332 = load i32, i32* @OPTAB_DIRECT, align 4
  %333 = call i64 @expand_simple_binop(i32 %324, i32 %325, i64 %327, i64 %329, i64 %331, i32 1, i32 %332)
  store i64 %333, i64* %16, align 8
  br label %334

334:                                              ; preds = %323, %307
  br label %335

335:                                              ; preds = %334, %295
  br label %336

336:                                              ; preds = %335, %259
  br label %337

337:                                              ; preds = %336, %255
  %338 = load i64, i64* %16, align 8
  %339 = load i64, i64* %12, align 8
  %340 = call i32 @rtx_equal_p(i64 %338, i64 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load i64, i64* %12, align 8
  %344 = call i64 @copy_rtx(i64 %343)
  %345 = load i64, i64* %16, align 8
  %346 = call i64 @copy_rtx(i64 %345)
  %347 = call i32 @emit_move_insn(i64 %344, i64 %346)
  br label %348

348:                                              ; preds = %342, %337
  store i32 1, i32* %2, align 4
  br label %1075

349:                                              ; preds = %123
  %350 = load i32, i32* %15, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %373

352:                                              ; preds = %349
  %353 = load i32, i32* %13, align 4
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* %14, align 4
  store i32 %354, i32* %13, align 4
  %355 = load i32, i32* %20, align 4
  store i32 %355, i32* %14, align 4
  %356 = load i32, i32* %15, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %15, align 4
  %358 = load i64, i64* @ix86_compare_op0, align 8
  %359 = call i64 @GET_MODE(i64 %358)
  %360 = call i64 @FLOAT_MODE_P(i64 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %352
  %363 = load i32, i32* %5, align 4
  %364 = call i32 @reverse_condition_maybe_unordered(i32 %363)
  store i32 %364, i32* %5, align 4
  %365 = load i32, i32* %4, align 4
  %366 = call i32 @reverse_condition_maybe_unordered(i32 %365)
  store i32 %366, i32* %4, align 4
  br label %372

367:                                              ; preds = %352
  %368 = load i32, i32* %5, align 4
  %369 = call i32 @reverse_condition(i32 %368)
  store i32 %369, i32* %5, align 4
  %370 = load i32, i32* %4, align 4
  %371 = call i32 @reverse_condition(i32 %370)
  store i32 %371, i32* %4, align 4
  br label %372

372:                                              ; preds = %367, %362
  br label %373

373:                                              ; preds = %372, %349
  %374 = load i32, i32* @UNKNOWN, align 4
  store i32 %374, i32* %5, align 4
  %375 = load i64, i64* @ix86_compare_op0, align 8
  %376 = call i64 @GET_MODE(i64 %375)
  %377 = call i64 @GET_MODE_CLASS(i64 %376)
  %378 = load i64, i64* @MODE_INT, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %419

380:                                              ; preds = %373
  %381 = load i64, i64* @ix86_compare_op1, align 8
  %382 = call i64 @GET_CODE(i64 %381)
  %383 = load i64, i64* @CONST_INT, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %419

385:                                              ; preds = %380
  %386 = load i64, i64* @ix86_compare_op1, align 8
  %387 = load i64, i64* @const0_rtx, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %385
  %390 = load i32, i32* %4, align 4
  %391 = load i32, i32* @LT, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = load i32, i32* %4, align 4
  %395 = load i32, i32* @GE, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %393, %389
  %398 = load i32, i32* %4, align 4
  store i32 %398, i32* %5, align 4
  br label %418

399:                                              ; preds = %393, %385
  %400 = load i64, i64* @ix86_compare_op1, align 8
  %401 = load i64, i64* @constm1_rtx, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %417

403:                                              ; preds = %399
  %404 = load i32, i32* %4, align 4
  %405 = load i32, i32* @LE, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %409

407:                                              ; preds = %403
  %408 = load i32, i32* @LT, align 4
  store i32 %408, i32* %5, align 4
  br label %416

409:                                              ; preds = %403
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* @GT, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = load i32, i32* @GE, align 4
  store i32 %414, i32* %5, align 4
  br label %415

415:                                              ; preds = %413, %409
  br label %416

416:                                              ; preds = %415, %407
  br label %417

417:                                              ; preds = %416, %399
  br label %418

418:                                              ; preds = %417, %397
  br label %419

419:                                              ; preds = %418, %380, %373
  %420 = load i32, i32* %5, align 4
  %421 = load i32, i32* @UNKNOWN, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %505

423:                                              ; preds = %419
  %424 = load i64, i64* @ix86_compare_op0, align 8
  %425 = call i64 @GET_MODE(i64 %424)
  %426 = load i64, i64* %12, align 8
  %427 = call i64 @GET_MODE(i64 %426)
  %428 = icmp eq i64 %425, %427
  br i1 %428, label %429, label %505

429:                                              ; preds = %423
  %430 = load i32, i32* %14, align 4
  %431 = icmp eq i32 %430, -1
  br i1 %431, label %435, label %432

432:                                              ; preds = %429
  %433 = load i32, i32* %13, align 4
  %434 = icmp eq i32 %433, -1
  br i1 %434, label %435, label %505

435:                                              ; preds = %432, %429
  %436 = load i32, i32* %15, align 4
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %456, label %438

438:                                              ; preds = %435
  %439 = load i32, i32* %15, align 4
  %440 = icmp eq i32 %439, 2
  br i1 %440, label %456, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* %15, align 4
  %443 = icmp eq i32 %442, 4
  br i1 %443, label %456, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %15, align 4
  %446 = icmp eq i32 %445, 8
  br i1 %446, label %456, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %15, align 4
  %449 = icmp eq i32 %448, 3
  br i1 %449, label %456, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %15, align 4
  %452 = icmp eq i32 %451, 5
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %15, align 4
  %455 = icmp eq i32 %454, 9
  br i1 %455, label %456, label %470

456:                                              ; preds = %453, %450, %447, %444, %441, %438, %435
  %457 = load i32, i32* %5, align 4
  %458 = load i32, i32* @LT, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = load i32, i32* %13, align 4
  %462 = icmp eq i32 %461, -1
  br i1 %462, label %470, label %463

463:                                              ; preds = %460, %456
  %464 = load i32, i32* %5, align 4
  %465 = load i32, i32* @GE, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %504

467:                                              ; preds = %463
  %468 = load i32, i32* %14, align 4
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %504

470:                                              ; preds = %467, %460, %453
  %471 = load i32, i32* %13, align 4
  %472 = icmp ne i32 %471, -1
  br i1 %472, label %473, label %477

473:                                              ; preds = %470
  %474 = load i32, i32* %13, align 4
  store i32 %474, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  %475 = load i32, i32* %4, align 4
  %476 = call i32 @reverse_condition(i32 %475)
  store i32 %476, i32* %4, align 4
  br label %477

477:                                              ; preds = %473, %470
  %478 = load i64, i64* %12, align 8
  %479 = load i32, i32* %4, align 4
  %480 = load i64, i64* @ix86_compare_op0, align 8
  %481 = load i64, i64* @ix86_compare_op1, align 8
  %482 = load i32, i32* @VOIDmode, align 4
  %483 = call i64 @emit_store_flag(i64 %478, i32 %479, i64 %480, i64 %481, i32 %482, i32 0, i32 -1)
  store i64 %483, i64* %12, align 8
  %484 = load i32, i32* %10, align 4
  %485 = load i32, i32* @IOR, align 4
  %486 = load i64, i64* %12, align 8
  %487 = load i32, i32* %14, align 4
  %488 = call i64 @GEN_INT(i32 %487)
  %489 = load i64, i64* %12, align 8
  %490 = load i32, i32* @OPTAB_DIRECT, align 4
  %491 = call i64 @expand_simple_binop(i32 %484, i32 %485, i64 %486, i64 %488, i64 %489, i32 1, i32 %490)
  store i64 %491, i64* %12, align 8
  %492 = load i64, i64* %12, align 8
  %493 = load i64*, i64** %3, align 8
  %494 = getelementptr inbounds i64, i64* %493, i64 0
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %492, %495
  br i1 %496, label %497, label %503

497:                                              ; preds = %477
  %498 = load i64*, i64** %3, align 8
  %499 = getelementptr inbounds i64, i64* %498, i64 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* %12, align 8
  %502 = call i32 @emit_move_insn(i64 %500, i64 %501)
  br label %503

503:                                              ; preds = %497, %477
  store i32 1, i32* %2, align 4
  br label %1075

504:                                              ; preds = %467, %463
  br label %505

505:                                              ; preds = %504, %432, %423, %419
  %506 = load i32, i32* %15, align 4
  %507 = icmp eq i32 %506, 1
  br i1 %507, label %526, label %508

508:                                              ; preds = %505
  %509 = load i32, i32* %15, align 4
  %510 = icmp eq i32 %509, 2
  br i1 %510, label %526, label %511

511:                                              ; preds = %508
  %512 = load i32, i32* %15, align 4
  %513 = icmp eq i32 %512, 4
  br i1 %513, label %526, label %514

514:                                              ; preds = %511
  %515 = load i32, i32* %15, align 4
  %516 = icmp eq i32 %515, 8
  br i1 %516, label %526, label %517

517:                                              ; preds = %514
  %518 = load i32, i32* %15, align 4
  %519 = icmp eq i32 %518, 3
  br i1 %519, label %526, label %520

520:                                              ; preds = %517
  %521 = load i32, i32* %15, align 4
  %522 = icmp eq i32 %521, 5
  br i1 %522, label %526, label %523

523:                                              ; preds = %520
  %524 = load i32, i32* %15, align 4
  %525 = icmp eq i32 %524, 9
  br i1 %525, label %526, label %629

526:                                              ; preds = %523, %520, %517, %514, %511, %508, %505
  %527 = load i32, i32* %10, align 4
  %528 = load i32, i32* @QImode, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %534

530:                                              ; preds = %526
  %531 = load i32, i32* %10, align 4
  %532 = load i32, i32* @HImode, align 4
  %533 = icmp ne i32 %531, %532
  br i1 %533, label %537, label %534

534:                                              ; preds = %530, %526
  %535 = load i64, i64* @TARGET_PARTIAL_REG_STALL, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %629, label %537

537:                                              ; preds = %534, %530
  %538 = load i32, i32* %10, align 4
  %539 = load i32, i32* @DImode, align 4
  %540 = icmp ne i32 %538, %539
  br i1 %540, label %547, label %541

541:                                              ; preds = %537
  %542 = load i32, i32* %14, align 4
  %543 = call i64 @GEN_INT(i32 %542)
  %544 = load i32, i32* @VOIDmode, align 4
  %545 = call i64 @x86_64_immediate_operand(i64 %543, i32 %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %629

547:                                              ; preds = %541, %537
  %548 = load i64, i64* %12, align 8
  %549 = load i32, i32* %4, align 4
  %550 = load i64, i64* @ix86_compare_op0, align 8
  %551 = load i64, i64* @ix86_compare_op1, align 8
  %552 = load i32, i32* @VOIDmode, align 4
  %553 = call i64 @emit_store_flag(i64 %548, i32 %549, i64 %550, i64 %551, i32 %552, i32 0, i32 1)
  store i64 %553, i64* %12, align 8
  store i32 0, i32* %22, align 4
  %554 = load i32, i32* %15, align 4
  %555 = icmp eq i32 %554, 1
  br i1 %555, label %556, label %559

556:                                              ; preds = %547
  %557 = load i64, i64* %12, align 8
  %558 = call i64 @copy_rtx(i64 %557)
  store i64 %558, i64* %21, align 8
  br label %581

559:                                              ; preds = %547
  %560 = load i64, i64* %12, align 8
  %561 = call i64 @copy_rtx(i64 %560)
  store i64 %561, i64* %23, align 8
  %562 = load i32, i32* %10, align 4
  %563 = load i64, i64* %23, align 8
  %564 = load i32, i32* %15, align 4
  %565 = and i32 %564, -2
  %566 = call i64 @GEN_INT(i32 %565)
  %567 = call i64 @gen_rtx_MULT(i32 %562, i64 %563, i64 %566)
  store i64 %567, i64* %21, align 8
  %568 = load i32, i32* %22, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %22, align 4
  %570 = load i32, i32* %15, align 4
  %571 = and i32 %570, 1
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %580

573:                                              ; preds = %559
  %574 = load i32, i32* %10, align 4
  %575 = load i64, i64* %21, align 8
  %576 = load i64, i64* %23, align 8
  %577 = call i64 @gen_rtx_PLUS(i32 %574, i64 %575, i64 %576)
  store i64 %577, i64* %21, align 8
  %578 = load i32, i32* %22, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %22, align 4
  br label %580

580:                                              ; preds = %573, %559
  br label %581

581:                                              ; preds = %580, %556
  %582 = load i32, i32* %14, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %592

584:                                              ; preds = %581
  %585 = load i32, i32* %10, align 4
  %586 = load i64, i64* %21, align 8
  %587 = load i32, i32* %14, align 4
  %588 = call i64 @GEN_INT(i32 %587)
  %589 = call i64 @gen_rtx_PLUS(i32 %585, i64 %586, i64 %588)
  store i64 %589, i64* %21, align 8
  %590 = load i32, i32* %22, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %22, align 4
  br label %592

592:                                              ; preds = %584, %581
  %593 = load i64, i64* %21, align 8
  %594 = load i64, i64* %12, align 8
  %595 = call i32 @rtx_equal_p(i64 %593, i64 %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %614, label %597

597:                                              ; preds = %592
  %598 = load i32, i32* %22, align 4
  %599 = icmp eq i32 %598, 1
  br i1 %599, label %600, label %605

600:                                              ; preds = %597
  %601 = load i64, i64* %21, align 8
  %602 = load i64, i64* %12, align 8
  %603 = call i64 @copy_rtx(i64 %602)
  %604 = call i64 @force_operand(i64 %601, i64 %603)
  store i64 %604, i64* %12, align 8
  br label %613

605:                                              ; preds = %597
  %606 = load i32, i32* @VOIDmode, align 4
  %607 = load i64, i64* %12, align 8
  %608 = call i64 @copy_rtx(i64 %607)
  %609 = load i64, i64* %21, align 8
  %610 = call i64 @copy_rtx(i64 %609)
  %611 = call i64 @gen_rtx_SET(i32 %606, i64 %608, i64 %610)
  %612 = call i32 @emit_insn(i64 %611)
  br label %613

613:                                              ; preds = %605, %600
  br label %614

614:                                              ; preds = %613, %592
  %615 = load i64, i64* %12, align 8
  %616 = load i64*, i64** %3, align 8
  %617 = getelementptr inbounds i64, i64* %616, i64 0
  %618 = load i64, i64* %617, align 8
  %619 = call i32 @rtx_equal_p(i64 %615, i64 %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %628, label %621

621:                                              ; preds = %614
  %622 = load i64*, i64** %3, align 8
  %623 = getelementptr inbounds i64, i64* %622, i64 0
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* %12, align 8
  %626 = call i64 @copy_rtx(i64 %625)
  %627 = call i32 @emit_move_insn(i64 %624, i64 %626)
  br label %628

628:                                              ; preds = %621, %614
  store i32 1, i32* %2, align 4
  br label %1075

629:                                              ; preds = %541, %534, %523
  %630 = load i32, i32* @TARGET_CMOVE, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %639

632:                                              ; preds = %629
  %633 = load i32, i32* %10, align 4
  %634 = load i32, i32* @QImode, align 4
  %635 = icmp eq i32 %633, %634
  br i1 %635, label %636, label %749

636:                                              ; preds = %632
  %637 = load i64, i64* @TARGET_PARTIAL_REG_STALL, align 8
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %749

639:                                              ; preds = %636, %629
  %640 = load i32, i32* @BRANCH_COST, align 4
  %641 = icmp sge i32 %640, 2
  br i1 %641, label %642, label %749

642:                                              ; preds = %639
  %643 = load i32, i32* %14, align 4
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %665

645:                                              ; preds = %642
  %646 = load i32, i32* %13, align 4
  store i32 %646, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %647 = load i64, i64* @ix86_compare_op0, align 8
  %648 = call i64 @GET_MODE(i64 %647)
  %649 = call i64 @FLOAT_MODE_P(i64 %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %645
  %652 = load i32, i32* %4, align 4
  %653 = call i32 @reverse_condition_maybe_unordered(i32 %652)
  store i32 %653, i32* %4, align 4
  br label %664

654:                                              ; preds = %645
  %655 = load i32, i32* %4, align 4
  %656 = call i32 @reverse_condition(i32 %655)
  store i32 %656, i32* %4, align 4
  %657 = load i32, i32* %5, align 4
  %658 = load i32, i32* @UNKNOWN, align 4
  %659 = icmp ne i32 %657, %658
  br i1 %659, label %660, label %663

660:                                              ; preds = %654
  %661 = load i32, i32* %5, align 4
  %662 = call i32 @reverse_condition(i32 %661)
  store i32 %662, i32* %5, align 4
  br label %663

663:                                              ; preds = %660, %654
  br label %664

664:                                              ; preds = %663, %651
  br label %665

665:                                              ; preds = %664, %642
  %666 = load i32, i32* %5, align 4
  %667 = load i32, i32* @UNKNOWN, align 4
  %668 = icmp ne i32 %666, %667
  br i1 %668, label %669, label %691

669:                                              ; preds = %665
  %670 = load i32, i32* %5, align 4
  %671 = load i32, i32* @GE, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %676, label %673

673:                                              ; preds = %669
  %674 = load i32, i32* %14, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %680, label %676

676:                                              ; preds = %673, %669
  %677 = load i32, i32* %4, align 4
  %678 = call i32 @reverse_condition(i32 %677)
  store i32 %678, i32* %4, align 4
  %679 = load i32, i32* @LT, align 4
  store i32 %679, i32* %5, align 4
  br label %684

680:                                              ; preds = %673
  %681 = load i32, i32* %14, align 4
  store i32 %681, i32* %24, align 4
  %682 = load i32, i32* %13, align 4
  store i32 %682, i32* %14, align 4
  %683 = load i32, i32* %24, align 4
  store i32 %683, i32* %13, align 4
  br label %684

684:                                              ; preds = %680, %676
  %685 = load i64, i64* %12, align 8
  %686 = load i32, i32* %4, align 4
  %687 = load i64, i64* @ix86_compare_op0, align 8
  %688 = load i64, i64* @ix86_compare_op1, align 8
  %689 = load i32, i32* @VOIDmode, align 4
  %690 = call i64 @emit_store_flag(i64 %685, i32 %686, i64 %687, i64 %688, i32 %689, i32 0, i32 -1)
  store i64 %690, i64* %12, align 8
  br label %707

691:                                              ; preds = %665
  %692 = load i64, i64* %12, align 8
  %693 = load i32, i32* %4, align 4
  %694 = load i64, i64* @ix86_compare_op0, align 8
  %695 = load i64, i64* @ix86_compare_op1, align 8
  %696 = load i32, i32* @VOIDmode, align 4
  %697 = call i64 @emit_store_flag(i64 %692, i32 %693, i64 %694, i64 %695, i32 %696, i32 0, i32 1)
  store i64 %697, i64* %12, align 8
  %698 = load i32, i32* %10, align 4
  %699 = load i32, i32* @PLUS, align 4
  %700 = load i64, i64* %12, align 8
  %701 = call i64 @copy_rtx(i64 %700)
  %702 = load i64, i64* @constm1_rtx, align 8
  %703 = load i64, i64* %12, align 8
  %704 = call i64 @copy_rtx(i64 %703)
  %705 = load i32, i32* @OPTAB_DIRECT, align 4
  %706 = call i64 @expand_simple_binop(i32 %698, i32 %699, i64 %701, i64 %702, i64 %704, i32 1, i32 %705)
  store i64 %706, i64* %12, align 8
  br label %707

707:                                              ; preds = %691, %684
  %708 = load i32, i32* %10, align 4
  %709 = load i32, i32* @AND, align 4
  %710 = load i64, i64* %12, align 8
  %711 = call i64 @copy_rtx(i64 %710)
  %712 = load i32, i32* %14, align 4
  %713 = load i32, i32* %13, align 4
  %714 = sub nsw i32 %712, %713
  %715 = load i32, i32* %10, align 4
  %716 = call i64 @gen_int_mode(i32 %714, i32 %715)
  %717 = load i64, i64* %12, align 8
  %718 = call i64 @copy_rtx(i64 %717)
  %719 = load i32, i32* @OPTAB_DIRECT, align 4
  %720 = call i64 @expand_simple_binop(i32 %708, i32 %709, i64 %711, i64 %716, i64 %718, i32 1, i32 %719)
  store i64 %720, i64* %12, align 8
  %721 = load i32, i32* %13, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %734

723:                                              ; preds = %707
  %724 = load i32, i32* %10, align 4
  %725 = load i32, i32* @PLUS, align 4
  %726 = load i64, i64* %12, align 8
  %727 = call i64 @copy_rtx(i64 %726)
  %728 = load i32, i32* %13, align 4
  %729 = call i64 @GEN_INT(i32 %728)
  %730 = load i64, i64* %12, align 8
  %731 = call i64 @copy_rtx(i64 %730)
  %732 = load i32, i32* @OPTAB_DIRECT, align 4
  %733 = call i64 @expand_simple_binop(i32 %724, i32 %725, i64 %727, i64 %729, i64 %731, i32 1, i32 %732)
  store i64 %733, i64* %12, align 8
  br label %734

734:                                              ; preds = %723, %707
  %735 = load i64, i64* %12, align 8
  %736 = load i64*, i64** %3, align 8
  %737 = getelementptr inbounds i64, i64* %736, i64 0
  %738 = load i64, i64* %737, align 8
  %739 = call i32 @rtx_equal_p(i64 %735, i64 %738)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %748, label %741

741:                                              ; preds = %734
  %742 = load i64*, i64** %3, align 8
  %743 = getelementptr inbounds i64, i64* %742, i64 0
  %744 = load i64, i64* %743, align 8
  %745 = load i64, i64* %12, align 8
  %746 = call i64 @copy_rtx(i64 %745)
  %747 = call i32 @emit_move_insn(i64 %744, i64 %746)
  br label %748

748:                                              ; preds = %741, %734
  store i32 1, i32* %2, align 4
  br label %1075

749:                                              ; preds = %639, %636, %632
  br label %750

750:                                              ; preds = %749, %99, %92, %89, %78
  %751 = load i32, i32* @TARGET_CMOVE, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %760

753:                                              ; preds = %750
  %754 = load i32, i32* %10, align 4
  %755 = load i32, i32* @QImode, align 4
  %756 = icmp eq i32 %754, %755
  br i1 %756, label %757, label %892

757:                                              ; preds = %753
  %758 = load i64, i64* @TARGET_PARTIAL_REG_STALL, align 8
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %892

760:                                              ; preds = %757, %750
  %761 = load i32, i32* @BRANCH_COST, align 4
  %762 = icmp sle i32 %761, 2
  br i1 %762, label %763, label %764

763:                                              ; preds = %760
  store i32 0, i32* %2, align 4
  br label %1075

764:                                              ; preds = %760
  %765 = load i64*, i64** %3, align 8
  %766 = getelementptr inbounds i64, i64* %765, i64 2
  %767 = load i64, i64* %766, align 8
  %768 = call i64 @GET_CODE(i64 %767)
  %769 = load i64, i64* @CONST_INT, align 8
  %770 = icmp eq i64 %768, %769
  br i1 %770, label %771, label %811

771:                                              ; preds = %764
  %772 = load i64*, i64** %3, align 8
  %773 = getelementptr inbounds i64, i64* %772, i64 3
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %26, align 8
  %775 = load i64*, i64** %3, align 8
  %776 = getelementptr inbounds i64, i64* %775, i64 2
  %777 = load i64, i64* %776, align 8
  %778 = call i32 @INTVAL(i64 %777)
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %791

780:                                              ; preds = %771
  %781 = load i64*, i64** %3, align 8
  %782 = getelementptr inbounds i64, i64* %781, i64 3
  %783 = load i64, i64* %782, align 8
  %784 = load i64, i64* @constm1_rtx, align 8
  %785 = icmp ne i64 %783, %784
  br i1 %785, label %786, label %791

786:                                              ; preds = %780
  %787 = load i64, i64* @constm1_rtx, align 8
  %788 = load i64*, i64** %3, align 8
  %789 = getelementptr inbounds i64, i64* %788, i64 3
  store i64 %787, i64* %789, align 8
  %790 = load i32, i32* @and_optab, align 4
  store i32 %790, i32* %25, align 4
  br label %810

791:                                              ; preds = %780, %771
  %792 = load i64*, i64** %3, align 8
  %793 = getelementptr inbounds i64, i64* %792, i64 2
  %794 = load i64, i64* %793, align 8
  %795 = call i32 @INTVAL(i64 %794)
  %796 = icmp eq i32 %795, -1
  br i1 %796, label %797, label %808

797:                                              ; preds = %791
  %798 = load i64*, i64** %3, align 8
  %799 = getelementptr inbounds i64, i64* %798, i64 3
  %800 = load i64, i64* %799, align 8
  %801 = load i64, i64* @const0_rtx, align 8
  %802 = icmp ne i64 %800, %801
  br i1 %802, label %803, label %808

803:                                              ; preds = %797
  %804 = load i64, i64* @const0_rtx, align 8
  %805 = load i64*, i64** %3, align 8
  %806 = getelementptr inbounds i64, i64* %805, i64 3
  store i64 %804, i64* %806, align 8
  %807 = load i32, i32* @ior_optab, align 4
  store i32 %807, i32* %25, align 4
  br label %809

808:                                              ; preds = %797, %791
  store i32 0, i32* %2, align 4
  br label %1075

809:                                              ; preds = %803
  br label %810

810:                                              ; preds = %809, %786
  br label %860

811:                                              ; preds = %764
  %812 = load i64*, i64** %3, align 8
  %813 = getelementptr inbounds i64, i64* %812, i64 3
  %814 = load i64, i64* %813, align 8
  %815 = call i64 @GET_CODE(i64 %814)
  %816 = load i64, i64* @CONST_INT, align 8
  %817 = icmp eq i64 %815, %816
  br i1 %817, label %818, label %858

818:                                              ; preds = %811
  %819 = load i64*, i64** %3, align 8
  %820 = getelementptr inbounds i64, i64* %819, i64 2
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %26, align 8
  %822 = load i64*, i64** %3, align 8
  %823 = getelementptr inbounds i64, i64* %822, i64 3
  %824 = load i64, i64* %823, align 8
  %825 = call i32 @INTVAL(i64 %824)
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %838

827:                                              ; preds = %818
  %828 = load i64*, i64** %3, align 8
  %829 = getelementptr inbounds i64, i64* %828, i64 2
  %830 = load i64, i64* %829, align 8
  %831 = load i64, i64* @constm1_rtx, align 8
  %832 = icmp ne i64 %830, %831
  br i1 %832, label %833, label %838

833:                                              ; preds = %827
  %834 = load i64, i64* @constm1_rtx, align 8
  %835 = load i64*, i64** %3, align 8
  %836 = getelementptr inbounds i64, i64* %835, i64 2
  store i64 %834, i64* %836, align 8
  %837 = load i32, i32* @and_optab, align 4
  store i32 %837, i32* %25, align 4
  br label %857

838:                                              ; preds = %827, %818
  %839 = load i64*, i64** %3, align 8
  %840 = getelementptr inbounds i64, i64* %839, i64 3
  %841 = load i64, i64* %840, align 8
  %842 = call i32 @INTVAL(i64 %841)
  %843 = icmp eq i32 %842, -1
  br i1 %843, label %844, label %855

844:                                              ; preds = %838
  %845 = load i64*, i64** %3, align 8
  %846 = getelementptr inbounds i64, i64* %845, i64 3
  %847 = load i64, i64* %846, align 8
  %848 = load i64, i64* @const0_rtx, align 8
  %849 = icmp ne i64 %847, %848
  br i1 %849, label %850, label %855

850:                                              ; preds = %844
  %851 = load i64, i64* @const0_rtx, align 8
  %852 = load i64*, i64** %3, align 8
  %853 = getelementptr inbounds i64, i64* %852, i64 2
  store i64 %851, i64* %853, align 8
  %854 = load i32, i32* @ior_optab, align 4
  store i32 %854, i32* %25, align 4
  br label %856

855:                                              ; preds = %844, %838
  store i32 0, i32* %2, align 4
  br label %1075

856:                                              ; preds = %850
  br label %857

857:                                              ; preds = %856, %833
  br label %859

858:                                              ; preds = %811
  store i32 0, i32* %2, align 4
  br label %1075

859:                                              ; preds = %857
  br label %860

860:                                              ; preds = %859, %810
  %861 = load i64*, i64** %3, align 8
  %862 = getelementptr inbounds i64, i64* %861, i64 0
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %27, align 8
  %864 = load i32, i32* %10, align 4
  %865 = call i64 @gen_reg_rtx(i32 %864)
  store i64 %865, i64* %29, align 8
  %866 = load i64, i64* %29, align 8
  %867 = load i64*, i64** %3, align 8
  %868 = getelementptr inbounds i64, i64* %867, i64 0
  store i64 %866, i64* %868, align 8
  %869 = load i64*, i64** %3, align 8
  %870 = call i32 @ix86_expand_int_movcc(i64* %869)
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %873

872:                                              ; preds = %860
  store i32 0, i32* %2, align 4
  br label %1075

873:                                              ; preds = %860
  %874 = load i32, i32* %10, align 4
  %875 = load i32, i32* %25, align 4
  %876 = load i64, i64* %26, align 8
  %877 = load i64, i64* %29, align 8
  %878 = load i64, i64* %27, align 8
  %879 = load i32, i32* @OPTAB_WIDEN, align 4
  %880 = call i64 @expand_binop(i32 %874, i32 %875, i64 %876, i64 %877, i64 %878, i32 0, i32 %879)
  store i64 %880, i64* %28, align 8
  %881 = load i64, i64* %28, align 8
  %882 = load i64, i64* %27, align 8
  %883 = call i32 @rtx_equal_p(i64 %881, i64 %882)
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %891, label %885

885:                                              ; preds = %873
  %886 = load i64, i64* %27, align 8
  %887 = call i64 @copy_rtx(i64 %886)
  %888 = load i64, i64* %28, align 8
  %889 = call i64 @copy_rtx(i64 %888)
  %890 = call i32 @emit_move_insn(i64 %887, i64 %889)
  br label %891

891:                                              ; preds = %885, %873
  store i32 1, i32* %2, align 4
  br label %1075

892:                                              ; preds = %757, %753
  %893 = load i64*, i64** %3, align 8
  %894 = getelementptr inbounds i64, i64* %893, i64 2
  %895 = load i64, i64* %894, align 8
  %896 = load i32, i32* %10, align 4
  %897 = call i32 @nonimmediate_operand(i64 %895, i32 %896)
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %892
  %900 = load i32, i32* %10, align 4
  %901 = load i64*, i64** %3, align 8
  %902 = getelementptr inbounds i64, i64* %901, i64 2
  %903 = load i64, i64* %902, align 8
  %904 = call i64 @force_reg(i32 %900, i64 %903)
  %905 = load i64*, i64** %3, align 8
  %906 = getelementptr inbounds i64, i64* %905, i64 2
  store i64 %904, i64* %906, align 8
  br label %907

907:                                              ; preds = %899, %892
  %908 = load i64*, i64** %3, align 8
  %909 = getelementptr inbounds i64, i64* %908, i64 3
  %910 = load i64, i64* %909, align 8
  %911 = load i32, i32* %10, align 4
  %912 = call i32 @nonimmediate_operand(i64 %910, i32 %911)
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %922, label %914

914:                                              ; preds = %907
  %915 = load i32, i32* %10, align 4
  %916 = load i64*, i64** %3, align 8
  %917 = getelementptr inbounds i64, i64* %916, i64 3
  %918 = load i64, i64* %917, align 8
  %919 = call i64 @force_reg(i32 %915, i64 %918)
  %920 = load i64*, i64** %3, align 8
  %921 = getelementptr inbounds i64, i64* %920, i64 3
  store i64 %919, i64* %921, align 8
  br label %922

922:                                              ; preds = %914, %907
  %923 = load i64, i64* %9, align 8
  %924 = icmp ne i64 %923, 0
  br i1 %924, label %925, label %945

925:                                              ; preds = %922
  %926 = load i64*, i64** %3, align 8
  %927 = getelementptr inbounds i64, i64* %926, i64 0
  %928 = load i64, i64* %927, align 8
  %929 = load i64*, i64** %3, align 8
  %930 = getelementptr inbounds i64, i64* %929, i64 3
  %931 = load i64, i64* %930, align 8
  %932 = call i64 @reg_overlap_mentioned_p(i64 %928, i64 %931)
  %933 = icmp ne i64 %932, 0
  br i1 %933, label %934, label %945

934:                                              ; preds = %925
  %935 = load i32, i32* %10, align 4
  %936 = call i64 @gen_reg_rtx(i32 %935)
  store i64 %936, i64* %30, align 8
  %937 = load i64, i64* %30, align 8
  %938 = load i64*, i64** %3, align 8
  %939 = getelementptr inbounds i64, i64* %938, i64 3
  %940 = load i64, i64* %939, align 8
  %941 = call i32 @emit_move_insn(i64 %937, i64 %940)
  %942 = load i64, i64* %30, align 8
  %943 = load i64*, i64** %3, align 8
  %944 = getelementptr inbounds i64, i64* %943, i64 3
  store i64 %942, i64* %944, align 8
  br label %945

945:                                              ; preds = %934, %925, %922
  %946 = load i64, i64* %8, align 8
  %947 = icmp ne i64 %946, 0
  br i1 %947, label %948, label %968

948:                                              ; preds = %945
  %949 = load i64*, i64** %3, align 8
  %950 = getelementptr inbounds i64, i64* %949, i64 0
  %951 = load i64, i64* %950, align 8
  %952 = load i64*, i64** %3, align 8
  %953 = getelementptr inbounds i64, i64* %952, i64 2
  %954 = load i64, i64* %953, align 8
  %955 = call i64 @reg_overlap_mentioned_p(i64 %951, i64 %954)
  %956 = icmp ne i64 %955, 0
  br i1 %956, label %957, label %968

957:                                              ; preds = %948
  %958 = load i32, i32* %10, align 4
  %959 = call i64 @gen_reg_rtx(i32 %958)
  store i64 %959, i64* %31, align 8
  %960 = load i64, i64* %31, align 8
  %961 = load i64*, i64** %3, align 8
  %962 = getelementptr inbounds i64, i64* %961, i64 2
  %963 = load i64, i64* %962, align 8
  %964 = call i32 @emit_move_insn(i64 %960, i64 %963)
  %965 = load i64, i64* %31, align 8
  %966 = load i64*, i64** %3, align 8
  %967 = getelementptr inbounds i64, i64* %966, i64 2
  store i64 %965, i64* %967, align 8
  br label %968

968:                                              ; preds = %957, %948, %945
  %969 = load i64*, i64** %3, align 8
  %970 = getelementptr inbounds i64, i64* %969, i64 2
  %971 = load i64, i64* %970, align 8
  %972 = load i32, i32* @VOIDmode, align 4
  %973 = call i32 @register_operand(i64 %971, i32 %972)
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %994, label %975

975:                                              ; preds = %968
  %976 = load i32, i32* %10, align 4
  %977 = load i32, i32* @QImode, align 4
  %978 = icmp eq i32 %976, %977
  br i1 %978, label %986, label %979

979:                                              ; preds = %975
  %980 = load i64*, i64** %3, align 8
  %981 = getelementptr inbounds i64, i64* %980, i64 3
  %982 = load i64, i64* %981, align 8
  %983 = load i32, i32* @VOIDmode, align 4
  %984 = call i32 @register_operand(i64 %982, i32 %983)
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %994, label %986

986:                                              ; preds = %979, %975
  %987 = load i32, i32* %10, align 4
  %988 = load i64*, i64** %3, align 8
  %989 = getelementptr inbounds i64, i64* %988, i64 2
  %990 = load i64, i64* %989, align 8
  %991 = call i64 @force_reg(i32 %987, i64 %990)
  %992 = load i64*, i64** %3, align 8
  %993 = getelementptr inbounds i64, i64* %992, i64 2
  store i64 %991, i64* %993, align 8
  br label %994

994:                                              ; preds = %986, %979, %968
  %995 = load i32, i32* %10, align 4
  %996 = load i32, i32* @QImode, align 4
  %997 = icmp eq i32 %995, %996
  br i1 %997, label %998, label %1013

998:                                              ; preds = %994
  %999 = load i64*, i64** %3, align 8
  %1000 = getelementptr inbounds i64, i64* %999, i64 3
  %1001 = load i64, i64* %1000, align 8
  %1002 = load i32, i32* @VOIDmode, align 4
  %1003 = call i32 @register_operand(i64 %1001, i32 %1002)
  %1004 = icmp ne i32 %1003, 0
  br i1 %1004, label %1013, label %1005

1005:                                             ; preds = %998
  %1006 = load i32, i32* %10, align 4
  %1007 = load i64*, i64** %3, align 8
  %1008 = getelementptr inbounds i64, i64* %1007, i64 3
  %1009 = load i64, i64* %1008, align 8
  %1010 = call i64 @force_reg(i32 %1006, i64 %1009)
  %1011 = load i64*, i64** %3, align 8
  %1012 = getelementptr inbounds i64, i64* %1011, i64 3
  store i64 %1010, i64* %1012, align 8
  br label %1013

1013:                                             ; preds = %1005, %998, %994
  %1014 = load i64, i64* %6, align 8
  %1015 = call i32 @emit_insn(i64 %1014)
  %1016 = load i32, i32* @VOIDmode, align 4
  %1017 = load i64*, i64** %3, align 8
  %1018 = getelementptr inbounds i64, i64* %1017, i64 0
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i32, i32* %10, align 4
  %1021 = load i64, i64* %7, align 8
  %1022 = load i64*, i64** %3, align 8
  %1023 = getelementptr inbounds i64, i64* %1022, i64 2
  %1024 = load i64, i64* %1023, align 8
  %1025 = load i64*, i64** %3, align 8
  %1026 = getelementptr inbounds i64, i64* %1025, i64 3
  %1027 = load i64, i64* %1026, align 8
  %1028 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %1020, i64 %1021, i64 %1024, i64 %1027)
  %1029 = call i64 @gen_rtx_SET(i32 %1016, i64 %1019, i64 %1028)
  %1030 = call i32 @emit_insn(i64 %1029)
  %1031 = load i64, i64* %9, align 8
  %1032 = icmp ne i64 %1031, 0
  br i1 %1032, label %1033, label %1052

1033:                                             ; preds = %1013
  %1034 = load i32, i32* @VOIDmode, align 4
  %1035 = load i64*, i64** %3, align 8
  %1036 = getelementptr inbounds i64, i64* %1035, i64 0
  %1037 = load i64, i64* %1036, align 8
  %1038 = call i64 @copy_rtx(i64 %1037)
  %1039 = load i32, i32* %10, align 4
  %1040 = load i64, i64* %9, align 8
  %1041 = load i64*, i64** %3, align 8
  %1042 = getelementptr inbounds i64, i64* %1041, i64 3
  %1043 = load i64, i64* %1042, align 8
  %1044 = call i64 @copy_rtx(i64 %1043)
  %1045 = load i64*, i64** %3, align 8
  %1046 = getelementptr inbounds i64, i64* %1045, i64 0
  %1047 = load i64, i64* %1046, align 8
  %1048 = call i64 @copy_rtx(i64 %1047)
  %1049 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %1039, i64 %1040, i64 %1044, i64 %1048)
  %1050 = call i64 @gen_rtx_SET(i32 %1034, i64 %1038, i64 %1049)
  %1051 = call i32 @emit_insn(i64 %1050)
  br label %1052

1052:                                             ; preds = %1033, %1013
  %1053 = load i64, i64* %8, align 8
  %1054 = icmp ne i64 %1053, 0
  br i1 %1054, label %1055, label %1074

1055:                                             ; preds = %1052
  %1056 = load i32, i32* @VOIDmode, align 4
  %1057 = load i64*, i64** %3, align 8
  %1058 = getelementptr inbounds i64, i64* %1057, i64 0
  %1059 = load i64, i64* %1058, align 8
  %1060 = call i64 @copy_rtx(i64 %1059)
  %1061 = load i32, i32* %10, align 4
  %1062 = load i64, i64* %8, align 8
  %1063 = load i64*, i64** %3, align 8
  %1064 = getelementptr inbounds i64, i64* %1063, i64 2
  %1065 = load i64, i64* %1064, align 8
  %1066 = call i64 @copy_rtx(i64 %1065)
  %1067 = load i64*, i64** %3, align 8
  %1068 = getelementptr inbounds i64, i64* %1067, i64 0
  %1069 = load i64, i64* %1068, align 8
  %1070 = call i64 @copy_rtx(i64 %1069)
  %1071 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %1061, i64 %1062, i64 %1066, i64 %1070)
  %1072 = call i64 @gen_rtx_SET(i32 %1056, i64 %1060, i64 %1071)
  %1073 = call i32 @emit_insn(i64 %1072)
  br label %1074

1074:                                             ; preds = %1055, %1052
  store i32 1, i32* %2, align 4
  br label %1075

1075:                                             ; preds = %1074, %891, %872, %858, %855, %808, %763, %748, %628, %503, %348
  %1076 = load i32, i32* %2, align 4
  ret i32 %1076
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @ix86_expand_compare(i32, i64*, i64*) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @ix86_expand_carry_flag_compare(i32, i64, i64, i64*) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @ix86_fp_compare_code_to_integer(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @PUT_CODE(i64, i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @gen_x86_movdicc_0_m1_rex64(i64, i64) #1

declare dso_local i64 @gen_x86_movsicc_0_m1(i32, i64) #1

declare dso_local i32 @gen_lowpart(i32, i64) #1

declare dso_local i64 @emit_store_flag(i64, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @expand_simple_unop(i32, i32, i64, i64, i32) #1

declare dso_local i64 @gen_int_mode(i32, i32) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @FLOAT_MODE_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i64) #1

declare dso_local i64 @x86_64_immediate_operand(i64, i32) #1

declare dso_local i64 @gen_rtx_MULT(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @nonimmediate_operand(i64, i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i32 @register_operand(i64, i32) #1

declare dso_local i64 @gen_rtx_IF_THEN_ELSE(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
