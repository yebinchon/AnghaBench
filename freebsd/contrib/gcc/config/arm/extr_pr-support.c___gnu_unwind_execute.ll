; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_pr-support.c___gnu_unwind_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_pr-support.c___gnu_unwind_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CODE_FINISH = common dso_local global i32 0, align 4
@_UVRSC_CORE = common dso_local global i32 0, align 4
@R_LR = common dso_local global i32 0, align 4
@_UVRSD_UINT32 = common dso_local global i32 0, align 4
@R_PC = common dso_local global i32 0, align 4
@R_SP = common dso_local global i32 0, align 4
@_URC_FAILURE = common dso_local global i32 0, align 4
@_UVRSR_OK = common dso_local global i64 0, align 8
@_UVRSC_VFP = common dso_local global i32 0, align 4
@_UVRSD_VFPX = common dso_local global i32 0, align 4
@_UVRSC_FPA = common dso_local global i32 0, align 4
@_UVRSD_FPAX = common dso_local global i32 0, align 4
@_UVRSC_WMMXD = common dso_local global i32 0, align 4
@_UVRSD_UINT64 = common dso_local global i32 0, align 4
@_UVRSC_WMMXC = common dso_local global i32 0, align 4
@_UVRSD_DOUBLE = common dso_local global i32 0, align 4
@_URC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gnu_unwind_execute(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %415, %394, %371, %348, %329, %304, %277, %262, %243, %208, %181, %152, %113, %98, %58, %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @next_unwind_byte(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CODE_FINISH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @_UVRSC_CORE, align 4
  %24 = load i32, i32* @R_LR, align 4
  %25 = load i32, i32* @_UVRSD_UINT32, align 4
  %26 = call i32 @_Unwind_VRS_Get(i32* %22, i32 %23, i32 %24, i32 %25, i32* %8)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @_UVRSC_CORE, align 4
  %29 = load i32, i32* @R_PC, align 4
  %30 = load i32, i32* @_UVRSD_UINT32, align 4
  %31 = call i32 @_Unwind_VRS_Set(i32* %27, i32 %28, i32 %29, i32 %30, i32* %8)
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %21, %18
  br label %418

33:                                               ; preds = %12
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 63
  %40 = shl i32 %39, 2
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @_UVRSC_CORE, align 4
  %44 = load i32, i32* @R_SP, align 4
  %45 = load i32, i32* @_UVRSD_UINT32, align 4
  %46 = call i32 @_Unwind_VRS_Get(i32* %42, i32 %43, i32 %44, i32 %45, i32* %8)
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %37
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @_UVRSC_CORE, align 4
  %61 = load i32, i32* @R_SP, align 4
  %62 = load i32, i32* @_UVRSD_UINT32, align 4
  %63 = call i32 @_Unwind_VRS_Set(i32* %59, i32 %60, i32 %61, i32 %62, i32* %8)
  br label %12

64:                                               ; preds = %33
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 240
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @next_unwind_byte(i32* %71)
  %73 = or i32 %70, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %77, i32* %3, align 4
  br label %420

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %79, 4
  %81 = and i32 %80, 65520
  store i32 %81, i32* %6, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @_UVRSC_CORE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @_UVRSD_UINT32, align 4
  %86 = call i64 @_Unwind_VRS_Pop(i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i64, i64* @_UVRSR_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %90, i32* %3, align 4
  br label %420

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @R_PC, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %91
  br label %12

99:                                               ; preds = %64
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 240
  %102 = icmp eq i32 %101, 144
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 15
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 13
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 15
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %103
  %112 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %112, i32* %3, align 4
  br label %420

113:                                              ; preds = %108
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @_UVRSC_CORE, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @_UVRSD_UINT32, align 4
  %118 = call i32 @_Unwind_VRS_Get(i32* %114, i32 %115, i32 %116, i32 %117, i32* %8)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @_UVRSC_CORE, align 4
  %121 = load i32, i32* @R_SP, align 4
  %122 = load i32, i32* @_UVRSD_UINT32, align 4
  %123 = call i32 @_Unwind_VRS_Set(i32* %119, i32 %120, i32 %121, i32 %122, i32* %8)
  br label %12

124:                                              ; preds = %99
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 240
  %127 = icmp eq i32 %126, 160
  br i1 %127, label %128, label %153

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 7
  %131 = sub nsw i32 7, %130
  %132 = ashr i32 4080, %131
  %133 = and i32 %132, 4080
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load i32, i32* @R_LR, align 4
  %139 = shl i32 1, %138
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %137, %128
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @_UVRSC_CORE, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @_UVRSD_UINT32, align 4
  %147 = call i64 @_Unwind_VRS_Pop(i32* %143, i32 %144, i32 %145, i32 %146)
  %148 = load i64, i64* @_UVRSR_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %151, i32* %3, align 4
  br label %420

152:                                              ; preds = %142
  br label %12

153:                                              ; preds = %124
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 240
  %156 = icmp eq i32 %155, 176
  br i1 %156, label %157, label %278

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 177
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @next_unwind_byte(i32* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %6, align 4
  %167 = and i32 %166, 240
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165, %160
  %170 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %170, i32* %3, align 4
  br label %420

171:                                              ; preds = %165
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* @_UVRSC_CORE, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @_UVRSD_UINT32, align 4
  %176 = call i64 @_Unwind_VRS_Pop(i32* %172, i32 %173, i32 %174, i32 %175)
  %177 = load i64, i64* @_UVRSR_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %180, i32* %3, align 4
  br label %420

181:                                              ; preds = %171
  br label %12

182:                                              ; preds = %157
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 178
  br i1 %184, label %185, label %221

185:                                              ; preds = %182
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @_UVRSC_CORE, align 4
  %188 = load i32, i32* @R_SP, align 4
  %189 = load i32, i32* @_UVRSD_UINT32, align 4
  %190 = call i32 @_Unwind_VRS_Get(i32* %186, i32 %187, i32 %188, i32 %189, i32* %8)
  %191 = load i32*, i32** %5, align 8
  %192 = call i32 @next_unwind_byte(i32* %191)
  store i32 %192, i32* %6, align 4
  store i32 2, i32* %11, align 4
  br label %193

193:                                              ; preds = %197, %185
  %194 = load i32, i32* %6, align 4
  %195 = and i32 %194, 128
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load i32, i32* %6, align 4
  %199 = and i32 %198, 127
  %200 = load i32, i32* %11, align 4
  %201 = shl i32 %199, %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 7
  store i32 %205, i32* %11, align 4
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @next_unwind_byte(i32* %206)
  store i32 %207, i32* %6, align 4
  br label %193

208:                                              ; preds = %193
  %209 = load i32, i32* %6, align 4
  %210 = and i32 %209, 127
  %211 = load i32, i32* %11, align 4
  %212 = shl i32 %210, %211
  %213 = add nsw i32 %212, 516
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %8, align 4
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* @_UVRSC_CORE, align 4
  %218 = load i32, i32* @R_SP, align 4
  %219 = load i32, i32* @_UVRSD_UINT32, align 4
  %220 = call i32 @_Unwind_VRS_Set(i32* %216, i32 %217, i32 %218, i32 %219, i32* %8)
  br label %12

221:                                              ; preds = %182
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 179
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @next_unwind_byte(i32* %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = and i32 %227, 240
  %229 = shl i32 %228, 12
  %230 = load i32, i32* %6, align 4
  %231 = and i32 %230, 15
  %232 = add nsw i32 %231, 1
  %233 = or i32 %229, %232
  store i32 %233, i32* %6, align 4
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* @_UVRSC_VFP, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @_UVRSD_VFPX, align 4
  %238 = call i64 @_Unwind_VRS_Pop(i32* %234, i32 %235, i32 %236, i32 %237)
  %239 = load i64, i64* @_UVRSR_OK, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %224
  %242 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %242, i32* %3, align 4
  br label %420

243:                                              ; preds = %224
  br label %12

244:                                              ; preds = %221
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, 252
  %247 = icmp eq i32 %246, 180
  br i1 %247, label %248, label %263

248:                                              ; preds = %244
  %249 = load i32, i32* %6, align 4
  %250 = and i32 %249, 3
  %251 = add nsw i32 %250, 1
  %252 = or i32 262144, %251
  store i32 %252, i32* %6, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = load i32, i32* @_UVRSC_FPA, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @_UVRSD_FPAX, align 4
  %257 = call i64 @_Unwind_VRS_Pop(i32* %253, i32 %254, i32 %255, i32 %256)
  %258 = load i64, i64* @_UVRSR_OK, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %248
  %261 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %261, i32* %3, align 4
  br label %420

262:                                              ; preds = %248
  br label %12

263:                                              ; preds = %244
  %264 = load i32, i32* %6, align 4
  %265 = and i32 %264, 7
  %266 = add nsw i32 %265, 1
  %267 = or i32 524288, %266
  store i32 %267, i32* %6, align 4
  %268 = load i32*, i32** %4, align 8
  %269 = load i32, i32* @_UVRSC_VFP, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @_UVRSD_VFPX, align 4
  %272 = call i64 @_Unwind_VRS_Pop(i32* %268, i32 %269, i32 %270, i32 %271)
  %273 = load i64, i64* @_UVRSR_OK, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %263
  %276 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %276, i32* %3, align 4
  br label %420

277:                                              ; preds = %263
  br label %12

278:                                              ; preds = %153
  %279 = load i32, i32* %6, align 4
  %280 = and i32 %279, 240
  %281 = icmp eq i32 %280, 192
  br i1 %281, label %282, label %397

282:                                              ; preds = %278
  %283 = load i32, i32* %6, align 4
  %284 = icmp eq i32 %283, 198
  br i1 %284, label %285, label %305

285:                                              ; preds = %282
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @next_unwind_byte(i32* %286)
  store i32 %287, i32* %6, align 4
  %288 = load i32, i32* %6, align 4
  %289 = and i32 %288, 240
  %290 = shl i32 %289, 12
  %291 = load i32, i32* %6, align 4
  %292 = and i32 %291, 15
  %293 = add nsw i32 %292, 1
  %294 = or i32 %290, %293
  store i32 %294, i32* %6, align 4
  %295 = load i32*, i32** %4, align 8
  %296 = load i32, i32* @_UVRSC_WMMXD, align 4
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @_UVRSD_UINT64, align 4
  %299 = call i64 @_Unwind_VRS_Pop(i32* %295, i32 %296, i32 %297, i32 %298)
  %300 = load i64, i64* @_UVRSR_OK, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %285
  %303 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %303, i32* %3, align 4
  br label %420

304:                                              ; preds = %285
  br label %12

305:                                              ; preds = %282
  %306 = load i32, i32* %6, align 4
  %307 = icmp eq i32 %306, 199
  br i1 %307, label %308, label %330

308:                                              ; preds = %305
  %309 = load i32*, i32** %5, align 8
  %310 = call i32 @next_unwind_byte(i32* %309)
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* %6, align 4
  %315 = and i32 %314, 240
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %313, %308
  %318 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %318, i32* %3, align 4
  br label %420

319:                                              ; preds = %313
  %320 = load i32*, i32** %4, align 8
  %321 = load i32, i32* @_UVRSC_WMMXC, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @_UVRSD_UINT32, align 4
  %324 = call i64 @_Unwind_VRS_Pop(i32* %320, i32 %321, i32 %322, i32 %323)
  %325 = load i64, i64* @_UVRSR_OK, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %319
  %328 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %328, i32* %3, align 4
  br label %420

329:                                              ; preds = %319
  br label %12

330:                                              ; preds = %305
  %331 = load i32, i32* %6, align 4
  %332 = and i32 %331, 248
  %333 = icmp eq i32 %332, 192
  br i1 %333, label %334, label %349

334:                                              ; preds = %330
  %335 = load i32, i32* %6, align 4
  %336 = and i32 %335, 15
  %337 = add nsw i32 %336, 1
  %338 = or i32 655360, %337
  store i32 %338, i32* %6, align 4
  %339 = load i32*, i32** %4, align 8
  %340 = load i32, i32* @_UVRSC_WMMXD, align 4
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* @_UVRSD_UINT64, align 4
  %343 = call i64 @_Unwind_VRS_Pop(i32* %339, i32 %340, i32 %341, i32 %342)
  %344 = load i64, i64* @_UVRSR_OK, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %347, i32* %3, align 4
  br label %420

348:                                              ; preds = %334
  br label %12

349:                                              ; preds = %330
  %350 = load i32, i32* %6, align 4
  %351 = icmp eq i32 %350, 200
  br i1 %351, label %352, label %372

352:                                              ; preds = %349
  %353 = load i32*, i32** %5, align 8
  %354 = call i32 @next_unwind_byte(i32* %353)
  store i32 %354, i32* %6, align 4
  %355 = load i32, i32* %6, align 4
  %356 = and i32 %355, 240
  %357 = shl i32 %356, 12
  %358 = load i32, i32* %6, align 4
  %359 = and i32 %358, 15
  %360 = add nsw i32 %359, 1
  %361 = or i32 %357, %360
  store i32 %361, i32* %6, align 4
  %362 = load i32*, i32** %4, align 8
  %363 = load i32, i32* @_UVRSC_FPA, align 4
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @_UVRSD_FPAX, align 4
  %366 = call i64 @_Unwind_VRS_Pop(i32* %362, i32 %363, i32 %364, i32 %365)
  %367 = load i64, i64* @_UVRSR_OK, align 8
  %368 = icmp ne i64 %366, %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %352
  %370 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %370, i32* %3, align 4
  br label %420

371:                                              ; preds = %352
  br label %12

372:                                              ; preds = %349
  %373 = load i32, i32* %6, align 4
  %374 = icmp eq i32 %373, 201
  br i1 %374, label %375, label %395

375:                                              ; preds = %372
  %376 = load i32*, i32** %5, align 8
  %377 = call i32 @next_unwind_byte(i32* %376)
  store i32 %377, i32* %6, align 4
  %378 = load i32, i32* %6, align 4
  %379 = and i32 %378, 240
  %380 = shl i32 %379, 12
  %381 = load i32, i32* %6, align 4
  %382 = and i32 %381, 15
  %383 = add nsw i32 %382, 1
  %384 = or i32 %380, %383
  store i32 %384, i32* %6, align 4
  %385 = load i32*, i32** %4, align 8
  %386 = load i32, i32* @_UVRSC_VFP, align 4
  %387 = load i32, i32* %6, align 4
  %388 = load i32, i32* @_UVRSD_DOUBLE, align 4
  %389 = call i64 @_Unwind_VRS_Pop(i32* %385, i32 %386, i32 %387, i32 %388)
  %390 = load i64, i64* @_UVRSR_OK, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %375
  %393 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %393, i32* %3, align 4
  br label %420

394:                                              ; preds = %375
  br label %12

395:                                              ; preds = %372
  %396 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %396, i32* %3, align 4
  br label %420

397:                                              ; preds = %278
  %398 = load i32, i32* %6, align 4
  %399 = and i32 %398, 248
  %400 = icmp eq i32 %399, 208
  br i1 %400, label %401, label %416

401:                                              ; preds = %397
  %402 = load i32, i32* %6, align 4
  %403 = and i32 %402, 7
  %404 = add nsw i32 %403, 1
  %405 = or i32 524288, %404
  store i32 %405, i32* %6, align 4
  %406 = load i32*, i32** %4, align 8
  %407 = load i32, i32* @_UVRSC_VFP, align 4
  %408 = load i32, i32* %6, align 4
  %409 = load i32, i32* @_UVRSD_DOUBLE, align 4
  %410 = call i64 @_Unwind_VRS_Pop(i32* %406, i32 %407, i32 %408, i32 %409)
  %411 = load i64, i64* @_UVRSR_OK, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %401
  %414 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %414, i32* %3, align 4
  br label %420

415:                                              ; preds = %401
  br label %12

416:                                              ; preds = %397
  %417 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %417, i32* %3, align 4
  br label %420

418:                                              ; preds = %32
  %419 = load i32, i32* @_URC_OK, align 4
  store i32 %419, i32* %3, align 4
  br label %420

420:                                              ; preds = %418, %416, %413, %395, %392, %369, %346, %327, %317, %302, %275, %260, %241, %179, %169, %150, %111, %89, %76
  %421 = load i32, i32* %3, align 4
  ret i32 %421
}

declare dso_local i32 @next_unwind_byte(i32*) #1

declare dso_local i32 @_Unwind_VRS_Get(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @_Unwind_VRS_Set(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @_Unwind_VRS_Pop(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
