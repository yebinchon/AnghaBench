; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_generate_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_generate_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_compare_fp_p = common dso_local global i64 0, align 8
@CCFPmode = common dso_local global i32 0, align 4
@CCUNSmode = common dso_local global i32 0, align 4
@rs6000_compare_op0 = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@rs6000_compare_op1 = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@TARGET_E500 = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@TARGET_XL_COMPAT = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@TARGET_IEEEQUAD = common dso_local global i32 0, align 4
@TARGET_LONG_DOUBLE_128 = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_SP_TEST = common dso_local global i64 0, align 8
@CCEQmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@flag_finite_math_only = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs6000_generate_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_generate_compare(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
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
  store i32 %0, i32* %2, align 4
  %16 = load i64, i64* @rs6000_compare_fp_p, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @CCFPmode, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 140
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 135
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 142
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 138
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %23, %20
  %33 = load i32, i32* @CCUNSmode, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 144
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 134
  br i1 %39, label %40, label %60

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @rs6000_compare_op0, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @SUBREG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load i32, i32* @rs6000_compare_op1, align 4
  %47 = call i64 @GET_CODE(i32 %46)
  %48 = load i64, i64* @SUBREG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32, i32* @rs6000_compare_op0, align 4
  %52 = call i64 @SUBREG_PROMOTED_UNSIGNED_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @rs6000_compare_op1, align 4
  %56 = call i64 @SUBREG_PROMOTED_UNSIGNED_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @CCUNSmode, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %54, %50, %45, %40, %37
  %61 = load i32, i32* @CCmode, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @gen_reg_rtx(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @TARGET_E500, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %276

69:                                               ; preds = %64
  %70 = load i64, i64* @TARGET_FPRS, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %276, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %276

75:                                               ; preds = %72
  %76 = load i64, i64* @rs6000_compare_fp_p, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %276

78:                                               ; preds = %75
  %79 = load i32, i32* @rs6000_compare_op0, align 4
  %80 = call i32 @GET_MODE(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VOIDmode, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @rs6000_compare_op1, align 4
  %86 = call i32 @GET_MODE(i32 %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32, i32* %2, align 4
  switch i32 %88, label %194 [
    i32 144, label %89
    i32 132, label %89
    i32 134, label %89
    i32 136, label %89
    i32 141, label %124
    i32 140, label %124
    i32 130, label %124
    i32 131, label %124
    i32 143, label %124
    i32 142, label %124
    i32 137, label %159
    i32 135, label %159
    i32 128, label %159
    i32 129, label %159
    i32 139, label %159
    i32 138, label %159
  ]

89:                                               ; preds = %87, %87, %87, %87
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %121 [
    i32 133, label %91
    i32 145, label %106
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @rs6000_compare_op0, align 4
  %97 = load i32, i32* @rs6000_compare_op1, align 4
  %98 = call i32 @gen_tstsfeq_gpr(i32 %95, i32 %96, i32 %97)
  br label %104

99:                                               ; preds = %91
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @rs6000_compare_op0, align 4
  %102 = load i32, i32* @rs6000_compare_op1, align 4
  %103 = call i32 @gen_cmpsfeq_gpr(i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i32 [ %98, %94 ], [ %103, %99 ]
  store i32 %105, i32* %5, align 4
  br label %123

106:                                              ; preds = %89
  %107 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @rs6000_compare_op0, align 4
  %112 = load i32, i32* @rs6000_compare_op1, align 4
  %113 = call i32 @gen_tstdfeq_gpr(i32 %110, i32 %111, i32 %112)
  br label %119

114:                                              ; preds = %106
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @rs6000_compare_op0, align 4
  %117 = load i32, i32* @rs6000_compare_op1, align 4
  %118 = call i32 @gen_cmpdfeq_gpr(i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i32 [ %113, %109 ], [ %118, %114 ]
  store i32 %120, i32* %5, align 4
  br label %123

121:                                              ; preds = %89
  %122 = call i32 (...) @gcc_unreachable()
  br label %123

123:                                              ; preds = %121, %119, %104
  br label %196

124:                                              ; preds = %87, %87, %87, %87, %87, %87
  %125 = load i32, i32* %8, align 4
  switch i32 %125, label %156 [
    i32 133, label %126
    i32 145, label %141
  ]

126:                                              ; preds = %124
  %127 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @rs6000_compare_op0, align 4
  %132 = load i32, i32* @rs6000_compare_op1, align 4
  %133 = call i32 @gen_tstsfgt_gpr(i32 %130, i32 %131, i32 %132)
  br label %139

134:                                              ; preds = %126
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @rs6000_compare_op0, align 4
  %137 = load i32, i32* @rs6000_compare_op1, align 4
  %138 = call i32 @gen_cmpsfgt_gpr(i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i32 [ %133, %129 ], [ %138, %134 ]
  store i32 %140, i32* %5, align 4
  br label %158

141:                                              ; preds = %124
  %142 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @rs6000_compare_op0, align 4
  %147 = load i32, i32* @rs6000_compare_op1, align 4
  %148 = call i32 @gen_tstdfgt_gpr(i32 %145, i32 %146, i32 %147)
  br label %154

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @rs6000_compare_op0, align 4
  %152 = load i32, i32* @rs6000_compare_op1, align 4
  %153 = call i32 @gen_cmpdfgt_gpr(i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i32 [ %148, %144 ], [ %153, %149 ]
  store i32 %155, i32* %5, align 4
  br label %158

156:                                              ; preds = %124
  %157 = call i32 (...) @gcc_unreachable()
  br label %158

158:                                              ; preds = %156, %154, %139
  br label %196

159:                                              ; preds = %87, %87, %87, %87, %87, %87
  %160 = load i32, i32* %8, align 4
  switch i32 %160, label %191 [
    i32 133, label %161
    i32 145, label %176
  ]

161:                                              ; preds = %159
  %162 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @rs6000_compare_op0, align 4
  %167 = load i32, i32* @rs6000_compare_op1, align 4
  %168 = call i32 @gen_tstsflt_gpr(i32 %165, i32 %166, i32 %167)
  br label %174

169:                                              ; preds = %161
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @rs6000_compare_op0, align 4
  %172 = load i32, i32* @rs6000_compare_op1, align 4
  %173 = call i32 @gen_cmpsflt_gpr(i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %164
  %175 = phi i32 [ %168, %164 ], [ %173, %169 ]
  store i32 %175, i32* %5, align 4
  br label %193

176:                                              ; preds = %159
  %177 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @rs6000_compare_op0, align 4
  %182 = load i32, i32* @rs6000_compare_op1, align 4
  %183 = call i32 @gen_tstdflt_gpr(i32 %180, i32 %181, i32 %182)
  br label %189

184:                                              ; preds = %176
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @rs6000_compare_op0, align 4
  %187 = load i32, i32* @rs6000_compare_op1, align 4
  %188 = call i32 @gen_cmpdflt_gpr(i32 %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i32 [ %183, %179 ], [ %188, %184 ]
  store i32 %190, i32* %5, align 4
  br label %193

191:                                              ; preds = %159
  %192 = call i32 (...) @gcc_unreachable()
  br label %193

193:                                              ; preds = %191, %189, %174
  br label %196

194:                                              ; preds = %87
  %195 = call i32 (...) @gcc_unreachable()
  br label %196

196:                                              ; preds = %194, %193, %158, %123
  %197 = load i32, i32* %2, align 4
  %198 = icmp eq i32 %197, 139
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %2, align 4
  %201 = icmp eq i32 %200, 143
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %2, align 4
  %204 = icmp eq i32 %203, 138
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %2, align 4
  %207 = icmp eq i32 %206, 142
  br i1 %207, label %208, label %264

208:                                              ; preds = %205, %202, %199, %196
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @emit_insn(i32 %209)
  %211 = load i32, i32* %2, align 4
  switch i32 %211, label %216 [
    i32 139, label %212
    i32 143, label %213
    i32 138, label %214
    i32 142, label %215
  ]

212:                                              ; preds = %208
  store i32 137, i32* %2, align 4
  br label %218

213:                                              ; preds = %208
  store i32 141, i32* %2, align 4
  br label %218

214:                                              ; preds = %208
  store i32 137, i32* %2, align 4
  br label %218

215:                                              ; preds = %208
  store i32 141, i32* %2, align 4
  br label %218

216:                                              ; preds = %208
  %217 = call i32 (...) @gcc_unreachable()
  br label %218

218:                                              ; preds = %216, %215, %214, %213, %212
  %219 = load i32, i32* @CCFPmode, align 4
  %220 = call i32 @gen_reg_rtx(i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %8, align 4
  switch i32 %221, label %252 [
    i32 133, label %222
    i32 145, label %237
  ]

222:                                              ; preds = %218
  %223 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @rs6000_compare_op0, align 4
  %228 = load i32, i32* @rs6000_compare_op1, align 4
  %229 = call i32 @gen_tstsfeq_gpr(i32 %226, i32 %227, i32 %228)
  br label %235

230:                                              ; preds = %222
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @rs6000_compare_op0, align 4
  %233 = load i32, i32* @rs6000_compare_op1, align 4
  %234 = call i32 @gen_cmpsfeq_gpr(i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %230, %225
  %236 = phi i32 [ %229, %225 ], [ %234, %230 ]
  store i32 %236, i32* %5, align 4
  br label %254

237:                                              ; preds = %218
  %238 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @rs6000_compare_op0, align 4
  %243 = load i32, i32* @rs6000_compare_op1, align 4
  %244 = call i32 @gen_tstdfeq_gpr(i32 %241, i32 %242, i32 %243)
  br label %250

245:                                              ; preds = %237
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @rs6000_compare_op0, align 4
  %248 = load i32, i32* @rs6000_compare_op1, align 4
  %249 = call i32 @gen_cmpdfeq_gpr(i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %240
  %251 = phi i32 [ %244, %240 ], [ %249, %245 ]
  store i32 %251, i32* %5, align 4
  br label %254

252:                                              ; preds = %218
  %253 = call i32 (...) @gcc_unreachable()
  br label %254

254:                                              ; preds = %252, %250, %235
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @emit_insn(i32 %255)
  %257 = load i32, i32* @CCFPmode, align 4
  %258 = call i32 @gen_reg_rtx(i32 %257)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @gen_e500_cr_ior_compare(i32 %259, i32 %260, i32 %261)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %4, align 4
  store i32 144, i32* %2, align 4
  br label %273

264:                                              ; preds = %205
  %265 = load i32, i32* %2, align 4
  %266 = icmp eq i32 %265, 134
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %2, align 4
  %269 = icmp eq i32 %268, 136
  br i1 %269, label %270, label %271

270:                                              ; preds = %267, %264
  store i32 134, i32* %2, align 4
  br label %272

271:                                              ; preds = %267
  store i32 144, i32* %2, align 4
  br label %272

272:                                              ; preds = %271, %270
  br label %273

273:                                              ; preds = %272, %254
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @emit_insn(i32 %274)
  br label %378

276:                                              ; preds = %75, %72, %69, %64
  %277 = load i32, i32* %3, align 4
  %278 = load i32, i32* @CCFPmode, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %336

280:                                              ; preds = %276
  %281 = load i64, i64* @TARGET_XL_COMPAT, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %336

283:                                              ; preds = %280
  %284 = load i32, i32* @rs6000_compare_op0, align 4
  %285 = call i32 @GET_MODE(i32 %284)
  %286 = load i32, i32* @TFmode, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %336

288:                                              ; preds = %283
  %289 = load i32, i32* @TARGET_IEEEQUAD, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %336, label %291

291:                                              ; preds = %288
  %292 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %336

294:                                              ; preds = %291
  %295 = load i64, i64* @TARGET_FPRS, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %336

297:                                              ; preds = %294
  %298 = load i64, i64* @TARGET_LONG_DOUBLE_128, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %336

300:                                              ; preds = %297
  %301 = load i32, i32* @VOIDmode, align 4
  %302 = load i32, i32* @VOIDmode, align 4
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* %3, align 4
  %305 = load i32, i32* @rs6000_compare_op0, align 4
  %306 = load i32, i32* @rs6000_compare_op1, align 4
  %307 = call i32 @gen_rtx_COMPARE(i32 %304, i32 %305, i32 %306)
  %308 = call i32 @gen_rtx_SET(i32 %302, i32 %303, i32 %307)
  %309 = load i32, i32* @VOIDmode, align 4
  %310 = call i32 @gen_rtx_SCRATCH(i32 145)
  %311 = call i32 @gen_rtx_CLOBBER(i32 %309, i32 %310)
  %312 = load i32, i32* @VOIDmode, align 4
  %313 = call i32 @gen_rtx_SCRATCH(i32 145)
  %314 = call i32 @gen_rtx_CLOBBER(i32 %312, i32 %313)
  %315 = load i32, i32* @VOIDmode, align 4
  %316 = call i32 @gen_rtx_SCRATCH(i32 145)
  %317 = call i32 @gen_rtx_CLOBBER(i32 %315, i32 %316)
  %318 = load i32, i32* @VOIDmode, align 4
  %319 = call i32 @gen_rtx_SCRATCH(i32 145)
  %320 = call i32 @gen_rtx_CLOBBER(i32 %318, i32 %319)
  %321 = load i32, i32* @VOIDmode, align 4
  %322 = call i32 @gen_rtx_SCRATCH(i32 145)
  %323 = call i32 @gen_rtx_CLOBBER(i32 %321, i32 %322)
  %324 = load i32, i32* @VOIDmode, align 4
  %325 = call i32 @gen_rtx_SCRATCH(i32 145)
  %326 = call i32 @gen_rtx_CLOBBER(i32 %324, i32 %325)
  %327 = load i32, i32* @VOIDmode, align 4
  %328 = call i32 @gen_rtx_SCRATCH(i32 145)
  %329 = call i32 @gen_rtx_CLOBBER(i32 %327, i32 %328)
  %330 = load i32, i32* @VOIDmode, align 4
  %331 = call i32 @gen_rtx_SCRATCH(i32 145)
  %332 = call i32 @gen_rtx_CLOBBER(i32 %330, i32 %331)
  %333 = call i32 @gen_rtvec(i32 9, i32 %308, i32 %311, i32 %314, i32 %317, i32 %320, i32 %323, i32 %326, i32 %329, i32 %332)
  %334 = call i32 @gen_rtx_PARALLEL(i32 %301, i32 %333)
  %335 = call i32 @emit_insn(i32 %334)
  br label %377

336:                                              ; preds = %297, %294, %291, %288, %283, %280, %276
  %337 = load i32, i32* @rs6000_compare_op1, align 4
  %338 = call i64 @GET_CODE(i32 %337)
  %339 = load i64, i64* @UNSPEC, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %367

341:                                              ; preds = %336
  %342 = load i32, i32* @rs6000_compare_op1, align 4
  %343 = call i64 @XINT(i32 %342, i32 1)
  %344 = load i64, i64* @UNSPEC_SP_TEST, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %367

346:                                              ; preds = %341
  %347 = load i32, i32* @rs6000_compare_op1, align 4
  %348 = call i32 @XVECEXP(i32 %347, i32 0, i32 0)
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* @CCEQmode, align 4
  store i32 %349, i32* %3, align 4
  %350 = load i32, i32* @CCEQmode, align 4
  %351 = call i32 @gen_reg_rtx(i32 %350)
  store i32 %351, i32* %4, align 4
  %352 = load i64, i64* @TARGET_64BIT, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %346
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* @rs6000_compare_op0, align 4
  %357 = load i32, i32* %9, align 4
  %358 = call i32 @gen_stack_protect_testdi(i32 %355, i32 %356, i32 %357)
  %359 = call i32 @emit_insn(i32 %358)
  br label %366

360:                                              ; preds = %346
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @rs6000_compare_op0, align 4
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @gen_stack_protect_testsi(i32 %361, i32 %362, i32 %363)
  %365 = call i32 @emit_insn(i32 %364)
  br label %366

366:                                              ; preds = %360, %354
  br label %376

367:                                              ; preds = %341, %336
  %368 = load i32, i32* @VOIDmode, align 4
  %369 = load i32, i32* %4, align 4
  %370 = load i32, i32* %3, align 4
  %371 = load i32, i32* @rs6000_compare_op0, align 4
  %372 = load i32, i32* @rs6000_compare_op1, align 4
  %373 = call i32 @gen_rtx_COMPARE(i32 %370, i32 %371, i32 %372)
  %374 = call i32 @gen_rtx_SET(i32 %368, i32 %369, i32 %373)
  %375 = call i32 @emit_insn(i32 %374)
  br label %376

376:                                              ; preds = %367, %366
  br label %377

377:                                              ; preds = %376, %300
  br label %378

378:                                              ; preds = %377, %273
  %379 = load i64, i64* @rs6000_compare_fp_p, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %456

381:                                              ; preds = %378
  %382 = load i32, i32* @flag_finite_math_only, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %456, label %384

384:                                              ; preds = %381
  %385 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  %388 = load i64, i64* @TARGET_E500, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %387
  %391 = load i64, i64* @TARGET_FPRS, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %456

393:                                              ; preds = %390, %387, %384
  %394 = load i32, i32* %2, align 4
  %395 = icmp eq i32 %394, 139
  br i1 %395, label %411, label %396

396:                                              ; preds = %393
  %397 = load i32, i32* %2, align 4
  %398 = icmp eq i32 %397, 143
  br i1 %398, label %411, label %399

399:                                              ; preds = %396
  %400 = load i32, i32* %2, align 4
  %401 = icmp eq i32 %400, 132
  br i1 %401, label %411, label %402

402:                                              ; preds = %399
  %403 = load i32, i32* %2, align 4
  %404 = icmp eq i32 %403, 136
  br i1 %404, label %411, label %405

405:                                              ; preds = %402
  %406 = load i32, i32* %2, align 4
  %407 = icmp eq i32 %406, 130
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = load i32, i32* %2, align 4
  %410 = icmp eq i32 %409, 128
  br i1 %410, label %411, label %456

411:                                              ; preds = %408, %405, %402, %399, %396, %393
  %412 = load i32, i32* @CCEQmode, align 4
  %413 = call i32 @gen_reg_rtx(i32 %412)
  store i32 %413, i32* %15, align 4
  %414 = load i32, i32* %2, align 4
  switch i32 %414, label %424 [
    i32 139, label %415
    i32 143, label %416
    i32 132, label %417
    i32 136, label %419
    i32 130, label %420
    i32 128, label %422
  ]

415:                                              ; preds = %411
  store i32 137, i32* %10, align 4
  store i32 144, i32* %11, align 4
  br label %426

416:                                              ; preds = %411
  store i32 141, i32* %10, align 4
  store i32 144, i32* %11, align 4
  br label %426

417:                                              ; preds = %411
  %418 = load i32, i32* @UNORDERED, align 4
  store i32 %418, i32* %10, align 4
  store i32 144, i32* %11, align 4
  br label %426

419:                                              ; preds = %411
  store i32 137, i32* %10, align 4
  store i32 141, i32* %11, align 4
  br label %426

420:                                              ; preds = %411
  %421 = load i32, i32* @UNORDERED, align 4
  store i32 %421, i32* %10, align 4
  store i32 141, i32* %11, align 4
  br label %426

422:                                              ; preds = %411
  %423 = load i32, i32* @UNORDERED, align 4
  store i32 %423, i32* %10, align 4
  store i32 137, i32* %11, align 4
  br label %426

424:                                              ; preds = %411
  %425 = call i32 (...) @gcc_unreachable()
  br label %426

426:                                              ; preds = %424, %422, %420, %419, %417, %416, %415
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %3, align 4
  %429 = call i32 @validate_condition_mode(i32 %427, i32 %428)
  %430 = load i32, i32* %11, align 4
  %431 = load i32, i32* %3, align 4
  %432 = call i32 @validate_condition_mode(i32 %430, i32 %431)
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* @SImode, align 4
  %435 = load i32, i32* %4, align 4
  %436 = load i32, i32* @const0_rtx, align 4
  %437 = call i32 @gen_rtx_fmt_ee(i32 %433, i32 %434, i32 %435, i32 %436)
  store i32 %437, i32* %12, align 4
  %438 = load i32, i32* %11, align 4
  %439 = load i32, i32* @SImode, align 4
  %440 = load i32, i32* %4, align 4
  %441 = load i32, i32* @const0_rtx, align 4
  %442 = call i32 @gen_rtx_fmt_ee(i32 %438, i32 %439, i32 %440, i32 %441)
  store i32 %442, i32* %13, align 4
  %443 = load i32, i32* @CCEQmode, align 4
  %444 = load i32, i32* @SImode, align 4
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* %13, align 4
  %447 = call i32 @gen_rtx_IOR(i32 %444, i32 %445, i32 %446)
  %448 = load i32, i32* @const_true_rtx, align 4
  %449 = call i32 @gen_rtx_COMPARE(i32 %443, i32 %447, i32 %448)
  store i32 %449, i32* %14, align 4
  %450 = load i32, i32* @VOIDmode, align 4
  %451 = load i32, i32* %15, align 4
  %452 = load i32, i32* %14, align 4
  %453 = call i32 @gen_rtx_SET(i32 %450, i32 %451, i32 %452)
  %454 = call i32 @emit_insn(i32 %453)
  %455 = load i32, i32* %15, align 4
  store i32 %455, i32* %4, align 4
  store i32 144, i32* %2, align 4
  br label %456

456:                                              ; preds = %426, %408, %390, %381, %378
  %457 = load i32, i32* %2, align 4
  %458 = load i32, i32* %4, align 4
  %459 = call i32 @GET_MODE(i32 %458)
  %460 = call i32 @validate_condition_mode(i32 %457, i32 %459)
  %461 = load i32, i32* %2, align 4
  %462 = load i32, i32* @VOIDmode, align 4
  %463 = load i32, i32* %4, align 4
  %464 = load i32, i32* @const0_rtx, align 4
  %465 = call i32 @gen_rtx_fmt_ee(i32 %461, i32 %462, i32 %463, i32 %464)
  ret i32 %465
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SUBREG_PROMOTED_UNSIGNED_P(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_tstsfeq_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpsfeq_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_tstdfeq_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpdfeq_gpr(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_tstsfgt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpsfgt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_tstdfgt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpdfgt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_tstsflt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpsflt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_tstdflt_gpr(i32, i32, i32) #1

declare dso_local i32 @gen_cmpdflt_gpr(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_e500_cr_ior_compare(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_COMPARE(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_SCRATCH(i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gen_stack_protect_testdi(i32, i32, i32) #1

declare dso_local i32 @gen_stack_protect_testsi(i32, i32, i32) #1

declare dso_local i32 @validate_condition_mode(i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_IOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
