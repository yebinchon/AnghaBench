; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_extract_muldiv_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_extract_muldiv_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64)* }

@NULL_TREE = common dso_local global i64 0, align 8
@tcc_unary = common dso_local global i64 0, align 8
@tcc_binary = common dso_local global i64 0, align 8
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@size_one_node = common dso_local global i64 0, align 8
@CEIL_MOD_EXPR = common dso_local global i32 0, align 4
@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4
@ROUND_MOD_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64, i32*)* @extract_muldiv_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_muldiv_1(i64 %0, i64 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @TREE_CODE(i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @TYPE_MODE(i64 %29)
  %31 = call i64 @GET_MODE_SIZE(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @TYPE_MODE(i64 %32)
  %34 = call i64 @GET_MODE_SIZE(i32 %33)
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %10, align 8
  br label %40

38:                                               ; preds = %28, %5
  %39 = load i64, i64* %12, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load i64, i64* @NULL_TREE, align 8
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* @NULL_TREE, align 8
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @integer_zerop(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i64, i64* @NULL_TREE, align 8
  store i64 %52, i64* %6, align 8
  br label %714

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @TREE_CODE_CLASS(i32 %54)
  %56 = load i64, i64* @tcc_unary, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @TREE_OPERAND(i64 %59, i32 0)
  store i64 %60, i64* %18, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @TREE_CODE_CLASS(i32 %62)
  %64 = load i64, i64* @tcc_binary, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @TREE_OPERAND(i64 %67, i32 0)
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @TREE_OPERAND(i64 %69, i32 1)
  store i64 %70, i64* %19, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %712 [
    i32 140, label %73
    i32 143, label %93
    i32 133, label %93
    i32 132, label %93
    i32 145, label %186
    i32 134, label %222
    i32 136, label %238
    i32 138, label %238
    i32 139, label %284
    i32 129, label %284
    i32 131, label %335
    i32 137, label %335
    i32 135, label %510
    i32 128, label %544
    i32 144, label %544
    i32 141, label %544
    i32 130, label %544
    i32 142, label %544
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 135
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @const_binop(i32 %77, i64 %78, i64 %79, i32 0)
  %81 = call i64 @integer_zerop(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @fold_convert(i64 %85, i64 %86)
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @fold_convert(i64 %88, i64 %89)
  %91 = call i64 @const_binop(i32 %84, i64 %87, i64 %90, i32 0)
  store i64 %91, i64* %6, align 8
  br label %714

92:                                               ; preds = %76
  br label %713

93:                                               ; preds = %71, %71, %71
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @COMPARISON_CLASS_P(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %18, align 8
  %99 = call i32 @UNARY_CLASS_P(i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @BINARY_CLASS_P(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @EXPRESSION_CLASS_P(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %154

109:                                              ; preds = %105, %101, %97, %93
  %110 = load i64, i64* %18, align 8
  %111 = call i64 @TREE_TYPE(i64 %110)
  %112 = call i32 @TYPE_UNSIGNED(i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load i64, i64* %18, align 8
  %116 = call i64 @TREE_TYPE(i64 %115)
  %117 = call i32 @TREE_CODE(i64 %116)
  %118 = load i32, i32* @INTEGER_TYPE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i64, i64* %18, align 8
  %122 = call i64 @TREE_TYPE(i64 %121)
  %123 = call i32 @TYPE_IS_SIZETYPE(i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120, %114
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @TYPE_MODE(i64 %126)
  %128 = call i64 @GET_MODE_SIZE(i32 %127)
  %129 = load i64, i64* %18, align 8
  %130 = call i64 @TREE_TYPE(i64 %129)
  %131 = call i32 @TYPE_MODE(i64 %130)
  %132 = call i64 @GET_MODE_SIZE(i32 %131)
  %133 = icmp sgt i64 %128, %132
  br i1 %133, label %153, label %134

134:                                              ; preds = %125, %120, %109
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @TYPE_MODE(i64 %135)
  %137 = call i64 @GET_MODE_SIZE(i32 %136)
  %138 = load i64, i64* %18, align 8
  %139 = call i64 @TREE_TYPE(i64 %138)
  %140 = call i32 @TYPE_MODE(i64 %139)
  %141 = call i64 @GET_MODE_SIZE(i32 %140)
  %142 = icmp slt i64 %137, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 135
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @TYPE_UNSIGNED(i64 %147)
  %149 = load i64, i64* %18, align 8
  %150 = call i64 @TREE_TYPE(i64 %149)
  %151 = call i32 @TYPE_UNSIGNED(i64 %150)
  %152 = icmp ne i32 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146, %134, %125
  br label %713

154:                                              ; preds = %146, %143, %105
  %155 = load i64, i64* %18, align 8
  %156 = call i64 @TREE_TYPE(i64 %155)
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @fold_convert(i64 %156, i64 %157)
  store i64 %158, i64* %16, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  %161 = load i64, i64* %16, align 8
  %162 = call i32 @TREE_CODE(i64 %161)
  %163 = icmp eq i32 %162, 140
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load i64, i64* %16, align 8
  %166 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %18, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 135
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i64, i64* %14, align 8
  br label %178

176:                                              ; preds = %168
  %177 = load i64, i64* @NULL_TREE, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  %180 = load i32*, i32** %11, align 8
  %181 = call i64 @extract_muldiv(i64 %169, i64 %170, i32 %171, i64 %179, i32* %180)
  store i64 %181, i64* %15, align 8
  %182 = icmp ne i64 0, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* %15, align 8
  store i64 %184, i64* %6, align 8
  br label %714

185:                                              ; preds = %178, %164, %160, %154
  br label %713

186:                                              ; preds = %71
  %187 = load i64, i64* %14, align 8
  %188 = call i32 @TYPE_UNSIGNED(i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %216

190:                                              ; preds = %186
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @TYPE_UNSIGNED(i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %216, label %194

194:                                              ; preds = %190
  %195 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %196 = load i64, i64* %14, align 8
  %197 = call i64 %195(i64 %196)
  store i64 %197, i64* %21, align 8
  %198 = load i64, i64* %18, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load i64, i64* %21, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = call i64 @extract_muldiv(i64 %198, i64 %199, i32 %200, i64 %201, i32* %202)
  store i64 %203, i64* %15, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = load i64, i64* %21, align 8
  %208 = load i64, i64* %21, align 8
  %209 = load i64, i64* %15, align 8
  %210 = call i64 @fold_convert(i64 %208, i64 %209)
  %211 = call i64 @fold_build1(i32 %206, i64 %207, i64 %210)
  store i64 %211, i64* %15, align 8
  %212 = load i64, i64* %14, align 8
  %213 = load i64, i64* %15, align 8
  %214 = call i64 @fold_convert(i64 %212, i64 %213)
  store i64 %214, i64* %6, align 8
  br label %714

215:                                              ; preds = %194
  br label %713

216:                                              ; preds = %190, %186
  %217 = load i64, i64* %8, align 8
  %218 = call i32 @tree_int_cst_sgn(i64 %217)
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %713

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %71, %221
  %223 = load i64, i64* %18, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i64, i64* %10, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = call i64 @extract_muldiv(i64 %223, i64 %224, i32 %225, i64 %226, i32* %227)
  store i64 %228, i64* %15, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load i32, i32* %13, align 4
  %232 = load i64, i64* %14, align 8
  %233 = load i64, i64* %14, align 8
  %234 = load i64, i64* %15, align 8
  %235 = call i64 @fold_convert(i64 %233, i64 %234)
  %236 = call i64 @fold_build1(i32 %231, i64 %232, i64 %235)
  store i64 %236, i64* %6, align 8
  br label %714

237:                                              ; preds = %222
  br label %713

238:                                              ; preds = %71, %71
  %239 = load i64, i64* %14, align 8
  %240 = call i32 @TYPE_UNSIGNED(i64 %239)
  %241 = load i64, i64* %12, align 8
  %242 = call i32 @TYPE_UNSIGNED(i64 %241)
  %243 = icmp ne i32 %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %713

245:                                              ; preds = %238
  store i32 0, i32* %20, align 4
  %246 = load i64, i64* %18, align 8
  %247 = load i64, i64* %8, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i64, i64* %10, align 8
  %250 = call i64 @extract_muldiv(i64 %246, i64 %247, i32 %248, i64 %249, i32* %20)
  store i64 %250, i64* %15, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %283

252:                                              ; preds = %245
  %253 = load i64, i64* %19, align 8
  %254 = load i64, i64* %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i64, i64* %10, align 8
  %257 = call i64 @extract_muldiv(i64 %253, i64 %254, i32 %255, i64 %256, i32* %20)
  store i64 %257, i64* %16, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %252
  %260 = load i64, i64* %8, align 8
  %261 = call i32 @tree_int_cst_sgn(i64 %260)
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load i32, i32* %13, align 4
  %265 = icmp eq i32 %264, 136
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i32 138, i32 136
  store i32 %267, i32* %13, align 4
  br label %268

268:                                              ; preds = %263, %259
  %269 = load i32, i32* %20, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32*, i32** %11, align 8
  store i32 1, i32* %272, align 4
  br label %273

273:                                              ; preds = %271, %268
  %274 = load i32, i32* %13, align 4
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* %14, align 8
  %277 = load i64, i64* %15, align 8
  %278 = call i64 @fold_convert(i64 %276, i64 %277)
  %279 = load i64, i64* %14, align 8
  %280 = load i64, i64* %16, align 8
  %281 = call i64 @fold_convert(i64 %279, i64 %280)
  %282 = call i64 @fold_build2(i32 %274, i64 %275, i64 %278, i64 %281)
  store i64 %282, i64* %6, align 8
  br label %714

283:                                              ; preds = %252, %245
  br label %713

284:                                              ; preds = %71, %71
  %285 = load i64, i64* %19, align 8
  %286 = call i32 @TREE_CODE(i64 %285)
  %287 = icmp eq i32 %286, 140
  br i1 %287, label %288, label %334

288:                                              ; preds = %284
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 129
  br i1 %290, label %296, label %291

291:                                              ; preds = %288
  %292 = load i64, i64* %18, align 8
  %293 = call i64 @TREE_TYPE(i64 %292)
  %294 = call i32 @TYPE_UNSIGNED(i64 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %334

296:                                              ; preds = %291, %288
  %297 = load i64, i64* @size_one_node, align 8
  %298 = call i64 @TREE_TYPE(i64 %297)
  %299 = call i32 @TYPE_PRECISION(i64 %298)
  %300 = load i64, i64* %19, align 8
  %301 = call i32 @TREE_INT_CST_LOW(i64 %300)
  %302 = icmp sgt i32 %299, %301
  br i1 %302, label %303, label %334

303:                                              ; preds = %296
  %304 = load i64, i64* %19, align 8
  %305 = call i32 @TREE_INT_CST_HIGH(i64 %304)
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %334

307:                                              ; preds = %303
  %308 = load i64, i64* %14, align 8
  %309 = load i64, i64* @size_one_node, align 8
  %310 = load i64, i64* %19, align 8
  %311 = call i64 @const_binop(i32 139, i64 %309, i64 %310, i32 0)
  %312 = call i64 @fold_convert(i64 %308, i64 %311)
  store i64 %312, i64* %15, align 8
  %313 = icmp ne i64 0, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %307
  %315 = load i64, i64* %15, align 8
  %316 = call i32 @TREE_OVERFLOW(i64 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %334, label %318

318:                                              ; preds = %314
  %319 = load i32, i32* %13, align 4
  %320 = icmp eq i32 %319, 139
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 135, i32 141
  %323 = load i64, i64* %14, align 8
  %324 = load i64, i64* %14, align 8
  %325 = load i64, i64* %18, align 8
  %326 = call i64 @fold_convert(i64 %324, i64 %325)
  %327 = load i64, i64* %15, align 8
  %328 = call i64 @build2(i32 %322, i64 %323, i64 %326, i64 %327)
  %329 = load i64, i64* %8, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load i64, i64* %10, align 8
  %332 = load i32*, i32** %11, align 8
  %333 = call i64 @extract_muldiv(i64 %328, i64 %329, i32 %330, i64 %331, i32* %332)
  store i64 %333, i64* %6, align 8
  br label %714

334:                                              ; preds = %314, %307, %303, %296, %291, %284
  br label %713

335:                                              ; preds = %71, %71
  store i32 0, i32* %20, align 4
  %336 = load i64, i64* %18, align 8
  %337 = load i64, i64* %8, align 8
  %338 = load i32, i32* %9, align 4
  %339 = load i64, i64* %10, align 8
  %340 = call i64 @extract_muldiv(i64 %336, i64 %337, i32 %338, i64 %339, i32* %20)
  store i64 %340, i64* %15, align 8
  %341 = load i64, i64* %19, align 8
  %342 = load i64, i64* %8, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load i64, i64* %10, align 8
  %345 = call i64 @extract_muldiv(i64 %341, i64 %342, i32 %343, i64 %344, i32* %20)
  store i64 %345, i64* %16, align 8
  %346 = load i64, i64* %15, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %381

348:                                              ; preds = %335
  %349 = load i64, i64* %16, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %381

351:                                              ; preds = %348
  %352 = load i32, i32* %9, align 4
  %353 = icmp eq i32 %352, 135
  br i1 %353, label %366, label %354

354:                                              ; preds = %351
  %355 = load i64, i64* %14, align 8
  %356 = load i64, i64* %18, align 8
  %357 = load i64, i64* %8, align 8
  %358 = call i32 @multiple_of_p(i64 %355, i64 %356, i64 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %381

360:                                              ; preds = %354
  %361 = load i64, i64* %14, align 8
  %362 = load i64, i64* %19, align 8
  %363 = load i64, i64* %8, align 8
  %364 = call i32 @multiple_of_p(i64 %361, i64 %362, i64 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %360, %351
  %367 = load i32, i32* %20, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = load i32*, i32** %11, align 8
  store i32 1, i32* %370, align 4
  br label %371

371:                                              ; preds = %369, %366
  %372 = load i32, i32* %13, align 4
  %373 = load i64, i64* %14, align 8
  %374 = load i64, i64* %14, align 8
  %375 = load i64, i64* %15, align 8
  %376 = call i64 @fold_convert(i64 %374, i64 %375)
  %377 = load i64, i64* %14, align 8
  %378 = load i64, i64* %16, align 8
  %379 = call i64 @fold_convert(i64 %377, i64 %378)
  %380 = call i64 @fold_build2(i32 %372, i64 %373, i64 %376, i64 %379)
  store i64 %380, i64* %6, align 8
  br label %714

381:                                              ; preds = %360, %354, %348, %335
  %382 = load i32, i32* %13, align 4
  %383 = icmp eq i32 %382, 137
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  store i32 131, i32* %13, align 4
  %385 = load i64, i64* %19, align 8
  %386 = call i64 @negate_expr(i64 %385)
  store i64 %386, i64* %19, align 8
  br label %387

387:                                              ; preds = %384, %381
  %388 = load i64, i64* %19, align 8
  %389 = call i32 @TREE_CODE(i64 %388)
  %390 = icmp ne i32 %389, 140
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  br label %713

392:                                              ; preds = %387
  %393 = load i64, i64* %19, align 8
  %394 = call i32 @tree_int_cst_sgn(i64 %393)
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = load i64, i64* %8, align 8
  %398 = call i32 @tree_int_cst_sgn(i64 %397)
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %423

400:                                              ; preds = %396, %392
  %401 = load i32, i32* %9, align 4
  %402 = icmp eq i32 %401, 144
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 141, i32* %9, align 4
  br label %422

404:                                              ; preds = %400
  %405 = load i32, i32* %9, align 4
  %406 = icmp eq i32 %405, 141
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 144, i32* %9, align 4
  br label %421

408:                                              ; preds = %404
  %409 = load i32, i32* %9, align 4
  %410 = icmp ne i32 %409, 135
  br i1 %410, label %411, label %420

411:                                              ; preds = %408
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* @CEIL_MOD_EXPR, align 4
  %414 = icmp ne i32 %412, %413
  br i1 %414, label %415, label %420

415:                                              ; preds = %411
  %416 = load i32, i32* %9, align 4
  %417 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  br label %713

420:                                              ; preds = %415, %411, %408
  br label %421

421:                                              ; preds = %420, %407
  br label %422

422:                                              ; preds = %421, %403
  br label %423

423:                                              ; preds = %422, %396
  %424 = load i32, i32* %9, align 4
  %425 = icmp eq i32 %424, 135
  br i1 %425, label %433, label %426

426:                                              ; preds = %423
  %427 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %428 = load i64, i64* %19, align 8
  %429 = load i64, i64* %8, align 8
  %430 = call i64 @const_binop(i32 %427, i64 %428, i64 %429, i32 0)
  %431 = call i64 @integer_zerop(i64 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %454

433:                                              ; preds = %426, %423
  %434 = load i32, i32* %9, align 4
  %435 = load i64, i64* %14, align 8
  %436 = load i64, i64* %19, align 8
  %437 = call i64 @fold_convert(i64 %435, i64 %436)
  %438 = load i64, i64* %14, align 8
  %439 = load i64, i64* %8, align 8
  %440 = call i64 @fold_convert(i64 %438, i64 %439)
  %441 = call i64 @const_binop(i32 %434, i64 %437, i64 %440, i32 0)
  store i64 %441, i64* %19, align 8
  %442 = load i64, i64* %19, align 8
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %452, label %444

444:                                              ; preds = %433
  %445 = load i64, i64* %19, align 8
  %446 = call i32 @TREE_OVERFLOW(i64 %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %444
  %449 = load i64, i64* %14, align 8
  %450 = call i32 @TYPE_OVERFLOW_WRAPS(i64 %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %448, %433
  br label %713

453:                                              ; preds = %448, %444
  br label %455

454:                                              ; preds = %426
  br label %713

455:                                              ; preds = %453
  %456 = load i64, i64* %14, align 8
  %457 = call i32 @TYPE_UNSIGNED(i64 %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %473

459:                                              ; preds = %455
  %460 = load i64, i64* %14, align 8
  %461 = call i32 @TREE_CODE(i64 %460)
  %462 = load i32, i32* @INTEGER_TYPE, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %459
  %465 = load i64, i64* %14, align 8
  %466 = call i32 @TYPE_IS_SIZETYPE(i64 %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %464, %459
  %469 = load i64, i64* %14, align 8
  %470 = load i64, i64* %12, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  br label %713

473:                                              ; preds = %468, %464, %455
  %474 = load i64, i64* %15, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %492

476:                                              ; preds = %473
  %477 = load i64, i64* %15, align 8
  %478 = call i32 @TREE_CODE(i64 %477)
  %479 = load i32, i32* %9, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %484, label %481

481:                                              ; preds = %476
  %482 = load i32, i32* %9, align 4
  %483 = icmp eq i32 %482, 135
  br i1 %483, label %484, label %492

484:                                              ; preds = %481, %476
  %485 = load i32, i32* %13, align 4
  %486 = load i64, i64* %14, align 8
  %487 = load i64, i64* %14, align 8
  %488 = load i64, i64* %15, align 8
  %489 = call i64 @fold_convert(i64 %487, i64 %488)
  %490 = load i64, i64* %19, align 8
  %491 = call i64 @fold_build2(i32 %485, i64 %486, i64 %489, i64 %490)
  store i64 %491, i64* %6, align 8
  br label %714

492:                                              ; preds = %481, %473
  %493 = load i32, i32* %9, align 4
  %494 = icmp eq i32 %493, 135
  br i1 %494, label %495, label %509

495:                                              ; preds = %492
  %496 = load i32, i32* %13, align 4
  %497 = load i64, i64* %14, align 8
  %498 = load i32, i32* %9, align 4
  %499 = load i64, i64* %14, align 8
  %500 = load i64, i64* %14, align 8
  %501 = load i64, i64* %18, align 8
  %502 = call i64 @fold_convert(i64 %500, i64 %501)
  %503 = load i64, i64* %14, align 8
  %504 = load i64, i64* %8, align 8
  %505 = call i64 @fold_convert(i64 %503, i64 %504)
  %506 = call i64 @fold_build2(i32 %498, i64 %499, i64 %502, i64 %505)
  %507 = load i64, i64* %19, align 8
  %508 = call i64 @fold_build2(i32 %496, i64 %497, i64 %506, i64 %507)
  store i64 %508, i64* %6, align 8
  br label %714

509:                                              ; preds = %492
  br label %713

510:                                              ; preds = %71
  %511 = load i32, i32* %9, align 4
  %512 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %526, label %514

514:                                              ; preds = %510
  %515 = load i32, i32* %9, align 4
  %516 = load i32, i32* @CEIL_MOD_EXPR, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %526, label %518

518:                                              ; preds = %514
  %519 = load i32, i32* %9, align 4
  %520 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %521 = icmp eq i32 %519, %520
  br i1 %521, label %526, label %522

522:                                              ; preds = %518
  %523 = load i32, i32* %9, align 4
  %524 = load i32, i32* @ROUND_MOD_EXPR, align 4
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %526, label %543

526:                                              ; preds = %522, %518, %514, %510
  %527 = load i64, i64* %7, align 8
  %528 = call i64 @TREE_OPERAND(i64 %527, i32 1)
  %529 = call i32 @TREE_CODE(i64 %528)
  %530 = icmp eq i32 %529, 140
  br i1 %530, label %531, label %543

531:                                              ; preds = %526
  %532 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %533 = load i64, i64* %19, align 8
  %534 = load i64, i64* %8, align 8
  %535 = call i64 @const_binop(i32 %532, i64 %533, i64 %534, i32 0)
  %536 = call i64 @integer_zerop(i64 %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %531
  %539 = load i64, i64* %12, align 8
  %540 = load i32, i32* @integer_zero_node, align 4
  %541 = load i64, i64* %18, align 8
  %542 = call i64 @omit_one_operand(i64 %539, i32 %540, i64 %541)
  store i64 %542, i64* %6, align 8
  br label %714

543:                                              ; preds = %531, %526, %522
  br label %544

544:                                              ; preds = %71, %71, %71, %71, %71, %543
  %545 = load i32, i32* %17, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %565

547:                                              ; preds = %544
  %548 = load i64, i64* %18, align 8
  %549 = load i64, i64* %8, align 8
  %550 = load i32, i32* %9, align 4
  %551 = load i64, i64* %10, align 8
  %552 = load i32*, i32** %11, align 8
  %553 = call i64 @extract_muldiv(i64 %548, i64 %549, i32 %550, i64 %551, i32* %552)
  store i64 %553, i64* %15, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %565

555:                                              ; preds = %547
  %556 = load i32, i32* %13, align 4
  %557 = load i64, i64* %14, align 8
  %558 = load i64, i64* %14, align 8
  %559 = load i64, i64* %15, align 8
  %560 = call i64 @fold_convert(i64 %558, i64 %559)
  %561 = load i64, i64* %14, align 8
  %562 = load i64, i64* %19, align 8
  %563 = call i64 @fold_convert(i64 %561, i64 %562)
  %564 = call i64 @fold_build2(i32 %556, i64 %557, i64 %560, i64 %563)
  store i64 %564, i64* %6, align 8
  br label %714

565:                                              ; preds = %547, %544
  %566 = load i32, i32* %13, align 4
  %567 = icmp eq i32 %566, 135
  br i1 %567, label %568, label %589

568:                                              ; preds = %565
  %569 = load i32, i32* %9, align 4
  %570 = icmp eq i32 %569, 135
  br i1 %570, label %571, label %589

571:                                              ; preds = %568
  %572 = load i64, i64* %19, align 8
  %573 = load i64, i64* %8, align 8
  %574 = load i32, i32* %9, align 4
  %575 = load i64, i64* %10, align 8
  %576 = load i32*, i32** %11, align 8
  %577 = call i64 @extract_muldiv(i64 %572, i64 %573, i32 %574, i64 %575, i32* %576)
  store i64 %577, i64* %15, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %589

579:                                              ; preds = %571
  %580 = load i32, i32* %13, align 4
  %581 = load i64, i64* %14, align 8
  %582 = load i64, i64* %14, align 8
  %583 = load i64, i64* %18, align 8
  %584 = call i64 @fold_convert(i64 %582, i64 %583)
  %585 = load i64, i64* %14, align 8
  %586 = load i64, i64* %15, align 8
  %587 = call i64 @fold_convert(i64 %585, i64 %586)
  %588 = call i64 @fold_build2(i32 %580, i64 %581, i64 %584, i64 %587)
  store i64 %588, i64* %6, align 8
  br label %714

589:                                              ; preds = %571, %568, %565
  %590 = load i64, i64* %19, align 8
  %591 = call i32 @TREE_CODE(i64 %590)
  %592 = icmp ne i32 %591, 140
  br i1 %592, label %593, label %594

593:                                              ; preds = %589
  store i64 0, i64* %6, align 8
  br label %714

594:                                              ; preds = %589
  br label %595

595:                                              ; preds = %594
  br label %596

596:                                              ; preds = %595
  %597 = load i32, i32* %13, align 4
  %598 = load i32, i32* %9, align 4
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %600, label %621

600:                                              ; preds = %596
  %601 = load i64, i64* %14, align 8
  %602 = load i64, i64* %19, align 8
  %603 = call i64 @fold_convert(i64 %601, i64 %602)
  %604 = load i64, i64* %14, align 8
  %605 = load i64, i64* %8, align 8
  %606 = call i64 @fold_convert(i64 %604, i64 %605)
  %607 = call i64 @const_binop(i32 135, i64 %603, i64 %606, i32 0)
  store i64 %607, i64* %15, align 8
  %608 = icmp ne i64 0, %607
  br i1 %608, label %609, label %621

609:                                              ; preds = %600
  %610 = load i64, i64* %15, align 8
  %611 = call i32 @TREE_OVERFLOW(i64 %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %621, label %613

613:                                              ; preds = %609
  %614 = load i32, i32* %13, align 4
  %615 = load i64, i64* %14, align 8
  %616 = load i64, i64* %14, align 8
  %617 = load i64, i64* %18, align 8
  %618 = call i64 @fold_convert(i64 %616, i64 %617)
  %619 = load i64, i64* %15, align 8
  %620 = call i64 @fold_build2(i32 %614, i64 %615, i64 %618, i64 %619)
  store i64 %620, i64* %6, align 8
  br label %714

621:                                              ; preds = %609, %600, %596
  %622 = load i64, i64* %14, align 8
  %623 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %622)
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %634, label %625

625:                                              ; preds = %621
  %626 = load i64, i64* %14, align 8
  %627 = call i32 @TREE_CODE(i64 %626)
  %628 = load i32, i32* @INTEGER_TYPE, align 4
  %629 = icmp eq i32 %627, %628
  br i1 %629, label %630, label %711

630:                                              ; preds = %625
  %631 = load i64, i64* %14, align 8
  %632 = call i32 @TYPE_IS_SIZETYPE(i64 %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %711

634:                                              ; preds = %630, %621
  %635 = load i32, i32* %9, align 4
  %636 = icmp eq i32 %635, 135
  br i1 %636, label %637, label %640

637:                                              ; preds = %634
  %638 = load i32, i32* %13, align 4
  %639 = icmp eq i32 %638, 142
  br i1 %639, label %659, label %640

640:                                              ; preds = %637, %634
  %641 = load i32, i32* %13, align 4
  %642 = icmp eq i32 %641, 135
  br i1 %642, label %643, label %711

643:                                              ; preds = %640
  %644 = load i32, i32* %9, align 4
  %645 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %646 = icmp ne i32 %644, %645
  br i1 %646, label %647, label %711

647:                                              ; preds = %643
  %648 = load i32, i32* %9, align 4
  %649 = load i32, i32* @CEIL_MOD_EXPR, align 4
  %650 = icmp ne i32 %648, %649
  br i1 %650, label %651, label %711

651:                                              ; preds = %647
  %652 = load i32, i32* %9, align 4
  %653 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %654 = icmp ne i32 %652, %653
  br i1 %654, label %655, label %711

655:                                              ; preds = %651
  %656 = load i32, i32* %9, align 4
  %657 = load i32, i32* @ROUND_MOD_EXPR, align 4
  %658 = icmp ne i32 %656, %657
  br i1 %658, label %659, label %711

659:                                              ; preds = %655, %637
  %660 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %661 = load i64, i64* %19, align 8
  %662 = load i64, i64* %8, align 8
  %663 = call i64 @const_binop(i32 %660, i64 %661, i64 %662, i32 0)
  %664 = call i64 @integer_zerop(i64 %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %684

666:                                              ; preds = %659
  %667 = load i64, i64* %14, align 8
  %668 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %667)
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %666
  %671 = load i32*, i32** %11, align 8
  store i32 1, i32* %671, align 4
  br label %672

672:                                              ; preds = %670, %666
  %673 = load i32, i32* %13, align 4
  %674 = load i64, i64* %14, align 8
  %675 = load i64, i64* %14, align 8
  %676 = load i64, i64* %18, align 8
  %677 = call i64 @fold_convert(i64 %675, i64 %676)
  %678 = load i64, i64* %14, align 8
  %679 = load i64, i64* %19, align 8
  %680 = load i64, i64* %8, align 8
  %681 = call i64 @const_binop(i32 128, i64 %679, i64 %680, i32 0)
  %682 = call i64 @fold_convert(i64 %678, i64 %681)
  %683 = call i64 @fold_build2(i32 %673, i64 %674, i64 %677, i64 %682)
  store i64 %683, i64* %6, align 8
  br label %714

684:                                              ; preds = %659
  %685 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %686 = load i64, i64* %8, align 8
  %687 = load i64, i64* %19, align 8
  %688 = call i64 @const_binop(i32 %685, i64 %686, i64 %687, i32 0)
  %689 = call i64 @integer_zerop(i64 %688)
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %709

691:                                              ; preds = %684
  %692 = load i64, i64* %14, align 8
  %693 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %692)
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %697

695:                                              ; preds = %691
  %696 = load i32*, i32** %11, align 8
  store i32 1, i32* %696, align 4
  br label %697

697:                                              ; preds = %695, %691
  %698 = load i32, i32* %9, align 4
  %699 = load i64, i64* %14, align 8
  %700 = load i64, i64* %14, align 8
  %701 = load i64, i64* %18, align 8
  %702 = call i64 @fold_convert(i64 %700, i64 %701)
  %703 = load i64, i64* %14, align 8
  %704 = load i64, i64* %8, align 8
  %705 = load i64, i64* %19, align 8
  %706 = call i64 @const_binop(i32 128, i64 %704, i64 %705, i32 0)
  %707 = call i64 @fold_convert(i64 %703, i64 %706)
  %708 = call i64 @fold_build2(i32 %698, i64 %699, i64 %702, i64 %707)
  store i64 %708, i64* %6, align 8
  br label %714

709:                                              ; preds = %684
  br label %710

710:                                              ; preds = %709
  br label %711

711:                                              ; preds = %710, %655, %651, %647, %643, %640, %630, %625
  br label %713

712:                                              ; preds = %71
  br label %713

713:                                              ; preds = %712, %711, %509, %472, %454, %452, %419, %391, %334, %283, %244, %237, %220, %215, %185, %153, %92
  store i64 0, i64* %6, align 8
  br label %714

714:                                              ; preds = %713, %697, %672, %613, %593, %579, %555, %538, %495, %484, %371, %318, %273, %230, %205, %183, %83, %51
  %715 = load i64, i64* %6, align 8
  ret i64 %715
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @const_binop(i32, i64, i64, i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i32 @COMPARISON_CLASS_P(i64) #1

declare dso_local i32 @UNARY_CLASS_P(i64) #1

declare dso_local i32 @BINARY_CLASS_P(i64) #1

declare dso_local i32 @EXPRESSION_CLASS_P(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i64 @extract_muldiv(i64, i64, i32, i64, i32*) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i32 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @multiple_of_p(i64, i64, i64) #1

declare dso_local i64 @negate_expr(i64) #1

declare dso_local i32 @TYPE_OVERFLOW_WRAPS(i64) #1

declare dso_local i64 @omit_one_operand(i64, i32, i64) #1

declare dso_local i32 @TYPE_OVERFLOW_UNDEFINED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
