; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_print_operand_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_print_operand_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix86_address = type { i32, i32, i64, i64, i64 }

@USER_LABEL_PREFIX = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"fs:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gs:\00", align 1
@CONST_INT = common dso_local global i64 0, align 8
@ASSEMBLER_DIALECT = common dso_local global i64 0, align 8
@ASM_INTEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ds:\00", align 1
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@flag_pic = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"(%rip)\00", align 1
@ASM_ATT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@NULL_RTX = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"*%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_operand_address(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ix86_address, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ix86_decompose_address(i64 %12, %struct.ix86_address* %5)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %43 [
    i32 130, label %26
    i32 129, label %27
    i32 128, label %27
  ]

26:                                               ; preds = %2
  br label %45

27:                                               ; preds = %2, %2
  %28 = load i64*, i64** @USER_LABEL_PREFIX, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @putc(i8 signext 37, i32* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 129
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @fputs(i8* %40, i32* %41)
  br label %45

43:                                               ; preds = %2
  %44 = call i32 (...) @gcc_unreachable()
  br label %45

45:                                               ; preds = %43, %35, %26
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %137, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %137, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @GET_CODE(i64 %52)
  %54 = load i64, i64* @CONST_INT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i64, i64* @ASSEMBLER_DIALECT, align 8
  %58 = load i64, i64* @ASM_INTEL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i64*, i64** @USER_LABEL_PREFIX, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @putc(i8 signext 37, i32* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %73)
  br label %75

75:                                               ; preds = %72, %60, %56
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @INTVAL(i64 %78)
  %80 = call i32 @fprintf(i32* %76, i8* %77, i32 %79)
  br label %93

81:                                               ; preds = %51
  %82 = load i64, i64* @flag_pic, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %3, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @output_pic_addr_const(i32* %85, i64 %86, i32 0)
  br label %92

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @output_addr_const(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i64, i64* @TARGET_64BIT, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @GET_CODE(i64 %97)
  %99 = load i64, i64* @CONST, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @XEXP(i64 %102, i32 0)
  %104 = call i64 @GET_CODE(i64 %103)
  %105 = load i64, i64* @PLUS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @XEXP(i64 %108, i32 0)
  %110 = call i64 @XEXP(i64 %109, i32 1)
  %111 = call i64 @GET_CODE(i64 %110)
  %112 = load i64, i64* @CONST_INT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @XEXP(i64 %115, i32 0)
  %117 = call i64 @XEXP(i64 %116, i32 0)
  store i64 %117, i64* %8, align 8
  br label %118

118:                                              ; preds = %114, %107, %101, %96
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @GET_CODE(i64 %119)
  %121 = load i64, i64* @LABEL_REF, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @GET_CODE(i64 %124)
  %126 = load i64, i64* @SYMBOL_REF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i64, i64* %8, align 8
  %130 = call i64 @SYMBOL_REF_TLS_MODEL(i64 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %118
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %133)
  br label %135

135:                                              ; preds = %132, %128, %123
  br label %136

136:                                              ; preds = %135, %93
  br label %311

137:                                              ; preds = %48, %45
  %138 = load i64, i64* @ASSEMBLER_DIALECT, align 8
  %139 = load i64, i64* @ASM_ATT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %137
  %142 = load i64, i64* %8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %141
  %145 = load i64, i64* @flag_pic, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32*, i32** %3, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @output_pic_addr_const(i32* %148, i64 %149, i32 0)
  br label %164

151:                                              ; preds = %144
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @GET_CODE(i64 %152)
  %154 = load i64, i64* @LABEL_REF, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @output_asm_label(i64 %157)
  br label %163

159:                                              ; preds = %151
  %160 = load i32*, i32** %3, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @output_addr_const(i32* %160, i64 %161)
  br label %163

163:                                              ; preds = %159, %156
  br label %164

164:                                              ; preds = %163, %147
  br label %165

165:                                              ; preds = %164, %141
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @putc(i8 signext 40, i32* %166)
  %168 = load i64, i64* %6, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i64, i64* %6, align 8
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @print_reg(i64 %171, i32 0, i32* %172)
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @putc(i8 signext 44, i32* %178)
  %180 = load i64, i64* %7, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @print_reg(i64 %180, i32 0, i32* %181)
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @fprintf(i32* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %177
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @putc(i8 signext 41, i32* %191)
  br label %310

193:                                              ; preds = %137
  %194 = load i64, i64* @NULL_RTX, align 8
  store i64 %194, i64* %11, align 8
  %195 = load i64, i64* %8, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %253

197:                                              ; preds = %193
  %198 = load i64, i64* %8, align 8
  %199 = call i64 @GET_CODE(i64 %198)
  %200 = load i64, i64* @CONST, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %197
  %203 = load i64, i64* %8, align 8
  %204 = call i64 @XEXP(i64 %203, i32 0)
  %205 = call i64 @GET_CODE(i64 %204)
  %206 = load i64, i64* @PLUS, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %202
  %209 = load i64, i64* %8, align 8
  %210 = call i64 @XEXP(i64 %209, i32 0)
  %211 = call i64 @XEXP(i64 %210, i32 1)
  %212 = call i64 @GET_CODE(i64 %211)
  %213 = load i64, i64* @CONST_INT, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load i64, i64* %8, align 8
  %217 = call i64 @XEXP(i64 %216, i32 0)
  %218 = call i64 @XEXP(i64 %217, i32 1)
  store i64 %218, i64* %11, align 8
  %219 = load i32, i32* @VOIDmode, align 4
  %220 = load i64, i64* %8, align 8
  %221 = call i64 @XEXP(i64 %220, i32 0)
  %222 = call i64 @XEXP(i64 %221, i32 0)
  %223 = call i64 @gen_rtx_CONST(i32 %219, i64 %222)
  store i64 %223, i64* %8, align 8
  br label %224

224:                                              ; preds = %215, %208, %202, %197
  %225 = load i64, i64* @flag_pic, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i32*, i32** %3, align 8
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @output_pic_addr_const(i32* %228, i64 %229, i32 0)
  br label %252

231:                                              ; preds = %224
  %232 = load i64, i64* %8, align 8
  %233 = call i64 @GET_CODE(i64 %232)
  %234 = load i64, i64* @LABEL_REF, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i64, i64* %8, align 8
  %238 = call i32 @output_asm_label(i64 %237)
  br label %251

239:                                              ; preds = %231
  %240 = load i64, i64* %8, align 8
  %241 = call i64 @GET_CODE(i64 %240)
  %242 = load i64, i64* @CONST_INT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i64, i64* %8, align 8
  store i64 %245, i64* %11, align 8
  br label %250

246:                                              ; preds = %239
  %247 = load i32*, i32** %3, align 8
  %248 = load i64, i64* %8, align 8
  %249 = call i32 @output_addr_const(i32* %247, i64 %248)
  br label %250

250:                                              ; preds = %246, %244
  br label %251

251:                                              ; preds = %250, %236
  br label %252

252:                                              ; preds = %251, %227
  br label %253

253:                                              ; preds = %252, %193
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @putc(i8 signext 91, i32* %254)
  %256 = load i64, i64* %6, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %278

258:                                              ; preds = %253
  %259 = load i64, i64* %6, align 8
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 @print_reg(i64 %259, i32 0, i32* %260)
  %262 = load i64, i64* %11, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %258
  %265 = load i64, i64* %11, align 8
  %266 = call i32 @INTVAL(i64 %265)
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32*, i32** %3, align 8
  %270 = call i32 @putc(i8 signext 43, i32* %269)
  br label %271

271:                                              ; preds = %268, %264
  %272 = load i32*, i32** %3, align 8
  %273 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %274 = load i64, i64* %11, align 8
  %275 = call i32 @INTVAL(i64 %274)
  %276 = call i32 @fprintf(i32* %272, i8* %273, i32 %275)
  br label %277

277:                                              ; preds = %271, %258
  br label %291

278:                                              ; preds = %253
  %279 = load i64, i64* %11, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = load i32*, i32** %3, align 8
  %283 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %284 = load i64, i64* %11, align 8
  %285 = call i32 @INTVAL(i64 %284)
  %286 = call i32 @fprintf(i32* %282, i8* %283, i32 %285)
  br label %290

287:                                              ; preds = %278
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @putc(i8 signext 48, i32* %288)
  br label %290

290:                                              ; preds = %287, %281
  br label %291

291:                                              ; preds = %290, %277
  %292 = load i64, i64* %7, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %291
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @putc(i8 signext 43, i32* %295)
  %297 = load i64, i64* %7, align 8
  %298 = load i32*, i32** %3, align 8
  %299 = call i32 @print_reg(i64 %297, i32 0, i32* %298)
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 1
  br i1 %301, label %302, label %306

302:                                              ; preds = %294
  %303 = load i32*, i32** %3, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @fprintf(i32* %303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %302, %294
  br label %307

307:                                              ; preds = %306, %291
  %308 = load i32*, i32** %3, align 8
  %309 = call i32 @putc(i8 signext 93, i32* %308)
  br label %310

310:                                              ; preds = %307, %190
  br label %311

311:                                              ; preds = %310, %136
  ret void
}

declare dso_local i32 @ix86_decompose_address(i64, %struct.ix86_address*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @output_pic_addr_const(i32*, i64, i32) #1

declare dso_local i32 @output_addr_const(i32*, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SYMBOL_REF_TLS_MODEL(i64) #1

declare dso_local i32 @output_asm_label(i64) #1

declare dso_local i32 @print_reg(i64, i32, i32*) #1

declare dso_local i64 @gen_rtx_CONST(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
