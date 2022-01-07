; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@n_occurrences = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@MEM = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@ASM_OPERANDS = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@CC0 = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ie\00", align 1
@SUBREG = common dso_local global i32 0, align 4
@ZERO_EXTRACT = common dso_local global i32 0, align 4
@STRICT_LOW_PART = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@ZERO_EXTEND = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@cc0_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32)* @subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subst(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @GET_CODE(i64 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @VOIDmode, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @REG_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @REG_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @REGNO(i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @REGNO(i64 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @GET_MODE(i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @GET_MODE(i64 %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44, %26
  %51 = load i32, i32* @n_occurrences, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @n_occurrences, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @n_occurrences, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @copy_rtx(i64 %59)
  br label %63

61:                                               ; preds = %55, %50
  %62 = load i64, i64* %9, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i64 [ %60, %58 ], [ %62, %61 ]
  store i64 %64, i64* %6, align 8
  br label %638

65:                                               ; preds = %44, %38, %34, %30, %5
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @REG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @REG_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @REGNO(i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @REGNO(i64 %79)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @GET_MODE(i64 %83)
  %85 = load i64, i64* @const0_rtx, align 8
  %86 = call i64 @gen_rtx_CLOBBER(i32 %84, i64 %85)
  store i64 %86, i64* %6, align 8
  br label %638

87:                                               ; preds = %76, %72, %68, %65
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @MEM, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @LO_SUM, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @OBJECT_P(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* %7, align 8
  store i64 %100, i64* %6, align 8
  br label %638

101:                                              ; preds = %95, %91, %87
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %125, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @REG_P(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @REG_P(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i64, i64* %7, align 8
  %115 = call i64 @REGNO(i64 %114)
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @REGNO(i64 %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @GET_MODE(i64 %120)
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @GET_MODE(i64 %122)
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119, %101
  %126 = load i64, i64* %9, align 8
  store i64 %126, i64* %6, align 8
  br label %638

127:                                              ; preds = %119, %113, %109, %105
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @PARALLEL, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %226

131:                                              ; preds = %127
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @XVECEXP(i64 %132, i32 0, i32 0)
  %134 = call i32 @GET_CODE(i64 %133)
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @SET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %226

138:                                              ; preds = %131
  %139 = load i64, i64* %7, align 8
  %140 = call i64 @XVECEXP(i64 %139, i32 0, i32 0)
  %141 = call i64 @SET_SRC(i64 %140)
  %142 = call i32 @GET_CODE(i64 %141)
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @ASM_OPERANDS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %226

146:                                              ; preds = %138
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @XVECEXP(i64 %147, i32 0, i32 0)
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @subst(i64 %148, i64 %149, i64 %150, i32 0, i32 %151)
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @GET_CODE(i64 %153)
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @CLOBBER, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %146
  %159 = load i64, i64* %17, align 8
  %160 = call i64 @XEXP(i64 %159, i32 0)
  %161 = load i64, i64* @const0_rtx, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i64, i64* %17, align 8
  store i64 %164, i64* %6, align 8
  br label %638

165:                                              ; preds = %158, %146
  %166 = load i64, i64* %7, align 8
  %167 = call i64 @XVECEXP(i64 %166, i32 0, i32 0)
  %168 = load i64, i64* %17, align 8
  %169 = call i32 @SUBST(i64 %167, i64 %168)
  %170 = load i64, i64* %7, align 8
  %171 = call i32 @XVECLEN(i64 %170, i32 0)
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %222, %165
  %174 = load i32, i32* %16, align 4
  %175 = icmp sge i32 %174, 1
  br i1 %175, label %176, label %225

176:                                              ; preds = %173
  %177 = load i64, i64* %7, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call i64 @XVECEXP(i64 %177, i32 0, i32 %178)
  %180 = call i64 @SET_DEST(i64 %179)
  store i64 %180, i64* %18, align 8
  %181 = load i64, i64* %18, align 8
  %182 = call i64 @REG_P(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %221, label %184

184:                                              ; preds = %176
  %185 = load i64, i64* %18, align 8
  %186 = call i32 @GET_CODE(i64 %185)
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @CC0, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %221

190:                                              ; preds = %184
  %191 = load i64, i64* %18, align 8
  %192 = call i32 @GET_CODE(i64 %191)
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @PC, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %221

196:                                              ; preds = %190
  %197 = load i64, i64* %18, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i32, i32* %11, align 4
  %201 = call i64 @subst(i64 %197, i64 %198, i64 %199, i32 0, i32 %200)
  store i64 %201, i64* %17, align 8
  %202 = load i64, i64* %17, align 8
  %203 = call i32 @GET_CODE(i64 %202)
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* @CLOBBER, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %196
  %208 = load i64, i64* %17, align 8
  %209 = call i64 @XEXP(i64 %208, i32 0)
  %210 = load i64, i64* @const0_rtx, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i64, i64* %17, align 8
  store i64 %213, i64* %6, align 8
  br label %638

214:                                              ; preds = %207, %196
  %215 = load i64, i64* %7, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i64 @XVECEXP(i64 %215, i32 0, i32 %216)
  %218 = call i64 @SET_DEST(i64 %217)
  %219 = load i64, i64* %17, align 8
  %220 = call i32 @SUBST(i64 %218, i64 %219)
  br label %221

221:                                              ; preds = %214, %190, %184, %176
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %16, align 4
  br label %173

225:                                              ; preds = %173
  br label %600

226:                                              ; preds = %138, %131, %127
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @GET_RTX_LENGTH(i32 %227)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call i8* @GET_RTX_FORMAT(i32 %229)
  store i8* %230, i8** %14, align 8
  %231 = load i32, i32* %12, align 4
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* @SET, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %226
  %236 = load i64, i64* %7, align 8
  %237 = call i64 @SET_DEST(i64 %236)
  %238 = call i64 @REG_P(i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %254, label %240

240:                                              ; preds = %235
  %241 = load i64, i64* %7, align 8
  %242 = call i64 @SET_DEST(i64 %241)
  %243 = call i32 @GET_CODE(i64 %242)
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* @CC0, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %254, label %247

247:                                              ; preds = %240
  %248 = load i64, i64* %7, align 8
  %249 = call i64 @SET_DEST(i64 %248)
  %250 = call i32 @GET_CODE(i64 %249)
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* @PC, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247, %240, %235
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %255

255:                                              ; preds = %254, %247, %226
  %256 = load i8*, i8** %14, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 0
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 101
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i64, i64* %7, align 8
  %263 = call i64 @XEXP(i64 %262, i32 0)
  %264 = call i32 @GET_MODE(i64 %263)
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %261, %255
  store i32 0, i32* %16, align 4
  br label %266

266:                                              ; preds = %596, %265
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %599

270:                                              ; preds = %266
  %271 = load i8*, i8** %14, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 69
  br i1 %277, label %278, label %370

278:                                              ; preds = %270
  %279 = load i64, i64* %7, align 8
  %280 = load i32, i32* %16, align 4
  %281 = call i32 @XVECLEN(i64 %279, i32 %280)
  %282 = sub nsw i32 %281, 1
  store i32 %282, i32* %19, align 4
  br label %283

283:                                              ; preds = %366, %278
  %284 = load i32, i32* %19, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %369

286:                                              ; preds = %283
  %287 = load i64, i64* %7, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %19, align 4
  %290 = call i64 @XVECEXP(i64 %287, i32 %288, i32 %289)
  %291 = load i64, i64* %8, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %322, label %293

293:                                              ; preds = %286
  %294 = load i64, i64* %7, align 8
  %295 = load i32, i32* %16, align 4
  %296 = load i32, i32* %19, align 4
  %297 = call i64 @XVECEXP(i64 %294, i32 %295, i32 %296)
  %298 = call i64 @REG_P(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %337

300:                                              ; preds = %293
  %301 = load i64, i64* %8, align 8
  %302 = call i64 @REG_P(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %337

304:                                              ; preds = %300
  %305 = load i64, i64* %7, align 8
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %19, align 4
  %308 = call i64 @XVECEXP(i64 %305, i32 %306, i32 %307)
  %309 = call i64 @REGNO(i64 %308)
  %310 = load i64, i64* %8, align 8
  %311 = call i64 @REGNO(i64 %310)
  %312 = icmp eq i64 %309, %311
  br i1 %312, label %313, label %337

313:                                              ; preds = %304
  %314 = load i64, i64* %7, align 8
  %315 = load i32, i32* %16, align 4
  %316 = load i32, i32* %19, align 4
  %317 = call i64 @XVECEXP(i64 %314, i32 %315, i32 %316)
  %318 = call i32 @GET_MODE(i64 %317)
  %319 = load i64, i64* %8, align 8
  %320 = call i32 @GET_MODE(i64 %319)
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %313, %286
  %323 = load i32, i32* %11, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, i32* @n_occurrences, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i64, i64* %9, align 8
  %330 = call i64 @copy_rtx(i64 %329)
  br label %333

331:                                              ; preds = %325, %322
  %332 = load i64, i64* %9, align 8
  br label %333

333:                                              ; preds = %331, %328
  %334 = phi i64 [ %330, %328 ], [ %332, %331 ]
  store i64 %334, i64* %17, align 8
  %335 = load i32, i32* @n_occurrences, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* @n_occurrences, align 4
  br label %359

337:                                              ; preds = %313, %304, %300, %293
  %338 = load i64, i64* %7, align 8
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %19, align 4
  %341 = call i64 @XVECEXP(i64 %338, i32 %339, i32 %340)
  %342 = load i64, i64* %8, align 8
  %343 = load i64, i64* %9, align 8
  %344 = load i32, i32* %11, align 4
  %345 = call i64 @subst(i64 %341, i64 %342, i64 %343, i32 0, i32 %344)
  store i64 %345, i64* %17, align 8
  %346 = load i64, i64* %17, align 8
  %347 = call i32 @GET_CODE(i64 %346)
  %348 = sext i32 %347 to i64
  %349 = load i64, i64* @CLOBBER, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %337
  %352 = load i64, i64* %17, align 8
  %353 = call i64 @XEXP(i64 %352, i32 0)
  %354 = load i64, i64* @const0_rtx, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = load i64, i64* %17, align 8
  store i64 %357, i64* %6, align 8
  br label %638

358:                                              ; preds = %351, %337
  br label %359

359:                                              ; preds = %358, %333
  %360 = load i64, i64* %7, align 8
  %361 = load i32, i32* %16, align 4
  %362 = load i32, i32* %19, align 4
  %363 = call i64 @XVECEXP(i64 %360, i32 %361, i32 %362)
  %364 = load i64, i64* %17, align 8
  %365 = call i32 @SUBST(i64 %363, i64 %364)
  br label %366

366:                                              ; preds = %359
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* %19, align 4
  br label %283

369:                                              ; preds = %283
  br label %595

370:                                              ; preds = %270
  %371 = load i8*, i8** %14, align 8
  %372 = load i32, i32* %16, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 101
  br i1 %377, label %378, label %594

378:                                              ; preds = %370
  %379 = load i64, i64* %7, align 8
  %380 = load i32, i32* %16, align 4
  %381 = call i64 @XEXP(i64 %379, i32 %380)
  store i64 %381, i64* %17, align 8
  %382 = load i32, i32* %10, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %404

384:                                              ; preds = %378
  %385 = load i32, i32* %16, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %404

387:                                              ; preds = %384
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* @SUBREG, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %395, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* @ZERO_EXTRACT, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %391, %387
  %396 = load i64, i64* %17, align 8
  %397 = call i64 @REG_P(i64 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %395, %391
  %400 = load i32, i32* %12, align 4
  %401 = load i32, i32* @STRICT_LOW_PART, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %399, %395
  br label %514

404:                                              ; preds = %399, %384, %378
  %405 = load i64, i64* %7, align 8
  %406 = load i32, i32* %16, align 4
  %407 = call i64 @XEXP(i64 %405, i32 %406)
  %408 = load i64, i64* %8, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %436, label %410

410:                                              ; preds = %404
  %411 = load i64, i64* %7, align 8
  %412 = load i32, i32* %16, align 4
  %413 = call i64 @XEXP(i64 %411, i32 %412)
  %414 = call i64 @REG_P(i64 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %480

416:                                              ; preds = %410
  %417 = load i64, i64* %8, align 8
  %418 = call i64 @REG_P(i64 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %480

420:                                              ; preds = %416
  %421 = load i64, i64* %7, align 8
  %422 = load i32, i32* %16, align 4
  %423 = call i64 @XEXP(i64 %421, i32 %422)
  %424 = call i64 @REGNO(i64 %423)
  %425 = load i64, i64* %8, align 8
  %426 = call i64 @REGNO(i64 %425)
  %427 = icmp eq i64 %424, %426
  br i1 %427, label %428, label %480

428:                                              ; preds = %420
  %429 = load i64, i64* %7, align 8
  %430 = load i32, i32* %16, align 4
  %431 = call i64 @XEXP(i64 %429, i32 %430)
  %432 = call i32 @GET_MODE(i64 %431)
  %433 = load i64, i64* %8, align 8
  %434 = call i32 @GET_MODE(i64 %433)
  %435 = icmp eq i32 %432, %434
  br i1 %435, label %436, label %480

436:                                              ; preds = %428, %404
  %437 = load i64, i64* %9, align 8
  %438 = call i32 @GET_CODE(i64 %437)
  %439 = load i32, i32* @SUBREG, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %465

441:                                              ; preds = %436
  %442 = load i64, i64* %9, align 8
  %443 = call i32 @GET_MODE(i64 %442)
  %444 = load i64, i64* %9, align 8
  %445 = call i64 @SUBREG_REG(i64 %444)
  %446 = call i32 @GET_MODE(i64 %445)
  %447 = call i64 @MODES_TIEABLE_P(i32 %443, i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %465, label %449

449:                                              ; preds = %441
  %450 = load i32, i32* %12, align 4
  %451 = load i32, i32* @SUBREG, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %461

453:                                              ; preds = %449
  %454 = load i64, i64* %7, align 8
  %455 = call i32 @GET_MODE(i64 %454)
  %456 = load i64, i64* %9, align 8
  %457 = call i64 @SUBREG_REG(i64 %456)
  %458 = call i32 @GET_MODE(i64 %457)
  %459 = call i64 @MODES_TIEABLE_P(i32 %455, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %465, label %461

461:                                              ; preds = %453, %449
  %462 = load i32, i32* @VOIDmode, align 4
  %463 = load i64, i64* @const0_rtx, align 8
  %464 = call i64 @gen_rtx_CLOBBER(i32 %462, i64 %463)
  store i64 %464, i64* %6, align 8
  br label %638

465:                                              ; preds = %453, %441, %436
  %466 = load i32, i32* %11, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %474

468:                                              ; preds = %465
  %469 = load i32, i32* @n_occurrences, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %468
  %472 = load i64, i64* %9, align 8
  %473 = call i64 @copy_rtx(i64 %472)
  br label %476

474:                                              ; preds = %468, %465
  %475 = load i64, i64* %9, align 8
  br label %476

476:                                              ; preds = %474, %471
  %477 = phi i64 [ %473, %471 ], [ %475, %474 ]
  store i64 %477, i64* %17, align 8
  %478 = load i32, i32* @n_occurrences, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* @n_occurrences, align 4
  br label %513

480:                                              ; preds = %428, %420, %416, %410
  %481 = load i64, i64* %7, align 8
  %482 = load i32, i32* %16, align 4
  %483 = call i64 @XEXP(i64 %481, i32 %482)
  %484 = load i64, i64* %8, align 8
  %485 = load i64, i64* %9, align 8
  %486 = load i32, i32* %10, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %500

488:                                              ; preds = %480
  %489 = load i32, i32* %12, align 4
  %490 = load i32, i32* @SUBREG, align 4
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %505, label %492

492:                                              ; preds = %488
  %493 = load i32, i32* %12, align 4
  %494 = load i32, i32* @STRICT_LOW_PART, align 4
  %495 = icmp eq i32 %493, %494
  br i1 %495, label %505, label %496

496:                                              ; preds = %492
  %497 = load i32, i32* %12, align 4
  %498 = load i32, i32* @ZERO_EXTRACT, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %505, label %500

500:                                              ; preds = %496, %480
  %501 = load i32, i32* %12, align 4
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* @SET, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %508

505:                                              ; preds = %500, %496, %492, %488
  %506 = load i32, i32* %16, align 4
  %507 = icmp eq i32 %506, 0
  br label %508

508:                                              ; preds = %505, %500
  %509 = phi i1 [ false, %500 ], [ %507, %505 ]
  %510 = zext i1 %509 to i32
  %511 = load i32, i32* %11, align 4
  %512 = call i64 @subst(i64 %483, i64 %484, i64 %485, i32 %510, i32 %511)
  store i64 %512, i64* %17, align 8
  br label %513

513:                                              ; preds = %508, %476
  br label %514

514:                                              ; preds = %513, %403
  %515 = load i64, i64* %17, align 8
  %516 = call i32 @GET_CODE(i64 %515)
  %517 = sext i32 %516 to i64
  %518 = load i64, i64* @CLOBBER, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %527

520:                                              ; preds = %514
  %521 = load i64, i64* %17, align 8
  %522 = call i64 @XEXP(i64 %521, i32 0)
  %523 = load i64, i64* @const0_rtx, align 8
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %525, label %527

525:                                              ; preds = %520
  %526 = load i64, i64* %17, align 8
  store i64 %526, i64* %6, align 8
  br label %638

527:                                              ; preds = %520, %514
  %528 = load i64, i64* %7, align 8
  %529 = call i32 @GET_CODE(i64 %528)
  %530 = load i32, i32* @SUBREG, align 4
  %531 = icmp eq i32 %529, %530
  br i1 %531, label %532, label %563

532:                                              ; preds = %527
  %533 = load i64, i64* %17, align 8
  %534 = call i32 @GET_CODE(i64 %533)
  %535 = sext i32 %534 to i64
  %536 = load i64, i64* @CONST_INT, align 8
  %537 = icmp eq i64 %535, %536
  br i1 %537, label %544, label %538

538:                                              ; preds = %532
  %539 = load i64, i64* %17, align 8
  %540 = call i32 @GET_CODE(i64 %539)
  %541 = sext i32 %540 to i64
  %542 = load i64, i64* @CONST_DOUBLE, align 8
  %543 = icmp eq i64 %541, %542
  br i1 %543, label %544, label %563

544:                                              ; preds = %538, %532
  %545 = load i64, i64* %7, align 8
  %546 = call i32 @GET_MODE(i64 %545)
  store i32 %546, i32* %20, align 4
  %547 = load i64, i64* %7, align 8
  %548 = call i32 @GET_MODE(i64 %547)
  %549 = load i64, i64* %17, align 8
  %550 = load i64, i64* %7, align 8
  %551 = call i64 @SUBREG_REG(i64 %550)
  %552 = call i32 @GET_MODE(i64 %551)
  %553 = load i64, i64* %7, align 8
  %554 = call i32 @SUBREG_BYTE(i64 %553)
  %555 = call i64 @simplify_subreg(i32 %548, i64 %549, i32 %552, i32 %554)
  store i64 %555, i64* %7, align 8
  %556 = load i64, i64* %7, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %562, label %558

558:                                              ; preds = %544
  %559 = load i32, i32* %20, align 4
  %560 = load i64, i64* @const0_rtx, align 8
  %561 = call i64 @gen_rtx_CLOBBER(i32 %559, i64 %560)
  store i64 %561, i64* %7, align 8
  br label %562

562:                                              ; preds = %558, %544
  br label %593

563:                                              ; preds = %538, %527
  %564 = load i64, i64* %17, align 8
  %565 = call i32 @GET_CODE(i64 %564)
  %566 = sext i32 %565 to i64
  %567 = load i64, i64* @CONST_INT, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %586

569:                                              ; preds = %563
  %570 = load i64, i64* %7, align 8
  %571 = call i32 @GET_CODE(i64 %570)
  %572 = sext i32 %571 to i64
  %573 = load i64, i64* @ZERO_EXTEND, align 8
  %574 = icmp eq i64 %572, %573
  br i1 %574, label %575, label %586

575:                                              ; preds = %569
  %576 = load i64, i64* @ZERO_EXTEND, align 8
  %577 = load i64, i64* %7, align 8
  %578 = call i32 @GET_MODE(i64 %577)
  %579 = load i64, i64* %17, align 8
  %580 = load i64, i64* %7, align 8
  %581 = call i64 @XEXP(i64 %580, i32 0)
  %582 = call i32 @GET_MODE(i64 %581)
  %583 = call i64 @simplify_unary_operation(i64 %576, i32 %578, i64 %579, i32 %582)
  store i64 %583, i64* %7, align 8
  %584 = load i64, i64* %7, align 8
  %585 = call i32 @gcc_assert(i64 %584)
  br label %592

586:                                              ; preds = %569, %563
  %587 = load i64, i64* %7, align 8
  %588 = load i32, i32* %16, align 4
  %589 = call i64 @XEXP(i64 %587, i32 %588)
  %590 = load i64, i64* %17, align 8
  %591 = call i32 @SUBST(i64 %589, i64 %590)
  br label %592

592:                                              ; preds = %586, %575
  br label %593

593:                                              ; preds = %592, %562
  br label %594

594:                                              ; preds = %593, %370
  br label %595

595:                                              ; preds = %594, %369
  br label %596

596:                                              ; preds = %595
  %597 = load i32, i32* %16, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %16, align 4
  br label %266

599:                                              ; preds = %266
  br label %600

600:                                              ; preds = %599, %225
  store i32 0, i32* %16, align 4
  br label %601

601:                                              ; preds = %633, %600
  %602 = load i32, i32* %16, align 4
  %603 = icmp slt i32 %602, 4
  br i1 %603, label %604, label %636

604:                                              ; preds = %601
  %605 = load i32, i32* %12, align 4
  %606 = zext i32 %605 to i64
  %607 = load i64, i64* @CONST_INT, align 8
  %608 = icmp ne i64 %606, %607
  br i1 %608, label %609, label %623

609:                                              ; preds = %604
  %610 = load i32, i32* %12, align 4
  %611 = load i32, i32* @REG, align 4
  %612 = icmp ne i32 %610, %611
  br i1 %612, label %613, label %623

613:                                              ; preds = %609
  %614 = load i32, i32* %12, align 4
  %615 = zext i32 %614 to i64
  %616 = load i64, i64* @CLOBBER, align 8
  %617 = icmp ne i64 %615, %616
  br i1 %617, label %618, label %623

618:                                              ; preds = %613
  %619 = load i64, i64* %7, align 8
  %620 = load i32, i32* %13, align 4
  %621 = load i32, i32* %10, align 4
  %622 = call i64 @combine_simplify_rtx(i64 %619, i32 %620, i32 %621)
  store i64 %622, i64* %7, align 8
  br label %623

623:                                              ; preds = %618, %613, %609, %604
  %624 = load i64, i64* %7, align 8
  %625 = call i32 @GET_CODE(i64 %624)
  %626 = load i32, i32* %12, align 4
  %627 = icmp eq i32 %625, %626
  br i1 %627, label %628, label %629

628:                                              ; preds = %623
  br label %636

629:                                              ; preds = %623
  %630 = load i64, i64* %7, align 8
  %631 = call i32 @GET_CODE(i64 %630)
  store i32 %631, i32* %12, align 4
  %632 = load i32, i32* @VOIDmode, align 4
  store i32 %632, i32* %13, align 4
  br label %633

633:                                              ; preds = %629
  %634 = load i32, i32* %16, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %16, align 4
  br label %601

636:                                              ; preds = %628, %601
  %637 = load i64, i64* %7, align 8
  store i64 %637, i64* %6, align 8
  br label %638

638:                                              ; preds = %636, %525, %461, %356, %212, %163, %125, %99, %82, %63
  %639 = load i64, i64* %6, align 8
  ret i64 %639
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @gen_rtx_CLOBBER(i32, i64) #1

declare dso_local i64 @OBJECT_P(i64) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @SUBST(i64, i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i64 @MODES_TIEABLE_P(i32, i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @simplify_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @simplify_unary_operation(i64, i32, i64, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @combine_simplify_rtx(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
