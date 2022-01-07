; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_operand_equal_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_operand_equal_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i32 0, align 4
@OEP_ONLY_CONST = common dso_local global i32 0, align 4
@SAVE_EXPR = common dso_local global i32 0, align 4
@OEP_PURE_SAME = common dso_local global i32 0, align 4
@ECF_CONST = common dso_local global i32 0, align 4
@ECF_PURE = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @operand_equal_p(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @TREE_CODE(i64 %12)
  %14 = load i32, i32* @ERROR_MARK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @TREE_CODE(i64 %17)
  %19 = load i32, i32* @ERROR_MARK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %680

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  %25 = call i64 @TYPE_UNSIGNED(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = call i64 @TYPE_UNSIGNED(i64 %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %680

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i64 @TYPE_PRECISION(i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = call i64 @TYPE_PRECISION(i64 %36)
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %680

40:                                               ; preds = %31
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @STRIP_NOPS(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @STRIP_NOPS(i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @TREE_CODE(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @TREE_CODE(i64 %47)
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @COMPARISON_CLASS_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @COMPARISON_CLASS_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @TREE_CODE(i64 %59)
  %61 = call i32 @swap_tree_comparison(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @TREE_CODE(i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %58
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @TREE_OPERAND(i64 %67, i32 0)
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @TREE_OPERAND(i64 %69, i32 1)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @operand_equal_p(i64 %68, i64 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @TREE_OPERAND(i64 %75, i32 1)
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @TREE_OPERAND(i64 %77, i32 0)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @operand_equal_p(i64 %76, i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %74, %66
  %83 = phi i1 [ false, %66 ], [ %81, %74 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %680

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85, %54, %50, %40
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @TREE_CODE(i64 %87)
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @TREE_CODE(i64 %89)
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %112, label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @TREE_TYPE(i64 %93)
  %95 = call i32 @TREE_CODE(i64 %94)
  %96 = load i32, i32* @ERROR_MARK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @TREE_TYPE(i64 %99)
  %101 = call i32 @TREE_CODE(i64 %100)
  %102 = load i32, i32* @ERROR_MARK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @TREE_TYPE(i64 %105)
  %107 = call i64 @TYPE_MODE(i64 %106)
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @TREE_TYPE(i64 %108)
  %110 = call i64 @TYPE_MODE(i64 %109)
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104, %98, %92, %86
  store i32 0, i32* %4, align 4
  br label %680

113:                                              ; preds = %104
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @OEP_ONLY_CONST, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @TREE_CODE(i64 %123)
  %125 = load i32, i32* @SAVE_EXPR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @TREE_SIDE_EFFECTS(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %6, align 8
  %133 = call i64 @TREE_SIDE_EFFECTS(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131, %122
  store i32 1, i32* %4, align 4
  br label %680

136:                                              ; preds = %131, %127, %117, %113
  %137 = load i64, i64* %5, align 8
  %138 = call i64 @TREE_CONSTANT(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %268

140:                                              ; preds = %136
  %141 = load i64, i64* %6, align 8
  %142 = call i64 @TREE_CONSTANT(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %268

144:                                              ; preds = %140
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @TREE_CODE(i64 %145)
  switch i32 %146, label %266 [
    i32 146, label %147
    i32 142, label %163
    i32 134, label %181
    i32 155, label %222
    i32 141, label %241
    i32 161, label %260
  ]

147:                                              ; preds = %144
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @tree_int_cst_equal(i64 %156, i64 %157)
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %155, %151, %147
  %161 = phi i1 [ false, %151 ], [ false, %147 ], [ %159, %155 ]
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %680

163:                                              ; preds = %144
  %164 = load i64, i64* %5, align 8
  %165 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @TREE_REAL_CST(i64 %172)
  %174 = load i64, i64* %6, align 8
  %175 = call i32 @TREE_REAL_CST(i64 %174)
  %176 = call i32 @REAL_VALUES_IDENTICAL(i32 %173, i32 %175)
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %171, %167, %163
  %179 = phi i1 [ false, %167 ], [ false, %163 ], [ %177, %171 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %4, align 4
  br label %680

181:                                              ; preds = %144
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %6, align 8
  %187 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %181
  store i32 0, i32* %4, align 4
  br label %680

190:                                              ; preds = %185
  %191 = load i64, i64* %5, align 8
  %192 = call i64 @TREE_VECTOR_CST_ELTS(i64 %191)
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %6, align 8
  %194 = call i64 @TREE_VECTOR_CST_ELTS(i64 %193)
  store i64 %194, i64* %10, align 8
  br label %195

195:                                              ; preds = %212, %190
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, i64* %10, align 8
  %200 = icmp ne i64 %199, 0
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i1 [ false, %195 ], [ %200, %198 ]
  br i1 %202, label %203, label %217

203:                                              ; preds = %201
  %204 = load i64, i64* %9, align 8
  %205 = call i64 @TREE_VALUE(i64 %204)
  %206 = load i64, i64* %10, align 8
  %207 = call i64 @TREE_VALUE(i64 %206)
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @operand_equal_p(i64 %205, i64 %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %680

212:                                              ; preds = %203
  %213 = load i64, i64* %9, align 8
  %214 = call i64 @TREE_CHAIN(i64 %213)
  store i64 %214, i64* %9, align 8
  %215 = load i64, i64* %10, align 8
  %216 = call i64 @TREE_CHAIN(i64 %215)
  store i64 %216, i64* %10, align 8
  br label %195

217:                                              ; preds = %201
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* %10, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %4, align 4
  br label %680

222:                                              ; preds = %144
  %223 = load i64, i64* %5, align 8
  %224 = call i64 @TREE_REALPART(i64 %223)
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @TREE_REALPART(i64 %225)
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @operand_equal_p(i64 %224, i64 %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %222
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @TREE_IMAGPART(i64 %231)
  %233 = load i64, i64* %6, align 8
  %234 = call i64 @TREE_IMAGPART(i64 %233)
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @operand_equal_p(i64 %232, i64 %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br label %238

238:                                              ; preds = %230, %222
  %239 = phi i1 [ false, %222 ], [ %237, %230 ]
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %4, align 4
  br label %680

241:                                              ; preds = %144
  %242 = load i64, i64* %5, align 8
  %243 = call i32 @TREE_STRING_LENGTH(i64 %242)
  %244 = load i64, i64* %6, align 8
  %245 = call i32 @TREE_STRING_LENGTH(i64 %244)
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load i64, i64* %5, align 8
  %249 = call i32 @TREE_STRING_POINTER(i64 %248)
  %250 = load i64, i64* %6, align 8
  %251 = call i32 @TREE_STRING_POINTER(i64 %250)
  %252 = load i64, i64* %5, align 8
  %253 = call i32 @TREE_STRING_LENGTH(i64 %252)
  %254 = call i32 @memcmp(i32 %249, i32 %251, i32 %253)
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  br label %257

257:                                              ; preds = %247, %241
  %258 = phi i1 [ false, %241 ], [ %256, %247 ]
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %4, align 4
  br label %680

260:                                              ; preds = %144
  %261 = load i64, i64* %5, align 8
  %262 = call i64 @TREE_OPERAND(i64 %261, i32 0)
  %263 = load i64, i64* %6, align 8
  %264 = call i64 @TREE_OPERAND(i64 %263, i32 0)
  %265 = call i32 @operand_equal_p(i64 %262, i64 %264, i32 0)
  store i32 %265, i32* %4, align 4
  br label %680

266:                                              ; preds = %144
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267, %140, %136
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @OEP_ONLY_CONST, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 0, i32* %4, align 4
  br label %680

274:                                              ; preds = %268
  %275 = load i64, i64* %5, align 8
  %276 = call i32 @TREE_CODE(i64 %275)
  %277 = call i32 @TREE_CODE_CLASS(i32 %276)
  switch i32 %277, label %679 [
    i32 128, label %278
    i32 132, label %299
    i32 133, label %299
    i32 129, label %340
    i32 130, label %518
    i32 131, label %651
  ]

278:                                              ; preds = %274
  %279 = load i64, i64* %5, align 8
  %280 = call i32 @TREE_CODE(i64 %279)
  switch i32 %280, label %291 [
    i32 144, label %281
    i32 153, label %281
    i32 152, label %281
    i32 149, label %281
    i32 151, label %281
    i32 150, label %281
  ]

281:                                              ; preds = %278, %278, %278, %278, %278, %278
  %282 = load i64, i64* %5, align 8
  %283 = call i64 @TREE_TYPE(i64 %282)
  %284 = call i64 @TYPE_UNSIGNED(i64 %283)
  %285 = load i64, i64* %6, align 8
  %286 = call i64 @TREE_TYPE(i64 %285)
  %287 = call i64 @TYPE_UNSIGNED(i64 %286)
  %288 = icmp ne i64 %284, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  store i32 0, i32* %4, align 4
  br label %680

290:                                              ; preds = %281
  br label %292

291:                                              ; preds = %278
  br label %292

292:                                              ; preds = %291, %290
  %293 = load i64, i64* %5, align 8
  %294 = call i64 @TREE_OPERAND(i64 %293, i32 0)
  %295 = load i64, i64* %6, align 8
  %296 = call i64 @TREE_OPERAND(i64 %295, i32 0)
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @operand_equal_p(i64 %294, i64 %296, i32 %297)
  store i32 %298, i32* %4, align 4
  br label %680

299:                                              ; preds = %274, %274
  %300 = load i64, i64* %5, align 8
  %301 = call i64 @TREE_OPERAND(i64 %300, i32 0)
  %302 = load i64, i64* %6, align 8
  %303 = call i64 @TREE_OPERAND(i64 %302, i32 0)
  %304 = load i32, i32* %7, align 4
  %305 = call i32 @operand_equal_p(i64 %301, i64 %303, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %299
  %308 = load i64, i64* %5, align 8
  %309 = call i64 @TREE_OPERAND(i64 %308, i32 1)
  %310 = load i64, i64* %6, align 8
  %311 = call i64 @TREE_OPERAND(i64 %310, i32 1)
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @operand_equal_p(i64 %309, i64 %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %307
  store i32 1, i32* %4, align 4
  br label %680

316:                                              ; preds = %307, %299
  %317 = load i64, i64* %5, align 8
  %318 = call i32 @TREE_CODE(i64 %317)
  %319 = call i32 @commutative_tree_code(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %337

321:                                              ; preds = %316
  %322 = load i64, i64* %5, align 8
  %323 = call i64 @TREE_OPERAND(i64 %322, i32 0)
  %324 = load i64, i64* %6, align 8
  %325 = call i64 @TREE_OPERAND(i64 %324, i32 1)
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @operand_equal_p(i64 %323, i64 %325, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %321
  %330 = load i64, i64* %5, align 8
  %331 = call i64 @TREE_OPERAND(i64 %330, i32 1)
  %332 = load i64, i64* %6, align 8
  %333 = call i64 @TREE_OPERAND(i64 %332, i32 0)
  %334 = load i32, i32* %7, align 4
  %335 = call i32 @operand_equal_p(i64 %331, i64 %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br label %337

337:                                              ; preds = %329, %321, %316
  %338 = phi i1 [ false, %321 ], [ false, %316 ], [ %336, %329 ]
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %4, align 4
  br label %680

340:                                              ; preds = %274
  %341 = load i64, i64* %5, align 8
  %342 = call i64 @TREE_SIDE_EFFECTS(i64 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %340
  %345 = load i64, i64* %6, align 8
  %346 = call i64 @TREE_SIDE_EFFECTS(i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344, %340
  store i32 0, i32* %4, align 4
  br label %680

349:                                              ; preds = %344
  %350 = load i64, i64* %5, align 8
  %351 = call i32 @TREE_CODE(i64 %350)
  switch i32 %351, label %517 [
    i32 147, label %352
    i32 160, label %352
    i32 145, label %352
    i32 143, label %352
    i32 148, label %352
    i32 158, label %359
    i32 159, label %359
    i32 154, label %432
    i32 157, label %490
  ]

352:                                              ; preds = %349, %349, %349, %349, %349
  %353 = load i64, i64* %5, align 8
  %354 = call i64 @TREE_OPERAND(i64 %353, i32 0)
  %355 = load i64, i64* %6, align 8
  %356 = call i64 @TREE_OPERAND(i64 %355, i32 0)
  %357 = load i32, i32* %7, align 4
  %358 = call i32 @operand_equal_p(i64 %354, i64 %356, i32 %357)
  store i32 %358, i32* %4, align 4
  br label %680

359:                                              ; preds = %349, %349
  %360 = load i64, i64* %5, align 8
  %361 = call i64 @TREE_OPERAND(i64 %360, i32 0)
  %362 = load i64, i64* %6, align 8
  %363 = call i64 @TREE_OPERAND(i64 %362, i32 0)
  %364 = load i32, i32* %7, align 4
  %365 = call i32 @operand_equal_p(i64 %361, i64 %363, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %429

367:                                              ; preds = %359
  %368 = load i64, i64* %5, align 8
  %369 = call i64 @TREE_OPERAND(i64 %368, i32 1)
  %370 = load i64, i64* %6, align 8
  %371 = call i64 @TREE_OPERAND(i64 %370, i32 1)
  %372 = call i32 @tree_int_cst_equal(i64 %369, i64 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %382, label %374

374:                                              ; preds = %367
  %375 = load i64, i64* %5, align 8
  %376 = call i64 @TREE_OPERAND(i64 %375, i32 1)
  %377 = load i64, i64* %6, align 8
  %378 = call i64 @TREE_OPERAND(i64 %377, i32 1)
  %379 = load i32, i32* %7, align 4
  %380 = call i32 @operand_equal_p(i64 %376, i64 %378, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %429

382:                                              ; preds = %374, %367
  %383 = load i64, i64* %5, align 8
  %384 = call i64 @TREE_OPERAND(i64 %383, i32 2)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load i64, i64* %6, align 8
  %388 = call i64 @TREE_OPERAND(i64 %387, i32 2)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %396, label %390

390:                                              ; preds = %386, %382
  %391 = load i64, i64* %5, align 8
  %392 = call i64 @TREE_OPERAND(i64 %391, i32 2)
  %393 = load i64, i64* %6, align 8
  %394 = call i64 @TREE_OPERAND(i64 %393, i32 2)
  %395 = icmp eq i64 %392, %394
  br i1 %395, label %404, label %429

396:                                              ; preds = %386
  %397 = load i64, i64* %5, align 8
  %398 = call i64 @TREE_OPERAND(i64 %397, i32 2)
  %399 = load i64, i64* %6, align 8
  %400 = call i64 @TREE_OPERAND(i64 %399, i32 2)
  %401 = load i32, i32* %7, align 4
  %402 = call i32 @operand_equal_p(i64 %398, i64 %400, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %429

404:                                              ; preds = %396, %390
  %405 = load i64, i64* %5, align 8
  %406 = call i64 @TREE_OPERAND(i64 %405, i32 3)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = load i64, i64* %6, align 8
  %410 = call i64 @TREE_OPERAND(i64 %409, i32 3)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %419, label %412

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %5, align 8
  %414 = call i64 @TREE_OPERAND(i64 %413, i32 3)
  %415 = load i64, i64* %6, align 8
  %416 = call i64 @TREE_OPERAND(i64 %415, i32 3)
  %417 = icmp eq i64 %414, %416
  %418 = zext i1 %417 to i32
  br label %426

419:                                              ; preds = %408
  %420 = load i64, i64* %5, align 8
  %421 = call i64 @TREE_OPERAND(i64 %420, i32 3)
  %422 = load i64, i64* %6, align 8
  %423 = call i64 @TREE_OPERAND(i64 %422, i32 3)
  %424 = load i32, i32* %7, align 4
  %425 = call i32 @operand_equal_p(i64 %421, i64 %423, i32 %424)
  br label %426

426:                                              ; preds = %419, %412
  %427 = phi i32 [ %418, %412 ], [ %425, %419 ]
  %428 = icmp ne i32 %427, 0
  br label %429

429:                                              ; preds = %426, %396, %390, %374, %359
  %430 = phi i1 [ false, %396 ], [ false, %390 ], [ false, %374 ], [ false, %359 ], [ %428, %426 ]
  %431 = zext i1 %430 to i32
  store i32 %431, i32* %4, align 4
  br label %680

432:                                              ; preds = %349
  %433 = load i64, i64* %5, align 8
  %434 = call i64 @TREE_OPERAND(i64 %433, i32 0)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %432
  %437 = load i64, i64* %6, align 8
  %438 = call i64 @TREE_OPERAND(i64 %437, i32 0)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %436, %432
  %441 = load i64, i64* %5, align 8
  %442 = call i64 @TREE_OPERAND(i64 %441, i32 0)
  %443 = load i64, i64* %6, align 8
  %444 = call i64 @TREE_OPERAND(i64 %443, i32 0)
  %445 = icmp eq i64 %442, %444
  br i1 %445, label %454, label %487

446:                                              ; preds = %436
  %447 = load i64, i64* %5, align 8
  %448 = call i64 @TREE_OPERAND(i64 %447, i32 0)
  %449 = load i64, i64* %6, align 8
  %450 = call i64 @TREE_OPERAND(i64 %449, i32 0)
  %451 = load i32, i32* %7, align 4
  %452 = call i32 @operand_equal_p(i64 %448, i64 %450, i32 %451)
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %487

454:                                              ; preds = %446, %440
  %455 = load i64, i64* %5, align 8
  %456 = call i64 @TREE_OPERAND(i64 %455, i32 1)
  %457 = load i64, i64* %6, align 8
  %458 = call i64 @TREE_OPERAND(i64 %457, i32 1)
  %459 = load i32, i32* %7, align 4
  %460 = call i32 @operand_equal_p(i64 %456, i64 %458, i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %487

462:                                              ; preds = %454
  %463 = load i64, i64* %5, align 8
  %464 = call i64 @TREE_OPERAND(i64 %463, i32 2)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %470

466:                                              ; preds = %462
  %467 = load i64, i64* %6, align 8
  %468 = call i64 @TREE_OPERAND(i64 %467, i32 2)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %477, label %470

470:                                              ; preds = %466, %462
  %471 = load i64, i64* %5, align 8
  %472 = call i64 @TREE_OPERAND(i64 %471, i32 2)
  %473 = load i64, i64* %6, align 8
  %474 = call i64 @TREE_OPERAND(i64 %473, i32 2)
  %475 = icmp eq i64 %472, %474
  %476 = zext i1 %475 to i32
  br label %484

477:                                              ; preds = %466
  %478 = load i64, i64* %5, align 8
  %479 = call i64 @TREE_OPERAND(i64 %478, i32 2)
  %480 = load i64, i64* %6, align 8
  %481 = call i64 @TREE_OPERAND(i64 %480, i32 2)
  %482 = load i32, i32* %7, align 4
  %483 = call i32 @operand_equal_p(i64 %479, i64 %481, i32 %482)
  br label %484

484:                                              ; preds = %477, %470
  %485 = phi i32 [ %476, %470 ], [ %483, %477 ]
  %486 = icmp ne i32 %485, 0
  br label %487

487:                                              ; preds = %484, %454, %446, %440
  %488 = phi i1 [ false, %454 ], [ false, %446 ], [ false, %440 ], [ %486, %484 ]
  %489 = zext i1 %488 to i32
  store i32 %489, i32* %4, align 4
  br label %680

490:                                              ; preds = %349
  %491 = load i64, i64* %5, align 8
  %492 = call i64 @TREE_OPERAND(i64 %491, i32 0)
  %493 = load i64, i64* %6, align 8
  %494 = call i64 @TREE_OPERAND(i64 %493, i32 0)
  %495 = load i32, i32* %7, align 4
  %496 = call i32 @operand_equal_p(i64 %492, i64 %494, i32 %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %514

498:                                              ; preds = %490
  %499 = load i64, i64* %5, align 8
  %500 = call i64 @TREE_OPERAND(i64 %499, i32 1)
  %501 = load i64, i64* %6, align 8
  %502 = call i64 @TREE_OPERAND(i64 %501, i32 1)
  %503 = load i32, i32* %7, align 4
  %504 = call i32 @operand_equal_p(i64 %500, i64 %502, i32 %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %514

506:                                              ; preds = %498
  %507 = load i64, i64* %5, align 8
  %508 = call i64 @TREE_OPERAND(i64 %507, i32 2)
  %509 = load i64, i64* %6, align 8
  %510 = call i64 @TREE_OPERAND(i64 %509, i32 2)
  %511 = load i32, i32* %7, align 4
  %512 = call i32 @operand_equal_p(i64 %508, i64 %510, i32 %511)
  %513 = icmp ne i32 %512, 0
  br label %514

514:                                              ; preds = %506, %498, %490
  %515 = phi i1 [ false, %498 ], [ false, %490 ], [ %513, %506 ]
  %516 = zext i1 %515 to i32
  store i32 %516, i32* %4, align 4
  br label %680

517:                                              ; preds = %349
  store i32 0, i32* %4, align 4
  br label %680

518:                                              ; preds = %274
  %519 = load i64, i64* %5, align 8
  %520 = call i32 @TREE_CODE(i64 %519)
  switch i32 %520, label %650 [
    i32 161, label %521
    i32 138, label %521
    i32 140, label %528
    i32 137, label %528
    i32 139, label %547
    i32 136, label %547
    i32 135, label %547
    i32 156, label %583
  ]

521:                                              ; preds = %518, %518
  %522 = load i64, i64* %5, align 8
  %523 = call i64 @TREE_OPERAND(i64 %522, i32 0)
  %524 = load i64, i64* %6, align 8
  %525 = call i64 @TREE_OPERAND(i64 %524, i32 0)
  %526 = load i32, i32* %7, align 4
  %527 = call i32 @operand_equal_p(i64 %523, i64 %525, i32 %526)
  store i32 %527, i32* %4, align 4
  br label %680

528:                                              ; preds = %518, %518
  %529 = load i64, i64* %5, align 8
  %530 = call i64 @TREE_OPERAND(i64 %529, i32 0)
  %531 = load i64, i64* %6, align 8
  %532 = call i64 @TREE_OPERAND(i64 %531, i32 0)
  %533 = load i32, i32* %7, align 4
  %534 = call i32 @operand_equal_p(i64 %530, i64 %532, i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %544

536:                                              ; preds = %528
  %537 = load i64, i64* %5, align 8
  %538 = call i64 @TREE_OPERAND(i64 %537, i32 1)
  %539 = load i64, i64* %6, align 8
  %540 = call i64 @TREE_OPERAND(i64 %539, i32 1)
  %541 = load i32, i32* %7, align 4
  %542 = call i32 @operand_equal_p(i64 %538, i64 %540, i32 %541)
  %543 = icmp ne i32 %542, 0
  br label %544

544:                                              ; preds = %536, %528
  %545 = phi i1 [ false, %528 ], [ %543, %536 ]
  %546 = zext i1 %545 to i32
  store i32 %546, i32* %4, align 4
  br label %680

547:                                              ; preds = %518, %518, %518
  %548 = load i64, i64* %5, align 8
  %549 = call i64 @TREE_OPERAND(i64 %548, i32 0)
  %550 = load i64, i64* %6, align 8
  %551 = call i64 @TREE_OPERAND(i64 %550, i32 0)
  %552 = load i32, i32* %7, align 4
  %553 = call i32 @operand_equal_p(i64 %549, i64 %551, i32 %552)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %564

555:                                              ; preds = %547
  %556 = load i64, i64* %5, align 8
  %557 = call i64 @TREE_OPERAND(i64 %556, i32 1)
  %558 = load i64, i64* %6, align 8
  %559 = call i64 @TREE_OPERAND(i64 %558, i32 1)
  %560 = load i32, i32* %7, align 4
  %561 = call i32 @operand_equal_p(i64 %557, i64 %559, i32 %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %555
  store i32 1, i32* %4, align 4
  br label %680

564:                                              ; preds = %555, %547
  %565 = load i64, i64* %5, align 8
  %566 = call i64 @TREE_OPERAND(i64 %565, i32 0)
  %567 = load i64, i64* %6, align 8
  %568 = call i64 @TREE_OPERAND(i64 %567, i32 1)
  %569 = load i32, i32* %7, align 4
  %570 = call i32 @operand_equal_p(i64 %566, i64 %568, i32 %569)
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %564
  %573 = load i64, i64* %5, align 8
  %574 = call i64 @TREE_OPERAND(i64 %573, i32 1)
  %575 = load i64, i64* %6, align 8
  %576 = call i64 @TREE_OPERAND(i64 %575, i32 0)
  %577 = load i32, i32* %7, align 4
  %578 = call i32 @operand_equal_p(i64 %574, i64 %576, i32 %577)
  %579 = icmp ne i32 %578, 0
  br label %580

580:                                              ; preds = %572, %564
  %581 = phi i1 [ false, %564 ], [ %579, %572 ]
  %582 = zext i1 %581 to i32
  store i32 %582, i32* %4, align 4
  br label %680

583:                                              ; preds = %518
  %584 = load i64, i64* %5, align 8
  %585 = call i64 @TREE_OPERAND(i64 %584, i32 0)
  %586 = load i64, i64* %6, align 8
  %587 = call i64 @TREE_OPERAND(i64 %586, i32 0)
  %588 = load i32, i32* %7, align 4
  %589 = call i32 @operand_equal_p(i64 %585, i64 %587, i32 %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %592, label %591

591:                                              ; preds = %583
  store i32 0, i32* %4, align 4
  br label %680

592:                                              ; preds = %583
  %593 = load i64, i64* %5, align 8
  %594 = call i32 @call_expr_flags(i64 %593)
  store i32 %594, i32* %11, align 4
  %595 = load i32, i32* %7, align 4
  %596 = load i32, i32* @OEP_PURE_SAME, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %605

599:                                              ; preds = %592
  %600 = load i32, i32* @ECF_CONST, align 4
  %601 = load i32, i32* @ECF_PURE, align 4
  %602 = or i32 %600, %601
  %603 = load i32, i32* %11, align 4
  %604 = and i32 %603, %602
  store i32 %604, i32* %11, align 4
  br label %609

605:                                              ; preds = %592
  %606 = load i32, i32* @ECF_CONST, align 4
  %607 = load i32, i32* %11, align 4
  %608 = and i32 %607, %606
  store i32 %608, i32* %11, align 4
  br label %609

609:                                              ; preds = %605, %599
  %610 = load i32, i32* %11, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %613, label %612

612:                                              ; preds = %609
  store i32 0, i32* %4, align 4
  br label %680

613:                                              ; preds = %609
  %614 = load i64, i64* %5, align 8
  %615 = call i64 @TREE_OPERAND(i64 %614, i32 1)
  store i64 %615, i64* %5, align 8
  %616 = load i64, i64* %6, align 8
  %617 = call i64 @TREE_OPERAND(i64 %616, i32 1)
  store i64 %617, i64* %6, align 8
  br label %618

618:                                              ; preds = %635, %613
  %619 = load i64, i64* %5, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %618
  %622 = load i64, i64* %6, align 8
  %623 = icmp ne i64 %622, 0
  br label %624

624:                                              ; preds = %621, %618
  %625 = phi i1 [ false, %618 ], [ %623, %621 ]
  br i1 %625, label %626, label %640

626:                                              ; preds = %624
  %627 = load i64, i64* %5, align 8
  %628 = call i64 @TREE_VALUE(i64 %627)
  %629 = load i64, i64* %6, align 8
  %630 = call i64 @TREE_VALUE(i64 %629)
  %631 = load i32, i32* %7, align 4
  %632 = call i32 @operand_equal_p(i64 %628, i64 %630, i32 %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %635, label %634

634:                                              ; preds = %626
  store i32 0, i32* %4, align 4
  br label %680

635:                                              ; preds = %626
  %636 = load i64, i64* %5, align 8
  %637 = call i64 @TREE_CHAIN(i64 %636)
  store i64 %637, i64* %5, align 8
  %638 = load i64, i64* %6, align 8
  %639 = call i64 @TREE_CHAIN(i64 %638)
  store i64 %639, i64* %6, align 8
  br label %618

640:                                              ; preds = %624
  %641 = load i64, i64* %5, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %646, label %643

643:                                              ; preds = %640
  %644 = load i64, i64* %6, align 8
  %645 = icmp ne i64 %644, 0
  br label %646

646:                                              ; preds = %643, %640
  %647 = phi i1 [ true, %640 ], [ %645, %643 ]
  %648 = xor i1 %647, true
  %649 = zext i1 %648 to i32
  store i32 %649, i32* %4, align 4
  br label %680

650:                                              ; preds = %518
  store i32 0, i32* %4, align 4
  br label %680

651:                                              ; preds = %274
  %652 = load i64, i64* %5, align 8
  %653 = call i32 @TREE_CODE(i64 %652)
  %654 = load i32, i32* @FUNCTION_DECL, align 4
  %655 = icmp eq i32 %653, %654
  br i1 %655, label %656, label %676

656:                                              ; preds = %651
  %657 = load i64, i64* %5, align 8
  %658 = call i32 @DECL_BUILT_IN(i64 %657)
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %676

660:                                              ; preds = %656
  %661 = load i64, i64* %6, align 8
  %662 = call i32 @DECL_BUILT_IN(i64 %661)
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %676

664:                                              ; preds = %660
  %665 = load i64, i64* %5, align 8
  %666 = call i32 @DECL_BUILT_IN_CLASS(i64 %665)
  %667 = load i64, i64* %6, align 8
  %668 = call i32 @DECL_BUILT_IN_CLASS(i64 %667)
  %669 = icmp eq i32 %666, %668
  br i1 %669, label %670, label %676

670:                                              ; preds = %664
  %671 = load i64, i64* %5, align 8
  %672 = call i32 @DECL_FUNCTION_CODE(i64 %671)
  %673 = load i64, i64* %6, align 8
  %674 = call i32 @DECL_FUNCTION_CODE(i64 %673)
  %675 = icmp eq i32 %672, %674
  br label %676

676:                                              ; preds = %670, %664, %660, %656, %651
  %677 = phi i1 [ false, %664 ], [ false, %660 ], [ false, %656 ], [ false, %651 ], [ %675, %670 ]
  %678 = zext i1 %677 to i32
  store i32 %678, i32* %4, align 4
  br label %680

679:                                              ; preds = %274
  store i32 0, i32* %4, align 4
  br label %680

680:                                              ; preds = %679, %676, %650, %646, %634, %612, %591, %580, %563, %544, %521, %517, %514, %487, %429, %352, %348, %337, %315, %292, %289, %273, %260, %257, %238, %217, %211, %189, %178, %160, %135, %112, %82, %39, %30, %21
  %681 = load i32, i32* %4, align 4
  ret i32 %681
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @COMPARISON_CLASS_P(i64) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i32 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @REAL_VALUES_IDENTICAL(i32, i32) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i64 @TREE_VECTOR_CST_ELTS(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_REALPART(i64) #1

declare dso_local i64 @TREE_IMAGPART(i64) #1

declare dso_local i32 @TREE_STRING_LENGTH(i64) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @commutative_tree_code(i32) #1

declare dso_local i32 @call_expr_flags(i64) #1

declare dso_local i32 @DECL_BUILT_IN(i64) #1

declare dso_local i32 @DECL_BUILT_IN_CLASS(i64) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
