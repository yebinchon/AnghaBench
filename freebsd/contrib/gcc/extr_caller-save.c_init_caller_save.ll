; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_init_caller_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_init_caller_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@call_fixed_regs = common dso_local global i32* null, align 8
@MOVE_MAX_WORDS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@regno_save_mode = common dso_local global i64** null, align 8
@call_fixed_reg_set = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@PLUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@HOST_BITS_PER_INT = common dso_local global i32 0, align 4
@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@reg_save_code = common dso_local global i32** null, align 8
@reg_restore_code = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_caller_save() #0 {
  %1 = alloca i32, align 4
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
  %16 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %89, %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %17
  %22 = load i64*, i64** @call_used_regs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %21
  %29 = load i32*, i32** @call_fixed_regs, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %76, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MOVE_MAX_WORDS, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* @VOIDmode, align 8
  %44 = call i64 @HARD_REGNO_CALLER_SAVE_MODE(i32 %41, i32 %42, i64 %43)
  %45 = load i64**, i64*** @regno_save_mode, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %44, i64* %52, align 8
  %53 = load i64**, i64*** @regno_save_mode, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64*, i64** %53, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VOIDmode, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %40
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** @call_fixed_regs, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @call_fixed_reg_set, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @SET_HARD_REG_BIT(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %64, %40
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %36

79:                                               ; preds = %36
  br label %88

80:                                               ; preds = %28, %21
  %81 = load i64, i64* @VOIDmode, align 8
  %82 = load i64**, i64*** @regno_save_mode, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %81, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %79
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %17

92:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %118, %92
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i32*, i32** @reg_class_contents, align 8
  %99 = load i64**, i64*** @regno_save_mode, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @PLUS, align 4
  %107 = load i32, i32* @CONST_INT, align 4
  %108 = call i64 @base_reg_class(i64 %105, i32 %106, i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %98, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @TEST_HARD_REG_BIT(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  br label %121

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %93

121:                                              ; preds = %116, %93
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %124 = icmp slt i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @gcc_assert(i32 %125)
  %127 = load i64, i64* @Pmode, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @gen_rtx_REG(i64 %127, i32 %128)
  store i32 %129, i32* %1, align 4
  %130 = load i32, i32* @HOST_BITS_PER_INT, align 4
  %131 = sdiv i32 %130, 2
  %132 = shl i32 1, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %178, %121
  %134 = load i32, i32* %2, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %181

136:                                              ; preds = %133
  %137 = load i64, i64* @Pmode, align 8
  %138 = load i32, i32* %1, align 4
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @GEN_INT(i32 %139)
  %141 = call i32 @gen_rtx_PLUS(i64 %137, i32 %138, i32 %140)
  store i32 %141, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %169, %136
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = load i64**, i64*** @regno_save_mode, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VOIDmode, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %146
  %157 = load i64**, i64*** @regno_save_mode, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64*, i64** %157, i64 %159
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @strict_memory_address_p(i64 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %156
  br label %172

168:                                              ; preds = %156, %146
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %142

172:                                              ; preds = %167, %142
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %181

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %2, align 4
  %180 = ashr i32 %179, 1
  store i32 %180, i32* %2, align 4
  br label %133

181:                                              ; preds = %176, %133
  %182 = load i32, i32* %2, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* %1, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i64, i64* @VOIDmode, align 8
  %188 = call i32 @gen_rtx_REG(i64 %187, i32 0)
  store i32 %188, i32* %9, align 4
  %189 = load i64, i64* @VOIDmode, align 8
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @gen_rtx_MEM(i64 %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i64, i64* @VOIDmode, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @gen_rtx_SET(i64 %192, i32 %193, i32 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i64, i64* @VOIDmode, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @gen_rtx_SET(i64 %196, i32 %197, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i64, i64* @VOIDmode, align 8
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @gen_rtx_INSN(i64 %200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %201, i32 -1, i32 0, i32 0)
  store i32 %202, i32* %11, align 4
  %203 = load i64, i64* @VOIDmode, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @gen_rtx_INSN(i64 %203, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %204, i32 -1, i32 0, i32 0)
  store i32 %205, i32* %12, align 4
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %326, %186
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %329

210:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %322, %210
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %325

215:                                              ; preds = %211
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i64 @HARD_REGNO_MODE_OK(i32 %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %304

220:                                              ; preds = %215
  %221 = load i32, i32* %4, align 4
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @PUT_MODE(i32 %222, i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @PUT_MODE(i32 %225, i32 %226)
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @recog_memoized(i32 %228)
  %230 = load i32**, i32*** @reg_save_code, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %229, i32* %237, align 4
  %238 = load i32, i32* %16, align 4
  %239 = call i32 @recog_memoized(i32 %238)
  %240 = load i32**, i32*** @reg_restore_code, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %239, i32* %247, align 4
  %248 = load i32**, i32*** @reg_save_code, align 8
  %249 = load i32, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %269

258:                                              ; preds = %220
  %259 = load i32**, i32*** @reg_restore_code, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, -1
  br label %269

269:                                              ; preds = %258, %220
  %270 = phi i1 [ false, %220 ], [ %268, %258 ]
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %269
  %275 = load i32, i32* %15, align 4
  %276 = call i32 @extract_insn(i32 %275)
  %277 = call i32 @constrain_operands(i32 1)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %16, align 4
  %279 = call i32 @extract_insn(i32 %278)
  %280 = call i32 @constrain_operands(i32 1)
  %281 = load i32, i32* %13, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %13, align 4
  br label %283

283:                                              ; preds = %274, %269
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %283
  %287 = load i32**, i32*** @reg_save_code, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 -1, i32* %294, align 4
  %295 = load i32**, i32*** @reg_restore_code, align 8
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 -1, i32* %302, align 4
  br label %303

303:                                              ; preds = %286, %283
  br label %321

304:                                              ; preds = %215
  %305 = load i32**, i32*** @reg_save_code, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 -1, i32* %312, align 4
  %313 = load i32**, i32*** @reg_restore_code, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32*, i32** %313, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 -1, i32* %320, align 4
  br label %321

321:                                              ; preds = %304, %303
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %6, align 4
  br label %211

325:                                              ; preds = %211
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %4, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %4, align 4
  br label %206

329:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %383, %329
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %386

334:                                              ; preds = %330
  store i32 1, i32* %5, align 4
  br label %335

335:                                              ; preds = %379, %334
  %336 = load i32, i32* %5, align 4
  %337 = load i32, i32* @MOVE_MAX_WORDS, align 4
  %338 = icmp sle i32 %336, %337
  br i1 %338, label %339, label %382

339:                                              ; preds = %335
  %340 = load i32**, i32*** @reg_save_code, align 8
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = load i64**, i64*** @regno_save_mode, align 8
  %346 = load i32, i32* %4, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64*, i64** %345, i64 %347
  %349 = load i64*, i64** %348, align 8
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %349, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds i32, i32* %344, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %378

357:                                              ; preds = %339
  %358 = load i64, i64* @VOIDmode, align 8
  %359 = load i64**, i64*** @regno_save_mode, align 8
  %360 = load i32, i32* %4, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64*, i64** %359, i64 %361
  %363 = load i64*, i64** %362, align 8
  %364 = load i32, i32* %5, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  store i64 %358, i64* %366, align 8
  %367 = load i32, i32* %5, align 4
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %377

369:                                              ; preds = %357
  %370 = load i32*, i32** @call_fixed_regs, align 8
  %371 = load i32, i32* %4, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 1, i32* %373, align 4
  %374 = load i32, i32* @call_fixed_reg_set, align 4
  %375 = load i32, i32* %4, align 4
  %376 = call i32 @SET_HARD_REG_BIT(i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %369, %357
  br label %378

378:                                              ; preds = %377, %339
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %5, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %5, align 4
  br label %335

382:                                              ; preds = %335
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %4, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %4, align 4
  br label %330

386:                                              ; preds = %330
  ret void
}

declare dso_local i64 @HARD_REGNO_CALLER_SAVE_MODE(i32, i32, i64) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @base_reg_class(i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtx_REG(i64, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @strict_memory_address_p(i64, i32) #1

declare dso_local i32 @gen_rtx_MEM(i64, i32) #1

declare dso_local i32 @gen_rtx_SET(i64, i32, i32) #1

declare dso_local i32 @gen_rtx_INSN(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i32 @PUT_MODE(i32, i32) #1

declare dso_local i32 @recog_memoized(i32) #1

declare dso_local i32 @extract_insn(i32) #1

declare dso_local i32 @constrain_operands(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
