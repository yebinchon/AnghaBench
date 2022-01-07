; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_combine_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_combine_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@reg_qty = common dso_local global i64* null, align 8
@qty = common dso_local global %struct.TYPE_2__* null, align 8
@REG_NO_CONFLICT = common dso_local global i32 0, align 4
@qty_phys_copy_sugg = common dso_local global i32* null, align 8
@qty_phys_num_copy_sugg = common dso_local global i32* null, align 8
@qty_phys_sugg = common dso_local global i32* null, align 8
@qty_phys_num_sugg = common dso_local global i32* null, align 8
@current_function_has_nonlocal_label = common dso_local global i64 0, align 8
@REG_DEAD = common dso_local global i32 0, align 4
@reg_offset = common dso_local global i64* null, align 8
@reg_next_in_qty = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @combine_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combine_regs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %71, %6
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @SUBREG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @SUBREG_REG(i32 %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = call i64 @REG_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %28
  %35 = load i32, i32* %20, align 4
  %36 = call i64 @GET_MODE(i32 %35)
  %37 = call i32 @GET_MODE_SIZE(i64 %36)
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @UNITS_PER_WORD, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @REGNO(i32 %43)
  %45 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @REGNO(i32 %48)
  %50 = load i32, i32* %20, align 4
  %51 = call i64 @GET_MODE(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @SUBREG_BYTE(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @GET_MODE(i32 %54)
  %56 = call i64 @subreg_regno_offset(i32 %49, i64 %51, i32 %53, i64 %55)
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  br label %70

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @SUBREG_BYTE(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @GET_MODE(i32 %64)
  %66 = call i32 @REGMODE_NATURAL_SIZE(i64 %65)
  %67 = sdiv i32 %63, %66
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %61, %47
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i32, i32* %20, align 4
  store i32 %72, i32* %8, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @REG_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %624

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @REGNO(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32**, i32*** @hard_regno_nregs, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @GET_MODE(i32 %90)
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %17, align 4
  br label %107

94:                                               ; preds = %78
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @GET_MODE(i32 %95)
  %97 = call i32 @GET_MODE_SIZE(i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @GET_MODE(i32 %98)
  %100 = call i32 @REGMODE_NATURAL_SIZE(i64 %99)
  %101 = sub nsw i32 %100, 1
  %102 = add nsw i32 %97, %101
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @GET_MODE(i32 %103)
  %105 = call i32 @REGMODE_NATURAL_SIZE(i64 %104)
  %106 = sdiv i32 %102, %105
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %94, %84
  br label %108

108:                                              ; preds = %156, %107
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @GET_CODE(i32 %109)
  %111 = load i64, i64* @SUBREG, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %158

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @SUBREG_REG(i32 %114)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = call i64 @REG_P(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %113
  %120 = load i32, i32* %21, align 4
  %121 = call i64 @GET_MODE(i32 %120)
  %122 = call i32 @GET_MODE_SIZE(i64 %121)
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @UNITS_PER_WORD, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %119
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @REGNO(i32 %128)
  %130 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load i32, i32* %21, align 4
  %134 = call i32 @REGNO(i32 %133)
  %135 = load i32, i32* %21, align 4
  %136 = call i64 @GET_MODE(i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @SUBREG_BYTE(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @GET_MODE(i32 %139)
  %141 = call i64 @subreg_regno_offset(i32 %134, i64 %136, i32 %138, i64 %140)
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %16, align 4
  br label %155

146:                                              ; preds = %127
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @SUBREG_BYTE(i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = call i64 @GET_MODE(i32 %149)
  %151 = call i32 @REGMODE_NATURAL_SIZE(i64 %150)
  %152 = sdiv i32 %148, %151
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %16, align 4
  br label %155

155:                                              ; preds = %146, %132
  br label %156

156:                                              ; preds = %155, %113
  %157 = load i32, i32* %21, align 4
  store i32 %157, i32* %9, align 4
  br label %108

158:                                              ; preds = %108
  %159 = load i32, i32* %9, align 4
  %160 = call i64 @REG_P(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i32 0, i32* %7, align 4
  br label %624

163:                                              ; preds = %158
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @REGNO(i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = load i32**, i32*** @hard_regno_nregs, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @GET_MODE(i32 %175)
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %18, align 4
  br label %192

179:                                              ; preds = %163
  %180 = load i32, i32* %9, align 4
  %181 = call i64 @GET_MODE(i32 %180)
  %182 = call i32 @GET_MODE_SIZE(i64 %181)
  %183 = load i32, i32* %9, align 4
  %184 = call i64 @GET_MODE(i32 %183)
  %185 = call i32 @REGMODE_NATURAL_SIZE(i64 %184)
  %186 = sub nsw i32 %185, 1
  %187 = add nsw i32 %182, %186
  %188 = load i32, i32* %9, align 4
  %189 = call i64 @GET_MODE(i32 %188)
  %190 = call i32 @REGMODE_NATURAL_SIZE(i64 %189)
  %191 = sdiv i32 %187, %190
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %179, %169
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i64*, i64** @reg_qty, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %201, 0
  br i1 %202, label %281, label %203

203:                                              ; preds = %196, %192
  %204 = load i32, i32* %16, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %18, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %281, label %212

212:                                              ; preds = %206, %203
  %213 = load i32, i32* %16, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %18, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %281, label %221

221:                                              ; preds = %215, %212
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %241

225:                                              ; preds = %221
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load i32, i32* %17, align 4
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %232 = load i64*, i64** @reg_qty, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %230, %239
  br i1 %240, label %281, label %241

241:                                              ; preds = %229, %225, %221
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i64*, i64** @reg_qty, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %250, -1
  br i1 %251, label %281, label %252

252:                                              ; preds = %245, %241
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %255 = icmp sge i32 %253, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @REG_NO_CONFLICT, align 4
  %259 = load i32, i32* %8, align 4
  %260 = call i64 @find_reg_note(i32 %257, i32 %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %281, label %262

262:                                              ; preds = %256, %252
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %15, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %281, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %270, %266
  %275 = load i32, i32* %8, align 4
  %276 = call i64 @GET_MODE(i32 %275)
  %277 = load i32, i32* %9, align 4
  %278 = call i64 @GET_MODE(i32 %277)
  %279 = call i32 @MODES_TIEABLE_P(i64 %276, i64 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %274, %270, %262, %256, %245, %229, %215, %206, %196
  store i32 0, i32* %7, align 4
  br label %624

282:                                              ; preds = %274
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %375

286:                                              ; preds = %282
  %287 = load i64*, i64** @reg_qty, align 8
  %288 = load i32, i32* %15, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, -2
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %11, align 4
  %296 = mul nsw i32 2, %295
  %297 = call i32 @reg_is_born(i32 %294, i32 %296)
  br label %298

298:                                              ; preds = %293, %286
  %299 = load i64*, i64** @reg_qty, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = icmp uge i64 %303, 0
  br i1 %304, label %305, label %374

305:                                              ; preds = %298
  %306 = load i32, i32* %10, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %340

308:                                              ; preds = %305
  %309 = load i32*, i32** @qty_phys_copy_sugg, align 8
  %310 = load i64*, i64** @reg_qty, align 8
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds i32, i32* %309, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %14, align 4
  %318 = call i32 @TEST_HARD_REG_BIT(i32 %316, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %340, label %320

320:                                              ; preds = %308
  %321 = load i32*, i32** @qty_phys_copy_sugg, align 8
  %322 = load i64*, i64** @reg_qty, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds i32, i32* %321, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @SET_HARD_REG_BIT(i32 %328, i32 %329)
  %331 = load i32*, i32** @qty_phys_num_copy_sugg, align 8
  %332 = load i64*, i64** @reg_qty, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds i32, i32* %331, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 4
  br label %373

340:                                              ; preds = %308, %305
  %341 = load i32*, i32** @qty_phys_sugg, align 8
  %342 = load i64*, i64** @reg_qty, align 8
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i32, i32* %341, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %14, align 4
  %350 = call i32 @TEST_HARD_REG_BIT(i32 %348, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %372, label %352

352:                                              ; preds = %340
  %353 = load i32*, i32** @qty_phys_sugg, align 8
  %354 = load i64*, i64** @reg_qty, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i32, i32* %353, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %14, align 4
  %362 = call i32 @SET_HARD_REG_BIT(i32 %360, i32 %361)
  %363 = load i32*, i32** @qty_phys_num_sugg, align 8
  %364 = load i64*, i64** @reg_qty, align 8
  %365 = load i32, i32* %15, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds i32, i32* %363, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %352, %340
  br label %373

373:                                              ; preds = %372, %320
  br label %374

374:                                              ; preds = %373, %298
  store i32 0, i32* %7, align 4
  br label %624

375:                                              ; preds = %282
  %376 = load i32, i32* %15, align 4
  %377 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %448

379:                                              ; preds = %375
  %380 = load i32, i32* %10, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %414

382:                                              ; preds = %379
  %383 = load i32*, i32** @qty_phys_copy_sugg, align 8
  %384 = load i64*, i64** @reg_qty, align 8
  %385 = load i32, i32* %14, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds i32, i32* %383, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %15, align 4
  %392 = call i32 @TEST_HARD_REG_BIT(i32 %390, i32 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %414, label %394

394:                                              ; preds = %382
  %395 = load i32*, i32** @qty_phys_copy_sugg, align 8
  %396 = load i64*, i64** @reg_qty, align 8
  %397 = load i32, i32* %14, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %396, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds i32, i32* %395, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %15, align 4
  %404 = call i32 @SET_HARD_REG_BIT(i32 %402, i32 %403)
  %405 = load i32*, i32** @qty_phys_num_copy_sugg, align 8
  %406 = load i64*, i64** @reg_qty, align 8
  %407 = load i32, i32* %14, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %406, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds i32, i32* %405, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %411, align 4
  br label %447

414:                                              ; preds = %382, %379
  %415 = load i32*, i32** @qty_phys_sugg, align 8
  %416 = load i64*, i64** @reg_qty, align 8
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %416, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds i32, i32* %415, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %15, align 4
  %424 = call i32 @TEST_HARD_REG_BIT(i32 %422, i32 %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %446, label %426

426:                                              ; preds = %414
  %427 = load i32*, i32** @qty_phys_sugg, align 8
  %428 = load i64*, i64** @reg_qty, align 8
  %429 = load i32, i32* %14, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i64, i64* %428, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds i32, i32* %427, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %15, align 4
  %436 = call i32 @SET_HARD_REG_BIT(i32 %434, i32 %435)
  %437 = load i32*, i32** @qty_phys_num_sugg, align 8
  %438 = load i64*, i64** @reg_qty, align 8
  %439 = load i32, i32* %14, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %438, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds i32, i32* %437, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %426, %414
  br label %447

447:                                              ; preds = %446, %394
  store i32 0, i32* %7, align 4
  br label %624

448:                                              ; preds = %375
  %449 = load i64*, i64** @reg_qty, align 8
  %450 = load i32, i32* %15, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i64, i64* %449, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = icmp uge i64 %453, -1
  br i1 %454, label %468, label %455

455:                                              ; preds = %448
  %456 = load i64, i64* @current_function_has_nonlocal_label, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %455
  %459 = load i32, i32* %14, align 4
  %460 = call i64 @REG_N_CALLS_CROSSED(i32 %459)
  %461 = icmp sgt i64 %460, 0
  %462 = zext i1 %461 to i32
  %463 = load i32, i32* %15, align 4
  %464 = call i64 @REG_N_CALLS_CROSSED(i32 %463)
  %465 = icmp sgt i64 %464, 0
  %466 = zext i1 %465 to i32
  %467 = icmp ne i32 %462, %466
  br i1 %467, label %468, label %469

468:                                              ; preds = %458, %448
  store i32 0, i32* %7, align 4
  br label %624

469:                                              ; preds = %458, %455
  %470 = load i32, i32* %13, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %478, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* %12, align 4
  %474 = load i32, i32* @REG_DEAD, align 4
  %475 = load i32, i32* %14, align 4
  %476 = call i64 @find_regno_note(i32 %473, i32 %474, i32 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %622

478:                                              ; preds = %472, %469
  %479 = load i32, i32* %15, align 4
  %480 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %481 = load i64*, i64** @reg_qty, align 8
  %482 = load i32, i32* %14, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i64, i64* %481, i64 %483
  %485 = load i64, i64* %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %480, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 8
  %489 = call i64 @reg_meets_class_p(i32 %479, i32 %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %622

491:                                              ; preds = %478
  %492 = load i64*, i64** @reg_qty, align 8
  %493 = load i32, i32* %14, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i64, i64* %492, i64 %494
  %496 = load i64, i64* %495, align 8
  %497 = trunc i64 %496 to i32
  store i32 %497, i32* %19, align 4
  %498 = load i32, i32* %19, align 4
  %499 = sext i32 %498 to i64
  %500 = load i64*, i64** @reg_qty, align 8
  %501 = load i32, i32* %15, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i64, i64* %500, i64 %502
  store i64 %499, i64* %503, align 8
  %504 = load i64*, i64** @reg_offset, align 8
  %505 = load i32, i32* %14, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i64, i64* %504, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = load i32, i32* %16, align 4
  %510 = sext i32 %509 to i64
  %511 = add nsw i64 %508, %510
  %512 = load i64*, i64** @reg_offset, align 8
  %513 = load i32, i32* %15, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %512, i64 %514
  store i64 %511, i64* %515, align 8
  %516 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %517 = load i32, i32* %19, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32*, i32** @reg_next_in_qty, align 8
  %523 = load i32, i32* %15, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 %521, i32* %525, align 4
  %526 = load i32, i32* %15, align 4
  %527 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %528 = load i32, i32* %19, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %530, i32 0, i32 1
  store i32 %526, i32* %531, align 4
  %532 = load i32, i32* %19, align 4
  %533 = load i32, i32* %15, align 4
  %534 = call i32 @update_qty_class(i32 %532, i32 %533)
  %535 = load i32, i32* %15, align 4
  %536 = call i64 @REG_N_CALLS_CROSSED(i32 %535)
  %537 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %538 = load i32, i32* %19, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %540, i32 0, i32 6
  %542 = load i32, i32* %541, align 4
  %543 = sext i32 %542 to i64
  %544 = add nsw i64 %543, %536
  %545 = trunc i64 %544 to i32
  store i32 %545, i32* %541, align 4
  %546 = load i32, i32* %15, align 4
  %547 = call i64 @REG_N_THROWING_CALLS_CROSSED(i32 %546)
  %548 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %549 = load i32, i32* %19, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %551, i32 0, i32 5
  %553 = load i32, i32* %552, align 8
  %554 = sext i32 %553 to i64
  %555 = add nsw i64 %554, %547
  %556 = trunc i64 %555 to i32
  store i32 %556, i32* %552, align 8
  %557 = load i32, i32* %15, align 4
  %558 = call i64 @REG_N_REFS(i32 %557)
  %559 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %560 = load i32, i32* %19, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %559, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %562, i32 0, i32 4
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  %566 = add nsw i64 %565, %558
  %567 = trunc i64 %566 to i32
  store i32 %567, i32* %563, align 4
  %568 = load i32, i32* %15, align 4
  %569 = call i64 @REG_FREQ(i32 %568)
  %570 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %571 = load i32, i32* %19, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %573, i32 0, i32 3
  %575 = load i32, i32* %574, align 8
  %576 = sext i32 %575 to i64
  %577 = add nsw i64 %576, %569
  %578 = trunc i64 %577 to i32
  store i32 %578, i32* %574, align 8
  %579 = load i32, i32* %17, align 4
  %580 = load i32, i32* %18, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %582, label %621

582:                                              ; preds = %491
  %583 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %584 = load i32, i32* %19, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  store i32 %588, i32* %22, align 4
  br label %589

589:                                              ; preds = %601, %582
  %590 = load i32, i32* %22, align 4
  %591 = icmp sge i32 %590, 0
  br i1 %591, label %592, label %607

592:                                              ; preds = %589
  %593 = load i32, i32* %16, align 4
  %594 = sext i32 %593 to i64
  %595 = load i64*, i64** @reg_offset, align 8
  %596 = load i32, i32* %22, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i64, i64* %595, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = sub nsw i64 %599, %594
  store i64 %600, i64* %598, align 8
  br label %601

601:                                              ; preds = %592
  %602 = load i32*, i32** @reg_next_in_qty, align 8
  %603 = load i32, i32* %22, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  store i32 %606, i32* %22, align 4
  br label %589

607:                                              ; preds = %589
  %608 = load i32, i32* %18, align 4
  %609 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %610 = load i32, i32* %19, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %609, i64 %611
  %613 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %612, i32 0, i32 0
  store i32 %608, i32* %613, align 8
  %614 = load i32, i32* %9, align 4
  %615 = call i64 @GET_MODE(i32 %614)
  %616 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %617 = load i32, i32* %19, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %619, i32 0, i32 2
  store i64 %615, i64* %620, align 8
  br label %621

621:                                              ; preds = %607, %491
  br label %623

622:                                              ; preds = %478, %472
  store i32 0, i32* %7, align 4
  br label %624

623:                                              ; preds = %621
  store i32 1, i32* %7, align 4
  br label %624

624:                                              ; preds = %623, %622, %468, %447, %374, %281, %162, %77
  %625 = load i32, i32* %7, align 4
  ret i32 %625
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @subreg_regno_offset(i32, i64, i32, i64) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @REGMODE_NATURAL_SIZE(i64) #1

declare dso_local i64 @find_reg_note(i32, i32, i32) #1

declare dso_local i32 @MODES_TIEABLE_P(i64, i64) #1

declare dso_local i32 @reg_is_born(i32, i32) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @REG_N_CALLS_CROSSED(i32) #1

declare dso_local i64 @find_regno_note(i32, i32, i32) #1

declare dso_local i64 @reg_meets_class_p(i32, i32) #1

declare dso_local i32 @update_qty_class(i32, i32) #1

declare dso_local i64 @REG_N_THROWING_CALLS_CROSSED(i32) #1

declare dso_local i64 @REG_N_REFS(i32) #1

declare dso_local i64 @REG_FREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
