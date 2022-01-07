; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_examine_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_examine_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.ia64_frame_cache = type { i64, i32, i64*, i64, i64, i64, i64, i32, i32, i32, i64 }

@M = common dso_local global i64 0, align 8
@I = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@sp_regnum = common dso_local global i32 0, align 4
@IA64_FR0_REGNUM = common dso_local global i32 0, align 4
@IA64_UNAT_REGNUM = common dso_local global i64 0, align 8
@IA64_PR_REGNUM = common dso_local global i64 0, align 8
@IA64_GR0_REGNUM = common dso_local global i32 0, align 4
@IA64_CFM_REGNUM = common dso_local global i64 0, align 8
@IA64_VRAP_REGNUM = common dso_local global i64 0, align 8
@IA64_VFP_REGNUM = common dso_local global i64 0, align 8
@IA64_GR32_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.frame_info*, %struct.ia64_frame_cache*)* @examine_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @examine_prologue(i64 %0, i64 %1, %struct.frame_info* %2, %struct.ia64_frame_cache* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.frame_info*, align 8
  %9 = alloca %struct.ia64_frame_cache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [8 x i8], align 1
  %23 = alloca [8 x i8], align 1
  %24 = alloca [256 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca [8 x i8], align 1
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i8*, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.frame_info* %2, %struct.frame_info** %8, align 8
  store %struct.ia64_frame_cache* %3, %struct.ia64_frame_cache** %9, align 8
  %76 = load i64, i64* %6, align 8
  store i64 %76, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  store i32 1, i32* %26, align 4
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %78 = call i32 @memset(i8* %77, i32 0, i32 8)
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %80 = call i32 @memset(i8* %79, i32 0, i32 8)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %82 = call i32 @memset(i8* %81, i32 0, i32 256)
  %83 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %84 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %4
  %88 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %89 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %95 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %5, align 8
  br label %1133

97:                                               ; preds = %87, %4
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @refine_prologue_limit(i64 %98, i64 %99, i32* %25)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @fetch_instruction(i64 %101, i64* %12, i64* %13)
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %156

106:                                              ; preds = %97
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %106
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @M, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %109
  %114 = load i64, i64* %13, align 8
  %115 = and i64 %114, 2121713844287
  %116 = icmp eq i64 %115, 188978561024
  br i1 %116, label %117, label %156

117:                                              ; preds = %113
  %118 = load i64, i64* %13, align 8
  %119 = and i64 %118, 2013265920
  %120 = ashr i64 %119, 27
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %36, align 4
  %122 = load i64, i64* %13, align 8
  %123 = and i64 %122, 133169152
  %124 = ashr i64 %123, 20
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %37, align 4
  %126 = load i64, i64* %13, align 8
  %127 = and i64 %126, 1040384
  %128 = ashr i64 %127, 13
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %38, align 4
  %130 = load i64, i64* %13, align 8
  %131 = and i64 %130, 8128
  %132 = ashr i64 %131, 6
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %39, align 4
  %134 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %135 = icmp ne %struct.frame_info* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %117
  %137 = load i32, i32* %38, align 4
  %138 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %139 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 127
  %142 = icmp eq i32 %137, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %136
  %144 = load i32, i32* %37, align 4
  %145 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %146 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = ashr i32 %147, 7
  %149 = and i32 %148, 127
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143, %117
  store i32 0, i32* %26, align 4
  br label %152

152:                                              ; preds = %151, %143, %136
  %153 = load i32, i32* %39, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %11, align 8
  %155 = load i64, i64* %10, align 8
  store i64 %155, i64* %6, align 8
  br label %232

156:                                              ; preds = %113, %109, %106, %97
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %160, label %221

160:                                              ; preds = %156
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %221

163:                                              ; preds = %160
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @I, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* @M, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %221

171:                                              ; preds = %167, %163
  %172 = load i64, i64* %13, align 8
  %173 = and i64 %172, 2121713844224
  %174 = icmp eq i64 %173, 1133871366144
  br i1 %174, label %175, label %221

175:                                              ; preds = %171
  %176 = load i64, i64* %13, align 8
  %177 = and i64 %176, 68719476736
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 -1, i32 0
  %181 = shl i32 %180, 13
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %13, align 8
  %184 = and i64 %183, 8455716864
  %185 = ashr i64 %184, 20
  %186 = or i64 %182, %185
  %187 = load i64, i64* %13, align 8
  %188 = and i64 %187, 1040384
  %189 = ashr i64 %188, 13
  %190 = or i64 %186, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %40, align 4
  %192 = load i64, i64* %13, align 8
  %193 = and i64 %192, 133169152
  %194 = ashr i64 %193, 20
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %41, align 4
  %196 = load i64, i64* %13, align 8
  %197 = and i64 %196, 8128
  %198 = ashr i64 %197, 6
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %42, align 4
  %200 = load i64, i64* %13, align 8
  %201 = and i64 %200, 63
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %43, align 4
  %203 = load i32, i32* %43, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %175
  %206 = load i32, i32* %42, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load i32, i32* %40, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load i32, i32* %41, align 4
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* %16, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %42, align 4
  store i32 %218, i32* %16, align 4
  %219 = load i64, i64* %10, align 8
  store i64 %219, i64* %11, align 8
  br label %220

220:                                              ; preds = %217, %214, %211, %208, %205, %175
  br label %221

221:                                              ; preds = %220, %171, %167, %160, %156
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %221
  %225 = load i64, i64* %7, align 8
  store i64 %225, i64* %6, align 8
  %226 = load i32, i32* %25, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i64, i64* %7, align 8
  store i64 %229, i64* %11, align 8
  br label %230

230:                                              ; preds = %228, %224
  br label %231

231:                                              ; preds = %230, %221
  br label %232

232:                                              ; preds = %231, %152
  br label %233

233:                                              ; preds = %920, %232
  %234 = load i64, i64* %6, align 8
  %235 = load i64, i64* %7, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %922

237:                                              ; preds = %233
  %238 = load i64, i64* %6, align 8
  %239 = call i64 @fetch_instruction(i64 %238, i64* %12, i64* %13)
  store i64 %239, i64* %10, align 8
  %240 = load i64, i64* %10, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %922

243:                                              ; preds = %237
  %244 = load i64, i64* %12, align 8
  %245 = load i64, i64* @B, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load i64, i64* %13, align 8
  %249 = and i64 %248, 2070040019007
  %250 = icmp ne i64 %249, 274877906944
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  %252 = load i32, i32* %25, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load i64, i64* %6, align 8
  store i64 %255, i64* %7, align 8
  br label %256

256:                                              ; preds = %254, %251
  br label %922

257:                                              ; preds = %247, %243
  %258 = load i64, i64* %13, align 8
  %259 = and i64 %258, 63
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %257
  %262 = load i32, i32* %26, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %25, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i64, i64* %6, align 8
  store i64 %271, i64* %7, align 8
  br label %272

272:                                              ; preds = %270, %267
  br label %922

273:                                              ; preds = %264, %257
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* @I, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %308

277:                                              ; preds = %273
  %278 = load i64, i64* %13, align 8
  %279 = and i64 %278, 2130169561088
  %280 = icmp eq i64 %279, 6576668672
  br i1 %280, label %281, label %308

281:                                              ; preds = %277
  %282 = load i64, i64* %13, align 8
  %283 = and i64 %282, 57344
  %284 = ashr i64 %283, 13
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %44, align 4
  %286 = load i64, i64* %13, align 8
  %287 = and i64 %286, 8128
  %288 = ashr i64 %287, 6
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %45, align 4
  %290 = load i64, i64* %13, align 8
  %291 = and i64 %290, 63
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %46, align 4
  %293 = load i32, i32* %46, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %281
  %296 = load i32, i32* %44, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %295
  %299 = load i32, i32* %45, align 4
  %300 = icmp sge i32 %299, 32
  br i1 %300, label %301, label %307

301:                                              ; preds = %298
  %302 = load i32, i32* %15, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* %45, align 4
  store i32 %305, i32* %15, align 4
  %306 = load i64, i64* %10, align 8
  store i64 %306, i64* %11, align 8
  br label %307

307:                                              ; preds = %304, %301, %298, %295, %281
  br label %918

308:                                              ; preds = %277, %273
  %309 = load i64, i64* %12, align 8
  %310 = load i64, i64* @I, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %12, align 8
  %314 = load i64, i64* @M, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %475

316:                                              ; preds = %312, %308
  %317 = load i64, i64* %13, align 8
  %318 = and i64 %317, 2121713844224
  %319 = icmp eq i64 %318, 1133871366144
  br i1 %319, label %320, label %475

320:                                              ; preds = %316
  %321 = load i64, i64* %13, align 8
  %322 = and i64 %321, 68719476736
  %323 = icmp ne i64 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 -1, i32 0
  %326 = shl i32 %325, 13
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* %13, align 8
  %329 = and i64 %328, 8455716864
  %330 = ashr i64 %329, 20
  %331 = or i64 %327, %330
  %332 = load i64, i64* %13, align 8
  %333 = and i64 %332, 1040384
  %334 = ashr i64 %333, 13
  %335 = or i64 %331, %334
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %47, align 4
  %337 = load i64, i64* %13, align 8
  %338 = and i64 %337, 133169152
  %339 = ashr i64 %338, 20
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %48, align 4
  %341 = load i64, i64* %13, align 8
  %342 = and i64 %341, 8128
  %343 = ashr i64 %342, 6
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %49, align 4
  %345 = load i64, i64* %13, align 8
  %346 = and i64 %345, 63
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %50, align 4
  %348 = load i32, i32* %50, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %365

350:                                              ; preds = %320
  %351 = load i32, i32* %49, align 4
  %352 = icmp sge i32 %351, 32
  br i1 %352, label %353, label %365

353:                                              ; preds = %350
  %354 = load i32, i32* %47, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %353
  %357 = load i32, i32* %48, align 4
  %358 = icmp eq i32 %357, 12
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load i32, i32* %16, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32, i32* %49, align 4
  store i32 %363, i32* %16, align 4
  %364 = load i64, i64* %10, align 8
  store i64 %364, i64* %11, align 8
  br label %474

365:                                              ; preds = %359, %356, %353, %350, %320
  %366 = load i32, i32* %50, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %365
  %369 = load i32, i32* %49, align 4
  %370 = icmp eq i32 %369, 12
  br i1 %370, label %371, label %379

371:                                              ; preds = %368
  %372 = load i32, i32* %48, align 4
  %373 = icmp eq i32 %372, 12
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i32, i32* %47, align 4
  %376 = load i32, i32* %19, align 4
  %377 = sub nsw i32 %376, %375
  store i32 %377, i32* %19, align 4
  %378 = load i64, i64* %10, align 8
  store i64 %378, i64* %11, align 8
  br label %473

379:                                              ; preds = %371, %368, %365
  %380 = load i32, i32* %50, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %424

382:                                              ; preds = %379
  %383 = load i32, i32* %49, align 4
  %384 = icmp eq i32 %383, 2
  br i1 %384, label %385, label %424

385:                                              ; preds = %382
  %386 = load i32, i32* %48, align 4
  %387 = load i32, i32* %16, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %385
  %390 = load i32, i32* %16, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %389, %385
  %393 = load i32, i32* %48, align 4
  %394 = icmp eq i32 %393, 12
  br i1 %394, label %395, label %424

395:                                              ; preds = %392, %389
  %396 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %397 = zext i32 %396 to i64
  %398 = call i8* @llvm.stacksave()
  store i8* %398, i8** %51, align 8
  %399 = alloca i8, i64 %397, align 16
  store i64 %397, i64* %52, align 8
  store i64 0, i64* %53, align 8
  %400 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %401 = icmp ne %struct.frame_info* %400, null
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %404 = load i32, i32* @sp_regnum, align 4
  %405 = call i32 @frame_unwind_register(%struct.frame_info* %403, i32 %404, i8* %399)
  %406 = call i64 @extract_unsigned_integer(i8* %399, i32 8)
  store i64 %406, i64* %53, align 8
  br label %407

407:                                              ; preds = %402, %395
  %408 = load i64, i64* %53, align 8
  %409 = load i32, i32* %48, align 4
  %410 = icmp eq i32 %409, 12
  br i1 %410, label %411, label %412

411:                                              ; preds = %407
  br label %414

412:                                              ; preds = %407
  %413 = load i32, i32* %19, align 4
  br label %414

414:                                              ; preds = %412, %411
  %415 = phi i32 [ 0, %411 ], [ %413, %412 ]
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %408, %416
  %418 = load i32, i32* %47, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %417, %419
  store i64 %420, i64* %21, align 8
  %421 = load i32, i32* %49, align 4
  store i32 %421, i32* %20, align 4
  %422 = load i64, i64* %10, align 8
  store i64 %422, i64* %11, align 8
  %423 = load i8*, i8** %51, align 8
  call void @llvm.stackrestore(i8* %423)
  br label %472

424:                                              ; preds = %392, %382, %379
  %425 = load i32, i32* %50, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %452

427:                                              ; preds = %424
  %428 = load i32, i32* %48, align 4
  %429 = icmp sge i32 %428, 32
  br i1 %429, label %430, label %452

430:                                              ; preds = %427
  %431 = load i32, i32* %48, align 4
  %432 = icmp slt i32 %431, 40
  br i1 %432, label %433, label %452

433:                                              ; preds = %430
  %434 = load i32, i32* %48, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = icmp ne i8 %437, 0
  br i1 %438, label %452, label %439

439:                                              ; preds = %433
  %440 = load i32, i32* %49, align 4
  %441 = icmp slt i32 %440, 256
  br i1 %441, label %442, label %452

442:                                              ; preds = %439
  %443 = load i32, i32* %47, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %442
  %446 = load i32, i32* %48, align 4
  %447 = trunc i32 %446 to i8
  %448 = load i32, i32* %49, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 %449
  store i8 %447, i8* %450, align 1
  %451 = load i64, i64* %10, align 8
  store i64 %451, i64* %11, align 8
  br label %471

452:                                              ; preds = %442, %439, %433, %430, %427, %424
  %453 = load i32, i32* %26, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %470

455:                                              ; preds = %452
  %456 = load i32, i32* %50, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %470

458:                                              ; preds = %455
  %459 = load i32, i32* %49, align 4
  %460 = load i32, i32* %16, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %458
  %463 = load i32, i32* %47, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %462
  %466 = load i32, i32* %48, align 4
  %467 = icmp eq i32 %466, 2
  br i1 %467, label %468, label %470

468:                                              ; preds = %465
  %469 = load i64, i64* %10, align 8
  store i64 %469, i64* %11, align 8
  br label %922

470:                                              ; preds = %465, %462, %458, %455, %452
  br label %471

471:                                              ; preds = %470, %445
  br label %472

472:                                              ; preds = %471, %414
  br label %473

473:                                              ; preds = %472, %374
  br label %474

474:                                              ; preds = %473, %362
  br label %917

475:                                              ; preds = %316, %312
  %476 = load i64, i64* %12, align 8
  %477 = load i64, i64* @M, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %544

479:                                              ; preds = %475
  %480 = load i64, i64* %13, align 8
  %481 = and i64 %480, 2129230036992
  %482 = icmp eq i64 %481, 1025423441920
  br i1 %482, label %487, label %483

483:                                              ; preds = %479
  %484 = load i64, i64* %13, align 8
  %485 = and i64 %484, 2198083731456
  %486 = icmp eq i64 %485, 887984488448
  br i1 %486, label %487, label %544

487:                                              ; preds = %483, %479
  %488 = load i64, i64* %13, align 8
  %489 = call i32 @imm9(i64 %488)
  store i32 %489, i32* %54, align 4
  %490 = load i64, i64* %13, align 8
  %491 = and i64 %490, 133169152
  %492 = ashr i64 %491, 20
  %493 = trunc i64 %492 to i32
  store i32 %493, i32* %55, align 4
  %494 = load i64, i64* %13, align 8
  %495 = and i64 %494, 1040384
  %496 = ashr i64 %495, 13
  %497 = trunc i64 %496 to i32
  store i32 %497, i32* %56, align 4
  %498 = load i64, i64* %13, align 8
  %499 = and i64 %498, 63
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %57, align 4
  %501 = load i32, i32* %57, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %543

503:                                              ; preds = %487
  %504 = load i32, i32* %55, align 4
  %505 = load i32, i32* %20, align 4
  %506 = icmp eq i32 %504, %505
  br i1 %506, label %507, label %543

507:                                              ; preds = %503
  %508 = load i64, i64* %21, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %543

510:                                              ; preds = %507
  %511 = load i32, i32* %56, align 4
  %512 = icmp sle i32 2, %511
  br i1 %512, label %513, label %516

513:                                              ; preds = %510
  %514 = load i32, i32* %56, align 4
  %515 = icmp sle i32 %514, 5
  br i1 %515, label %522, label %516

516:                                              ; preds = %513, %510
  %517 = load i32, i32* %56, align 4
  %518 = icmp sle i32 16, %517
  br i1 %518, label %519, label %543

519:                                              ; preds = %516
  %520 = load i32, i32* %56, align 4
  %521 = icmp sle i32 %520, 31
  br i1 %521, label %522, label %543

522:                                              ; preds = %519, %513
  %523 = load i64, i64* %21, align 8
  %524 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %525 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %524, i32 0, i32 2
  %526 = load i64*, i64** %525, align 8
  %527 = load i32, i32* @IA64_FR0_REGNUM, align 4
  %528 = load i32, i32* %56, align 4
  %529 = add nsw i32 %527, %528
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i64, i64* %526, i64 %530
  store i64 %523, i64* %531, align 8
  %532 = load i64, i64* %13, align 8
  %533 = and i64 %532, 2129230036992
  %534 = icmp eq i64 %533, 1025423441920
  br i1 %534, label %535, label %540

535:                                              ; preds = %522
  %536 = load i32, i32* %54, align 4
  %537 = sext i32 %536 to i64
  %538 = load i64, i64* %21, align 8
  %539 = add nsw i64 %538, %537
  store i64 %539, i64* %21, align 8
  br label %541

540:                                              ; preds = %522
  store i64 0, i64* %21, align 8
  br label %541

541:                                              ; preds = %540, %535
  %542 = load i64, i64* %10, align 8
  store i64 %542, i64* %11, align 8
  br label %543

543:                                              ; preds = %541, %519, %516, %507, %503, %487
  br label %916

544:                                              ; preds = %483, %475
  %545 = load i64, i64* %12, align 8
  %546 = load i64, i64* @M, align 8
  %547 = icmp eq i64 %545, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %544
  %549 = load i64, i64* %13, align 8
  %550 = and i64 %549, 2130169561088
  %551 = icmp eq i64 %550, 142002356224
  br i1 %551, label %560, label %552

552:                                              ; preds = %548, %544
  %553 = load i64, i64* %12, align 8
  %554 = load i64, i64* @I, align 8
  %555 = icmp eq i64 %553, %554
  br i1 %555, label %556, label %585

556:                                              ; preds = %552
  %557 = load i64, i64* %13, align 8
  %558 = and i64 %557, 2130169561088
  %559 = icmp eq i64 %558, 1342177280
  br i1 %559, label %560, label %585

560:                                              ; preds = %556, %548
  %561 = load i64, i64* %13, align 8
  %562 = and i64 %561, 133169152
  %563 = ashr i64 %562, 20
  %564 = trunc i64 %563 to i32
  store i32 %564, i32* %58, align 4
  %565 = load i64, i64* %13, align 8
  %566 = and i64 %565, 8128
  %567 = ashr i64 %566, 6
  %568 = trunc i64 %567 to i32
  store i32 %568, i32* %59, align 4
  %569 = load i64, i64* %13, align 8
  %570 = and i64 %569, 63
  %571 = trunc i64 %570 to i32
  store i32 %571, i32* %60, align 4
  %572 = load i32, i32* %60, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %584

574:                                              ; preds = %560
  %575 = load i32, i32* %59, align 4
  %576 = call i64 @isScratch(i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %584

578:                                              ; preds = %574
  %579 = load i32, i32* %58, align 4
  %580 = icmp eq i32 %579, 36
  br i1 %580, label %581, label %584

581:                                              ; preds = %578
  %582 = load i32, i32* %59, align 4
  store i32 %582, i32* %17, align 4
  %583 = load i64, i64* %10, align 8
  store i64 %583, i64* %11, align 8
  br label %584

584:                                              ; preds = %581, %578, %574, %560
  br label %915

585:                                              ; preds = %556, %552
  %586 = load i64, i64* %12, align 8
  %587 = load i64, i64* @I, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %611

589:                                              ; preds = %585
  %590 = load i64, i64* %13, align 8
  %591 = and i64 %590, 2130169561088
  %592 = icmp eq i64 %591, 6845104128
  br i1 %592, label %593, label %611

593:                                              ; preds = %589
  %594 = load i64, i64* %13, align 8
  %595 = and i64 %594, 8128
  %596 = ashr i64 %595, 6
  %597 = trunc i64 %596 to i32
  store i32 %597, i32* %61, align 4
  %598 = load i64, i64* %13, align 8
  %599 = and i64 %598, 63
  %600 = trunc i64 %599 to i32
  store i32 %600, i32* %62, align 4
  %601 = load i32, i32* %62, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %610

603:                                              ; preds = %593
  %604 = load i32, i32* %61, align 4
  %605 = call i64 @isScratch(i32 %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %603
  %608 = load i32, i32* %61, align 4
  store i32 %608, i32* %18, align 4
  %609 = load i64, i64* %10, align 8
  store i64 %609, i64* %11, align 8
  br label %610

610:                                              ; preds = %607, %603, %593
  br label %914

611:                                              ; preds = %589, %585
  %612 = load i64, i64* %12, align 8
  %613 = load i64, i64* @M, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %741

615:                                              ; preds = %611
  %616 = load i64, i64* %13, align 8
  %617 = and i64 %616, 2198083731456
  %618 = icmp eq i64 %617, 604516646912
  br i1 %618, label %623, label %619

619:                                              ; preds = %615
  %620 = load i64, i64* %13, align 8
  %621 = and i64 %620, 2129230036992
  %622 = icmp eq i64 %621, 741955600384
  br i1 %622, label %623, label %741

623:                                              ; preds = %619, %615
  %624 = load i64, i64* %13, align 8
  %625 = and i64 %624, 133169152
  %626 = ashr i64 %625, 20
  %627 = trunc i64 %626 to i32
  store i32 %627, i32* %63, align 4
  %628 = load i64, i64* %13, align 8
  %629 = and i64 %628, 1040384
  %630 = ashr i64 %629, 13
  %631 = trunc i64 %630 to i32
  store i32 %631, i32* %64, align 4
  %632 = load i64, i64* %13, align 8
  %633 = and i64 %632, 63
  %634 = trunc i64 %633 to i32
  store i32 %634, i32* %65, align 4
  %635 = load i32, i32* %64, align 4
  %636 = icmp slt i32 %635, 256
  br i1 %636, label %637, label %643

637:                                              ; preds = %623
  %638 = load i32, i32* %64, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 %639
  %641 = load i8, i8* %640, align 1
  %642 = sext i8 %641 to i32
  br label %644

643:                                              ; preds = %623
  br label %644

644:                                              ; preds = %643, %637
  %645 = phi i32 [ %642, %637 ], [ 0, %643 ]
  store i32 %645, i32* %66, align 4
  %646 = load i32, i32* %65, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %694

648:                                              ; preds = %644
  %649 = load i32, i32* %63, align 4
  %650 = load i32, i32* %20, align 4
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %652, label %694

652:                                              ; preds = %648
  %653 = load i64, i64* %21, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %694

655:                                              ; preds = %652
  %656 = load i32, i32* %64, align 4
  %657 = load i32, i32* %17, align 4
  %658 = icmp eq i32 %656, %657
  br i1 %658, label %663, label %659

659:                                              ; preds = %655
  %660 = load i32, i32* %64, align 4
  %661 = load i32, i32* %18, align 4
  %662 = icmp eq i32 %660, %661
  br i1 %662, label %663, label %694

663:                                              ; preds = %659, %655
  %664 = load i32, i32* %64, align 4
  %665 = load i32, i32* %17, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %667, label %674

667:                                              ; preds = %663
  %668 = load i64, i64* %21, align 8
  %669 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %670 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %669, i32 0, i32 2
  %671 = load i64*, i64** %670, align 8
  %672 = load i64, i64* @IA64_UNAT_REGNUM, align 8
  %673 = getelementptr inbounds i64, i64* %671, i64 %672
  store i64 %668, i64* %673, align 8
  store i32 0, i32* %17, align 4
  br label %681

674:                                              ; preds = %663
  %675 = load i64, i64* %21, align 8
  %676 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %677 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %676, i32 0, i32 2
  %678 = load i64*, i64** %677, align 8
  %679 = load i64, i64* @IA64_PR_REGNUM, align 8
  %680 = getelementptr inbounds i64, i64* %678, i64 %679
  store i64 %675, i64* %680, align 8
  store i32 0, i32* %18, align 4
  br label %681

681:                                              ; preds = %674, %667
  %682 = load i64, i64* %13, align 8
  %683 = and i64 %682, 2129230036992
  %684 = icmp eq i64 %683, 741955600384
  br i1 %684, label %685, label %691

685:                                              ; preds = %681
  %686 = load i64, i64* %13, align 8
  %687 = call i32 @imm9(i64 %686)
  %688 = sext i32 %687 to i64
  %689 = load i64, i64* %21, align 8
  %690 = add nsw i64 %689, %688
  store i64 %690, i64* %21, align 8
  br label %692

691:                                              ; preds = %681
  store i64 0, i64* %21, align 8
  br label %692

692:                                              ; preds = %691, %685
  %693 = load i64, i64* %10, align 8
  store i64 %693, i64* %11, align 8
  br label %740

694:                                              ; preds = %659, %652, %648, %644
  %695 = load i32, i32* %65, align 4
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %716

697:                                              ; preds = %694
  %698 = load i32, i32* %64, align 4
  %699 = icmp sle i32 32, %698
  br i1 %699, label %700, label %716

700:                                              ; preds = %697
  %701 = load i32, i32* %64, align 4
  %702 = icmp slt i32 %701, 40
  br i1 %702, label %703, label %716

703:                                              ; preds = %700
  %704 = load i32, i32* %64, align 4
  %705 = sub nsw i32 %704, 32
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %706
  %708 = load i8, i8* %707, align 1
  %709 = icmp ne i8 %708, 0
  br i1 %709, label %716, label %710

710:                                              ; preds = %703
  %711 = load i32, i32* %64, align 4
  %712 = sub nsw i32 %711, 32
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %713
  store i8 1, i8* %714, align 1
  %715 = load i64, i64* %10, align 8
  store i64 %715, i64* %11, align 8
  br label %739

716:                                              ; preds = %703, %700, %697, %694
  %717 = load i32, i32* %65, align 4
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %738

719:                                              ; preds = %716
  %720 = load i32, i32* %66, align 4
  %721 = icmp sle i32 32, %720
  br i1 %721, label %722, label %738

722:                                              ; preds = %719
  %723 = load i32, i32* %66, align 4
  %724 = icmp slt i32 %723, 40
  br i1 %724, label %725, label %738

725:                                              ; preds = %722
  %726 = load i32, i32* %66, align 4
  %727 = sub nsw i32 %726, 32
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %728
  %730 = load i8, i8* %729, align 1
  %731 = icmp ne i8 %730, 0
  br i1 %731, label %738, label %732

732:                                              ; preds = %725
  %733 = load i32, i32* %66, align 4
  %734 = sub nsw i32 %733, 32
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %735
  store i8 1, i8* %736, align 1
  %737 = load i64, i64* %10, align 8
  store i64 %737, i64* %11, align 8
  br label %738

738:                                              ; preds = %732, %725, %722, %719, %716
  br label %739

739:                                              ; preds = %738, %710
  br label %740

740:                                              ; preds = %739, %692
  br label %913

741:                                              ; preds = %619, %611
  %742 = load i64, i64* %12, align 8
  %743 = load i64, i64* @M, align 8
  %744 = icmp eq i64 %742, %743
  br i1 %744, label %745, label %813

745:                                              ; preds = %741
  %746 = load i64, i64* %13, align 8
  %747 = and i64 %746, 2194862505984
  %748 = icmp eq i64 %747, 601295421440
  br i1 %748, label %749, label %813

749:                                              ; preds = %745
  %750 = load i64, i64* %13, align 8
  %751 = and i64 %750, 1040384
  %752 = ashr i64 %751, 13
  %753 = trunc i64 %752 to i32
  store i32 %753, i32* %67, align 4
  %754 = load i64, i64* %13, align 8
  %755 = and i64 %754, 63
  %756 = trunc i64 %755 to i32
  store i32 %756, i32* %68, align 4
  %757 = load i32, i32* %67, align 4
  %758 = icmp slt i32 %757, 256
  br i1 %758, label %759, label %765

759:                                              ; preds = %749
  %760 = load i32, i32* %67, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 %761
  %763 = load i8, i8* %762, align 1
  %764 = sext i8 %763 to i32
  br label %766

765:                                              ; preds = %749
  br label %766

766:                                              ; preds = %765, %759
  %767 = phi i32 [ %764, %759 ], [ 0, %765 ]
  store i32 %767, i32* %69, align 4
  %768 = load i32, i32* %68, align 4
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %789

770:                                              ; preds = %766
  %771 = load i32, i32* %67, align 4
  %772 = icmp sle i32 32, %771
  br i1 %772, label %773, label %789

773:                                              ; preds = %770
  %774 = load i32, i32* %67, align 4
  %775 = icmp slt i32 %774, 40
  br i1 %775, label %776, label %789

776:                                              ; preds = %773
  %777 = load i32, i32* %67, align 4
  %778 = sub nsw i32 %777, 32
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %779
  %781 = load i8, i8* %780, align 1
  %782 = icmp ne i8 %781, 0
  br i1 %782, label %789, label %783

783:                                              ; preds = %776
  %784 = load i32, i32* %67, align 4
  %785 = sub nsw i32 %784, 32
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %786
  store i8 1, i8* %787, align 1
  %788 = load i64, i64* %10, align 8
  store i64 %788, i64* %11, align 8
  br label %812

789:                                              ; preds = %776, %773, %770, %766
  %790 = load i32, i32* %68, align 4
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %811

792:                                              ; preds = %789
  %793 = load i32, i32* %69, align 4
  %794 = icmp sle i32 32, %793
  br i1 %794, label %795, label %811

795:                                              ; preds = %792
  %796 = load i32, i32* %69, align 4
  %797 = icmp slt i32 %796, 40
  br i1 %797, label %798, label %811

798:                                              ; preds = %795
  %799 = load i32, i32* %69, align 4
  %800 = sub nsw i32 %799, 32
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %801
  %803 = load i8, i8* %802, align 1
  %804 = icmp ne i8 %803, 0
  br i1 %804, label %811, label %805

805:                                              ; preds = %798
  %806 = load i32, i32* %69, align 4
  %807 = sub nsw i32 %806, 32
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 %808
  store i8 1, i8* %809, align 1
  %810 = load i64, i64* %10, align 8
  store i64 %810, i64* %11, align 8
  br label %811

811:                                              ; preds = %805, %798, %795, %792, %789
  br label %812

812:                                              ; preds = %811, %783
  br label %912

813:                                              ; preds = %745, %741
  %814 = load i64, i64* %12, align 8
  %815 = load i64, i64* @M, align 8
  %816 = icmp eq i64 %814, %815
  br i1 %816, label %817, label %851

817:                                              ; preds = %813
  %818 = load i64, i64* %13, align 8
  %819 = and i64 %818, 2197009989632
  %820 = icmp eq i64 %819, 878320812032
  br i1 %820, label %821, label %851

821:                                              ; preds = %817
  %822 = load i64, i64* %13, align 8
  %823 = and i64 %822, 1040384
  %824 = ashr i64 %823, 13
  %825 = trunc i64 %824 to i32
  store i32 %825, i32* %70, align 4
  %826 = load i64, i64* %13, align 8
  %827 = and i64 %826, 63
  %828 = trunc i64 %827 to i32
  store i32 %828, i32* %71, align 4
  %829 = load i32, i32* %71, align 4
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %850

831:                                              ; preds = %821
  %832 = load i32, i32* %70, align 4
  %833 = icmp sle i32 8, %832
  br i1 %833, label %834, label %850

834:                                              ; preds = %831
  %835 = load i32, i32* %70, align 4
  %836 = icmp slt i32 %835, 16
  br i1 %836, label %837, label %850

837:                                              ; preds = %834
  %838 = load i32, i32* %70, align 4
  %839 = sub nsw i32 %838, 8
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 %840
  %842 = load i8, i8* %841, align 1
  %843 = icmp ne i8 %842, 0
  br i1 %843, label %850, label %844

844:                                              ; preds = %837
  %845 = load i32, i32* %70, align 4
  %846 = sub nsw i32 %845, 8
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 %847
  store i8 1, i8* %848, align 1
  %849 = load i64, i64* %10, align 8
  store i64 %849, i64* %11, align 8
  br label %850

850:                                              ; preds = %844, %837, %834, %831, %821
  br label %911

851:                                              ; preds = %817, %813
  %852 = load i64, i64* %12, align 8
  %853 = load i64, i64* @M, align 8
  %854 = icmp eq i64 %852, %853
  br i1 %854, label %855, label %910

855:                                              ; preds = %851
  %856 = load i64, i64* %13, align 8
  %857 = and i64 %856, 2198083731456
  %858 = icmp eq i64 %857, 613106581504
  br i1 %858, label %863, label %859

859:                                              ; preds = %855
  %860 = load i64, i64* %13, align 8
  %861 = and i64 %860, 2129230036992
  %862 = icmp eq i64 %861, 750545534976
  br i1 %862, label %863, label %910

863:                                              ; preds = %859, %855
  %864 = load i64, i64* %13, align 8
  %865 = and i64 %864, 133169152
  %866 = ashr i64 %865, 20
  %867 = trunc i64 %866 to i32
  store i32 %867, i32* %72, align 4
  %868 = load i64, i64* %13, align 8
  %869 = and i64 %868, 1040384
  %870 = ashr i64 %869, 13
  %871 = trunc i64 %870 to i32
  store i32 %871, i32* %73, align 4
  %872 = load i64, i64* %13, align 8
  %873 = and i64 %872, 63
  %874 = trunc i64 %873 to i32
  store i32 %874, i32* %74, align 4
  %875 = load i32, i32* %74, align 4
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %909

877:                                              ; preds = %863
  %878 = load i32, i32* %72, align 4
  %879 = load i32, i32* %20, align 4
  %880 = icmp eq i32 %878, %879
  br i1 %880, label %881, label %909

881:                                              ; preds = %877
  %882 = load i32, i32* %73, align 4
  %883 = icmp sle i32 4, %882
  br i1 %883, label %884, label %909

884:                                              ; preds = %881
  %885 = load i32, i32* %73, align 4
  %886 = icmp sle i32 %885, 7
  br i1 %886, label %887, label %909

887:                                              ; preds = %884
  %888 = load i64, i64* %21, align 8
  %889 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %890 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %889, i32 0, i32 2
  %891 = load i64*, i64** %890, align 8
  %892 = load i32, i32* @IA64_GR0_REGNUM, align 4
  %893 = load i32, i32* %73, align 4
  %894 = add nsw i32 %892, %893
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i64, i64* %891, i64 %895
  store i64 %888, i64* %896, align 8
  %897 = load i64, i64* %13, align 8
  %898 = and i64 %897, 2129230036992
  %899 = icmp eq i64 %898, 750545534976
  br i1 %899, label %900, label %906

900:                                              ; preds = %887
  %901 = load i64, i64* %13, align 8
  %902 = call i32 @imm9(i64 %901)
  %903 = sext i32 %902 to i64
  %904 = load i64, i64* %21, align 8
  %905 = add nsw i64 %904, %903
  store i64 %905, i64* %21, align 8
  br label %907

906:                                              ; preds = %887
  store i64 0, i64* %21, align 8
  br label %907

907:                                              ; preds = %906, %900
  %908 = load i64, i64* %10, align 8
  store i64 %908, i64* %11, align 8
  br label %909

909:                                              ; preds = %907, %884, %881, %877, %863
  br label %910

910:                                              ; preds = %909, %859, %851
  br label %911

911:                                              ; preds = %910, %850
  br label %912

912:                                              ; preds = %911, %812
  br label %913

913:                                              ; preds = %912, %740
  br label %914

914:                                              ; preds = %913, %610
  br label %915

915:                                              ; preds = %914, %584
  br label %916

916:                                              ; preds = %915, %543
  br label %917

917:                                              ; preds = %916, %474
  br label %918

918:                                              ; preds = %917, %307
  br label %919

919:                                              ; preds = %918
  br label %920

920:                                              ; preds = %919
  %921 = load i64, i64* %10, align 8
  store i64 %921, i64* %6, align 8
  br label %233

922:                                              ; preds = %468, %272, %256, %242, %233
  %923 = load i32, i32* %26, align 4
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %1110, label %925

925:                                              ; preds = %922
  %926 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %927 = icmp ne %struct.frame_info* %926, null
  br i1 %927, label %928, label %1110

928:                                              ; preds = %925
  %929 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %930 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %929, i32 0, i32 1
  %931 = load i32, i32* %930, align 8
  %932 = sext i32 %931 to i64
  store i64 %932, i64* %34, align 8
  %933 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %934 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %933, i32 0, i32 3
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %31, align 8
  %936 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %937 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %936, i32 0, i32 4
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %33, align 8
  %939 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %940 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %939, i32 0, i32 5
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %32, align 8
  %942 = load i64, i64* %34, align 8
  %943 = ashr i64 %942, 18
  %944 = and i64 %943, 127
  store i64 %944, i64* %35, align 8
  %945 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %946 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %945, i32 0, i32 6
  %947 = load i64, i64* %946, align 8
  %948 = load i64, i64* %33, align 8
  %949 = sub nsw i64 0, %948
  %950 = call i64 @rse_address_add(i64 %947, i64 %949)
  store i64 %950, i64* %30, align 8
  store i32 0, i32* %27, align 4
  %951 = load i64, i64* %30, align 8
  store i64 %951, i64* %28, align 8
  br label %952

952:                                              ; preds = %1001, %928
  %953 = load i32, i32* %27, align 4
  %954 = sext i32 %953 to i64
  %955 = load i64, i64* %33, align 8
  %956 = icmp slt i64 %954, %955
  br i1 %956, label %957, label %1006

957:                                              ; preds = %952
  %958 = load i64, i64* %28, align 8
  %959 = call i64 @IS_NaT_COLLECTION_ADDR(i64 %958)
  %960 = icmp ne i64 %959, 0
  br i1 %960, label %961, label %964

961:                                              ; preds = %957
  %962 = load i64, i64* %28, align 8
  %963 = add nsw i64 %962, 8
  store i64 %963, i64* %28, align 8
  br label %964

964:                                              ; preds = %961, %957
  %965 = load i32, i32* %27, align 4
  %966 = add nsw i32 %965, 32
  %967 = load i32, i32* %14, align 4
  %968 = icmp eq i32 %966, %967
  br i1 %968, label %969, label %976

969:                                              ; preds = %964
  %970 = load i64, i64* %28, align 8
  %971 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %972 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %971, i32 0, i32 2
  %973 = load i64*, i64** %972, align 8
  %974 = load i64, i64* @IA64_CFM_REGNUM, align 8
  %975 = getelementptr inbounds i64, i64* %973, i64 %974
  store i64 %970, i64* %975, align 8
  br label %976

976:                                              ; preds = %969, %964
  %977 = load i32, i32* %27, align 4
  %978 = add nsw i32 %977, 32
  %979 = load i32, i32* %15, align 4
  %980 = icmp eq i32 %978, %979
  br i1 %980, label %981, label %988

981:                                              ; preds = %976
  %982 = load i64, i64* %28, align 8
  %983 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %984 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %983, i32 0, i32 2
  %985 = load i64*, i64** %984, align 8
  %986 = load i64, i64* @IA64_VRAP_REGNUM, align 8
  %987 = getelementptr inbounds i64, i64* %985, i64 %986
  store i64 %982, i64* %987, align 8
  br label %988

988:                                              ; preds = %981, %976
  %989 = load i32, i32* %27, align 4
  %990 = add nsw i32 %989, 32
  %991 = load i32, i32* %16, align 4
  %992 = icmp eq i32 %990, %991
  br i1 %992, label %993, label %1000

993:                                              ; preds = %988
  %994 = load i64, i64* %28, align 8
  %995 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %996 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %995, i32 0, i32 2
  %997 = load i64*, i64** %996, align 8
  %998 = load i64, i64* @IA64_VFP_REGNUM, align 8
  %999 = getelementptr inbounds i64, i64* %997, i64 %998
  store i64 %994, i64* %999, align 8
  br label %1000

1000:                                             ; preds = %993, %988
  br label %1001

1001:                                             ; preds = %1000
  %1002 = load i32, i32* %27, align 4
  %1003 = add nsw i32 %1002, 1
  store i32 %1003, i32* %27, align 4
  %1004 = load i64, i64* %28, align 8
  %1005 = add nsw i64 %1004, 8
  store i64 %1005, i64* %28, align 8
  br label %952

1006:                                             ; preds = %952
  store i64 0, i64* %34, align 8
  %1007 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1008 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1007, i32 0, i32 2
  %1009 = load i64*, i64** %1008, align 8
  %1010 = load i64, i64* @IA64_CFM_REGNUM, align 8
  %1011 = getelementptr inbounds i64, i64* %1009, i64 %1010
  %1012 = load i64, i64* %1011, align 8
  %1013 = icmp ne i64 %1012, 0
  br i1 %1013, label %1014, label %1023

1014:                                             ; preds = %1006
  %1015 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1016 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1015, i32 0, i32 2
  %1017 = load i64*, i64** %1016, align 8
  %1018 = load i64, i64* @IA64_CFM_REGNUM, align 8
  %1019 = getelementptr inbounds i64, i64* %1017, i64 %1018
  %1020 = load i64, i64* %1019, align 8
  %1021 = call i32 @ia64_read_reg(i64 %1020, i64* %75, i32 8)
  %1022 = load i64, i64* %75, align 8
  store i64 %1022, i64* %34, align 8
  br label %1034

1023:                                             ; preds = %1006
  %1024 = load i32, i32* %14, align 4
  %1025 = icmp ne i32 %1024, 0
  br i1 %1025, label %1026, label %1033

1026:                                             ; preds = %1023
  %1027 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %1028 = load i32, i32* %14, align 4
  %1029 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  %1030 = call i32 @frame_unwind_register(%struct.frame_info* %1027, i32 %1028, i8* %1029)
  %1031 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  %1032 = call i64 @extract_unsigned_integer(i8* %1031, i32 8)
  store i64 %1032, i64* %34, align 8
  br label %1033

1033:                                             ; preds = %1026, %1023
  br label %1034

1034:                                             ; preds = %1033, %1014
  %1035 = load i64, i64* %34, align 8
  %1036 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1037 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1036, i32 0, i32 10
  store i64 %1035, i64* %1037, align 8
  %1038 = load i64, i64* %34, align 8
  %1039 = icmp ne i64 %1038, 0
  br i1 %1039, label %1040, label %1109

1040:                                             ; preds = %1034
  %1041 = load i64, i64* %34, align 8
  %1042 = ashr i64 %1041, 14
  %1043 = and i64 %1042, 15
  %1044 = mul nsw i64 %1043, 8
  store i64 %1044, i64* %31, align 8
  %1045 = load i64, i64* %34, align 8
  %1046 = and i64 %1045, 127
  store i64 %1046, i64* %33, align 8
  %1047 = load i64, i64* %34, align 8
  %1048 = ashr i64 %1047, 7
  %1049 = and i64 %1048, 127
  store i64 %1049, i64* %32, align 8
  %1050 = load i64, i64* %34, align 8
  %1051 = ashr i64 %1050, 18
  %1052 = and i64 %1051, 127
  store i64 %1052, i64* %35, align 8
  %1053 = load i64, i64* %30, align 8
  %1054 = load i64, i64* %32, align 8
  %1055 = sub nsw i64 0, %1054
  %1056 = call i64 @rse_address_add(i64 %1053, i64 %1055)
  store i64 %1056, i64* %30, align 8
  store i32 0, i32* %27, align 4
  %1057 = load i64, i64* %30, align 8
  store i64 %1057, i64* %28, align 8
  br label %1058

1058:                                             ; preds = %1103, %1040
  %1059 = load i32, i32* %27, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = load i64, i64* %33, align 8
  %1062 = icmp slt i64 %1060, %1061
  br i1 %1062, label %1063, label %1108

1063:                                             ; preds = %1058
  %1064 = load i64, i64* %28, align 8
  %1065 = call i64 @IS_NaT_COLLECTION_ADDR(i64 %1064)
  %1066 = icmp ne i64 %1065, 0
  br i1 %1066, label %1067, label %1070

1067:                                             ; preds = %1063
  %1068 = load i64, i64* %28, align 8
  %1069 = add nsw i64 %1068, 8
  store i64 %1069, i64* %28, align 8
  br label %1070

1070:                                             ; preds = %1067, %1063
  %1071 = load i32, i32* %27, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = load i64, i64* %31, align 8
  %1074 = icmp slt i64 %1072, %1073
  br i1 %1074, label %1075, label %1092

1075:                                             ; preds = %1070
  %1076 = load i64, i64* %28, align 8
  %1077 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1078 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1077, i32 0, i32 2
  %1079 = load i64*, i64** %1078, align 8
  %1080 = load i32, i32* @IA64_GR32_REGNUM, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = load i32, i32* %27, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = load i64, i64* %31, align 8
  %1085 = load i64, i64* %35, align 8
  %1086 = sub nsw i64 %1084, %1085
  %1087 = add nsw i64 %1083, %1086
  %1088 = load i64, i64* %31, align 8
  %1089 = srem i64 %1087, %1088
  %1090 = add nsw i64 %1081, %1089
  %1091 = getelementptr inbounds i64, i64* %1079, i64 %1090
  store i64 %1076, i64* %1091, align 8
  br label %1102

1092:                                             ; preds = %1070
  %1093 = load i64, i64* %28, align 8
  %1094 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1095 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1094, i32 0, i32 2
  %1096 = load i64*, i64** %1095, align 8
  %1097 = load i32, i32* @IA64_GR32_REGNUM, align 4
  %1098 = load i32, i32* %27, align 4
  %1099 = add nsw i32 %1097, %1098
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds i64, i64* %1096, i64 %1100
  store i64 %1093, i64* %1101, align 8
  br label %1102

1102:                                             ; preds = %1092, %1075
  br label %1103

1103:                                             ; preds = %1102
  %1104 = load i32, i32* %27, align 4
  %1105 = add nsw i32 %1104, 1
  store i32 %1105, i32* %27, align 4
  %1106 = load i64, i64* %28, align 8
  %1107 = add nsw i64 %1106, 8
  store i64 %1107, i64* %28, align 8
  br label %1058

1108:                                             ; preds = %1058
  br label %1109

1109:                                             ; preds = %1108, %1034
  br label %1110

1110:                                             ; preds = %1109, %925, %922
  %1111 = load i32, i32* %25, align 4
  %1112 = icmp ne i32 %1111, 0
  br i1 %1112, label %1113, label %1119

1113:                                             ; preds = %1110
  %1114 = load i64, i64* %7, align 8
  %1115 = load i64, i64* %11, align 8
  %1116 = icmp sge i64 %1114, %1115
  br i1 %1116, label %1117, label %1119

1117:                                             ; preds = %1113
  %1118 = load i64, i64* %7, align 8
  store i64 %1118, i64* %11, align 8
  br label %1119

1119:                                             ; preds = %1117, %1113, %1110
  %1120 = load i32, i32* %26, align 4
  %1121 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1122 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1121, i32 0, i32 7
  store i32 %1120, i32* %1122, align 8
  %1123 = load i64, i64* %11, align 8
  %1124 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1125 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1124, i32 0, i32 0
  store i64 %1123, i64* %1125, align 8
  %1126 = load i32, i32* %19, align 4
  %1127 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1128 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1127, i32 0, i32 8
  store i32 %1126, i32* %1128, align 4
  %1129 = load i32, i32* %16, align 4
  %1130 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %9, align 8
  %1131 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %1130, i32 0, i32 9
  store i32 %1129, i32* %1131, align 8
  %1132 = load i64, i64* %11, align 8
  store i64 %1132, i64* %5, align 8
  br label %1133

1133:                                             ; preds = %1119, %93
  %1134 = load i64, i64* %5, align 8
  ret i64 %1134
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @refine_prologue_limit(i64, i64, i32*) #1

declare dso_local i64 @fetch_instruction(i64, i64*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @frame_unwind_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @imm9(i64) #1

declare dso_local i64 @isScratch(i32) #1

declare dso_local i64 @rse_address_add(i64, i64) #1

declare dso_local i64 @IS_NaT_COLLECTION_ADDR(i64) #1

declare dso_local i32 @ia64_read_reg(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
