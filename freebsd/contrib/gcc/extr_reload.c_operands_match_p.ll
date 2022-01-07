; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_operands_match_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_operands_match_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@POST_DEC = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@POST_MODIFY = common dso_local global i64 0, align 8
@PRE_DEC = common dso_local global i64 0, align 8
@PRE_INC = common dso_local global i64 0, align 8
@PRE_MODIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @operands_match_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @GET_CODE(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %349

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @REG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SUBREG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %176

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @SUBREG_REG(i64 %28)
  %30 = call i64 @REG_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %176

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @REG_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @SUBREG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %176

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @SUBREG_REG(i64 %42)
  %44 = call i64 @REG_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %176

46:                                               ; preds = %41, %32
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @SUBREG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @SUBREG_REG(i64 %51)
  %53 = call i32 @REGNO(i64 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %217

58:                                               ; preds = %50
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @SUBREG_REG(i64 %59)
  %61 = call i32 @REGNO(i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @SUBREG_REG(i64 %62)
  %64 = call i64 @GET_MODE(i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @SUBREG_BYTE(i64 %65)
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @GET_MODE(i64 %67)
  %69 = call i64 @subreg_regno_offset(i32 %61, i64 %64, i32 %66, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %77

74:                                               ; preds = %46
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @REGNO(i64 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %58
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @GET_CODE(i64 %78)
  %80 = load i64, i64* @SUBREG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @SUBREG_REG(i64 %83)
  %85 = call i32 @REGNO(i64 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %217

90:                                               ; preds = %82
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @SUBREG_REG(i64 %91)
  %93 = call i32 @REGNO(i64 %92)
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @SUBREG_REG(i64 %94)
  %96 = call i64 @GET_MODE(i64 %95)
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @SUBREG_BYTE(i64 %97)
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @GET_MODE(i64 %99)
  %101 = call i64 @subreg_regno_offset(i32 %93, i64 %96, i32 %98, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  br label %109

106:                                              ; preds = %77
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @REGNO(i64 %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106, %90
  %110 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @GET_MODE(i64 %113)
  %115 = call i64 @GET_MODE_SIZE(i64 %114)
  %116 = load i64, i64* @UNITS_PER_WORD, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %112
  %119 = load i64, i64* %4, align 8
  %120 = call i64 @GET_MODE(i64 %119)
  %121 = call i64 @SCALAR_INT_MODE_P(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load i32**, i32*** @hard_regno_nregs, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call i64 @GET_MODE(i64 %133)
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %127, %123, %118, %112, %109
  %141 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %171

143:                                              ; preds = %140
  %144 = load i64, i64* %5, align 8
  %145 = call i64 @GET_MODE(i64 %144)
  %146 = call i64 @GET_MODE_SIZE(i64 %145)
  %147 = load i64, i64* @UNITS_PER_WORD, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @GET_MODE(i64 %150)
  %152 = call i64 @SCALAR_INT_MODE_P(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load i32**, i32*** @hard_regno_nregs, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @GET_MODE(i64 %164)
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %158, %154, %149, %143, %140
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %3, align 4
  br label %349

176:                                              ; preds = %41, %36, %27, %23
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* @POST_DEC, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* @POST_INC, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @POST_MODIFY, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184, %180, %176
  %189 = load i64, i64* %4, align 8
  %190 = call i64 @XEXP(i64 %189, i32 0)
  %191 = load i64, i64* %5, align 8
  %192 = call i32 @operands_match_p(i64 %190, i64 %191)
  store i32 %192, i32* %3, align 4
  br label %349

193:                                              ; preds = %184
  %194 = load i64, i64* %5, align 8
  %195 = call i64 @GET_CODE(i64 %194)
  %196 = load i64, i64* @PRE_DEC, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load i64, i64* %5, align 8
  %200 = call i64 @GET_CODE(i64 %199)
  %201 = load i64, i64* @PRE_INC, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i64, i64* %5, align 8
  %205 = call i64 @GET_CODE(i64 %204)
  %206 = load i64, i64* @PRE_MODIFY, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %203, %198, %193
  %209 = load i64, i64* %4, align 8
  %210 = load i64, i64* %5, align 8
  %211 = call i64 @XEXP(i64 %210, i32 0)
  %212 = call i32 @operands_match_p(i64 %209, i64 %211)
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 2, i32 0
  store i32 %215, i32* %3, align 4
  br label %349

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216, %89, %57
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* %5, align 8
  %220 = call i64 @GET_CODE(i64 %219)
  %221 = icmp ne i64 %218, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %349

223:                                              ; preds = %217
  %224 = load i64, i64* %4, align 8
  %225 = call i64 @GET_MODE(i64 %224)
  %226 = load i64, i64* %5, align 8
  %227 = call i64 @GET_MODE(i64 %226)
  %228 = icmp ne i64 %225, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %349

230:                                              ; preds = %223
  %231 = load i64, i64* %7, align 8
  switch i64 %231, label %247 [
    i64 130, label %232
    i64 131, label %232
    i64 129, label %233
    i64 128, label %240
  ]

232:                                              ; preds = %230, %230
  store i32 0, i32* %3, align 4
  br label %349

233:                                              ; preds = %230
  %234 = load i64, i64* %4, align 8
  %235 = call i64 @XEXP(i64 %234, i32 0)
  %236 = load i64, i64* %5, align 8
  %237 = call i64 @XEXP(i64 %236, i32 0)
  %238 = icmp eq i64 %235, %237
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %3, align 4
  br label %349

240:                                              ; preds = %230
  %241 = load i64, i64* %4, align 8
  %242 = call i32 @XSTR(i64 %241, i32 0)
  %243 = load i64, i64* %5, align 8
  %244 = call i32 @XSTR(i64 %243, i32 0)
  %245 = icmp eq i32 %242, %244
  %246 = zext i1 %245 to i32
  store i32 %246, i32* %3, align 4
  br label %349

247:                                              ; preds = %230
  br label %248

248:                                              ; preds = %247
  store i32 0, i32* %9, align 4
  %249 = load i64, i64* %7, align 8
  %250 = call i8* @GET_RTX_FORMAT(i64 %249)
  store i8* %250, i8** %8, align 8
  %251 = load i64, i64* %7, align 8
  %252 = call i32 @GET_RTX_LENGTH(i64 %251)
  %253 = sub nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %343, %248
  %255 = load i32, i32* %6, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %346

257:                                              ; preds = %254
  %258 = load i8*, i8** %8, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  switch i32 %263, label %340 [
    i32 119, label %264
    i32 105, label %274
    i32 101, label %284
    i32 48, label %300
    i32 69, label %301
  ]

264:                                              ; preds = %257
  %265 = load i64, i64* %4, align 8
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @XWINT(i64 %265, i32 %266)
  %268 = load i64, i64* %5, align 8
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @XWINT(i64 %268, i32 %269)
  %271 = icmp ne i32 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  store i32 0, i32* %3, align 4
  br label %349

273:                                              ; preds = %264
  br label %342

274:                                              ; preds = %257
  %275 = load i64, i64* %4, align 8
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @XINT(i64 %275, i32 %276)
  %278 = load i64, i64* %5, align 8
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @XINT(i64 %278, i32 %279)
  %281 = icmp ne i32 %277, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  store i32 0, i32* %3, align 4
  br label %349

283:                                              ; preds = %274
  br label %342

284:                                              ; preds = %257
  %285 = load i64, i64* %4, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i64 @XEXP(i64 %285, i32 %286)
  %288 = load i64, i64* %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = call i64 @XEXP(i64 %288, i32 %289)
  %291 = call i32 @operands_match_p(i64 %287, i64 %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %284
  store i32 0, i32* %3, align 4
  br label %349

295:                                              ; preds = %284
  %296 = load i32, i32* %11, align 4
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  store i32 1, i32* %9, align 4
  br label %299

299:                                              ; preds = %298, %295
  br label %342

300:                                              ; preds = %257
  br label %342

301:                                              ; preds = %257
  %302 = load i64, i64* %4, align 8
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @XVECLEN(i64 %302, i32 %303)
  %305 = load i64, i64* %5, align 8
  %306 = load i32, i32* %6, align 4
  %307 = call i32 @XVECLEN(i64 %305, i32 %306)
  %308 = icmp ne i32 %304, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  store i32 0, i32* %3, align 4
  br label %349

310:                                              ; preds = %301
  %311 = load i64, i64* %4, align 8
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @XVECLEN(i64 %311, i32 %312)
  %314 = sub nsw i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %315

315:                                              ; preds = %336, %310
  %316 = load i32, i32* %12, align 4
  %317 = icmp sge i32 %316, 0
  br i1 %317, label %318, label %339

318:                                              ; preds = %315
  %319 = load i64, i64* %4, align 8
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* %12, align 4
  %322 = call i64 @XVECEXP(i64 %319, i32 %320, i32 %321)
  %323 = load i64, i64* %5, align 8
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* %12, align 4
  %326 = call i64 @XVECEXP(i64 %323, i32 %324, i32 %325)
  %327 = call i32 @operands_match_p(i64 %322, i64 %326)
  store i32 %327, i32* %11, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %318
  store i32 0, i32* %3, align 4
  br label %349

331:                                              ; preds = %318
  %332 = load i32, i32* %11, align 4
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  store i32 1, i32* %9, align 4
  br label %335

335:                                              ; preds = %334, %331
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %12, align 4
  br label %315

339:                                              ; preds = %315
  br label %342

340:                                              ; preds = %257
  %341 = call i32 (...) @gcc_unreachable()
  br label %342

342:                                              ; preds = %340, %339, %300, %299, %283, %273
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %6, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %6, align 4
  br label %254

346:                                              ; preds = %254
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 1, %347
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %346, %330, %309, %294, %282, %272, %240, %233, %232, %229, %222, %208, %188, %171, %18
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @subreg_regno_offset(i32, i64, i32, i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @SCALAR_INT_MODE_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XWINT(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
