; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_next_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_get_next_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PS_REGNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Illegal update to pc in instruction\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Infinite loop detected\00", align 1
@FLAG_C = common dso_local global i64 0, align 8
@INST_NV = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad bit-field extraction\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arm_get_next_pc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @arm_pc_is_thumb(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @thumb_get_next_pc(i64 %26)
  store i64 %27, i64* %2, align 8
  br label %359

28:                                               ; preds = %1
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @read_memory_integer(i64 %30, i32 4)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* @ARM_PS_REGNUM, align 8
  %33 = call i64 @read_register(i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @bits(i64 %36, i32 28, i32 31)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @condition_true(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %357

41:                                               ; preds = %28
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @bits(i64 %42, i32 24, i32 27)
  switch i64 %43, label %352 [
    i64 0, label %44
    i64 1, label %44
    i64 2, label %44
    i64 3, label %44
    i64 4, label %201
    i64 5, label %201
    i64 6, label %201
    i64 7, label %201
    i64 8, label %277
    i64 9, label %277
    i64 11, label %327
    i64 10, label %327
    i64 12, label %351
    i64 13, label %351
    i64 14, label %351
    i64 15, label %351
  ]

44:                                               ; preds = %41, %41, %41, %41
  store i64 0, i64* %10, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @bits(i64 %45, i32 12, i32 15)
  %47 = icmp ne i64 %46, 15
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %356

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @bits(i64 %50, i32 22, i32 25)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @bits(i64 %54, i32 4, i32 7)
  %56 = icmp eq i64 %55, 9
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53, %49
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @bits(i64 %60, i32 4, i32 28)
  %62 = icmp eq i64 %61, 1245169
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @bits(i64 %64, i32 4, i32 28)
  %66 = icmp eq i64 %65, 1245171
  br i1 %66, label %67, label %89

67:                                               ; preds = %63, %59
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @bits(i64 %68, i32 0, i32 3)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 15
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 8
  br label %78

75:                                               ; preds = %67
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @read_register(i64 %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i64 [ %74, %72 ], [ %77, %75 ]
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @ADDR_BITS_REMOVE(i64 %80)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %3, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %2, align 8
  br label %359

89:                                               ; preds = %63
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @FLAG_C, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  store i32 %95, i32* %12, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @bits(i64 %96, i32 16, i32 19)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp eq i64 %98, 15
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i64, i64* %4, align 8
  %102 = add i64 %101, 8
  br label %106

103:                                              ; preds = %89
  %104 = load i64, i64* %11, align 8
  %105 = call i64 @read_register(i64 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i64 [ %102, %100 ], [ %105, %103 ]
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @bit(i64 %108, i32 25)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @bits(i64 %112, i32 0, i32 7)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @bits(i64 %114, i32 8, i32 11)
  %116 = mul i64 2, %115
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = lshr i64 %117, %118
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = sub i64 32, %121
  %123 = shl i64 %120, %122
  %124 = or i64 %119, %123
  %125 = and i64 %124, 4294967295
  store i64 %125, i64* %9, align 8
  br label %132

126:                                              ; preds = %106
  %127 = load i64, i64* %5, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i64 @shifted_reg_val(i64 %127, i32 %128, i64 %129, i64 %130)
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %126, %111
  %133 = load i64, i64* %5, align 8
  %134 = call i64 @bits(i64 %133, i32 21, i32 24)
  switch i64 %134, label %192 [
    i64 0, label %135
    i64 1, label %139
    i64 2, label %143
    i64 3, label %147
    i64 4, label %151
    i64 5, label %155
    i64 6, label %162
    i64 7, label %169
    i64 8, label %176
    i64 9, label %176
    i64 10, label %176
    i64 11, label %176
    i64 12, label %178
    i64 13, label %182
    i64 14, label %184
    i64 15, label %189
  ]

135:                                              ; preds = %132
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = and i64 %136, %137
  store i64 %138, i64* %10, align 8
  br label %192

139:                                              ; preds = %132
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = xor i64 %140, %141
  store i64 %142, i64* %10, align 8
  br label %192

143:                                              ; preds = %132
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* %9, align 8
  %146 = sub i64 %144, %145
  store i64 %146, i64* %10, align 8
  br label %192

147:                                              ; preds = %132
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %8, align 8
  %150 = sub i64 %148, %149
  store i64 %150, i64* %10, align 8
  br label %192

151:                                              ; preds = %132
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = add i64 %152, %153
  store i64 %154, i64* %10, align 8
  br label %192

155:                                              ; preds = %132
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %156, %157
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %158, %160
  store i64 %161, i64* %10, align 8
  br label %192

162:                                              ; preds = %132
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = sub i64 %163, %164
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 %165, %167
  store i64 %168, i64* %10, align 8
  br label %192

169:                                              ; preds = %132
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %8, align 8
  %172 = sub i64 %170, %171
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %172, %174
  store i64 %175, i64* %10, align 8
  br label %192

176:                                              ; preds = %132, %132, %132, %132
  %177 = load i64, i64* %7, align 8
  store i64 %177, i64* %10, align 8
  br label %192

178:                                              ; preds = %132
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %9, align 8
  %181 = or i64 %179, %180
  store i64 %181, i64* %10, align 8
  br label %192

182:                                              ; preds = %132
  %183 = load i64, i64* %9, align 8
  store i64 %183, i64* %10, align 8
  br label %192

184:                                              ; preds = %132
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* %9, align 8
  %187 = xor i64 %186, -1
  %188 = and i64 %185, %187
  store i64 %188, i64* %10, align 8
  br label %192

189:                                              ; preds = %132
  %190 = load i64, i64* %9, align 8
  %191 = xor i64 %190, -1
  store i64 %191, i64* %10, align 8
  br label %192

192:                                              ; preds = %132, %189, %184, %182, %178, %176, %169, %162, %155, %151, %147, %143, %139, %135
  %193 = load i64, i64* %10, align 8
  %194 = call i64 @ADDR_BITS_REMOVE(i64 %193)
  store i64 %194, i64* %7, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* %3, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %192
  br label %356

201:                                              ; preds = %41, %41, %41, %41
  %202 = load i64, i64* %5, align 8
  %203 = call i32 @bit(i64 %202, i32 20)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %276

205:                                              ; preds = %201
  %206 = load i64, i64* %5, align 8
  %207 = call i64 @bits(i64 %206, i32 12, i32 15)
  %208 = icmp eq i64 %207, 15
  br i1 %208, label %209, label %275

209:                                              ; preds = %205
  %210 = load i64, i64* %5, align 8
  %211 = call i32 @bit(i64 %210, i32 22)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %209
  %216 = load i64, i64* %5, align 8
  %217 = call i64 @bits(i64 %216, i32 16, i32 19)
  store i64 %217, i64* %15, align 8
  %218 = load i64, i64* %15, align 8
  %219 = icmp eq i64 %218, 15
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load i64, i64* %4, align 8
  %222 = add i64 %221, 8
  br label %226

223:                                              ; preds = %215
  %224 = load i64, i64* %15, align 8
  %225 = call i64 @read_register(i64 %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = phi i64 [ %222, %220 ], [ %225, %223 ]
  store i64 %227, i64* %16, align 8
  %228 = load i64, i64* %5, align 8
  %229 = call i32 @bit(i64 %228, i32 24)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %264

231:                                              ; preds = %226
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* @FLAG_C, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  store i32 %237, i32* %17, align 4
  %238 = load i64, i64* %5, align 8
  %239 = call i32 @bit(i64 %238, i32 25)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %231
  %242 = load i64, i64* %5, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i64, i64* %4, align 8
  %245 = load i64, i64* %6, align 8
  %246 = call i64 @shifted_reg_val(i64 %242, i32 %243, i64 %244, i64 %245)
  br label %250

247:                                              ; preds = %231
  %248 = load i64, i64* %5, align 8
  %249 = call i64 @bits(i64 %248, i32 0, i32 11)
  br label %250

250:                                              ; preds = %247, %241
  %251 = phi i64 [ %246, %241 ], [ %249, %247 ]
  store i64 %251, i64* %18, align 8
  %252 = load i64, i64* %5, align 8
  %253 = call i32 @bit(i64 %252, i32 23)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load i64, i64* %18, align 8
  %257 = load i64, i64* %16, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %16, align 8
  br label %263

259:                                              ; preds = %250
  %260 = load i64, i64* %18, align 8
  %261 = load i64, i64* %16, align 8
  %262 = sub i64 %261, %260
  store i64 %262, i64* %16, align 8
  br label %263

263:                                              ; preds = %259, %255
  br label %264

264:                                              ; preds = %263, %226
  %265 = load i64, i64* %16, align 8
  %266 = call i64 @read_memory_integer(i64 %265, i32 4)
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %7, align 8
  %268 = call i64 @ADDR_BITS_REMOVE(i64 %267)
  store i64 %268, i64* %7, align 8
  %269 = load i64, i64* %7, align 8
  %270 = load i64, i64* %3, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %264
  br label %275

275:                                              ; preds = %274, %205
  br label %276

276:                                              ; preds = %275, %201
  br label %356

277:                                              ; preds = %41, %41
  %278 = load i64, i64* %5, align 8
  %279 = call i32 @bit(i64 %278, i32 20)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %326

281:                                              ; preds = %277
  %282 = load i64, i64* %5, align 8
  %283 = call i32 @bit(i64 %282, i32 15)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %325

285:                                              ; preds = %281
  store i32 0, i32* %19, align 4
  %286 = load i64, i64* %5, align 8
  %287 = call i32 @bit(i64 %286, i32 23)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %285
  %290 = load i64, i64* %5, align 8
  %291 = call i64 @bits(i64 %290, i32 0, i32 14)
  store i64 %291, i64* %20, align 8
  %292 = load i64, i64* %20, align 8
  %293 = call i32 @bitcount(i64 %292)
  %294 = mul nsw i32 %293, 4
  store i32 %294, i32* %19, align 4
  %295 = load i64, i64* %5, align 8
  %296 = call i32 @bit(i64 %295, i32 24)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %289
  %299 = load i32, i32* %19, align 4
  %300 = add nsw i32 %299, 4
  store i32 %300, i32* %19, align 4
  br label %301

301:                                              ; preds = %298, %289
  br label %308

302:                                              ; preds = %285
  %303 = load i64, i64* %5, align 8
  %304 = call i32 @bit(i64 %303, i32 24)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  store i32 -4, i32* %19, align 4
  br label %307

307:                                              ; preds = %306, %302
  br label %308

308:                                              ; preds = %307, %301
  %309 = load i64, i64* %5, align 8
  %310 = call i64 @bits(i64 %309, i32 16, i32 19)
  %311 = call i64 @read_register(i64 %310)
  store i64 %311, i64* %21, align 8
  %312 = load i64, i64* %21, align 8
  %313 = load i32, i32* %19, align 4
  %314 = sext i32 %313 to i64
  %315 = add i64 %312, %314
  %316 = call i64 @read_memory_integer(i64 %315, i32 4)
  store i64 %316, i64* %7, align 8
  %317 = load i64, i64* %7, align 8
  %318 = call i64 @ADDR_BITS_REMOVE(i64 %317)
  store i64 %318, i64* %7, align 8
  %319 = load i64, i64* %7, align 8
  %320 = load i64, i64* %3, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %308
  %323 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %308
  br label %325

325:                                              ; preds = %324, %281
  br label %326

326:                                              ; preds = %325, %277
  br label %356

327:                                              ; preds = %41, %41
  %328 = load i64, i64* %3, align 8
  %329 = load i64, i64* %5, align 8
  %330 = call i64 @BranchDest(i64 %328, i64 %329)
  store i64 %330, i64* %7, align 8
  %331 = load i64, i64* %5, align 8
  %332 = call i64 @bits(i64 %331, i32 28, i32 31)
  %333 = load i64, i64* @INST_NV, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %342

335:                                              ; preds = %327
  %336 = load i64, i64* %5, align 8
  %337 = call i32 @bit(i64 %336, i32 24)
  %338 = shl i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = load i64, i64* %7, align 8
  %341 = or i64 %340, %339
  store i64 %341, i64* %7, align 8
  br label %342

342:                                              ; preds = %335, %327
  %343 = load i64, i64* %7, align 8
  %344 = call i64 @ADDR_BITS_REMOVE(i64 %343)
  store i64 %344, i64* %7, align 8
  %345 = load i64, i64* %7, align 8
  %346 = load i64, i64* %3, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %342
  br label %356

351:                                              ; preds = %41, %41, %41, %41
  br label %356

352:                                              ; preds = %41
  %353 = load i32, i32* @gdb_stderr, align 4
  %354 = call i32 @fprintf_filtered(i32 %353, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %355 = load i64, i64* %3, align 8
  store i64 %355, i64* %2, align 8
  br label %359

356:                                              ; preds = %351, %350, %326, %276, %200, %48
  br label %357

357:                                              ; preds = %356, %28
  %358 = load i64, i64* %7, align 8
  store i64 %358, i64* %2, align 8
  br label %359

359:                                              ; preds = %357, %352, %87, %25
  %360 = load i64, i64* %2, align 8
  ret i64 %360
}

declare dso_local i64 @arm_pc_is_thumb(i64) #1

declare dso_local i64 @thumb_get_next_pc(i64) #1

declare dso_local i64 @read_memory_integer(i64, i32) #1

declare dso_local i64 @read_register(i64) #1

declare dso_local i64 @condition_true(i64, i64) #1

declare dso_local i64 @bits(i64, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @ADDR_BITS_REMOVE(i64) #1

declare dso_local i32 @bit(i64, i32) #1

declare dso_local i64 @shifted_reg_val(i64, i32, i64, i64) #1

declare dso_local i32 @bitcount(i64) #1

declare dso_local i64 @BranchDest(i64, i64) #1

declare dso_local i32 @fprintf_filtered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
