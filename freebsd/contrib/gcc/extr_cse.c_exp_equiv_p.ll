; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_exp_equiv_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_exp_equiv_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp_equiv_p(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %377

24:                                               ; preds = %20, %4
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %377

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @GET_CODE(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @GET_CODE(i64 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %377

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @GET_MODE(i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @GET_MODE(i64 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %377

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %273 [
    i32 132, label %52
    i32 141, label %52
    i32 139, label %52
    i32 140, label %52
    i32 136, label %57
    i32 129, label %64
    i32 130, label %71
    i32 135, label %131
    i32 131, label %152
    i32 134, label %152
    i32 143, label %152
    i32 137, label %152
    i32 128, label %152
    i32 133, label %152
    i32 138, label %152
    i32 142, label %193
  ]

52:                                               ; preds = %50, %50, %50, %50
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %377

57:                                               ; preds = %50
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @XEXP(i64 %58, i32 0)
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = icmp eq i64 %59, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %377

64:                                               ; preds = %50
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @XSTR(i64 %65, i32 0)
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @XSTR(i64 %67, i32 0)
  %69 = icmp eq i32 %66, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %377

71:                                               ; preds = %50
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @REGNO(i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @REGNO(i64 %77)
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %377

81:                                               ; preds = %71
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @REGNO(i64 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %99

89:                                               ; preds = %81
  %90 = load i32**, i32*** @hard_regno_nregs, align 8
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @GET_MODE(i64 %95)
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %89, %88
  %100 = phi i32 [ 1, %88 ], [ %98, %89 ]
  %101 = add i32 %84, %100
  store i32 %101, i32* %16, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @REGNO(i64 %102)
  %104 = call i32 @REG_QTY(i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @REG_QTY(i32 %105)
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %377

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %377

113:                                              ; preds = %109
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %127, %113
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @REG_IN_TABLE(i32 %120)
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @REG_TICK(i32 %122)
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %377

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %115

130:                                              ; preds = %115
  store i32 1, i32* %5, align 4
  br label %377

131:                                              ; preds = %50
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @MEM_VOLATILE_P(i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @MEM_VOLATILE_P(i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134
  store i32 0, i32* %5, align 4
  br label %377

143:                                              ; preds = %138
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @MEM_ATTRS(i64 %144)
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @MEM_ATTRS(i64 %146)
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %377

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %131
  br label %274

152:                                              ; preds = %50, %50, %50, %50, %50, %50, %50
  %153 = load i64, i64* %6, align 8
  %154 = call i64 @XEXP(i64 %153, i32 0)
  %155 = load i64, i64* %7, align 8
  %156 = call i64 @XEXP(i64 %155, i32 0)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @exp_equiv_p(i64 %154, i64 %156, i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load i64, i64* %6, align 8
  %163 = call i64 @XEXP(i64 %162, i32 1)
  %164 = load i64, i64* %7, align 8
  %165 = call i64 @XEXP(i64 %164, i32 1)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @exp_equiv_p(i64 %163, i64 %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %161, %152
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @XEXP(i64 %171, i32 0)
  %173 = load i64, i64* %7, align 8
  %174 = call i64 @XEXP(i64 %173, i32 1)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @exp_equiv_p(i64 %172, i64 %174, i32 %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %170
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @XEXP(i64 %180, i32 1)
  %182 = load i64, i64* %7, align 8
  %183 = call i64 @XEXP(i64 %182, i32 0)
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @exp_equiv_p(i64 %181, i64 %183, i32 %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %179, %170
  %189 = phi i1 [ false, %170 ], [ %187, %179 ]
  br label %190

190:                                              ; preds = %188, %161
  %191 = phi i1 [ true, %161 ], [ %189, %188 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %5, align 4
  br label %377

193:                                              ; preds = %50
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @MEM_VOLATILE_P(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @MEM_VOLATILE_P(i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197, %193
  store i32 0, i32* %5, align 4
  br label %377

202:                                              ; preds = %197
  %203 = load i64, i64* %6, align 8
  %204 = call i64 @GET_MODE(i64 %203)
  %205 = load i64, i64* %7, align 8
  %206 = call i64 @GET_MODE(i64 %205)
  %207 = icmp ne i64 %204, %206
  br i1 %207, label %234, label %208

208:                                              ; preds = %202
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @ASM_OPERANDS_TEMPLATE(i64 %209)
  %211 = load i64, i64* %7, align 8
  %212 = call i32 @ASM_OPERANDS_TEMPLATE(i64 %211)
  %213 = call i32 @strcmp(i32 %210, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %234, label %215

215:                                              ; preds = %208
  %216 = load i64, i64* %6, align 8
  %217 = call i32 @ASM_OPERANDS_OUTPUT_CONSTRAINT(i64 %216)
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @ASM_OPERANDS_OUTPUT_CONSTRAINT(i64 %218)
  %220 = call i32 @strcmp(i32 %217, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %215
  %223 = load i64, i64* %6, align 8
  %224 = call i32 @ASM_OPERANDS_OUTPUT_IDX(i64 %223)
  %225 = load i64, i64* %7, align 8
  %226 = call i32 @ASM_OPERANDS_OUTPUT_IDX(i64 %225)
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = load i64, i64* %6, align 8
  %230 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %229)
  %231 = load i64, i64* %7, align 8
  %232 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %231)
  %233 = icmp ne i32 %230, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228, %222, %215, %208, %202
  store i32 0, i32* %5, align 4
  br label %377

235:                                              ; preds = %228
  %236 = load i64, i64* %6, align 8
  %237 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %272

239:                                              ; preds = %235
  %240 = load i64, i64* %6, align 8
  %241 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %240)
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %268, %239
  %244 = load i32, i32* %10, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %271

246:                                              ; preds = %243
  %247 = load i64, i64* %6, align 8
  %248 = load i32, i32* %10, align 4
  %249 = call i64 @ASM_OPERANDS_INPUT(i64 %247, i32 %248)
  %250 = load i64, i64* %7, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i64 @ASM_OPERANDS_INPUT(i64 %250, i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @exp_equiv_p(i64 %249, i64 %252, i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %246
  %258 = load i64, i64* %6, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @ASM_OPERANDS_INPUT_CONSTRAINT(i64 %258, i32 %259)
  %261 = load i64, i64* %7, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @ASM_OPERANDS_INPUT_CONSTRAINT(i64 %261, i32 %262)
  %264 = call i32 @strcmp(i32 %260, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %257, %246
  store i32 0, i32* %5, align 4
  br label %377

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %10, align 4
  br label %243

271:                                              ; preds = %243
  br label %272

272:                                              ; preds = %271, %235
  store i32 1, i32* %5, align 4
  br label %377

273:                                              ; preds = %50
  br label %274

274:                                              ; preds = %273, %151
  %275 = load i32, i32* %12, align 4
  %276 = call i8* @GET_RTX_FORMAT(i32 %275)
  store i8* %276, i8** %13, align 8
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @GET_RTX_LENGTH(i32 %277)
  %279 = sub nsw i32 %278, 1
  store i32 %279, i32* %10, align 4
  br label %280

280:                                              ; preds = %373, %274
  %281 = load i32, i32* %10, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %376

283:                                              ; preds = %280
  %284 = load i8*, i8** %13, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  switch i32 %289, label %370 [
    i32 101, label %290
    i32 69, label %303
    i32 115, label %338
    i32 105, label %349
    i32 119, label %359
    i32 48, label %369
    i32 116, label %369
  ]

290:                                              ; preds = %283
  %291 = load i64, i64* %6, align 8
  %292 = load i32, i32* %10, align 4
  %293 = call i64 @XEXP(i64 %291, i32 %292)
  %294 = load i64, i64* %7, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i64 @XEXP(i64 %294, i32 %295)
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @exp_equiv_p(i64 %293, i64 %296, i32 %297, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %290
  store i32 0, i32* %5, align 4
  br label %377

302:                                              ; preds = %290
  br label %372

303:                                              ; preds = %283
  %304 = load i64, i64* %6, align 8
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @XVECLEN(i64 %304, i32 %305)
  %307 = load i64, i64* %7, align 8
  %308 = load i32, i32* %10, align 4
  %309 = call i32 @XVECLEN(i64 %307, i32 %308)
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  store i32 0, i32* %5, align 4
  br label %377

312:                                              ; preds = %303
  store i32 0, i32* %11, align 4
  br label %313

313:                                              ; preds = %334, %312
  %314 = load i32, i32* %11, align 4
  %315 = load i64, i64* %6, align 8
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @XVECLEN(i64 %315, i32 %316)
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %337

319:                                              ; preds = %313
  %320 = load i64, i64* %6, align 8
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* %11, align 4
  %323 = call i64 @XVECEXP(i64 %320, i32 %321, i32 %322)
  %324 = load i64, i64* %7, align 8
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* %11, align 4
  %327 = call i64 @XVECEXP(i64 %324, i32 %325, i32 %326)
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @exp_equiv_p(i64 %323, i64 %327, i32 %328, i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %319
  store i32 0, i32* %5, align 4
  br label %377

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %11, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %11, align 4
  br label %313

337:                                              ; preds = %313
  br label %372

338:                                              ; preds = %283
  %339 = load i64, i64* %6, align 8
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @XSTR(i64 %339, i32 %340)
  %342 = load i64, i64* %7, align 8
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @XSTR(i64 %342, i32 %343)
  %345 = call i32 @strcmp(i32 %341, i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %338
  store i32 0, i32* %5, align 4
  br label %377

348:                                              ; preds = %338
  br label %372

349:                                              ; preds = %283
  %350 = load i64, i64* %6, align 8
  %351 = load i32, i32* %10, align 4
  %352 = call i32 @XINT(i64 %350, i32 %351)
  %353 = load i64, i64* %7, align 8
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @XINT(i64 %353, i32 %354)
  %356 = icmp ne i32 %352, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %349
  store i32 0, i32* %5, align 4
  br label %377

358:                                              ; preds = %349
  br label %372

359:                                              ; preds = %283
  %360 = load i64, i64* %6, align 8
  %361 = load i32, i32* %10, align 4
  %362 = call i32 @XWINT(i64 %360, i32 %361)
  %363 = load i64, i64* %7, align 8
  %364 = load i32, i32* %10, align 4
  %365 = call i32 @XWINT(i64 %363, i32 %364)
  %366 = icmp ne i32 %362, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  store i32 0, i32* %5, align 4
  br label %377

368:                                              ; preds = %359
  br label %372

369:                                              ; preds = %283, %283
  br label %372

370:                                              ; preds = %283
  %371 = call i32 (...) @gcc_unreachable()
  br label %372

372:                                              ; preds = %370, %369, %368, %358, %348, %337, %302
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %10, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %10, align 4
  br label %280

376:                                              ; preds = %280
  store i32 1, i32* %5, align 4
  br label %377

377:                                              ; preds = %376, %367, %357, %347, %332, %311, %301, %272, %266, %234, %201, %190, %149, %142, %130, %125, %112, %108, %74, %64, %57, %52, %49, %42, %30, %23
  %378 = load i32, i32* %5, align 4
  ret i32 %378
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @REG_QTY(i32) #1

declare dso_local i32 @REG_IN_TABLE(i32) #1

declare dso_local i32 @REG_TICK(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @MEM_ATTRS(i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ASM_OPERANDS_TEMPLATE(i64) #1

declare dso_local i32 @ASM_OPERANDS_OUTPUT_CONSTRAINT(i64) #1

declare dso_local i32 @ASM_OPERANDS_OUTPUT_IDX(i64) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i64) #1

declare dso_local i64 @ASM_OPERANDS_INPUT(i64, i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_CONSTRAINT(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XWINT(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
