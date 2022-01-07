; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_make_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_make_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@NULL_TREE = common dso_local global i64 0, align 8
@tcc_comparison = common dso_local global i64 0, align 8
@tcc_unary = common dso_local global i64 0, align 8
@tcc_binary = common dso_local global i64 0, align 8
@tcc_expression = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@integer_one_node = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i64*, i64*, i32*)* @make_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_range(i64 %0, i32* %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* @NULL_TREE, align 8
  store i64 %27, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = call i64 @build_int_cst(i64 %29, i32 0)
  store i64 %30, i64* %19, align 8
  store i64 %30, i64* %18, align 8
  br label %31

31:                                               ; preds = %5, %91, %190, %192, %206, %304, %423
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @TREE_CODE_CLASS(i32 %37)
  %39 = call i64 @IS_EXPR_CODE_CLASS(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @TREE_CODE_LENGTH(i32 %42)
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @TREE_CODE_CLASS(i32 %49)
  %51 = load i64, i64* @tcc_comparison, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @TREE_CODE_CLASS(i32 %54)
  %56 = load i64, i64* @tcc_unary, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @TREE_CODE_CLASS(i32 %59)
  %61 = load i64, i64* @tcc_binary, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53, %48
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @TREE_TYPE(i64 %64)
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @TREE_CODE_CLASS(i32 %67)
  %69 = load i64, i64* @tcc_binary, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @TREE_CODE_CLASS(i32 %72)
  %74 = load i64, i64* @tcc_comparison, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @TREE_CODE_CLASS(i32 %77)
  %79 = load i64, i64* @tcc_expression, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @TREE_CODE_LENGTH(i32 %82)
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %71, %66
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @TREE_OPERAND(i64 %86, i32 1)
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %85, %81, %76
  br label %89

89:                                               ; preds = %88, %31
  %90 = load i32, i32* %11, align 4
  switch i32 %90, label %427 [
    i32 128, label %91
    i32 139, label %97
    i32 132, label %97
    i32 135, label %97
    i32 136, label %97
    i32 138, label %97
    i32 137, label %97
    i32 133, label %192
    i32 141, label %206
    i32 129, label %213
    i32 134, label %213
    i32 130, label %306
    i32 131, label %306
    i32 140, label %306
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i64, i64* %12, align 8
  store i64 %96, i64* %6, align 8
  br label %31

97:                                               ; preds = %89, %89, %89, %89, %89, %89
  %98 = load i64, i64* %18, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %19, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %18, align 8
  %105 = call i32 @integer_zerop(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i64, i64* %19, align 8
  %109 = call i32 @integer_zerop(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @TREE_CODE(i64 %112)
  %114 = load i64, i64* @INTEGER_CST, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %107, %103, %100, %97
  br label %428

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  switch i32 %118, label %143 [
    i32 132, label %119
    i32 139, label %121
    i32 137, label %127
    i32 138, label %129
    i32 135, label %135
    i32 136, label %137
  ]

119:                                              ; preds = %117
  %120 = load i64, i64* %13, align 8
  store i64 %120, i64* %19, align 8
  store i64 %120, i64* %18, align 8
  br label %145

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %16, align 4
  %126 = load i64, i64* %13, align 8
  store i64 %126, i64* %19, align 8
  store i64 %126, i64* %18, align 8
  br label %145

127:                                              ; preds = %117
  store i64 0, i64* %18, align 8
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %19, align 8
  br label %145

129:                                              ; preds = %117
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %16, align 4
  %134 = load i64, i64* %13, align 8
  store i64 %134, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %145

135:                                              ; preds = %117
  %136 = load i64, i64* %13, align 8
  store i64 %136, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %145

137:                                              ; preds = %117
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %142 = load i64, i64* %13, align 8
  store i64 %142, i64* %19, align 8
  br label %145

143:                                              ; preds = %117
  %144 = call i32 (...) @gcc_unreachable()
  br label %145

145:                                              ; preds = %143, %137, %135, %129, %127, %121, %119
  %146 = load i64, i64* %15, align 8
  %147 = call i32 @TYPE_UNSIGNED(i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %145
  %150 = load i64, i64* %18, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %19, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %16, align 4
  %157 = load i64, i64* %18, align 8
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %15, align 8
  %160 = call i64 @build_int_cst(i64 %159, i32 0)
  %161 = load i64, i64* @NULL_TREE, align 8
  %162 = call i32 @merge_ranges(i32* %17, i64* %20, i64* %21, i32 %156, i64 %157, i64 %158, i32 1, i64 %160, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %155
  br label %428

165:                                              ; preds = %155
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %16, align 4
  %167 = load i64, i64* %20, align 8
  store i64 %167, i64* %18, align 8
  %168 = load i64, i64* %21, align 8
  store i64 %168, i64* %19, align 8
  %169 = load i64, i64* %19, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load i64, i64* %18, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load i64, i64* %18, align 8
  %176 = call i32 @integer_zerop(i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = load i64, i64* @NULL_TREE, align 8
  %184 = load i64, i64* %18, align 8
  %185 = load i64, i64* @integer_one_node, align 8
  %186 = call i64 @range_binop(i32 134, i64 %183, i64 %184, i32 0, i64 %185, i32 0)
  store i64 %186, i64* %19, align 8
  %187 = load i64, i64* %15, align 8
  %188 = call i64 @build_int_cst(i64 %187, i32 0)
  store i64 %188, i64* %18, align 8
  br label %189

189:                                              ; preds = %178, %174, %171, %165
  br label %190

190:                                              ; preds = %189, %152, %145
  %191 = load i64, i64* %12, align 8
  store i64 %191, i64* %6, align 8
  br label %31

192:                                              ; preds = %89
  %193 = load i64, i64* %14, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i64 @build_int_cst(i64 %194, i32 0)
  %196 = load i64, i64* %19, align 8
  %197 = call i64 @range_binop(i32 134, i64 %193, i64 %195, i32 0, i64 %196, i32 1)
  store i64 %197, i64* %20, align 8
  %198 = load i64, i64* %14, align 8
  %199 = load i64, i64* %14, align 8
  %200 = call i64 @build_int_cst(i64 %199, i32 0)
  %201 = load i64, i64* %18, align 8
  %202 = call i64 @range_binop(i32 134, i64 %198, i64 %200, i32 0, i64 %201, i32 0)
  store i64 %202, i64* %21, align 8
  %203 = load i64, i64* %20, align 8
  store i64 %203, i64* %18, align 8
  %204 = load i64, i64* %21, align 8
  store i64 %204, i64* %19, align 8
  %205 = load i64, i64* %12, align 8
  store i64 %205, i64* %6, align 8
  br label %31

206:                                              ; preds = %89
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %12, align 8
  %209 = call i32 @negate_expr(i64 %208)
  %210 = load i64, i64* %14, align 8
  %211 = call i64 @build_int_cst(i64 %210, i32 1)
  %212 = call i64 @build2(i32 134, i64 %207, i32 %209, i64 %211)
  store i64 %212, i64* %6, align 8
  br label %31

213:                                              ; preds = %89, %89
  %214 = load i64, i64* %13, align 8
  %215 = call i64 @TREE_CODE(i64 %214)
  %216 = load i64, i64* @INTEGER_CST, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %428

219:                                              ; preds = %213
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @TYPE_UNSIGNED(i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %219
  %224 = load i64, i64* %15, align 8
  %225 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  br label %428

228:                                              ; preds = %223, %219
  %229 = load i32, i32* %11, align 4
  %230 = icmp eq i32 %229, 134
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 129, i32 134
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* %18, align 8
  %235 = load i64, i64* %13, align 8
  %236 = call i64 @range_binop(i32 %232, i64 %233, i64 %234, i32 0, i64 %235, i32 0)
  store i64 %236, i64* %20, align 8
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %237, 134
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 129, i32 134
  %241 = load i64, i64* %15, align 8
  %242 = load i64, i64* %19, align 8
  %243 = load i64, i64* %13, align 8
  %244 = call i64 @range_binop(i32 %240, i64 %241, i64 %242, i32 1, i64 %243, i32 0)
  store i64 %244, i64* %21, align 8
  %245 = load i64, i64* %20, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %228
  %248 = load i64, i64* %20, align 8
  %249 = call i32 @TREE_OVERFLOW(i64 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %247, %228
  %252 = load i64, i64* %21, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load i64, i64* %21, align 8
  %256 = call i32 @TREE_OVERFLOW(i64 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %247
  br label %428

259:                                              ; preds = %254, %251
  %260 = load i64, i64* %15, align 8
  %261 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i32*, i32** %10, align 8
  store i32 1, i32* %264, align 4
  br label %265

265:                                              ; preds = %263, %259
  %266 = load i64, i64* %20, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %301

268:                                              ; preds = %265
  %269 = load i64, i64* %21, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %301

271:                                              ; preds = %268
  %272 = load i64, i64* %21, align 8
  %273 = load i64, i64* %20, align 8
  %274 = call i32 @tree_int_cst_lt(i64 %272, i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %301

276:                                              ; preds = %271
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* %21, align 8
  %279 = load i64, i64* @integer_one_node, align 8
  %280 = call i64 @range_binop(i32 129, i64 %277, i64 %278, i32 0, i64 %279, i32 0)
  store i64 %280, i64* %18, align 8
  %281 = load i64, i64* %15, align 8
  %282 = load i64, i64* %20, align 8
  %283 = load i64, i64* @integer_one_node, align 8
  %284 = call i64 @range_binop(i32 134, i64 %281, i64 %282, i32 0, i64 %283, i32 0)
  store i64 %284, i64* %19, align 8
  %285 = load i64, i64* %20, align 8
  %286 = load i64, i64* %18, align 8
  %287 = call i32 @tree_int_cst_equal(i64 %285, i64 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %276
  %290 = load i64, i64* %21, align 8
  %291 = load i64, i64* %19, align 8
  %292 = call i32 @tree_int_cst_equal(i64 %290, i64 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %300

295:                                              ; preds = %289, %276
  %296 = load i32, i32* %16, align 4
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  store i32 %299, i32* %16, align 4
  br label %300

300:                                              ; preds = %295, %294
  br label %304

301:                                              ; preds = %271, %268, %265
  %302 = load i64, i64* %20, align 8
  store i64 %302, i64* %18, align 8
  %303 = load i64, i64* %21, align 8
  store i64 %303, i64* %19, align 8
  br label %304

304:                                              ; preds = %301, %300
  %305 = load i64, i64* %12, align 8
  store i64 %305, i64* %6, align 8
  br label %31

306:                                              ; preds = %89, %89, %89
  %307 = load i64, i64* %15, align 8
  %308 = call i32 @TYPE_PRECISION(i64 %307)
  %309 = load i64, i64* %14, align 8
  %310 = call i32 @TYPE_PRECISION(i64 %309)
  %311 = icmp sgt i32 %308, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  br label %428

313:                                              ; preds = %306
  %314 = load i64, i64* %15, align 8
  %315 = call i32 @INTEGRAL_TYPE_P(i64 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %313
  %318 = load i64, i64* %18, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  %321 = load i64, i64* %18, align 8
  %322 = load i64, i64* %15, align 8
  %323 = call i32 @int_fits_type_p(i64 %321, i64 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %320, %317
  %326 = load i64, i64* %19, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i64, i64* %19, align 8
  %330 = load i64, i64* %15, align 8
  %331 = call i32 @int_fits_type_p(i64 %329, i64 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %328, %320, %313
  br label %428

334:                                              ; preds = %328, %325
  %335 = load i64, i64* %18, align 8
  store i64 %335, i64* %20, align 8
  %336 = load i64, i64* %19, align 8
  store i64 %336, i64* %21, align 8
  %337 = load i64, i64* %20, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = load i64, i64* %15, align 8
  %341 = load i64, i64* %20, align 8
  %342 = call i64 @fold_convert(i64 %340, i64 %341)
  store i64 %342, i64* %20, align 8
  br label %343

343:                                              ; preds = %339, %334
  %344 = load i64, i64* %21, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = load i64, i64* %15, align 8
  %348 = load i64, i64* %21, align 8
  %349 = call i64 @fold_convert(i64 %347, i64 %348)
  store i64 %349, i64* %21, align 8
  br label %350

350:                                              ; preds = %346, %343
  %351 = load i64, i64* %14, align 8
  %352 = call i32 @TYPE_UNSIGNED(i64 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %423, label %354

354:                                              ; preds = %350
  %355 = load i64, i64* %15, align 8
  %356 = call i32 @TYPE_UNSIGNED(i64 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %423

358:                                              ; preds = %354
  %359 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %360 = load i64, i64* %15, align 8
  %361 = call i32 @TYPE_MODE(i64 %360)
  %362 = call i64 %359(i32 %361, i32 1)
  store i64 %362, i64* %23, align 8
  %363 = load i64, i64* %23, align 8
  %364 = call i64 @TYPE_MAX_VALUE(i64 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %358
  %367 = load i64, i64* %23, align 8
  %368 = call i64 @TYPE_MAX_VALUE(i64 %367)
  br label %372

369:                                              ; preds = %358
  %370 = load i64, i64* %15, align 8
  %371 = call i64 @TYPE_MAX_VALUE(i64 %370)
  br label %372

372:                                              ; preds = %369, %366
  %373 = phi i64 [ %368, %366 ], [ %371, %369 ]
  store i64 %373, i64* %22, align 8
  %374 = load i64, i64* %14, align 8
  %375 = call i32 @TYPE_PRECISION(i64 %374)
  %376 = load i64, i64* %15, align 8
  %377 = call i32 @TYPE_PRECISION(i64 %376)
  %378 = icmp eq i32 %375, %377
  br i1 %378, label %379, label %389

379:                                              ; preds = %372
  %380 = load i32, i32* @RSHIFT_EXPR, align 4
  %381 = load i64, i64* %15, align 8
  %382 = load i64, i64* %15, align 8
  %383 = load i64, i64* %22, align 8
  %384 = call i64 @fold_convert(i64 %382, i64 %383)
  %385 = load i64, i64* %15, align 8
  %386 = load i64, i64* @integer_one_node, align 8
  %387 = call i64 @fold_convert(i64 %385, i64 %386)
  %388 = call i64 @fold_build2(i32 %380, i64 %381, i64 %384, i64 %387)
  store i64 %388, i64* %22, align 8
  br label %389

389:                                              ; preds = %379, %372
  %390 = load i64, i64* %18, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %407

392:                                              ; preds = %389
  %393 = load i64, i64* %20, align 8
  %394 = load i64, i64* %21, align 8
  %395 = load i64, i64* %15, align 8
  %396 = load i64, i64* @integer_zero_node, align 8
  %397 = call i64 @fold_convert(i64 %395, i64 %396)
  %398 = load i64, i64* %22, align 8
  %399 = call i32 @merge_ranges(i32* %17, i64* %20, i64* %21, i32 1, i64 %393, i64 %394, i32 1, i64 %397, i64 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %392
  br label %428

402:                                              ; preds = %392
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %16, align 4
  %405 = icmp eq i32 %403, %404
  %406 = zext i1 %405 to i32
  store i32 %406, i32* %16, align 4
  br label %422

407:                                              ; preds = %389
  %408 = load i64, i64* %20, align 8
  %409 = load i64, i64* %21, align 8
  %410 = load i64, i64* %15, align 8
  %411 = load i64, i64* @integer_zero_node, align 8
  %412 = call i64 @fold_convert(i64 %410, i64 %411)
  %413 = load i64, i64* %22, align 8
  %414 = call i32 @merge_ranges(i32* %17, i64* %20, i64* %21, i32 0, i64 %408, i64 %409, i32 1, i64 %412, i64 %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %407
  br label %428

417:                                              ; preds = %407
  %418 = load i32, i32* %16, align 4
  %419 = load i32, i32* %17, align 4
  %420 = icmp ne i32 %418, %419
  %421 = zext i1 %420 to i32
  store i32 %421, i32* %16, align 4
  br label %422

422:                                              ; preds = %417, %402
  br label %423

423:                                              ; preds = %422, %354, %350
  %424 = load i64, i64* %12, align 8
  store i64 %424, i64* %6, align 8
  %425 = load i64, i64* %20, align 8
  store i64 %425, i64* %18, align 8
  %426 = load i64, i64* %21, align 8
  store i64 %426, i64* %19, align 8
  br label %31

427:                                              ; preds = %89
  br label %428

428:                                              ; preds = %427, %416, %401, %333, %312, %258, %227, %218, %164, %116
  br label %429

429:                                              ; preds = %428
  %430 = load i64, i64* %6, align 8
  %431 = call i64 @TREE_CODE(i64 %430)
  %432 = load i64, i64* @INTEGER_CST, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %454

434:                                              ; preds = %429
  %435 = load i32, i32* %16, align 4
  %436 = load i64, i64* @integer_type_node, align 8
  %437 = load i64, i64* %6, align 8
  %438 = load i64, i64* %18, align 8
  %439 = call i64 @range_binop(i32 138, i64 %436, i64 %437, i32 0, i64 %438, i32 0)
  %440 = call i64 @integer_onep(i64 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %434
  %443 = load i64, i64* @integer_type_node, align 8
  %444 = load i64, i64* %6, align 8
  %445 = load i64, i64* %19, align 8
  %446 = call i64 @range_binop(i32 136, i64 %443, i64 %444, i32 1, i64 %445, i32 1)
  %447 = call i64 @integer_onep(i64 %446)
  %448 = icmp ne i64 %447, 0
  br label %449

449:                                              ; preds = %442, %434
  %450 = phi i1 [ false, %434 ], [ %448, %442 ]
  %451 = zext i1 %450 to i32
  %452 = icmp eq i32 %435, %451
  %453 = zext i1 %452 to i32
  store i32 %453, i32* %16, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %6, align 8
  br label %454

454:                                              ; preds = %449, %429
  %455 = load i32, i32* %16, align 4
  %456 = load i32*, i32** %7, align 8
  store i32 %455, i32* %456, align 4
  %457 = load i64, i64* %18, align 8
  %458 = load i64*, i64** %8, align 8
  store i64 %457, i64* %458, align 8
  %459 = load i64, i64* %19, align 8
  %460 = load i64*, i64** %9, align 8
  store i64 %459, i64* %460, align 8
  %461 = load i64, i64* %6, align 8
  ret i64 %461
}

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @IS_EXPR_CODE_CLASS(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @merge_ranges(i32*, i64*, i64*, i32, i64, i64, i32, i64, i64) #1

declare dso_local i64 @range_binop(i32, i64, i64, i32, i64, i32) #1

declare dso_local i64 @build2(i32, i64, i32, i64) #1

declare dso_local i32 @negate_expr(i64) #1

declare dso_local i32 @TYPE_OVERFLOW_UNDEFINED(i64) #1

declare dso_local i32 @TREE_OVERFLOW(i64) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @int_fits_type_p(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @integer_onep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
