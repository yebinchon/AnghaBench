; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_asm_operand_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_asm_operand_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i32 0, align 4
@CONST_VECTOR = common dso_local global i32 0, align 4
@MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@POST_DEC = common dso_local global i32 0, align 4
@POST_INC = common dso_local global i32 0, align 4
@PRE_DEC = common dso_local global i32 0, align 4
@PRE_INC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asm_operand_ok(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @reload_completed, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  br label %14

14:                                               ; preds = %317, %40, %23, %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %318

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %274 [
    i32 44, label %23
    i32 61, label %26
    i32 43, label %26
    i32 42, label %26
    i32 37, label %26
    i32 33, label %26
    i32 35, label %26
    i32 38, label %26
    i32 63, label %26
    i32 48, label %27
    i32 49, label %27
    i32 50, label %27
    i32 51, label %27
    i32 52, label %27
    i32 53, label %27
    i32 54, label %27
    i32 55, label %27
    i32 56, label %27
    i32 57, label %27
    i32 112, label %41
    i32 109, label %48
    i32 86, label %48
    i32 111, label %55
    i32 60, label %61
    i32 62, label %67
    i32 69, label %73
    i32 70, label %73
    i32 71, label %91
    i32 72, label %103
    i32 115, label %115
    i32 105, label %132
    i32 110, label %145
    i32 73, label %162
    i32 74, label %175
    i32 75, label %188
    i32 76, label %201
    i32 77, label %214
    i32 78, label %227
    i32 79, label %240
    i32 80, label %253
    i32 88, label %266
    i32 103, label %267
    i32 114, label %281
  ]

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %14

26:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  br label %295

27:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  br label %28

28:                                               ; preds = %31, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @ISDIGIT(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %14

41:                                               ; preds = %18
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = call i32 @address_operand(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %41
  br label %295

48:                                               ; preds = %18, %18
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @VOIDmode, align 4
  %51 = call i32 @memory_operand(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %295

55:                                               ; preds = %18
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @offsettable_nonstrict_memref_p(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %55
  br label %295

61:                                               ; preds = %18
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @MEM_P(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %295

67:                                               ; preds = %18
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @MEM_P(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %295

73:                                               ; preds = %18, %18
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @GET_CODE(i32 %74)
  %76 = load i32, i32* @CONST_DOUBLE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @GET_CODE(i32 %79)
  %81 = load i32, i32* @CONST_VECTOR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @GET_MODE(i32 %84)
  %86 = call i32 @GET_MODE_CLASS(i32 %85)
  %87 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %73
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %83, %78
  br label %295

91:                                               ; preds = %18
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @GET_CODE(i32 %92)
  %94 = load i32, i32* @CONST_DOUBLE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32 %97, i8 signext 71, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %96, %91
  br label %295

103:                                              ; preds = %18
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @GET_CODE(i32 %104)
  %106 = load i32, i32* @CONST_DOUBLE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32 %109, i8 signext 72, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %108, %103
  br label %295

115:                                              ; preds = %18
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @GET_CODE(i32 %116)
  %118 = load i32, i32* @CONST_INT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @GET_CODE(i32 %121)
  %123 = load i32, i32* @CONST_DOUBLE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @GET_MODE(i32 %126)
  %128 = load i32, i32* @VOIDmode, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %115
  br label %295

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %18, %131
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @CONSTANT_P(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, i32* @flag_pic, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @LEGITIMATE_PIC_OPERAND_P(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %136
  store i32 1, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %139, %132
  br label %295

145:                                              ; preds = %18
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @GET_CODE(i32 %146)
  %148 = load i32, i32* @CONST_INT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @GET_CODE(i32 %151)
  %153 = load i32, i32* @CONST_DOUBLE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @GET_MODE(i32 %156)
  %158 = load i32, i32* @VOIDmode, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155, %145
  store i32 1, i32* %6, align 4
  br label %161

161:                                              ; preds = %160, %155, %150
  br label %295

162:                                              ; preds = %18
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @GET_CODE(i32 %163)
  %165 = load i32, i32* @CONST_INT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @INTVAL(i32 %168)
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %169, i8 signext 73, i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 1, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %167, %162
  br label %295

175:                                              ; preds = %18
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @GET_CODE(i32 %176)
  %178 = load i32, i32* @CONST_INT, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @INTVAL(i32 %181)
  %183 = load i8*, i8** %5, align 8
  %184 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %182, i8 signext 74, i8* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i32 1, i32* %6, align 4
  br label %187

187:                                              ; preds = %186, %180, %175
  br label %295

188:                                              ; preds = %18
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @GET_CODE(i32 %189)
  %191 = load i32, i32* @CONST_INT, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @INTVAL(i32 %194)
  %196 = load i8*, i8** %5, align 8
  %197 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %195, i8 signext 75, i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  store i32 1, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %193, %188
  br label %295

201:                                              ; preds = %18
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @GET_CODE(i32 %202)
  %204 = load i32, i32* @CONST_INT, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @INTVAL(i32 %207)
  %209 = load i8*, i8** %5, align 8
  %210 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %208, i8 signext 76, i8* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 1, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %206, %201
  br label %295

214:                                              ; preds = %18
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @GET_CODE(i32 %215)
  %217 = load i32, i32* @CONST_INT, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @INTVAL(i32 %220)
  %222 = load i8*, i8** %5, align 8
  %223 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %221, i8 signext 77, i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 1, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %219, %214
  br label %295

227:                                              ; preds = %18
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @GET_CODE(i32 %228)
  %230 = load i32, i32* @CONST_INT, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @INTVAL(i32 %233)
  %235 = load i8*, i8** %5, align 8
  %236 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %234, i8 signext 78, i8* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  store i32 1, i32* %6, align 4
  br label %239

239:                                              ; preds = %238, %232, %227
  br label %295

240:                                              ; preds = %18
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @GET_CODE(i32 %241)
  %243 = load i32, i32* @CONST_INT, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load i32, i32* %4, align 4
  %247 = call i32 @INTVAL(i32 %246)
  %248 = load i8*, i8** %5, align 8
  %249 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %247, i8 signext 79, i8* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  store i32 1, i32* %6, align 4
  br label %252

252:                                              ; preds = %251, %245, %240
  br label %295

253:                                              ; preds = %18
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @GET_CODE(i32 %254)
  %256 = load i32, i32* @CONST_INT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @INTVAL(i32 %259)
  %261 = load i8*, i8** %5, align 8
  %262 = call i32 @CONST_OK_FOR_CONSTRAINT_P(i32 %260, i8 signext 80, i8* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i32 1, i32* %6, align 4
  br label %265

265:                                              ; preds = %264, %258, %253
  br label %295

266:                                              ; preds = %18
  store i32 1, i32* %6, align 4
  br label %295

267:                                              ; preds = %18
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @VOIDmode, align 4
  %270 = call i32 @general_operand(i32 %268, i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  store i32 1, i32* %6, align 4
  br label %273

273:                                              ; preds = %272, %267
  br label %295

274:                                              ; preds = %18
  %275 = load i8, i8* %7, align 1
  %276 = load i8*, i8** %5, align 8
  %277 = call i32 @REG_CLASS_FROM_CONSTRAINT(i8 signext %275, i8* %276)
  %278 = load i32, i32* @NO_REGS, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %274
  br label %281

281:                                              ; preds = %18, %280
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @GET_MODE(i32 %282)
  %284 = load i32, i32* @BLKmode, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %295

287:                                              ; preds = %281
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @VOIDmode, align 4
  %290 = call i32 @register_operand(i32 %288, i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i32 1, i32* %6, align 4
  br label %293

293:                                              ; preds = %292, %287
  br label %294

294:                                              ; preds = %293, %274
  br label %295

295:                                              ; preds = %294, %286, %273, %266, %265, %252, %239, %226, %213, %200, %187, %174, %161, %144, %130, %114, %102, %90, %72, %66, %60, %54, %47, %26
  %296 = load i8, i8* %7, align 1
  %297 = load i8*, i8** %5, align 8
  %298 = call i32 @CONSTRAINT_LEN(i8 signext %296, i8* %297)
  store i32 %298, i32* %8, align 4
  br label %299

299:                                              ; preds = %311, %295
  %300 = load i8*, i8** %5, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %5, align 8
  br label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i8*, i8** %5, align 8
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br label %311

311:                                              ; preds = %306, %302
  %312 = phi i1 [ false, %302 ], [ %310, %306 ]
  br i1 %312, label %299, label %313

313:                                              ; preds = %311
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  store i32 0, i32* %3, align 4
  br label %320

317:                                              ; preds = %313
  br label %14

318:                                              ; preds = %14
  %319 = load i32, i32* %6, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @address_operand(i32, i32) #1

declare dso_local i32 @memory_operand(i32, i32) #1

declare dso_local i32 @offsettable_nonstrict_memref_p(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32, i8 signext, i8*) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @LEGITIMATE_PIC_OPERAND_P(i32) #1

declare dso_local i32 @CONST_OK_FOR_CONSTRAINT_P(i32, i8 signext, i8*) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @general_operand(i32, i32) #1

declare dso_local i32 @REG_CLASS_FROM_CONSTRAINT(i8 signext, i8*) #1

declare dso_local i32 @register_operand(i32, i32) #1

declare dso_local i32 @CONSTRAINT_LEN(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
