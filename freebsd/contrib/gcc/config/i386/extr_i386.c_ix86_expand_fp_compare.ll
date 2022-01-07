; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@TARGET_CMOVE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@UNSPEC_FNSTSW = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@CCNOmode = common dso_local global i32 0, align 4
@TARGET_IEEE_FP = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i64*, i64*)* @ix86_expand_fp_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ix86_expand_fp_compare(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ix86_fp_comparison_cost(i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ix86_fp_compare_mode(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ix86_prepare_fp_compare_args(i32 %25, i64* %8, i64* %9)
  store i32 %26, i32* %7, align 4
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* @NULL_RTX, align 8
  %31 = load i64*, i64** %11, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %6
  %33 = load i64*, i64** %12, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* @NULL_RTX, align 8
  %37 = load i64*, i64** %12, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ix86_fp_comparison_codes(i32 %39, i32* %18, i32* %19, i32* %20)
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @UNKNOWN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i64*, i64** %12, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %128

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @UNKNOWN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i64*, i64** %11, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %128

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ix86_fp_comparison_arithmetics_cost(i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %54
  %60 = load i64, i64* @TARGET_CMOVE, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @gen_rtx_COMPARE(i32 %63, i64 %64, i64 %65)
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* @VOIDmode, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @FLAGS_REG, align 4
  %70 = call i64 @gen_rtx_REG(i32 %68, i32 %69)
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @gen_rtx_SET(i32 %67, i64 %70, i64 %71)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @emit_insn(i64 %73)
  br label %99

75:                                               ; preds = %59
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @gen_rtx_COMPARE(i32 %76, i64 %77, i64 %78)
  store i64 %79, i64* %15, align 8
  %80 = load i32, i32* @HImode, align 4
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @gen_rtvec(i32 1, i64 %81)
  %83 = load i32, i32* @UNSPEC_FNSTSW, align 4
  %84 = call i64 @gen_rtx_UNSPEC(i32 %80, i32 %82, i32 %83)
  store i64 %84, i64* %16, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @HImode, align 4
  %89 = call i64 @gen_reg_rtx(i32 %88)
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %87, %75
  %91 = load i32, i32* @VOIDmode, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i64 @gen_rtx_SET(i32 %91, i64 %92, i64 %93)
  %95 = call i32 @emit_insn(i64 %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @gen_x86_sahf_1(i64 %96)
  %98 = call i32 @emit_insn(i64 %97)
  br label %99

99:                                               ; preds = %90, %62
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %19, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @UNKNOWN, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @VOIDmode, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @FLAGS_REG, align 4
  %110 = call i64 @gen_rtx_REG(i32 %108, i32 %109)
  %111 = load i32, i32* @const0_rtx, align 4
  %112 = call i64 @gen_rtx_fmt_ee(i32 %106, i32 %107, i64 %110, i32 %111)
  %113 = load i64*, i64** %12, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %105, %99
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* @UNKNOWN, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @VOIDmode, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @FLAGS_REG, align 4
  %123 = call i64 @gen_rtx_REG(i32 %121, i32 %122)
  %124 = load i32, i32* @const0_rtx, align 4
  %125 = call i64 @gen_rtx_fmt_ee(i32 %119, i32 %120, i64 %123, i32 %124)
  %126 = load i64*, i64** %11, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %118, %114
  br label %314

128:                                              ; preds = %54, %51, %44
  %129 = load i32, i32* %13, align 4
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @gen_rtx_COMPARE(i32 %129, i64 %130, i64 %131)
  store i64 %132, i64* %15, align 8
  %133 = load i32, i32* @HImode, align 4
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @gen_rtvec(i32 1, i64 %134)
  %136 = load i32, i32* @UNSPEC_FNSTSW, align 4
  %137 = call i64 @gen_rtx_UNSPEC(i32 %133, i32 %135, i32 %136)
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %128
  %141 = load i32, i32* @HImode, align 4
  %142 = call i64 @gen_reg_rtx(i32 %141)
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %140, %128
  %144 = load i32, i32* @VOIDmode, align 4
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i64 @gen_rtx_SET(i32 %144, i64 %145, i64 %146)
  %148 = call i32 @emit_insn(i64 %147)
  %149 = load i32, i32* @CCNOmode, align 4
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %7, align 4
  switch i32 %150, label %311 [
    i32 139, label %151
    i32 131, label %151
    i32 137, label %180
    i32 129, label %180
    i32 140, label %203
    i32 132, label %203
    i32 138, label %226
    i32 130, label %226
    i32 141, label %255
    i32 133, label %255
    i32 135, label %278
    i32 136, label %278
    i32 128, label %301
    i32 134, label %306
  ]

151:                                              ; preds = %143, %143
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 139
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @TARGET_IEEE_FP, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154, %151
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @GEN_INT(i32 69)
  %160 = call i64 @gen_testqi_ext_ccno_0(i64 %158, i32 %159)
  %161 = call i32 @emit_insn(i64 %160)
  store i32 141, i32* %7, align 4
  br label %179

162:                                              ; preds = %154
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @GEN_INT(i32 69)
  %166 = call i64 @gen_andqi_ext_0(i64 %163, i64 %164, i32 %165)
  %167 = call i32 @emit_insn(i64 %166)
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i32, i32* @constm1_rtx, align 4
  %171 = call i64 @gen_addqi_ext_1(i64 %168, i64 %169, i32 %170)
  %172 = call i32 @emit_insn(i64 %171)
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @GEN_INT(i32 68)
  %175 = call i64 @gen_cmpqi_ext_3(i64 %173, i32 %174)
  %176 = call i32 @emit_insn(i64 %175)
  %177 = load i32, i32* @CCmode, align 4
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* @GEU, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %162, %157
  br label %313

180:                                              ; preds = %143, %143
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %181, 137
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load i32, i32* @TARGET_IEEE_FP, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @GEN_INT(i32 69)
  %190 = call i64 @gen_andqi_ext_0(i64 %187, i64 %188, i32 %189)
  %191 = call i32 @emit_insn(i64 %190)
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @GEN_INT(i32 1)
  %194 = call i64 @gen_cmpqi_ext_3(i64 %192, i32 %193)
  %195 = call i32 @emit_insn(i64 %194)
  %196 = load i32, i32* @CCmode, align 4
  store i32 %196, i32* %14, align 4
  store i32 141, i32* %7, align 4
  br label %202

197:                                              ; preds = %183, %180
  %198 = load i64, i64* %10, align 8
  %199 = call i32 @GEN_INT(i32 1)
  %200 = call i64 @gen_testqi_ext_ccno_0(i64 %198, i32 %199)
  %201 = call i32 @emit_insn(i64 %200)
  store i32 135, i32* %7, align 4
  br label %202

202:                                              ; preds = %197, %186
  br label %313

203:                                              ; preds = %143, %143
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 140
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* @TARGET_IEEE_FP, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %206, %203
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @GEN_INT(i32 5)
  %212 = call i64 @gen_testqi_ext_ccno_0(i64 %210, i32 %211)
  %213 = call i32 @emit_insn(i64 %212)
  store i32 141, i32* %7, align 4
  br label %225

214:                                              ; preds = %206
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 @GEN_INT(i32 69)
  %218 = call i64 @gen_andqi_ext_0(i64 %215, i64 %216, i32 %217)
  %219 = call i32 @emit_insn(i64 %218)
  %220 = load i64, i64* %10, align 8
  %221 = load i64, i64* %10, align 8
  %222 = call i32 @GEN_INT(i32 1)
  %223 = call i64 @gen_xorqi_cc_ext_1(i64 %220, i64 %221, i32 %222)
  %224 = call i32 @emit_insn(i64 %223)
  store i32 135, i32* %7, align 4
  br label %225

225:                                              ; preds = %214, %209
  br label %313

226:                                              ; preds = %143, %143
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 138
  br i1 %228, label %229, label %249

229:                                              ; preds = %226
  %230 = load i32, i32* @TARGET_IEEE_FP, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %10, align 8
  %235 = call i32 @GEN_INT(i32 69)
  %236 = call i64 @gen_andqi_ext_0(i64 %233, i64 %234, i32 %235)
  %237 = call i32 @emit_insn(i64 %236)
  %238 = load i64, i64* %10, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i32, i32* @constm1_rtx, align 4
  %241 = call i64 @gen_addqi_ext_1(i64 %238, i64 %239, i32 %240)
  %242 = call i32 @emit_insn(i64 %241)
  %243 = load i64, i64* %10, align 8
  %244 = call i32 @GEN_INT(i32 64)
  %245 = call i64 @gen_cmpqi_ext_3(i64 %243, i32 %244)
  %246 = call i32 @emit_insn(i64 %245)
  %247 = load i32, i32* @CCmode, align 4
  store i32 %247, i32* %14, align 4
  %248 = load i32, i32* @LTU, align 4
  store i32 %248, i32* %7, align 4
  br label %254

249:                                              ; preds = %229, %226
  %250 = load i64, i64* %10, align 8
  %251 = call i32 @GEN_INT(i32 69)
  %252 = call i64 @gen_testqi_ext_ccno_0(i64 %250, i32 %251)
  %253 = call i32 @emit_insn(i64 %252)
  store i32 135, i32* %7, align 4
  br label %254

254:                                              ; preds = %249, %232
  br label %313

255:                                              ; preds = %143, %143
  %256 = load i32, i32* %7, align 4
  %257 = icmp eq i32 %256, 141
  br i1 %257, label %258, label %272

258:                                              ; preds = %255
  %259 = load i32, i32* @TARGET_IEEE_FP, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %258
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* %10, align 8
  %264 = call i32 @GEN_INT(i32 69)
  %265 = call i64 @gen_andqi_ext_0(i64 %262, i64 %263, i32 %264)
  %266 = call i32 @emit_insn(i64 %265)
  %267 = load i64, i64* %10, align 8
  %268 = call i32 @GEN_INT(i32 64)
  %269 = call i64 @gen_cmpqi_ext_3(i64 %267, i32 %268)
  %270 = call i32 @emit_insn(i64 %269)
  %271 = load i32, i32* @CCmode, align 4
  store i32 %271, i32* %14, align 4
  store i32 141, i32* %7, align 4
  br label %277

272:                                              ; preds = %258, %255
  %273 = load i64, i64* %10, align 8
  %274 = call i32 @GEN_INT(i32 64)
  %275 = call i64 @gen_testqi_ext_ccno_0(i64 %273, i32 %274)
  %276 = call i32 @emit_insn(i64 %275)
  store i32 135, i32* %7, align 4
  br label %313

277:                                              ; preds = %261
  br label %313

278:                                              ; preds = %143, %143
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 %279, 135
  br i1 %280, label %281, label %295

281:                                              ; preds = %278
  %282 = load i32, i32* @TARGET_IEEE_FP, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %281
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* %10, align 8
  %287 = call i32 @GEN_INT(i32 69)
  %288 = call i64 @gen_andqi_ext_0(i64 %285, i64 %286, i32 %287)
  %289 = call i32 @emit_insn(i64 %288)
  %290 = load i64, i64* %10, align 8
  %291 = load i64, i64* %10, align 8
  %292 = call i32 @GEN_INT(i32 64)
  %293 = call i64 @gen_xorqi_cc_ext_1(i64 %290, i64 %291, i32 %292)
  %294 = call i32 @emit_insn(i64 %293)
  store i32 135, i32* %7, align 4
  br label %300

295:                                              ; preds = %281, %278
  %296 = load i64, i64* %10, align 8
  %297 = call i32 @GEN_INT(i32 64)
  %298 = call i64 @gen_testqi_ext_ccno_0(i64 %296, i32 %297)
  %299 = call i32 @emit_insn(i64 %298)
  store i32 141, i32* %7, align 4
  br label %300

300:                                              ; preds = %295, %284
  br label %313

301:                                              ; preds = %143
  %302 = load i64, i64* %10, align 8
  %303 = call i32 @GEN_INT(i32 4)
  %304 = call i64 @gen_testqi_ext_ccno_0(i64 %302, i32 %303)
  %305 = call i32 @emit_insn(i64 %304)
  store i32 135, i32* %7, align 4
  br label %313

306:                                              ; preds = %143
  %307 = load i64, i64* %10, align 8
  %308 = call i32 @GEN_INT(i32 4)
  %309 = call i64 @gen_testqi_ext_ccno_0(i64 %307, i32 %308)
  %310 = call i32 @emit_insn(i64 %309)
  store i32 141, i32* %7, align 4
  br label %313

311:                                              ; preds = %143
  %312 = call i32 (...) @gcc_unreachable()
  br label %313

313:                                              ; preds = %311, %306, %301, %300, %277, %272, %254, %225, %202, %179
  br label %314

314:                                              ; preds = %313, %127
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* @VOIDmode, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* @FLAGS_REG, align 4
  %319 = call i64 @gen_rtx_REG(i32 %317, i32 %318)
  %320 = load i32, i32* @const0_rtx, align 4
  %321 = call i64 @gen_rtx_fmt_ee(i32 %315, i32 %316, i64 %319, i32 %320)
  ret i64 %321
}

declare dso_local i32 @ix86_fp_comparison_cost(i32) #1

declare dso_local i32 @ix86_fp_compare_mode(i32) #1

declare dso_local i32 @ix86_prepare_fp_compare_args(i32, i64*, i64*) #1

declare dso_local i32 @ix86_fp_comparison_codes(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ix86_fp_comparison_arithmetics_cost(i32) #1

declare dso_local i64 @gen_rtx_COMPARE(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_x86_sahf_1(i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i32) #1

declare dso_local i64 @gen_testqi_ext_ccno_0(i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @gen_andqi_ext_0(i64, i64, i32) #1

declare dso_local i64 @gen_addqi_ext_1(i64, i64, i32) #1

declare dso_local i64 @gen_cmpqi_ext_3(i64, i32) #1

declare dso_local i64 @gen_xorqi_cc_ext_1(i64, i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
