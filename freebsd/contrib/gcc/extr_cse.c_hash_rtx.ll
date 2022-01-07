; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_hash_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_hash_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i64 0, align 8
@global_regs = common dso_local global i32* null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@MODE_CC = common dso_local global i32 0, align 4
@SMALL_REGISTER_CLASSES = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_rtx(i64 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %390, %352, %288, %260, %5
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %449

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @GET_CODE(i64 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %364 [
    i32 132, label %32
    i32 131, label %125
    i32 143, label %144
    i32 144, label %154
    i32 142, label %183
    i32 141, label %208
    i32 130, label %216
    i32 140, label %240
    i32 128, label %265
    i32 135, label %294
    i32 134, label %294
    i32 138, label %294
    i32 137, label %294
    i32 133, label %294
    i32 136, label %294
    i32 139, label %294
    i32 145, label %294
    i32 146, label %294
    i32 129, label %294
    i32 147, label %296
  ]

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @REGNO(i64 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @reload_completed, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %109, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %18, align 4
  br label %103

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @frame_pointer_rtx, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @arg_pointer_rtx, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @stack_pointer_rtx, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @pic_offset_table_rtx, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54, %50, %46, %42
  store i32 1, i32* %18, align 4
  br label %102

63:                                               ; preds = %58
  %64 = load i32*, i32** @global_regs, align 8
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %18, align 4
  br label %101

71:                                               ; preds = %63
  %72 = load i32*, i32** @fixed_regs, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %18, align 4
  br label %100

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @GET_MODE(i64 %80)
  %82 = call i32 @GET_MODE_CLASS(i32 %81)
  %83 = load i32, i32* @MODE_CC, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %18, align 4
  br label %99

86:                                               ; preds = %79
  %87 = load i32, i32* @SMALL_REGISTER_CLASSES, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %18, align 4
  br label %98

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @REGNO_REG_CLASS(i32 %91)
  %93 = call i32 @CLASS_LIKELY_SPILLED_P(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  br label %97

96:                                               ; preds = %90
  store i32 1, i32* %18, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %89
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %70
  br label %102

102:                                              ; preds = %101, %62
  br label %103

103:                                              ; preds = %102, %41
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %9, align 8
  store i32 1, i32* %107, align 4
  store i32 0, i32* %6, align 4
  br label %449

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %32
  %110 = load i32, i32* %14, align 4
  %111 = add i32 %110, 16896
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %17, align 4
  %116 = call i64 @REG_QTY(i32 %115)
  %117 = trunc i64 %116 to i32
  br label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %17, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ %117, %114 ], [ %119, %118 ]
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %449

125:                                              ; preds = %28
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @SUBREG_REG(i64 %126)
  %128 = call i32 @REG_P(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @SUBREG_REG(i64 %131)
  %133 = call i32 @REGNO(i64 %132)
  %134 = add i32 16768, %133
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @SUBREG_BYTE(i64 %135)
  %137 = load i32, i32* @UNITS_PER_WORD, align 4
  %138 = udiv i32 %136, %137
  %139 = add i32 %134, %138
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %6, align 4
  br label %449

143:                                              ; preds = %125
  br label %365

144:                                              ; preds = %28
  %145 = load i32, i32* %8, align 4
  %146 = add i32 18304, %145
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @INTVAL(i64 %147)
  %149 = trunc i64 %148 to i32
  %150 = add i32 %146, %149
  %151 = load i32, i32* %14, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %6, align 4
  br label %449

154:                                              ; preds = %28
  %155 = load i32, i32* %15, align 4
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @GET_MODE(i64 %156)
  %158 = add i32 %155, %157
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %14, align 4
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @GET_MODE(i64 %161)
  %163 = load i32, i32* @VOIDmode, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @CONST_DOUBLE_REAL_VALUE(i64 %166)
  %168 = call i32 @real_hash(i32 %167)
  %169 = load i32, i32* %14, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %181

171:                                              ; preds = %154
  %172 = load i64, i64* %7, align 8
  %173 = call i64 @CONST_DOUBLE_LOW(i64 %172)
  %174 = trunc i64 %173 to i32
  %175 = load i64, i64* %7, align 8
  %176 = call i64 @CONST_DOUBLE_HIGH(i64 %175)
  %177 = trunc i64 %176 to i32
  %178 = add i32 %174, %177
  %179 = load i32, i32* %14, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %171, %165
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %6, align 4
  br label %449

183:                                              ; preds = %28
  %184 = load i64, i64* %7, align 8
  %185 = call i32 @CONST_VECTOR_NUNITS(i64 %184)
  store i32 %185, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %203, %183
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %186
  %191 = load i64, i64* %7, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i64 @CONST_VECTOR_ELT(i64 %191, i32 %192)
  store i64 %193, i64* %20, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load i64, i64* %20, align 8
  %196 = call i32 @GET_MODE(i64 %195)
  %197 = load i32*, i32** %9, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @hash_rtx(i64 %194, i32 %196, i32* %197, i32* %198, i32 %199)
  %201 = load i32, i32* %14, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %190
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  br label %186

206:                                              ; preds = %186
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %6, align 4
  br label %449

208:                                              ; preds = %28
  %209 = load i64, i64* %7, align 8
  %210 = call i64 @XEXP(i64 %209, i32 0)
  %211 = call i32 @CODE_LABEL_NUMBER(i64 %210)
  %212 = add i32 18048, %211
  %213 = load i32, i32* %14, align 4
  %214 = add i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %6, align 4
  br label %449

216:                                              ; preds = %28
  store i32 0, i32* %21, align 4
  %217 = load i64, i64* %7, align 8
  %218 = call i64 @XSTR(i64 %217, i32 0)
  %219 = inttoptr i64 %218 to i8*
  store i8* %219, i8** %22, align 8
  br label %220

220:                                              ; preds = %224, %216
  %221 = load i8*, i8** %22, align 8
  %222 = load i8, i8* %221, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load i32, i32* %21, align 4
  %226 = shl i32 %225, 7
  %227 = load i8*, i8** %22, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %22, align 8
  %229 = load i8, i8* %227, align 1
  %230 = zext i8 %229 to i32
  %231 = add i32 %226, %230
  %232 = load i32, i32* %21, align 4
  %233 = add i32 %232, %231
  store i32 %233, i32* %21, align 4
  br label %220

234:                                              ; preds = %220
  %235 = load i32, i32* %21, align 4
  %236 = add i32 16640, %235
  %237 = load i32, i32* %14, align 4
  %238 = add i32 %237, %236
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  store i32 %239, i32* %6, align 4
  br label %449

240:                                              ; preds = %28
  %241 = load i64, i64* %7, align 8
  %242 = call i32 @MEM_VOLATILE_P(i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* %7, align 8
  %246 = call i32 @GET_MODE(i64 %245)
  %247 = load i32, i32* @BLKmode, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %244, %240
  %250 = load i32*, i32** %9, align 8
  store i32 1, i32* %250, align 4
  store i32 0, i32* %6, align 4
  br label %449

251:                                              ; preds = %244
  %252 = load i32*, i32** %10, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i64, i64* %7, align 8
  %256 = call i32 @MEM_READONLY_P(i64 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = load i32*, i32** %10, align 8
  store i32 1, i32* %259, align 4
  br label %260

260:                                              ; preds = %258, %254, %251
  %261 = load i32, i32* %14, align 4
  %262 = add i32 %261, 140
  store i32 %262, i32* %14, align 4
  %263 = load i64, i64* %7, align 8
  %264 = call i64 @XEXP(i64 %263, i32 0)
  store i64 %264, i64* %7, align 8
  br label %23

265:                                              ; preds = %28
  %266 = load i64, i64* %7, align 8
  %267 = call i64 @XEXP(i64 %266, i32 0)
  %268 = call i32 @MEM_P(i64 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %293

270:                                              ; preds = %265
  %271 = load i64, i64* %7, align 8
  %272 = call i64 @XEXP(i64 %271, i32 0)
  %273 = call i32 @MEM_VOLATILE_P(i64 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %293, label %275

275:                                              ; preds = %270
  %276 = load i32, i32* %14, align 4
  %277 = add i32 %276, 128
  store i32 %277, i32* %14, align 4
  %278 = load i64, i64* %7, align 8
  %279 = call i64 @XEXP(i64 %278, i32 0)
  store i64 %279, i64* %7, align 8
  %280 = load i32*, i32** %10, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load i64, i64* %7, align 8
  %284 = call i32 @MEM_READONLY_P(i64 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %282
  %287 = load i32*, i32** %10, align 8
  store i32 1, i32* %287, align 4
  br label %288

288:                                              ; preds = %286, %282, %275
  %289 = load i32, i32* %14, align 4
  %290 = add i32 %289, 140
  store i32 %290, i32* %14, align 4
  %291 = load i64, i64* %7, align 8
  %292 = call i64 @XEXP(i64 %291, i32 0)
  store i64 %292, i64* %7, align 8
  br label %23

293:                                              ; preds = %270, %265
  br label %365

294:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %295 = load i32*, i32** %9, align 8
  store i32 1, i32* %295, align 4
  store i32 0, i32* %6, align 4
  br label %449

296:                                              ; preds = %28
  %297 = load i64, i64* %7, align 8
  %298 = call i32 @MEM_VOLATILE_P(i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = load i32*, i32** %9, align 8
  store i32 1, i32* %301, align 4
  store i32 0, i32* %6, align 4
  br label %449

302:                                              ; preds = %296
  %303 = load i32, i32* %15, align 4
  %304 = load i64, i64* %7, align 8
  %305 = call i32 @GET_MODE(i64 %304)
  %306 = add i32 %303, %305
  %307 = load i64, i64* %7, align 8
  %308 = call i64 @ASM_OPERANDS_TEMPLATE(i64 %307)
  %309 = call i32 @hash_rtx_string(i64 %308)
  %310 = add i32 %306, %309
  %311 = load i64, i64* %7, align 8
  %312 = call i64 @ASM_OPERANDS_OUTPUT_CONSTRAINT(i64 %311)
  %313 = call i32 @hash_rtx_string(i64 %312)
  %314 = add i32 %310, %313
  %315 = load i64, i64* %7, align 8
  %316 = call i64 @ASM_OPERANDS_OUTPUT_IDX(i64 %315)
  %317 = trunc i64 %316 to i32
  %318 = add i32 %314, %317
  %319 = load i32, i32* %14, align 4
  %320 = add i32 %319, %318
  store i32 %320, i32* %14, align 4
  %321 = load i64, i64* %7, align 8
  %322 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %362

324:                                              ; preds = %302
  store i32 1, i32* %12, align 4
  br label %325

325:                                              ; preds = %349, %324
  %326 = load i32, i32* %12, align 4
  %327 = load i64, i64* %7, align 8
  %328 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %327)
  %329 = icmp slt i32 %326, %328
  br i1 %329, label %330, label %352

330:                                              ; preds = %325
  %331 = load i64, i64* %7, align 8
  %332 = load i32, i32* %12, align 4
  %333 = call i64 @ASM_OPERANDS_INPUT(i64 %331, i32 %332)
  %334 = load i64, i64* %7, align 8
  %335 = load i32, i32* %12, align 4
  %336 = call i64 @ASM_OPERANDS_INPUT(i64 %334, i32 %335)
  %337 = call i32 @GET_MODE(i64 %336)
  %338 = load i32*, i32** %9, align 8
  %339 = load i32*, i32** %10, align 8
  %340 = load i32, i32* %11, align 4
  %341 = call i32 @hash_rtx(i64 %333, i32 %337, i32* %338, i32* %339, i32 %340)
  %342 = load i64, i64* %7, align 8
  %343 = load i32, i32* %12, align 4
  %344 = call i64 @ASM_OPERANDS_INPUT_CONSTRAINT(i64 %342, i32 %343)
  %345 = call i32 @hash_rtx_string(i64 %344)
  %346 = add i32 %341, %345
  %347 = load i32, i32* %14, align 4
  %348 = add i32 %347, %346
  store i32 %348, i32* %14, align 4
  br label %349

349:                                              ; preds = %330
  %350 = load i32, i32* %12, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %12, align 4
  br label %325

352:                                              ; preds = %325
  %353 = load i64, i64* %7, align 8
  %354 = call i64 @ASM_OPERANDS_INPUT_CONSTRAINT(i64 %353, i32 0)
  %355 = call i32 @hash_rtx_string(i64 %354)
  %356 = load i32, i32* %14, align 4
  %357 = add i32 %356, %355
  store i32 %357, i32* %14, align 4
  %358 = load i64, i64* %7, align 8
  %359 = call i64 @ASM_OPERANDS_INPUT(i64 %358, i32 0)
  store i64 %359, i64* %7, align 8
  %360 = load i64, i64* %7, align 8
  %361 = call i32 @GET_MODE(i64 %360)
  store i32 %361, i32* %8, align 4
  br label %23

362:                                              ; preds = %302
  %363 = load i32, i32* %14, align 4
  store i32 %363, i32* %6, align 4
  br label %449

364:                                              ; preds = %28
  br label %365

365:                                              ; preds = %364, %293, %143
  %366 = load i32, i32* %15, align 4
  %367 = call i32 @GET_RTX_LENGTH(i32 %366)
  %368 = sub nsw i32 %367, 1
  store i32 %368, i32* %12, align 4
  %369 = load i32, i32* %15, align 4
  %370 = load i64, i64* %7, align 8
  %371 = call i32 @GET_MODE(i64 %370)
  %372 = add i32 %369, %371
  %373 = load i32, i32* %14, align 4
  %374 = add i32 %373, %372
  store i32 %374, i32* %14, align 4
  %375 = load i32, i32* %15, align 4
  %376 = call i8* @GET_RTX_FORMAT(i32 %375)
  store i8* %376, i8** %16, align 8
  br label %377

377:                                              ; preds = %444, %365
  %378 = load i32, i32* %12, align 4
  %379 = icmp sge i32 %378, 0
  br i1 %379, label %380, label %447

380:                                              ; preds = %377
  %381 = load i8*, i8** %16, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  switch i32 %386, label %441 [
    i32 101, label %387
    i32 69, label %404
    i32 115, label %426
    i32 105, label %433
    i32 48, label %440
    i32 116, label %440
  ]

387:                                              ; preds = %380
  %388 = load i32, i32* %12, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load i64, i64* %7, align 8
  %392 = load i32, i32* %12, align 4
  %393 = call i64 @XEXP(i64 %391, i32 %392)
  store i64 %393, i64* %7, align 8
  br label %23

394:                                              ; preds = %387
  %395 = load i64, i64* %7, align 8
  %396 = load i32, i32* %12, align 4
  %397 = call i64 @XEXP(i64 %395, i32 %396)
  %398 = load i32*, i32** %9, align 8
  %399 = load i32*, i32** %10, align 8
  %400 = load i32, i32* %11, align 4
  %401 = call i32 @hash_rtx(i64 %397, i32 0, i32* %398, i32* %399, i32 %400)
  %402 = load i32, i32* %14, align 4
  %403 = add i32 %402, %401
  store i32 %403, i32* %14, align 4
  br label %443

404:                                              ; preds = %380
  store i32 0, i32* %13, align 4
  br label %405

405:                                              ; preds = %422, %404
  %406 = load i32, i32* %13, align 4
  %407 = load i64, i64* %7, align 8
  %408 = load i32, i32* %12, align 4
  %409 = call i32 @XVECLEN(i64 %407, i32 %408)
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %425

411:                                              ; preds = %405
  %412 = load i64, i64* %7, align 8
  %413 = load i32, i32* %12, align 4
  %414 = load i32, i32* %13, align 4
  %415 = call i64 @XVECEXP(i64 %412, i32 %413, i32 %414)
  %416 = load i32*, i32** %9, align 8
  %417 = load i32*, i32** %10, align 8
  %418 = load i32, i32* %11, align 4
  %419 = call i32 @hash_rtx(i64 %415, i32 0, i32* %416, i32* %417, i32 %418)
  %420 = load i32, i32* %14, align 4
  %421 = add i32 %420, %419
  store i32 %421, i32* %14, align 4
  br label %422

422:                                              ; preds = %411
  %423 = load i32, i32* %13, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %13, align 4
  br label %405

425:                                              ; preds = %405
  br label %443

426:                                              ; preds = %380
  %427 = load i64, i64* %7, align 8
  %428 = load i32, i32* %12, align 4
  %429 = call i64 @XSTR(i64 %427, i32 %428)
  %430 = call i32 @hash_rtx_string(i64 %429)
  %431 = load i32, i32* %14, align 4
  %432 = add i32 %431, %430
  store i32 %432, i32* %14, align 4
  br label %443

433:                                              ; preds = %380
  %434 = load i64, i64* %7, align 8
  %435 = load i32, i32* %12, align 4
  %436 = call i64 @XINT(i64 %434, i32 %435)
  %437 = trunc i64 %436 to i32
  %438 = load i32, i32* %14, align 4
  %439 = add i32 %438, %437
  store i32 %439, i32* %14, align 4
  br label %443

440:                                              ; preds = %380, %380
  br label %443

441:                                              ; preds = %380
  %442 = call i32 (...) @gcc_unreachable()
  br label %443

443:                                              ; preds = %441, %440, %433, %426, %425, %394
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %12, align 4
  br label %377

447:                                              ; preds = %377
  %448 = load i32, i32* %14, align 4
  store i32 %448, i32* %6, align 4
  br label %449

449:                                              ; preds = %447, %362, %300, %294, %249, %234, %208, %206, %181, %144, %130, %120, %106, %26
  %450 = load i32, i32* %6, align 4
  ret i32 %450
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @CLASS_LIKELY_SPILLED_P(i32) #1

declare dso_local i32 @REGNO_REG_CLASS(i32) #1

declare dso_local i64 @REG_QTY(i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i32 @real_hash(i32) #1

declare dso_local i32 @CONST_DOUBLE_REAL_VALUE(i64) #1

declare dso_local i64 @CONST_DOUBLE_LOW(i64) #1

declare dso_local i64 @CONST_DOUBLE_HIGH(i64) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i64) #1

declare dso_local i64 @CONST_VECTOR_ELT(i64, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @XSTR(i64, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @MEM_READONLY_P(i64) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @hash_rtx_string(i64) #1

declare dso_local i64 @ASM_OPERANDS_TEMPLATE(i64) #1

declare dso_local i64 @ASM_OPERANDS_OUTPUT_CONSTRAINT(i64) #1

declare dso_local i64 @ASM_OPERANDS_OUTPUT_IDX(i64) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i64) #1

declare dso_local i64 @ASM_OPERANDS_INPUT(i64, i32) #1

declare dso_local i64 @ASM_OPERANDS_INPUT_CONSTRAINT(i64, i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
