; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_decompose_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_decompose_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.s390_address = type { i32, i32, i64, i64, i64 }

@NULL_RTX = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@UNSPEC_LTREL_OFFSET = common dso_local global i32 0, align 4
@SImode = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@reload_in_progress = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@return_address_pointer_rtx = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i64 0, align 8
@virtual_stack_vars_rtx = common dso_local global i64 0, align 8
@UNSPEC_GOT = common dso_local global i32 0, align 4
@UNSPEC_GOTNTPOFF = common dso_local global i32 0, align 4
@MINUS = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.s390_address*)* @s390_decompose_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_decompose_address(i64 %0, %struct.s390_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.s390_address*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.s390_address* %1, %struct.s390_address** %5, align 8
  store i64 0, i64* %6, align 8
  %22 = load i64, i64* @NULL_RTX, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @NULL_RTX, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @NULL_RTX, align 8
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i64, i64* @Pmode, align 8
  %26 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %27 = call i64 @gen_rtx_REG(i64 %25, i64 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @REG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @GET_CODE(i64 %33)
  %35 = load i64, i64* @UNSPEC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %2
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %7, align 8
  br label %98

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @PLUS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @XEXP(i64 %45, i32 0)
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @XEXP(i64 %47, i32 1)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %16, align 8
  %50 = call i64 @GET_CODE(i64 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i64, i64* %17, align 8
  %53 = call i64 @GET_CODE(i64 %52)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @REG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %18, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @UNSPEC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59, %44
  %65 = load i32, i32* %19, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @REG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %19, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @UNSPEC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i64, i64* %16, align 8
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %17, align 8
  store i64 %76, i64* %7, align 8
  br label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %16, align 8
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %17, align 8
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %94

81:                                               ; preds = %59
  %82 = load i32, i32* %18, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* @PLUS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i64, i64* %16, align 8
  %88 = call i64 @XEXP(i64 %87, i32 0)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @XEXP(i64 %89, i32 1)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %17, align 8
  store i64 %91, i64* %9, align 8
  br label %93

92:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %571

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %80
  br label %97

95:                                               ; preds = %39
  %96 = load i64, i64* %4, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %37
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %98
  %103 = load i64, i64* %9, align 8
  %104 = call i64 @GET_CODE(i64 %103)
  %105 = load i64, i64* @CONST_INT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @INTVAL(i64 %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* @NULL_RTX, align 8
  store i64 %110, i64* %9, align 8
  br label %138

111:                                              ; preds = %102
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @GET_CODE(i64 %112)
  %114 = load i64, i64* @CONST, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @XEXP(i64 %117, i32 0)
  %119 = call i64 @GET_CODE(i64 %118)
  %120 = load i64, i64* @PLUS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @XEXP(i64 %123, i32 0)
  %125 = call i64 @XEXP(i64 %124, i32 1)
  %126 = call i64 @GET_CODE(i64 %125)
  %127 = load i64, i64* @CONST_INT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @XEXP(i64 %130, i32 0)
  %132 = call i64 @XEXP(i64 %131, i32 1)
  %133 = call i64 @INTVAL(i64 %132)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @XEXP(i64 %134, i32 0)
  %136 = call i64 @XEXP(i64 %135, i32 0)
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %129, %122, %116, %111
  br label %138

138:                                              ; preds = %137, %107
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i64, i64* %9, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i64, i64* %9, align 8
  %144 = call i64 @GET_CODE(i64 %143)
  %145 = load i64, i64* @CONST, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i64, i64* %9, align 8
  %149 = call i64 @XEXP(i64 %148, i32 0)
  store i64 %149, i64* %9, align 8
  br label %150

150:                                              ; preds = %147, %142, %139
  %151 = load i64, i64* %9, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %150
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @GET_CODE(i64 %154)
  %156 = load i64, i64* @SYMBOL_REF, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %153
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %15, align 8
  store i64 %166, i64* %7, align 8
  store i32 1, i32* %14, align 4
  br label %174

167:                                              ; preds = %162
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = load i64, i64* %15, align 8
  store i64 %171, i64* %8, align 8
  store i32 1, i32* %14, align 4
  br label %173

172:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %571

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %173, %165
  %175 = load i64, i64* @Pmode, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @gen_rtvec(i32 1, i64 %176)
  %178 = load i32, i32* @UNSPEC_LTREL_OFFSET, align 4
  %179 = call i64 @gen_rtx_UNSPEC(i64 %175, i32 %177, i32 %178)
  store i64 %179, i64* %9, align 8
  br label %180

180:                                              ; preds = %174, %158, %153, %150
  %181 = load i64, i64* %7, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %286

183:                                              ; preds = %180
  %184 = load i64, i64* %7, align 8
  %185 = call i64 @GET_CODE(i64 %184)
  %186 = load i64, i64* @UNSPEC, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %217

188:                                              ; preds = %183
  %189 = load i64, i64* %7, align 8
  %190 = call i32 @XINT(i64 %189, i32 1)
  switch i32 %190, label %215 [
    i32 129, label %191
    i32 128, label %205
  ]

191:                                              ; preds = %188
  %192 = load i64, i64* %9, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = load i64, i64* @Pmode, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i64 @XVECEXP(i64 %196, i32 0, i32 0)
  %198 = call i32 @gen_rtvec(i32 1, i64 %197)
  %199 = load i32, i32* @UNSPEC_LTREL_OFFSET, align 4
  %200 = call i64 @gen_rtx_UNSPEC(i64 %195, i32 %198, i32 %199)
  store i64 %200, i64* %9, align 8
  br label %202

201:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %571

202:                                              ; preds = %194
  %203 = load i64, i64* %7, align 8
  %204 = call i64 @XVECEXP(i64 %203, i32 0, i32 1)
  store i64 %204, i64* %7, align 8
  br label %216

205:                                              ; preds = %188
  %206 = load i64, i64* %7, align 8
  %207 = call i32 @XVECLEN(i64 %206, i32 0)
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i64, i64* %15, align 8
  store i64 %210, i64* %7, align 8
  store i32 1, i32* %14, align 4
  br label %214

211:                                              ; preds = %205
  %212 = load i64, i64* %7, align 8
  %213 = call i64 @XVECEXP(i64 %212, i32 0, i32 1)
  store i64 %213, i64* %7, align 8
  br label %214

214:                                              ; preds = %211, %209
  br label %216

215:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %571

216:                                              ; preds = %214, %202
  br label %217

217:                                              ; preds = %216, %183
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @REG_P(i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %217
  %222 = load i64, i64* %7, align 8
  %223 = call i64 @GET_MODE(i64 %222)
  %224 = load i64, i64* @SImode, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load i64, i64* %7, align 8
  %228 = call i64 @GET_MODE(i64 %227)
  %229 = load i64, i64* @Pmode, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %226, %217
  store i32 0, i32* %3, align 4
  br label %571

232:                                              ; preds = %226, %221
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @REGNO(i64 %233)
  %235 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %269, label %237

237:                                              ; preds = %232
  %238 = load i64, i64* %7, align 8
  %239 = call i64 @REGNO(i64 %238)
  %240 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %269, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* @reload_completed, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* @reload_in_progress, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %245, %242
  %249 = load i64, i64* @frame_pointer_needed, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i64, i64* %7, align 8
  %253 = call i64 @REGNO(i64 %252)
  %254 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %269, label %256

256:                                              ; preds = %251, %248, %245
  %257 = load i64, i64* %7, align 8
  %258 = call i64 @REGNO(i64 %257)
  %259 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %269, label %261

261:                                              ; preds = %256
  %262 = load i32, i32* @flag_pic, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i64, i64* %7, align 8
  %266 = call i64 @REGNO(i64 %265)
  %267 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %264, %256, %251, %237, %232
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %270

270:                                              ; preds = %269, %264, %261
  %271 = load i64, i64* @reload_completed, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = load i64, i64* @reload_in_progress, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273, %270
  %277 = load i64, i64* %7, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %277, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  store i32 1, i32* %14, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %285

285:                                              ; preds = %284, %276, %273
  br label %286

286:                                              ; preds = %285, %180
  %287 = load i64, i64* %8, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %392

289:                                              ; preds = %286
  %290 = load i64, i64* %8, align 8
  %291 = call i64 @GET_CODE(i64 %290)
  %292 = load i64, i64* @UNSPEC, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %323

294:                                              ; preds = %289
  %295 = load i64, i64* %8, align 8
  %296 = call i32 @XINT(i64 %295, i32 1)
  switch i32 %296, label %321 [
    i32 129, label %297
    i32 128, label %311
  ]

297:                                              ; preds = %294
  %298 = load i64, i64* %9, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* @Pmode, align 8
  %302 = load i64, i64* %8, align 8
  %303 = call i64 @XVECEXP(i64 %302, i32 0, i32 0)
  %304 = call i32 @gen_rtvec(i32 1, i64 %303)
  %305 = load i32, i32* @UNSPEC_LTREL_OFFSET, align 4
  %306 = call i64 @gen_rtx_UNSPEC(i64 %301, i32 %304, i32 %305)
  store i64 %306, i64* %9, align 8
  br label %308

307:                                              ; preds = %297
  store i32 0, i32* %3, align 4
  br label %571

308:                                              ; preds = %300
  %309 = load i64, i64* %8, align 8
  %310 = call i64 @XVECEXP(i64 %309, i32 0, i32 1)
  store i64 %310, i64* %8, align 8
  br label %322

311:                                              ; preds = %294
  %312 = load i64, i64* %8, align 8
  %313 = call i32 @XVECLEN(i64 %312, i32 0)
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = load i64, i64* %15, align 8
  store i64 %316, i64* %8, align 8
  store i32 1, i32* %14, align 4
  br label %320

317:                                              ; preds = %311
  %318 = load i64, i64* %8, align 8
  %319 = call i64 @XVECEXP(i64 %318, i32 0, i32 1)
  store i64 %319, i64* %8, align 8
  br label %320

320:                                              ; preds = %317, %315
  br label %322

321:                                              ; preds = %294
  store i32 0, i32* %3, align 4
  br label %571

322:                                              ; preds = %320, %308
  br label %323

323:                                              ; preds = %322, %289
  %324 = load i64, i64* %8, align 8
  %325 = call i32 @REG_P(i64 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %323
  %328 = load i64, i64* %8, align 8
  %329 = call i64 @GET_MODE(i64 %328)
  %330 = load i64, i64* @SImode, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load i64, i64* %8, align 8
  %334 = call i64 @GET_MODE(i64 %333)
  %335 = load i64, i64* @Pmode, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %332, %323
  store i32 0, i32* %3, align 4
  br label %571

338:                                              ; preds = %332, %327
  %339 = load i64, i64* %8, align 8
  %340 = call i64 @REGNO(i64 %339)
  %341 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %375, label %343

343:                                              ; preds = %338
  %344 = load i64, i64* %8, align 8
  %345 = call i64 @REGNO(i64 %344)
  %346 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %375, label %348

348:                                              ; preds = %343
  %349 = load i64, i64* @reload_completed, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load i64, i64* @reload_in_progress, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %351, %348
  %355 = load i64, i64* @frame_pointer_needed, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = load i64, i64* %8, align 8
  %359 = call i64 @REGNO(i64 %358)
  %360 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %375, label %362

362:                                              ; preds = %357, %354, %351
  %363 = load i64, i64* %8, align 8
  %364 = call i64 @REGNO(i64 %363)
  %365 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %375, label %367

367:                                              ; preds = %362
  %368 = load i32, i32* @flag_pic, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load i64, i64* %8, align 8
  %372 = call i64 @REGNO(i64 %371)
  %373 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %370, %362, %357, %343, %338
  store i32 1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %376

376:                                              ; preds = %375, %370, %367
  %377 = load i64, i64* @reload_completed, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = load i64, i64* @reload_in_progress, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %379, %376
  %383 = load i64, i64* %8, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %383, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %391

391:                                              ; preds = %390, %382, %379
  br label %392

392:                                              ; preds = %391, %286
  %393 = load i64, i64* %7, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %416

395:                                              ; preds = %392
  %396 = load i64, i64* %8, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %416

398:                                              ; preds = %395
  %399 = load i32, i32* %12, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %416, label %401

401:                                              ; preds = %398
  %402 = load i32, i32* %13, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %412, label %404

404:                                              ; preds = %401
  %405 = load i64, i64* %7, align 8
  %406 = call i64 @REG_POINTER(i64 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %416, label %408

408:                                              ; preds = %404
  %409 = load i64, i64* %8, align 8
  %410 = call i64 @REG_POINTER(i64 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408, %401
  %413 = load i64, i64* %7, align 8
  store i64 %413, i64* %20, align 8
  %414 = load i64, i64* %8, align 8
  store i64 %414, i64* %7, align 8
  %415 = load i64, i64* %20, align 8
  store i64 %415, i64* %8, align 8
  br label %416

416:                                              ; preds = %412, %408, %404, %398, %395, %392
  %417 = load i64, i64* %9, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %458, label %419

419:                                              ; preds = %416
  %420 = load i64, i64* %7, align 8
  %421 = load i64, i64* @arg_pointer_rtx, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %457

423:                                              ; preds = %419
  %424 = load i64, i64* %8, align 8
  %425 = load i64, i64* @arg_pointer_rtx, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %457

427:                                              ; preds = %423
  %428 = load i64, i64* %7, align 8
  %429 = load i64, i64* @return_address_pointer_rtx, align 8
  %430 = icmp ne i64 %428, %429
  br i1 %430, label %431, label %457

431:                                              ; preds = %427
  %432 = load i64, i64* %8, align 8
  %433 = load i64, i64* @return_address_pointer_rtx, align 8
  %434 = icmp ne i64 %432, %433
  br i1 %434, label %435, label %457

435:                                              ; preds = %431
  %436 = load i64, i64* %7, align 8
  %437 = load i64, i64* @frame_pointer_rtx, align 8
  %438 = icmp ne i64 %436, %437
  br i1 %438, label %439, label %457

439:                                              ; preds = %435
  %440 = load i64, i64* %8, align 8
  %441 = load i64, i64* @frame_pointer_rtx, align 8
  %442 = icmp ne i64 %440, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %439
  %444 = load i64, i64* %7, align 8
  %445 = load i64, i64* @virtual_stack_vars_rtx, align 8
  %446 = icmp ne i64 %444, %445
  br i1 %446, label %447, label %457

447:                                              ; preds = %443
  %448 = load i64, i64* %8, align 8
  %449 = load i64, i64* @virtual_stack_vars_rtx, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %447
  %452 = load i64, i64* %6, align 8
  %453 = call i32 @DISP_IN_RANGE(i64 %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  store i32 0, i32* %3, align 4
  br label %571

456:                                              ; preds = %451
  br label %457

457:                                              ; preds = %456, %447, %443, %439, %435, %431, %427, %423, %419
  br label %544

458:                                              ; preds = %416
  store i32 1, i32* %11, align 4
  %459 = load i64, i64* %9, align 8
  %460 = call i64 @GET_CODE(i64 %459)
  %461 = load i64, i64* @UNSPEC, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %477

463:                                              ; preds = %458
  %464 = load i64, i64* %9, align 8
  %465 = call i32 @XINT(i64 %464, i32 1)
  %466 = load i32, i32* @UNSPEC_GOT, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %473, label %468

468:                                              ; preds = %463
  %469 = load i64, i64* %9, align 8
  %470 = call i32 @XINT(i64 %469, i32 1)
  %471 = load i32, i32* @UNSPEC_GOTNTPOFF, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %468, %463
  %474 = load i32, i32* @flag_pic, align 4
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %476, label %477

476:                                              ; preds = %473
  br label %543

477:                                              ; preds = %473, %468, %458
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %479 = icmp ne %struct.TYPE_4__* %478, null
  br i1 %479, label %480, label %510

480:                                              ; preds = %477
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %482, align 8
  %484 = icmp ne %struct.TYPE_3__* %483, null
  br i1 %484, label %485, label %510

485:                                              ; preds = %480
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_3__*, %struct.TYPE_3__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %510

492:                                              ; preds = %485
  %493 = load i64, i64* %9, align 8
  %494 = call i64 @GET_CODE(i64 %493)
  %495 = load i64, i64* @MINUS, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %510

497:                                              ; preds = %492
  %498 = load i64, i64* %9, align 8
  %499 = call i64 @XEXP(i64 %498, i32 0)
  %500 = call i64 @GET_CODE(i64 %499)
  %501 = load i64, i64* @LABEL_REF, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %510

503:                                              ; preds = %497
  %504 = load i64, i64* %9, align 8
  %505 = call i64 @XEXP(i64 %504, i32 1)
  %506 = call i64 @GET_CODE(i64 %505)
  %507 = load i64, i64* @LABEL_REF, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %503
  br label %542

510:                                              ; preds = %503, %497, %492, %485, %480, %477
  %511 = load i64, i64* %9, align 8
  %512 = call i64 @GET_CODE(i64 %511)
  %513 = load i64, i64* @UNSPEC, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %540

515:                                              ; preds = %510
  %516 = load i64, i64* %9, align 8
  %517 = call i32 @XINT(i64 %516, i32 1)
  %518 = load i32, i32* @UNSPEC_LTREL_OFFSET, align 4
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %540

520:                                              ; preds = %515
  %521 = load i64, i64* @Pmode, align 8
  %522 = load i64, i64* %9, align 8
  %523 = call i64 @gen_rtx_CONST(i64 %521, i64 %522)
  store i64 %523, i64* %10, align 8
  %524 = load i64, i64* %6, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %539

526:                                              ; preds = %520
  %527 = load i64, i64* %9, align 8
  %528 = call i64 @XVECEXP(i64 %527, i32 0, i32 0)
  store i64 %528, i64* %21, align 8
  %529 = load i64, i64* %6, align 8
  %530 = load i64, i64* %21, align 8
  %531 = call i32 @get_pool_mode(i64 %530)
  %532 = call i64 @GET_MODE_SIZE(i32 %531)
  %533 = icmp sge i64 %529, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %526
  store i32 0, i32* %3, align 4
  br label %571

535:                                              ; preds = %526
  %536 = load i64, i64* %10, align 8
  %537 = load i64, i64* %6, align 8
  %538 = call i64 @plus_constant(i64 %536, i64 %537)
  store i64 %538, i64* %10, align 8
  br label %539

539:                                              ; preds = %535, %520
  br label %541

540:                                              ; preds = %515, %510
  store i32 0, i32* %3, align 4
  br label %571

541:                                              ; preds = %539
  br label %542

542:                                              ; preds = %541, %509
  br label %543

543:                                              ; preds = %542, %476
  br label %544

544:                                              ; preds = %543, %457
  %545 = load i64, i64* %7, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %551, label %547

547:                                              ; preds = %544
  %548 = load i64, i64* %8, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %551, label %550

550:                                              ; preds = %547
  store i32 1, i32* %11, align 4
  br label %551

551:                                              ; preds = %550, %547, %544
  %552 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %553 = icmp ne %struct.s390_address* %552, null
  br i1 %553, label %554, label %570

554:                                              ; preds = %551
  %555 = load i64, i64* %7, align 8
  %556 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %557 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %556, i32 0, i32 4
  store i64 %555, i64* %557, align 8
  %558 = load i64, i64* %8, align 8
  %559 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %560 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %559, i32 0, i32 3
  store i64 %558, i64* %560, align 8
  %561 = load i64, i64* %10, align 8
  %562 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %563 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %562, i32 0, i32 2
  store i64 %561, i64* %563, align 8
  %564 = load i32, i32* %11, align 4
  %565 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %566 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %565, i32 0, i32 0
  store i32 %564, i32* %566, align 8
  %567 = load i32, i32* %14, align 4
  %568 = load %struct.s390_address*, %struct.s390_address** %5, align 8
  %569 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %568, i32 0, i32 1
  store i32 %567, i32* %569, align 4
  br label %570

570:                                              ; preds = %554, %551
  store i32 1, i32* %3, align 4
  br label %571

571:                                              ; preds = %570, %540, %534, %455, %337, %321, %307, %231, %215, %201, %172, %92
  %572 = load i32, i32* %3, align 4
  ret i32 %572
}

declare dso_local i64 @gen_rtx_REG(i64, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i64, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @REG_POINTER(i64) #1

declare dso_local i32 @DISP_IN_RANGE(i64) #1

declare dso_local i64 @gen_rtx_CONST(i64, i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @get_pool_mode(i64) #1

declare dso_local i64 @plus_constant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
