; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algorithm = type { i32*, i32, i32* }

@alg_zero = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@alg_m = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@add_variant = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4
@negate_variant = common dso_local global i32 0, align 4
@neg_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i64, %struct.algorithm*, i32)* @expand_mult_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_mult_const(i32 %0, i64 %1, i32 %2, i64 %3, %struct.algorithm* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.algorithm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.algorithm* %4, %struct.algorithm** %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @MEM_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @force_reg(i32 %27, i64 %28)
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %26, %6
  %31 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %32 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @alg_zero, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* @const0_rtx, align 8
  %41 = call i64 @copy_to_mode_reg(i32 %39, i64 %40)
  store i64 %41, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %44 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @alg_m, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @copy_to_mode_reg(i32 %51, i64 %52)
  store i64 %53, i64* %15, align 8
  store i32 1, i32* %13, align 4
  br label %56

54:                                               ; preds = %42
  %55 = call i32 (...) @gcc_unreachable()
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %38
  store i32 1, i32* %17, align 4
  br label %58

58:                                               ; preds = %316, %57
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %61 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %319

64:                                               ; preds = %58
  %65 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %66 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %19, align 4
  %72 = load i64, i64* @optimize, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %77

75:                                               ; preds = %64
  %76 = load i64, i64* %15, align 8
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i64 [ 0, %74 ], [ %76, %75 ]
  store i64 %78, i64* %20, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %81 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @add_variant, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i64, i64* @optimize, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %10, align 8
  br label %98

97:                                               ; preds = %92, %88, %85, %77
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i64 [ %96, %95 ], [ 0, %97 ]
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* @optimize, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %105

103:                                              ; preds = %98
  %104 = load i64, i64* %15, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i64 [ 0, %102 ], [ %104, %103 ]
  store i64 %106, i64* %22, align 8
  %107 = load %struct.algorithm*, %struct.algorithm** %11, align 8
  %108 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %290 [
    i32 131, label %114
    i32 132, label %126
    i32 128, label %152
    i32 133, label %178
    i32 129, label %204
    i32 134, label %230
    i32 130, label %257
  ]

114:                                              ; preds = %105
  %115 = load i32, i32* @LSHIFT_EXPR, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* @NULL_TREE, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @build_int_cst(i32 %118, i32 %119)
  %121 = load i64, i64* @NULL_RTX, align 8
  %122 = call i64 @expand_shift(i32 %115, i32 %116, i64 %117, i32 %120, i64 %121, i32 0)
  store i64 %122, i64* %15, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %13, align 4
  %125 = shl i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %292

126:                                              ; preds = %105
  %127 = load i32, i32* @LSHIFT_EXPR, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load i32, i32* @NULL_TREE, align 4
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @build_int_cst(i32 %130, i32 %131)
  %133 = load i64, i64* @NULL_RTX, align 8
  %134 = call i64 @expand_shift(i32 %127, i32 %128, i64 %129, i32 %132, i64 %133, i32 0)
  store i64 %134, i64* %16, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @gen_rtx_PLUS(i32 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %21, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = load i64, i64* %21, align 8
  br label %145

143:                                              ; preds = %126
  %144 = load i64, i64* %22, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i64 [ %142, %141 ], [ %144, %143 ]
  %147 = call i64 @force_operand(i32 %138, i64 %146)
  store i64 %147, i64* %15, align 8
  %148 = load i32, i32* %19, align 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %292

152:                                              ; preds = %105
  %153 = load i32, i32* @LSHIFT_EXPR, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* @NULL_TREE, align 4
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @build_int_cst(i32 %156, i32 %157)
  %159 = load i64, i64* @NULL_RTX, align 8
  %160 = call i64 @expand_shift(i32 %153, i32 %154, i64 %155, i32 %158, i64 %159, i32 0)
  store i64 %160, i64* %16, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i64, i64* %15, align 8
  %163 = load i64, i64* %16, align 8
  %164 = call i32 @gen_rtx_MINUS(i32 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %21, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = load i64, i64* %21, align 8
  br label %171

169:                                              ; preds = %152
  %170 = load i64, i64* %22, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i64 [ %168, %167 ], [ %170, %169 ]
  %173 = call i64 @force_operand(i32 %164, i64 %172)
  store i64 %173, i64* %15, align 8
  %174 = load i32, i32* %19, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* %13, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %292

178:                                              ; preds = %105
  %179 = load i32, i32* @LSHIFT_EXPR, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i64, i64* %15, align 8
  %182 = load i32, i32* @NULL_TREE, align 4
  %183 = load i32, i32* %19, align 4
  %184 = call i32 @build_int_cst(i32 %182, i32 %183)
  %185 = load i64, i64* %20, align 8
  %186 = call i64 @expand_shift(i32 %179, i32 %180, i64 %181, i32 %184, i64 %185, i32 0)
  store i64 %186, i64* %15, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %8, align 8
  %190 = call i32 @gen_rtx_PLUS(i32 %187, i64 %188, i64 %189)
  %191 = load i64, i64* %21, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %178
  %194 = load i64, i64* %21, align 8
  br label %197

195:                                              ; preds = %178
  %196 = load i64, i64* %22, align 8
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i64 [ %194, %193 ], [ %196, %195 ]
  %199 = call i64 @force_operand(i32 %190, i64 %198)
  store i64 %199, i64* %15, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %19, align 4
  %202 = shl i32 %200, %201
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %292

204:                                              ; preds = %105
  %205 = load i32, i32* @LSHIFT_EXPR, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i64, i64* %15, align 8
  %208 = load i32, i32* @NULL_TREE, align 4
  %209 = load i32, i32* %19, align 4
  %210 = call i32 @build_int_cst(i32 %208, i32 %209)
  %211 = load i64, i64* %20, align 8
  %212 = call i64 @expand_shift(i32 %205, i32 %206, i64 %207, i32 %210, i64 %211, i32 0)
  store i64 %212, i64* %15, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load i64, i64* %15, align 8
  %215 = load i64, i64* %8, align 8
  %216 = call i32 @gen_rtx_MINUS(i32 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %21, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i64, i64* %21, align 8
  br label %223

221:                                              ; preds = %204
  %222 = load i64, i64* %22, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  %225 = call i64 @force_operand(i32 %216, i64 %224)
  store i64 %225, i64* %15, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %19, align 4
  %228 = shl i32 %226, %227
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %292

230:                                              ; preds = %105
  %231 = load i32, i32* @LSHIFT_EXPR, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i64, i64* %15, align 8
  %234 = load i32, i32* @NULL_TREE, align 4
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @build_int_cst(i32 %234, i32 %235)
  %237 = load i64, i64* @NULL_RTX, align 8
  %238 = call i64 @expand_shift(i32 %231, i32 %232, i64 %233, i32 %236, i64 %237, i32 0)
  store i64 %238, i64* %16, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %16, align 8
  %242 = call i32 @gen_rtx_PLUS(i32 %239, i64 %240, i64 %241)
  %243 = load i64, i64* %21, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %230
  %246 = load i64, i64* %21, align 8
  br label %249

247:                                              ; preds = %230
  %248 = load i64, i64* %22, align 8
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi i64 [ %246, %245 ], [ %248, %247 ]
  %251 = call i64 @force_operand(i32 %242, i64 %250)
  store i64 %251, i64* %15, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %19, align 4
  %254 = shl i32 %252, %253
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %13, align 4
  br label %292

257:                                              ; preds = %105
  %258 = load i32, i32* @LSHIFT_EXPR, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load i64, i64* %15, align 8
  %261 = load i32, i32* @NULL_TREE, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @build_int_cst(i32 %261, i32 %262)
  %264 = load i64, i64* @NULL_RTX, align 8
  %265 = call i64 @expand_shift(i32 %258, i32 %259, i64 %260, i32 %263, i64 %264, i32 0)
  store i64 %265, i64* %16, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i64, i64* %16, align 8
  %268 = load i64, i64* %15, align 8
  %269 = call i32 @gen_rtx_MINUS(i32 %266, i64 %267, i64 %268)
  %270 = load i64, i64* %21, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %257
  %273 = load i64, i64* %21, align 8
  br label %282

274:                                              ; preds = %257
  %275 = load i64, i64* @optimize, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %280

278:                                              ; preds = %274
  %279 = load i64, i64* %16, align 8
  br label %280

280:                                              ; preds = %278, %277
  %281 = phi i64 [ 0, %277 ], [ %279, %278 ]
  br label %282

282:                                              ; preds = %280, %272
  %283 = phi i64 [ %273, %272 ], [ %281, %280 ]
  %284 = call i64 @force_operand(i32 %269, i64 %283)
  store i64 %284, i64* %15, align 8
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %19, align 4
  %287 = shl i32 %285, %286
  %288 = load i32, i32* %13, align 4
  %289 = sub nsw i32 %287, %288
  store i32 %289, i32* %13, align 4
  br label %292

290:                                              ; preds = %105
  %291 = call i32 (...) @gcc_unreachable()
  br label %292

292:                                              ; preds = %290, %282, %249, %223, %197, %171, %145, %114
  %293 = load i64, i64* %8, align 8
  store i64 %293, i64* %16, align 8
  %294 = load i32, i32* %7, align 4
  store i32 %294, i32* %18, align 4
  %295 = load i64, i64* %15, align 8
  %296 = call i64 @GET_CODE(i64 %295)
  %297 = load i64, i64* @SUBREG, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %292
  %300 = load i64, i64* %15, align 8
  %301 = call i32 @SUBREG_REG(i64 %300)
  %302 = call i32 @GET_MODE(i32 %301)
  store i32 %302, i32* %18, align 4
  %303 = load i32, i32* %18, align 4
  %304 = load i64, i64* %8, align 8
  %305 = call i64 @gen_lowpart(i32 %303, i64 %304)
  store i64 %305, i64* %16, align 8
  br label %306

306:                                              ; preds = %299, %292
  %307 = call i64 (...) @get_last_insn()
  store i64 %307, i64* %14, align 8
  %308 = load i64, i64* %14, align 8
  %309 = load i32, i32* @REG_EQUAL, align 4
  %310 = load i32, i32* %18, align 4
  %311 = load i64, i64* %16, align 8
  %312 = load i32, i32* %13, align 4
  %313 = call i32 @GEN_INT(i32 %312)
  %314 = call i32 @gen_rtx_MULT(i32 %310, i64 %311, i32 %313)
  %315 = call i32 @set_unique_reg_note(i64 %308, i32 %309, i32 %314)
  br label %316

316:                                              ; preds = %306
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %17, align 4
  br label %58

319:                                              ; preds = %58
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @negate_variant, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %319
  %324 = load i32, i32* %13, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %13, align 4
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* @neg_optab, align 4
  %328 = load i64, i64* %15, align 8
  %329 = load i64, i64* %10, align 8
  %330 = call i64 @expand_unop(i32 %326, i32 %327, i64 %328, i64 %329, i32 0)
  store i64 %330, i64* %15, align 8
  br label %345

331:                                              ; preds = %319
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* @add_variant, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %344

335:                                              ; preds = %331
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %7, align 4
  %339 = load i64, i64* %15, align 8
  %340 = load i64, i64* %8, align 8
  %341 = call i32 @gen_rtx_PLUS(i32 %338, i64 %339, i64 %340)
  %342 = load i64, i64* %10, align 8
  %343 = call i64 @force_operand(i32 %341, i64 %342)
  store i64 %343, i64* %15, align 8
  br label %344

344:                                              ; preds = %335, %331
  br label %345

345:                                              ; preds = %344, %323
  %346 = load i32, i32* %7, align 4
  %347 = call i32 @GET_MODE_MASK(i32 %346)
  %348 = load i32, i32* %9, align 4
  %349 = and i32 %348, %347
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @GET_MODE_MASK(i32 %350)
  %352 = load i32, i32* %13, align 4
  %353 = and i32 %352, %351
  store i32 %353, i32* %13, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp eq i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @gcc_assert(i32 %357)
  %359 = load i64, i64* %15, align 8
  ret i64 %359
}

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @copy_to_mode_reg(i32, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i64 @force_operand(i32, i64) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i64, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i32 @set_unique_reg_note(i64, i32, i32) #1

declare dso_local i32 @gen_rtx_MULT(i32, i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @expand_unop(i32, i32, i64, i64, i32) #1

declare dso_local i32 @GET_MODE_MASK(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
