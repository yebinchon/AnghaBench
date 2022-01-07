; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_rtx_renumbered_equal_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_rtx_renumbered_equal_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i32)* }

@REG = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i32* null, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_renumbered_equal_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @GET_CODE(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %409

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @REG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SUBREG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %168

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @SUBREG_REG(i64 %29)
  %31 = call i64 @REG_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %168

33:                                               ; preds = %28, %20
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @REG_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @GET_CODE(i64 %38)
  %40 = load i32, i32* @SUBREG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %168

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @SUBREG_REG(i64 %43)
  %45 = call i64 @REG_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %168

47:                                               ; preds = %42, %33
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @GET_MODE(i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @GET_MODE(i64 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %409

54:                                               ; preds = %47
  %55 = load i32*, i32** @reg_renumber, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @rtx_equal_p(i64 %58, i64 %59)
  store i32 %60, i32* %3, align 4
  br label %409

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SUBREG, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @SUBREG_REG(i64 %66)
  %68 = call i32 @REGNO(i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @SUBREG_BYTE(i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** @reg_renumber, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %65
  %78 = load i32*, i32** @reg_renumber, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %4, align 8
  %84 = call i64 @SUBREG_REG(i64 %83)
  %85 = call i64 @GET_MODE(i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @GET_MODE(i64 %87)
  %89 = call i32 @subreg_regno_offset(i32 %82, i64 %85, i32 %86, i64 %88)
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %77, %65
  br label %107

91:                                               ; preds = %61
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @REGNO(i64 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** @reg_renumber, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32*, i32** @reg_renumber, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %100, %91
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @GET_CODE(i64 %108)
  %110 = load i32, i32* @SUBREG, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %107
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @SUBREG_REG(i64 %113)
  %115 = call i32 @REGNO(i64 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @SUBREG_BYTE(i64 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** @reg_renumber, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %112
  %125 = load i32*, i32** @reg_renumber, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %5, align 8
  %131 = call i64 @SUBREG_REG(i64 %130)
  %132 = call i64 @GET_MODE(i64 %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @GET_MODE(i64 %134)
  %136 = call i32 @subreg_regno_offset(i32 %129, i64 %132, i32 %133, i64 %135)
  store i32 %136, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %124, %112
  br label %154

138:                                              ; preds = %107
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @REGNO(i64 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32*, i32** @reg_renumber, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i32*, i32** @reg_renumber, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %147, %138
  br label %154

154:                                              ; preds = %153, %137
  %155 = load i32, i32* %9, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %162, %163
  br label %165

165:                                              ; preds = %161, %157, %154
  %166 = phi i1 [ false, %157 ], [ false, %154 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %409

168:                                              ; preds = %42, %37, %28, %24
  %169 = load i32, i32* %7, align 4
  %170 = load i64, i64* %5, align 8
  %171 = call i32 @GET_CODE(i64 %170)
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %409

174:                                              ; preds = %168
  %175 = load i32, i32* %7, align 4
  switch i32 %175, label %209 [
    i32 129, label %176
    i32 134, label %176
    i32 135, label %176
    i32 136, label %176
    i32 131, label %176
    i32 132, label %176
    i32 130, label %177
    i32 128, label %201
    i32 133, label %208
  ]

176:                                              ; preds = %174, %174, %174, %174, %174, %174
  store i32 0, i32* %3, align 4
  br label %409

177:                                              ; preds = %174
  %178 = load i64, i64* %4, align 8
  %179 = call i32 @LABEL_REF_NONLOCAL_P(i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @LABEL_REF_NONLOCAL_P(i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %181, %177
  %186 = load i64, i64* %4, align 8
  %187 = call i64 @XEXP(i64 %186, i32 0)
  %188 = load i64, i64* %5, align 8
  %189 = call i64 @XEXP(i64 %188, i32 0)
  %190 = icmp eq i64 %187, %189
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %3, align 4
  br label %409

192:                                              ; preds = %181
  %193 = load i64, i64* %4, align 8
  %194 = call i64 @XEXP(i64 %193, i32 0)
  %195 = call i32 @next_real_insn(i64 %194)
  %196 = load i64, i64* %5, align 8
  %197 = call i64 @XEXP(i64 %196, i32 0)
  %198 = call i32 @next_real_insn(i64 %197)
  %199 = icmp eq i32 %195, %198
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %3, align 4
  br label %409

201:                                              ; preds = %174
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @XSTR(i64 %202, i32 0)
  %204 = load i64, i64* %5, align 8
  %205 = call i32 @XSTR(i64 %204, i32 0)
  %206 = icmp eq i32 %203, %205
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %3, align 4
  br label %409

208:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %409

209:                                              ; preds = %174
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %4, align 8
  %212 = call i64 @GET_MODE(i64 %211)
  %213 = load i64, i64* %5, align 8
  %214 = call i64 @GET_MODE(i64 %213)
  %215 = icmp ne i64 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i32 0, i32* %3, align 4
  br label %409

217:                                              ; preds = %210
  %218 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %219 = load i64, i64* %4, align 8
  %220 = load i32, i32* @UNKNOWN, align 4
  %221 = call i64 %218(i64 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %256

223:                                              ; preds = %217
  %224 = load i64, i64* %4, align 8
  %225 = call i64 @XEXP(i64 %224, i32 0)
  %226 = load i64, i64* %5, align 8
  %227 = call i64 @XEXP(i64 %226, i32 0)
  %228 = call i32 @rtx_renumbered_equal_p(i64 %225, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load i64, i64* %4, align 8
  %232 = call i64 @XEXP(i64 %231, i32 1)
  %233 = load i64, i64* %5, align 8
  %234 = call i64 @XEXP(i64 %233, i32 1)
  %235 = call i32 @rtx_renumbered_equal_p(i64 %232, i64 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %253, label %237

237:                                              ; preds = %230, %223
  %238 = load i64, i64* %4, align 8
  %239 = call i64 @XEXP(i64 %238, i32 0)
  %240 = load i64, i64* %5, align 8
  %241 = call i64 @XEXP(i64 %240, i32 1)
  %242 = call i32 @rtx_renumbered_equal_p(i64 %239, i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = load i64, i64* %4, align 8
  %246 = call i64 @XEXP(i64 %245, i32 1)
  %247 = load i64, i64* %5, align 8
  %248 = call i64 @XEXP(i64 %247, i32 0)
  %249 = call i32 @rtx_renumbered_equal_p(i64 %246, i64 %248)
  %250 = icmp ne i32 %249, 0
  br label %251

251:                                              ; preds = %244, %237
  %252 = phi i1 [ false, %237 ], [ %250, %244 ]
  br label %253

253:                                              ; preds = %251, %230
  %254 = phi i1 [ true, %230 ], [ %252, %251 ]
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %3, align 4
  br label %409

256:                                              ; preds = %217
  %257 = load i64, i64* %4, align 8
  %258 = call i64 @NON_COMMUTATIVE_P(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %256
  %261 = load i64, i64* %4, align 8
  %262 = call i64 @XEXP(i64 %261, i32 0)
  %263 = load i64, i64* %5, align 8
  %264 = call i64 @XEXP(i64 %263, i32 0)
  %265 = call i32 @rtx_renumbered_equal_p(i64 %262, i64 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %260
  %268 = load i64, i64* %4, align 8
  %269 = call i64 @XEXP(i64 %268, i32 1)
  %270 = load i64, i64* %5, align 8
  %271 = call i64 @XEXP(i64 %270, i32 1)
  %272 = call i32 @rtx_renumbered_equal_p(i64 %269, i64 %271)
  %273 = icmp ne i32 %272, 0
  br label %274

274:                                              ; preds = %267, %260
  %275 = phi i1 [ false, %260 ], [ %273, %267 ]
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %3, align 4
  br label %409

277:                                              ; preds = %256
  %278 = load i64, i64* %4, align 8
  %279 = call i64 @UNARY_P(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i64, i64* %4, align 8
  %283 = call i64 @XEXP(i64 %282, i32 0)
  %284 = load i64, i64* %5, align 8
  %285 = call i64 @XEXP(i64 %284, i32 0)
  %286 = call i32 @rtx_renumbered_equal_p(i64 %283, i64 %285)
  store i32 %286, i32* %3, align 4
  br label %409

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %7, align 4
  %291 = call i8* @GET_RTX_FORMAT(i32 %290)
  store i8* %291, i8** %8, align 8
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @GET_RTX_LENGTH(i32 %292)
  %294 = sub nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %405, %289
  %296 = load i32, i32* %6, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %408

298:                                              ; preds = %295
  %299 = load i8*, i8** %8, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  switch i32 %304, label %402 [
    i32 119, label %305
    i32 105, label %315
    i32 116, label %325
    i32 115, label %335
    i32 101, label %346
    i32 117, label %357
    i32 48, label %367
    i32 69, label %368
  ]

305:                                              ; preds = %298
  %306 = load i64, i64* %4, align 8
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @XWINT(i64 %306, i32 %307)
  %309 = load i64, i64* %5, align 8
  %310 = load i32, i32* %6, align 4
  %311 = call i32 @XWINT(i64 %309, i32 %310)
  %312 = icmp ne i32 %308, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %305
  store i32 0, i32* %3, align 4
  br label %409

314:                                              ; preds = %305
  br label %404

315:                                              ; preds = %298
  %316 = load i64, i64* %4, align 8
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @XINT(i64 %316, i32 %317)
  %319 = load i64, i64* %5, align 8
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @XINT(i64 %319, i32 %320)
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  store i32 0, i32* %3, align 4
  br label %409

324:                                              ; preds = %315
  br label %404

325:                                              ; preds = %298
  %326 = load i64, i64* %4, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @XTREE(i64 %326, i32 %327)
  %329 = load i64, i64* %5, align 8
  %330 = load i32, i32* %6, align 4
  %331 = call i32 @XTREE(i64 %329, i32 %330)
  %332 = icmp ne i32 %328, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  store i32 0, i32* %3, align 4
  br label %409

334:                                              ; preds = %325
  br label %404

335:                                              ; preds = %298
  %336 = load i64, i64* %4, align 8
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @XSTR(i64 %336, i32 %337)
  %339 = load i64, i64* %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @XSTR(i64 %339, i32 %340)
  %342 = call i32 @strcmp(i32 %338, i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %335
  store i32 0, i32* %3, align 4
  br label %409

345:                                              ; preds = %335
  br label %404

346:                                              ; preds = %298
  %347 = load i64, i64* %4, align 8
  %348 = load i32, i32* %6, align 4
  %349 = call i64 @XEXP(i64 %347, i32 %348)
  %350 = load i64, i64* %5, align 8
  %351 = load i32, i32* %6, align 4
  %352 = call i64 @XEXP(i64 %350, i32 %351)
  %353 = call i32 @rtx_renumbered_equal_p(i64 %349, i64 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %346
  store i32 0, i32* %3, align 4
  br label %409

356:                                              ; preds = %346
  br label %404

357:                                              ; preds = %298
  %358 = load i64, i64* %4, align 8
  %359 = load i32, i32* %6, align 4
  %360 = call i64 @XEXP(i64 %358, i32 %359)
  %361 = load i64, i64* %5, align 8
  %362 = load i32, i32* %6, align 4
  %363 = call i64 @XEXP(i64 %361, i32 %362)
  %364 = icmp ne i64 %360, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %357
  store i32 0, i32* %3, align 4
  br label %409

366:                                              ; preds = %357
  br label %367

367:                                              ; preds = %298, %366
  br label %404

368:                                              ; preds = %298
  %369 = load i64, i64* %4, align 8
  %370 = load i32, i32* %6, align 4
  %371 = call i32 @XVECLEN(i64 %369, i32 %370)
  %372 = load i64, i64* %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @XVECLEN(i64 %372, i32 %373)
  %375 = icmp ne i32 %371, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  store i32 0, i32* %3, align 4
  br label %409

377:                                              ; preds = %368
  %378 = load i64, i64* %4, align 8
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @XVECLEN(i64 %378, i32 %379)
  %381 = sub nsw i32 %380, 1
  store i32 %381, i32* %13, align 4
  br label %382

382:                                              ; preds = %398, %377
  %383 = load i32, i32* %13, align 4
  %384 = icmp sge i32 %383, 0
  br i1 %384, label %385, label %401

385:                                              ; preds = %382
  %386 = load i64, i64* %4, align 8
  %387 = load i32, i32* %6, align 4
  %388 = load i32, i32* %13, align 4
  %389 = call i64 @XVECEXP(i64 %386, i32 %387, i32 %388)
  %390 = load i64, i64* %5, align 8
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %13, align 4
  %393 = call i64 @XVECEXP(i64 %390, i32 %391, i32 %392)
  %394 = call i32 @rtx_renumbered_equal_p(i64 %389, i64 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %385
  store i32 0, i32* %3, align 4
  br label %409

397:                                              ; preds = %385
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %13, align 4
  br label %382

401:                                              ; preds = %382
  br label %404

402:                                              ; preds = %298
  %403 = call i32 (...) @gcc_unreachable()
  br label %404

404:                                              ; preds = %402, %401, %367, %356, %345, %334, %324, %314
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %6, align 4
  %407 = add nsw i32 %406, -1
  store i32 %407, i32* %6, align 4
  br label %295

408:                                              ; preds = %295
  store i32 1, i32* %3, align 4
  br label %409

409:                                              ; preds = %408, %396, %376, %365, %355, %344, %333, %323, %313, %281, %274, %253, %216, %208, %201, %192, %185, %176, %173, %165, %57, %53, %19
  %410 = load i32, i32* %3, align 4
  ret i32 %410
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i32 @subreg_regno_offset(i32, i64, i32, i64) #1

declare dso_local i32 @LABEL_REF_NONLOCAL_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @next_real_insn(i64) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i64 @NON_COMMUTATIVE_P(i64) #1

declare dso_local i64 @UNARY_P(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XWINT(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XTREE(i64, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
