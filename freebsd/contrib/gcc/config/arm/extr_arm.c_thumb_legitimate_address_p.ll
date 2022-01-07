; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimate_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimate_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@virtual_incoming_args_rtx = common dso_local global i64 0, align 8
@virtual_outgoing_args_rtx = common dso_local global i64 0, align 8
@virtual_stack_dynamic_rtx = common dso_local global i64 0, align 8
@virtual_stack_vars_rtx = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thumb_legitimate_address_p(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_MODE_SIZE(i32 %8)
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  %12 = load i64, i64* @reload_in_progress, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @reload_completed, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @frame_pointer_rtx, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @reg_mentioned_p(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @arg_pointer_rtx, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @reg_mentioned_p(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @virtual_incoming_args_rtx, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @reg_mentioned_p(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @virtual_outgoing_args_rtx, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @reg_mentioned_p(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @virtual_stack_dynamic_rtx, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @reg_mentioned_p(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @virtual_stack_vars_rtx, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @reg_mentioned_p(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32, %27, %22, %17
  store i32 0, i32* %4, align 4
  br label %301

48:                                               ; preds = %42, %14, %11, %3
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @thumb_base_register_rtx_p(i64 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %301

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @GET_MODE_SIZE(i32 %56)
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @CONSTANT_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @GET_CODE(i64 %64)
  %66 = load i64, i64* @SYMBOL_REF, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* @flag_pic, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %301

76:                                               ; preds = %72, %68, %63, %59, %55
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = load i64, i64* @reload_completed, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @GET_CODE(i64 %84)
  %86 = load i64, i64* @LABEL_REF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %113, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @GET_CODE(i64 %89)
  %91 = load i64, i64* @CONST, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @XEXP(i64 %94, i32 0)
  %96 = call i64 @GET_CODE(i64 %95)
  %97 = load i64, i64* @PLUS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @XEXP(i64 %100, i32 0)
  %102 = call i64 @XEXP(i64 %101, i32 0)
  %103 = call i64 @GET_CODE(i64 %102)
  %104 = load i64, i64* @LABEL_REF, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @XEXP(i64 %107, i32 0)
  %109 = call i64 @XEXP(i64 %108, i32 1)
  %110 = call i64 @GET_CODE(i64 %109)
  %111 = load i64, i64* @CONST_INT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %83
  store i32 1, i32* %4, align 4
  br label %301

114:                                              ; preds = %106, %99, %93, %88, %80, %76
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @GET_CODE(i64 %115)
  %117 = load i64, i64* @POST_INC, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @GET_MODE_SIZE(i32 %120)
  %122 = icmp sge i32 %121, 4
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @XEXP(i64 %124, i32 0)
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @thumb_index_register_rtx_p(i64 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %4, align 4
  br label %301

130:                                              ; preds = %123, %119, %114
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @PLUS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %262

135:                                              ; preds = %130
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @GET_MODE_SIZE(i32 %136)
  %138 = icmp sle i32 %137, 4
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load i64, i64* %6, align 8
  %141 = call i64 @XEXP(i64 %140, i32 0)
  %142 = load i64, i64* @frame_pointer_rtx, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @XEXP(i64 %145, i32 1)
  %147 = load i64, i64* @frame_pointer_rtx, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i64, i64* %6, align 8
  %151 = call i64 @XEXP(i64 %150, i32 0)
  %152 = load i32, i32* %7, align 4
  %153 = call i64 @thumb_index_register_rtx_p(i64 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @XEXP(i64 %156, i32 1)
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @thumb_index_register_rtx_p(i64 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 1, i32* %4, align 4
  br label %301

162:                                              ; preds = %155, %149, %144, %139, %135
  %163 = load i64, i64* %6, align 8
  %164 = call i64 @XEXP(i64 %163, i32 0)
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @thumb_index_register_rtx_p(i64 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @XEXP(i64 %169, i32 0)
  %171 = load i64, i64* @arg_pointer_rtx, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %168, %162
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @XEXP(i64 %174, i32 1)
  %176 = call i64 @GET_CODE(i64 %175)
  %177 = load i64, i64* @CONST_INT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = load i32, i32* %5, align 4
  %181 = load i64, i64* %6, align 8
  %182 = call i64 @XEXP(i64 %181, i32 1)
  %183 = call i32 @INTVAL(i64 %182)
  %184 = call i64 @thumb_legitimate_offset_p(i32 %180, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 1, i32* %4, align 4
  br label %301

187:                                              ; preds = %179, %173, %168
  %188 = load i64, i64* %6, align 8
  %189 = call i64 @XEXP(i64 %188, i32 0)
  %190 = call i64 @GET_CODE(i64 %189)
  %191 = load i64, i64* @REG, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %229

193:                                              ; preds = %187
  %194 = load i64, i64* %6, align 8
  %195 = call i64 @XEXP(i64 %194, i32 0)
  %196 = call i64 @REGNO(i64 %195)
  %197 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %193
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @GET_MODE_SIZE(i32 %200)
  %202 = icmp sge i32 %201, 4
  br i1 %202, label %203, label %229

203:                                              ; preds = %199
  %204 = load i64, i64* %6, align 8
  %205 = call i64 @XEXP(i64 %204, i32 1)
  %206 = call i64 @GET_CODE(i64 %205)
  %207 = load i64, i64* @CONST_INT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load i64, i64* %6, align 8
  %211 = call i64 @XEXP(i64 %210, i32 1)
  %212 = call i32 @INTVAL(i64 %211)
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  %215 = load i64, i64* %6, align 8
  %216 = call i64 @XEXP(i64 %215, i32 1)
  %217 = call i32 @INTVAL(i64 %216)
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @GET_MODE_SIZE(i32 %218)
  %220 = add nsw i32 %217, %219
  %221 = icmp sle i32 %220, 1024
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = load i64, i64* %6, align 8
  %224 = call i64 @XEXP(i64 %223, i32 1)
  %225 = call i32 @INTVAL(i64 %224)
  %226 = and i32 %225, 3
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store i32 1, i32* %4, align 4
  br label %301

229:                                              ; preds = %222, %214, %209, %203, %199, %193, %187
  %230 = load i64, i64* %6, align 8
  %231 = call i64 @XEXP(i64 %230, i32 0)
  %232 = call i64 @GET_CODE(i64 %231)
  %233 = load i64, i64* @REG, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %229
  %236 = load i64, i64* %6, align 8
  %237 = call i64 @XEXP(i64 %236, i32 0)
  %238 = call i64 @REGNO(i64 %237)
  %239 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %235
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @GET_MODE_SIZE(i32 %242)
  %244 = icmp sge i32 %243, 4
  br i1 %244, label %245, label %258

245:                                              ; preds = %241
  %246 = load i64, i64* %6, align 8
  %247 = call i64 @XEXP(i64 %246, i32 1)
  %248 = call i64 @GET_CODE(i64 %247)
  %249 = load i64, i64* @CONST_INT, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load i64, i64* %6, align 8
  %253 = call i64 @XEXP(i64 %252, i32 1)
  %254 = call i32 @INTVAL(i64 %253)
  %255 = and i32 %254, 3
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i32 1, i32* %4, align 4
  br label %301

258:                                              ; preds = %251, %245, %241, %235, %229
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %295

262:                                              ; preds = %130
  %263 = load i32, i32* %5, align 4
  %264 = call i64 @GET_MODE_CLASS(i32 %263)
  %265 = load i64, i64* @MODE_FLOAT, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %294

267:                                              ; preds = %262
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @GET_MODE_SIZE(i32 %268)
  %270 = icmp eq i32 %269, 4
  br i1 %270, label %271, label %294

271:                                              ; preds = %267
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @GET_CODE(i64 %272)
  %274 = load i64, i64* @SYMBOL_REF, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %294

276:                                              ; preds = %271
  %277 = load i64, i64* %6, align 8
  %278 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %276
  %281 = load i64, i64* @flag_pic, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load i64, i64* %6, align 8
  %285 = call i32 @get_pool_constant(i64 %284)
  %286 = call i64 @symbol_mentioned_p(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i64, i64* %6, align 8
  %290 = call i32 @get_pool_constant(i64 %289)
  %291 = call i32 @pcrel_constant_p(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288, %283, %280
  store i32 1, i32* %4, align 4
  br label %301

294:                                              ; preds = %288, %276, %271, %267, %262
  br label %295

295:                                              ; preds = %294, %261
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  store i32 0, i32* %4, align 4
  br label %301

301:                                              ; preds = %300, %293, %257, %228, %186, %161, %129, %113, %75, %54, %47
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @reg_mentioned_p(i64, i64) #1

declare dso_local i64 @thumb_base_register_rtx_p(i64, i32, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @thumb_index_register_rtx_p(i64, i32) #1

declare dso_local i64 @thumb_legitimate_offset_p(i32, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @symbol_mentioned_p(i32) #1

declare dso_local i32 @get_pool_constant(i64) #1

declare dso_local i32 @pcrel_constant_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
