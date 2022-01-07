; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@LO_SUM = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32* null, align 8
@MEM = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@TARGET_FPU = common dso_local global i64 0, align 8
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@TARGET_HARD_QUAD = common dso_local global i64 0, align 8
@TARGET_ARCH32 = common dso_local global i64 0, align 8
@optimize = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@USE_AS_OFFSETABLE_LO10 = common dso_local global i64 0, align 8
@TARGET_CM_MEDMID = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_address_p(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @REG_P(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @GET_CODE(i32* %15)
  %17 = load i64, i64* @SUBREG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %8, align 8
  br label %249

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @GET_CODE(i32* %22)
  %24 = load i64, i64* @PLUS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %209

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @XEXP(i32* %27, i32 0)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @XEXP(i32* %29, i32 1)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @REG_P(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @GET_CODE(i32* %35)
  %37 = load i64, i64* @SUBREG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @REG_P(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @GET_CODE(i32* %44)
  %46 = load i64, i64* @SUBREG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @GET_CODE(i32* %49)
  %51 = load i64, i64* @LO_SUM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @GET_CODE(i32* %54)
  %56 = load i64, i64* @LO_SUM, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %43, %39
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @XEXP(i32* %59, i32 1)
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @XEXP(i32* %61, i32 0)
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %58, %53, %48, %34, %26
  %64 = load i32, i32* @flag_pic, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %111

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** @pic_offset_table_rtx, align 8
  %69 = icmp eq i32* %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @REG_P(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @GET_CODE(i32* %75)
  %77 = load i64, i64* @SUBREG, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @GET_CODE(i32* %80)
  %82 = load i64, i64* @LO_SUM, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @GET_CODE(i32* %85)
  %87 = load i64, i64* @MEM, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @SPARC_SYMBOL_REF_TLS_P(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @VOIDmode, align 4
  %96 = call i32 @symbolic_operand(i32* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @Pmode, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98, %93
  %103 = load i32*, i32** %9, align 8
  %104 = call i64 @GET_CODE(i32* %103)
  %105 = load i64, i64* @CONST_INT, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %124, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %9, align 8
  %109 = call i64 @SMALL_INT(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %107, %98, %89, %84, %79, %74, %70, %66, %63
  %112 = load i32*, i32** %8, align 8
  %113 = call i64 @REG_P(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = call i64 @GET_CODE(i32* %116)
  %118 = load i64, i64* @SUBREG, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %115, %111
  %121 = load i32*, i32** %9, align 8
  %122 = call i64 @RTX_OK_FOR_OFFSET_P(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %107, %102
  %125 = load i32*, i32** %9, align 8
  store i32* %125, i32** %10, align 8
  store i32* null, i32** %9, align 8
  br label %208

126:                                              ; preds = %120, %115
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @REG_P(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %8, align 8
  %132 = call i64 @GET_CODE(i32* %131)
  %133 = load i64, i64* @SUBREG, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %174

135:                                              ; preds = %130, %126
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @REG_P(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32*, i32** %9, align 8
  %141 = call i64 @GET_CODE(i32* %140)
  %142 = load i64, i64* @SUBREG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @TFmode, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i64, i64* @TARGET_FPU, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i64, i64* @TARGET_ARCH64, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* @TARGET_HARD_QUAD, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154, %151, %148
  store i32 0, i32* %4, align 4
  br label %331

158:                                              ; preds = %154, %144
  %159 = load i64, i64* @TARGET_ARCH32, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i32, i32* @optimize, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @DFmode, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @DImode, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %164
  store i32 0, i32* %4, align 4
  br label %331

173:                                              ; preds = %168, %161, %158
  br label %207

174:                                              ; preds = %139, %130
  %175 = load i64, i64* @USE_AS_OFFSETABLE_LO10, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %206

177:                                              ; preds = %174
  %178 = load i32*, i32** %8, align 8
  %179 = call i64 @GET_CODE(i32* %178)
  %180 = load i64, i64* @LO_SUM, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %206

182:                                              ; preds = %177
  %183 = load i64, i64* @TARGET_ARCH64, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %182
  %186 = load i32, i32* @TARGET_CM_MEDMID, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %206, label %188

188:                                              ; preds = %185
  %189 = load i32*, i32** %9, align 8
  %190 = call i64 @RTX_OK_FOR_OLO10_P(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %188
  store i32* null, i32** %9, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = call i32* @XEXP(i32* %193, i32 1)
  store i32* %194, i32** %10, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32* @XEXP(i32* %195, i32 0)
  store i32* %196, i32** %8, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @CONSTANT_P(i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  %201 = load i32*, i32** %8, align 8
  %202 = call i64 @SPARC_SYMBOL_REF_TLS_P(i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %192
  store i32 0, i32* %4, align 4
  br label %331

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %188, %185, %182, %177, %174
  br label %207

207:                                              ; preds = %206, %173
  br label %208

208:                                              ; preds = %207, %124
  br label %248

209:                                              ; preds = %21
  %210 = load i32*, i32** %6, align 8
  %211 = call i64 @GET_CODE(i32* %210)
  %212 = load i64, i64* @LO_SUM, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %236

214:                                              ; preds = %209
  %215 = load i32*, i32** %6, align 8
  %216 = call i32* @XEXP(i32* %215, i32 0)
  store i32* %216, i32** %8, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = call i32* @XEXP(i32* %217, i32 1)
  store i32* %218, i32** %10, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = call i32 @CONSTANT_P(i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load i32*, i32** %8, align 8
  %224 = call i64 @SPARC_SYMBOL_REF_TLS_P(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %214
  store i32 0, i32* %4, align 4
  br label %331

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @TFmode, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i64, i64* @TARGET_ARCH32, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 0, i32* %4, align 4
  br label %331

235:                                              ; preds = %231, %227
  br label %247

236:                                              ; preds = %209
  %237 = load i32*, i32** %6, align 8
  %238 = call i64 @GET_CODE(i32* %237)
  %239 = load i64, i64* @CONST_INT, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load i32*, i32** %6, align 8
  %243 = call i64 @SMALL_INT(i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 1, i32* %4, align 4
  br label %331

246:                                              ; preds = %241, %236
  store i32 0, i32* %4, align 4
  br label %331

247:                                              ; preds = %235
  br label %248

248:                                              ; preds = %247, %208
  br label %249

249:                                              ; preds = %248, %19
  %250 = load i32*, i32** %8, align 8
  %251 = call i64 @GET_CODE(i32* %250)
  %252 = load i64, i64* @SUBREG, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32*, i32** %8, align 8
  %256 = call i32* @SUBREG_REG(i32* %255)
  store i32* %256, i32** %8, align 8
  br label %257

257:                                              ; preds = %254, %249
  %258 = load i32*, i32** %8, align 8
  %259 = call i64 @REG_P(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %257
  store i32 0, i32* %4, align 4
  br label %331

262:                                              ; preds = %257
  %263 = load i32*, i32** %9, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %262
  %266 = load i32*, i32** %9, align 8
  %267 = call i64 @GET_CODE(i32* %266)
  %268 = load i64, i64* @SUBREG, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i32*, i32** %9, align 8
  %272 = call i32* @SUBREG_REG(i32* %271)
  store i32* %272, i32** %9, align 8
  br label %273

273:                                              ; preds = %270, %265
  %274 = load i32*, i32** %9, align 8
  %275 = call i64 @REG_P(i32* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  store i32 0, i32* %4, align 4
  br label %331

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %262
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load i32*, i32** %8, align 8
  %284 = call i32 @REGNO(i32* %283)
  %285 = call i32 @REGNO_OK_FOR_BASE_P(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %282
  %288 = load i32*, i32** %9, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %296

290:                                              ; preds = %287
  %291 = load i32*, i32** %9, align 8
  %292 = call i32 @REGNO(i32* %291)
  %293 = call i32 @REGNO_OK_FOR_BASE_P(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %290, %282
  store i32 0, i32* %4, align 4
  br label %331

296:                                              ; preds = %290, %287
  br label %330

297:                                              ; preds = %279
  %298 = load i32*, i32** %8, align 8
  %299 = call i32 @REGNO(i32* %298)
  %300 = icmp sge i32 %299, 32
  br i1 %300, label %301, label %311

301:                                              ; preds = %297
  %302 = load i32*, i32** %8, align 8
  %303 = call i32 @REGNO(i32* %302)
  %304 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %301
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @REGNO(i32* %307)
  %309 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %328, label %311

311:                                              ; preds = %306, %301, %297
  %312 = load i32*, i32** %9, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %329

314:                                              ; preds = %311
  %315 = load i32*, i32** %9, align 8
  %316 = call i32 @REGNO(i32* %315)
  %317 = icmp sge i32 %316, 32
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load i32*, i32** %9, align 8
  %320 = call i32 @REGNO(i32* %319)
  %321 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load i32*, i32** %9, align 8
  %325 = call i32 @REGNO(i32* %324)
  %326 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %323, %306
  store i32 0, i32* %4, align 4
  br label %331

329:                                              ; preds = %323, %318, %314, %311
  br label %330

330:                                              ; preds = %329, %296
  store i32 1, i32* %4, align 4
  br label %331

331:                                              ; preds = %330, %328, %295, %277, %261, %246, %245, %234, %226, %204, %172, %157
  %332 = load i32, i32* %4, align 4
  ret i32 %332
}

declare dso_local i64 @REG_P(i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i64 @SPARC_SYMBOL_REF_TLS_P(i32*) #1

declare dso_local i32 @symbolic_operand(i32*, i32) #1

declare dso_local i64 @SMALL_INT(i32*) #1

declare dso_local i64 @RTX_OK_FOR_OFFSET_P(i32*) #1

declare dso_local i64 @RTX_OK_FOR_OLO10_P(i32*) #1

declare dso_local i32 @CONSTANT_P(i32*) #1

declare dso_local i32* @SUBREG_REG(i32*) #1

declare dso_local i32 @REGNO_OK_FOR_BASE_P(i32) #1

declare dso_local i32 @REGNO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
