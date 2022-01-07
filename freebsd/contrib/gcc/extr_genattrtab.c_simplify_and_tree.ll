; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_and_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_and_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AND = common dso_local global i64 0, align 8
@IOR = common dso_local global i64 0, align 8
@true_rtx = common dso_local global i64 0, align 8
@NOT = common dso_local global i64 0, align 8
@false_rtx = common dso_local global i64 0, align 8
@EQ_ATTR_ALT = common dso_local global i64 0, align 8
@EQ_ATTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32, i32)* @simplify_and_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_and_tree(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @AND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @simplify_and_tree(i64 %22, i64* %23, i32 %24, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @XEXP(i64 %27, i32 1)
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @simplify_and_tree(i64 %28, i64* %29, i32 %30, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %20
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @XEXP(i64 %39, i32 1)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %37, %20
  %43 = load i64, i64* @AND, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @attr_rtx(i64 %43, i64 %44, i64 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @simplify_test_exp_in_temp(i64 %47, i32 %48, i32 %49)
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %42, %37
  br label %109

52:                                               ; preds = %4
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @IOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %52
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @simplify_and_tree(i64 %61, i64* %13, i32 %62, i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @true_rtx, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @XEXP(i64 %71, i32 1)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @simplify_and_tree(i64 %72, i64* %13, i32 %73, i32 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @true_rtx, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %57
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* @true_rtx, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %82, %57
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @XEXP(i64 %90, i32 0)
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @XEXP(i64 %95, i32 1)
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %93, %88
  %99 = load i64, i64* @IOR, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @attr_rtx(i64 %99, i64 %100, i64 %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @simplify_test_exp_in_temp(i64 %103, i32 %104, i32 %105)
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %98, %93
  br label %108

108:                                              ; preds = %107, %52
  br label %109

109:                                              ; preds = %108, %51
  %110 = load i64, i64* %6, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @true_rtx, align 8
  store i64 %115, i64* %5, align 8
  br label %369

116:                                              ; preds = %109
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @GET_CODE(i64 %117)
  %119 = load i64, i64* @NOT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @XEXP(i64 %122, i32 0)
  %124 = load i64*, i64** %7, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i64, i64* @false_rtx, align 8
  store i64 %128, i64* %5, align 8
  br label %369

129:                                              ; preds = %121, %116
  %130 = load i64*, i64** %7, align 8
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @NOT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load i64, i64* %6, align 8
  %137 = load i64*, i64** %7, align 8
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @XEXP(i64 %138, i32 0)
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @false_rtx, align 8
  store i64 %142, i64* %5, align 8
  br label %369

143:                                              ; preds = %135, %129
  %144 = load i64, i64* %6, align 8
  %145 = call i64 @GET_CODE(i64 %144)
  %146 = load i64, i64* @EQ_ATTR_ALT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %143
  %149 = load i64*, i64** %7, align 8
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @GET_CODE(i64 %150)
  %152 = load i64, i64* @EQ_ATTR_ALT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %181

154:                                              ; preds = %148
  %155 = load i64*, i64** %7, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i64 @attr_alt_subset_p(i64 %156, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i64, i64* @true_rtx, align 8
  store i64 %161, i64* %5, align 8
  br label %369

162:                                              ; preds = %154
  %163 = load i64*, i64** %7, align 8
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @attr_alt_subset_of_compl_p(i64 %164, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i64, i64* @false_rtx, align 8
  store i64 %169, i64* %5, align 8
  br label %369

170:                                              ; preds = %162
  %171 = load i64, i64* %6, align 8
  %172 = load i64*, i64** %7, align 8
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @attr_alt_subset_p(i64 %171, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i64, i64* @true_rtx, align 8
  %178 = load i64*, i64** %7, align 8
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %176, %170
  %180 = load i64, i64* %6, align 8
  store i64 %180, i64* %5, align 8
  br label %369

181:                                              ; preds = %148, %143
  %182 = load i64, i64* %6, align 8
  %183 = call i64 @GET_CODE(i64 %182)
  %184 = load i64, i64* @EQ_ATTR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %213

186:                                              ; preds = %181
  %187 = load i64*, i64** %7, align 8
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @GET_CODE(i64 %188)
  %190 = load i64, i64* @EQ_ATTR, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %186
  %193 = load i64, i64* %6, align 8
  %194 = call i64 @XSTR(i64 %193, i32 0)
  %195 = load i64*, i64** %7, align 8
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @XSTR(i64 %196, i32 0)
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %5, align 8
  br label %369

201:                                              ; preds = %192
  %202 = load i64, i64* %6, align 8
  %203 = call i64 @XSTR(i64 %202, i32 1)
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @XSTR(i64 %205, i32 1)
  %207 = call i32 @strcmp_check(i64 %203, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %201
  %210 = load i64, i64* @true_rtx, align 8
  store i64 %210, i64* %5, align 8
  br label %369

211:                                              ; preds = %201
  %212 = load i64, i64* @false_rtx, align 8
  store i64 %212, i64* %5, align 8
  br label %369

213:                                              ; preds = %186, %181
  %214 = load i64*, i64** %7, align 8
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @GET_CODE(i64 %215)
  %217 = load i64, i64* @EQ_ATTR, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %253

219:                                              ; preds = %213
  %220 = load i64, i64* %6, align 8
  %221 = call i64 @GET_CODE(i64 %220)
  %222 = load i64, i64* @NOT, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %253

224:                                              ; preds = %219
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @XEXP(i64 %225, i32 0)
  %227 = call i64 @GET_CODE(i64 %226)
  %228 = load i64, i64* @EQ_ATTR, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %224
  %231 = load i64*, i64** %7, align 8
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @XSTR(i64 %232, i32 0)
  %234 = load i64, i64* %6, align 8
  %235 = call i64 @XEXP(i64 %234, i32 0)
  %236 = call i64 @XSTR(i64 %235, i32 0)
  %237 = icmp ne i64 %233, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i64, i64* %6, align 8
  store i64 %239, i64* %5, align 8
  br label %369

240:                                              ; preds = %230
  %241 = load i64*, i64** %7, align 8
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @XSTR(i64 %242, i32 1)
  %244 = load i64, i64* %6, align 8
  %245 = call i64 @XEXP(i64 %244, i32 0)
  %246 = call i64 @XSTR(i64 %245, i32 1)
  %247 = call i32 @strcmp_check(i64 %243, i64 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %240
  %250 = load i64, i64* @false_rtx, align 8
  store i64 %250, i64* %5, align 8
  br label %369

251:                                              ; preds = %240
  %252 = load i64, i64* @true_rtx, align 8
  store i64 %252, i64* %5, align 8
  br label %369

253:                                              ; preds = %224, %219, %213
  %254 = load i64, i64* %6, align 8
  %255 = call i64 @GET_CODE(i64 %254)
  %256 = load i64, i64* @EQ_ATTR, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %296

258:                                              ; preds = %253
  %259 = load i64*, i64** %7, align 8
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @GET_CODE(i64 %260)
  %262 = load i64, i64* @NOT, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %296

264:                                              ; preds = %258
  %265 = load i64*, i64** %7, align 8
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @XEXP(i64 %266, i32 0)
  %268 = call i64 @GET_CODE(i64 %267)
  %269 = load i64, i64* @EQ_ATTR, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %296

271:                                              ; preds = %264
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @XSTR(i64 %272, i32 0)
  %274 = load i64*, i64** %7, align 8
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @XEXP(i64 %275, i32 0)
  %277 = call i64 @XSTR(i64 %276, i32 0)
  %278 = icmp ne i64 %273, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = load i64, i64* %6, align 8
  store i64 %280, i64* %5, align 8
  br label %369

281:                                              ; preds = %271
  %282 = load i64, i64* %6, align 8
  %283 = call i64 @XSTR(i64 %282, i32 1)
  %284 = load i64*, i64** %7, align 8
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @XEXP(i64 %285, i32 0)
  %287 = call i64 @XSTR(i64 %286, i32 1)
  %288 = call i32 @strcmp_check(i64 %283, i64 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %281
  %291 = load i64, i64* @false_rtx, align 8
  store i64 %291, i64* %5, align 8
  br label %369

292:                                              ; preds = %281
  %293 = load i64, i64* @true_rtx, align 8
  %294 = load i64*, i64** %7, align 8
  store i64 %293, i64* %294, align 8
  br label %295

295:                                              ; preds = %292
  br label %361

296:                                              ; preds = %264, %258, %253
  %297 = load i64, i64* %6, align 8
  %298 = call i64 @GET_CODE(i64 %297)
  %299 = load i64, i64* @NOT, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %318

301:                                              ; preds = %296
  %302 = load i64*, i64** %7, align 8
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @GET_CODE(i64 %303)
  %305 = load i64, i64* @NOT, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %318

307:                                              ; preds = %301
  %308 = load i64, i64* %6, align 8
  %309 = call i64 @XEXP(i64 %308, i32 0)
  %310 = load i64*, i64** %7, align 8
  %311 = load i64, i64* %310, align 8
  %312 = call i64 @XEXP(i64 %311, i32 0)
  %313 = call i64 @attr_equal_p(i64 %309, i64 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = load i64, i64* @true_rtx, align 8
  store i64 %316, i64* %5, align 8
  br label %369

317:                                              ; preds = %307
  br label %360

318:                                              ; preds = %301, %296
  %319 = load i64, i64* %6, align 8
  %320 = call i64 @GET_CODE(i64 %319)
  %321 = load i64, i64* @NOT, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load i64, i64* %6, align 8
  %325 = call i64 @XEXP(i64 %324, i32 0)
  %326 = load i64*, i64** %7, align 8
  %327 = load i64, i64* %326, align 8
  %328 = call i64 @attr_equal_p(i64 %325, i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %323
  %331 = load i64, i64* @false_rtx, align 8
  store i64 %331, i64* %5, align 8
  br label %369

332:                                              ; preds = %323
  br label %359

333:                                              ; preds = %318
  %334 = load i64*, i64** %7, align 8
  %335 = load i64, i64* %334, align 8
  %336 = call i64 @GET_CODE(i64 %335)
  %337 = load i64, i64* @NOT, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %349

339:                                              ; preds = %333
  %340 = load i64*, i64** %7, align 8
  %341 = load i64, i64* %340, align 8
  %342 = call i64 @XEXP(i64 %341, i32 0)
  %343 = load i64, i64* %6, align 8
  %344 = call i64 @attr_equal_p(i64 %342, i64 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %339
  %347 = load i64, i64* @false_rtx, align 8
  store i64 %347, i64* %5, align 8
  br label %369

348:                                              ; preds = %339
  br label %358

349:                                              ; preds = %333
  %350 = load i64, i64* %6, align 8
  %351 = load i64*, i64** %7, align 8
  %352 = load i64, i64* %351, align 8
  %353 = call i64 @attr_equal_p(i64 %350, i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = load i64, i64* @true_rtx, align 8
  store i64 %356, i64* %5, align 8
  br label %369

357:                                              ; preds = %349
  br label %358

358:                                              ; preds = %357, %348
  br label %359

359:                                              ; preds = %358, %332
  br label %360

360:                                              ; preds = %359, %317
  br label %361

361:                                              ; preds = %360, %295
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %6, align 8
  store i64 %368, i64* %5, align 8
  br label %369

369:                                              ; preds = %367, %355, %346, %330, %315, %290, %279, %251, %249, %238, %211, %209, %199, %179, %168, %160, %141, %127, %114
  %370 = load i64, i64* %5, align 8
  ret i64 %370
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @attr_rtx(i64, i64, i64) #1

declare dso_local i64 @simplify_test_exp_in_temp(i64, i32, i32) #1

declare dso_local i64 @attr_alt_subset_p(i64, i64) #1

declare dso_local i64 @attr_alt_subset_of_compl_p(i64, i64) #1

declare dso_local i64 @XSTR(i64, i32) #1

declare dso_local i32 @strcmp_check(i64, i64) #1

declare dso_local i64 @attr_equal_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
