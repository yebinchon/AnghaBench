; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_expand_block_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_expand_block_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 (i32, i32, i32, i32)* }

@CONST_INT = common dso_local global i64 0, align 8
@MAX_MOVE_REG = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@V4SImode = common dso_local global i32 0, align 4
@TARGET_STRING = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i32* null, align 8
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_block_move(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @CONST_INT, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @MAX_MOVE_REG, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %13, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %424

49:                                               ; preds = %1
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @CONST_INT, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @gcc_assert(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @INTVAL(i32 %56)
  %58 = load i32, i32* @BITS_PER_UNIT, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @INTVAL(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %424

65:                                               ; preds = %49
  %66 = load i32, i32* %10, align 4
  %67 = load i64, i64* @TARGET_POWERPC64, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 64, i32 32
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %424

73:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %416, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %423

77:                                               ; preds = %74
  %78 = load i32, i32* @BLKmode, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i64, i64* @TARGET_ALTIVEC, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 16
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 128
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  store i32 16, i32* %12, align 4
  %88 = load i32, i32* @V4SImode, align 4
  store i32 %88, i32* %18, align 4
  %89 = bitcast %union.anon* %17 to i32 (i32, i32)**
  store i32 (i32, i32)* @gen_movv4si, i32 (i32, i32)** %89, align 8
  br label %311

90:                                               ; preds = %84, %81, %77
  %91 = load i64, i64* @TARGET_STRING, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %145

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 24
  br i1 %95, label %96, label %145

96:                                               ; preds = %93
  %97 = load i32*, i32** @fixed_regs, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %145, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** @fixed_regs, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %145, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** @fixed_regs, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %106
  %112 = load i32*, i32** @fixed_regs, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** @fixed_regs, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 9
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** @fixed_regs, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 10
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** @fixed_regs, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 11
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %126
  %132 = load i32*, i32** @fixed_regs, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = icmp sgt i32 %137, 32
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ 32, %139 ], [ %141, %140 ]
  store i32 %143, i32* %12, align 4
  %144 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)* @gen_movmemsi_8reg, i32 (i32, i32, i32, i32)** %144, align 8
  br label %310

145:                                              ; preds = %131, %126, %121, %116, %111, %106, %101, %96, %93, %90
  %146 = load i64, i64* @TARGET_STRING, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = icmp sgt i32 %149, 16
  br i1 %150, label %151, label %190

151:                                              ; preds = %148
  %152 = load i32*, i32** @fixed_regs, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %190, label %156

156:                                              ; preds = %151
  %157 = load i32*, i32** @fixed_regs, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 6
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %190, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** @fixed_regs, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 7
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %190, label %166

166:                                              ; preds = %161
  %167 = load i32*, i32** @fixed_regs, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %166
  %172 = load i32*, i32** @fixed_regs, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 9
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** @fixed_regs, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 10
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %10, align 4
  %183 = icmp sgt i32 %182, 24
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %187

185:                                              ; preds = %181
  %186 = load i32, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 24, %184 ], [ %186, %185 ]
  store i32 %188, i32* %12, align 4
  %189 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)* @gen_movmemsi_6reg, i32 (i32, i32, i32, i32)** %189, align 8
  br label %309

190:                                              ; preds = %176, %171, %166, %161, %156, %151, %148, %145
  %191 = load i64, i64* @TARGET_STRING, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %190
  %194 = load i32, i32* %10, align 4
  %195 = icmp sgt i32 %194, 8
  br i1 %195, label %196, label %225

196:                                              ; preds = %193
  %197 = load i32*, i32** @fixed_regs, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 5
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %196
  %202 = load i32*, i32** @fixed_regs, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 6
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %225, label %206

206:                                              ; preds = %201
  %207 = load i32*, i32** @fixed_regs, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %206
  %212 = load i32*, i32** @fixed_regs, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 8
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = icmp sgt i32 %217, 16
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %222

220:                                              ; preds = %216
  %221 = load i32, i32* %10, align 4
  br label %222

222:                                              ; preds = %220, %219
  %223 = phi i32 [ 16, %219 ], [ %221, %220 ]
  store i32 %223, i32* %12, align 4
  %224 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)* @gen_movmemsi_4reg, i32 (i32, i32, i32, i32)** %224, align 8
  br label %308

225:                                              ; preds = %211, %206, %201, %196, %193, %190
  %226 = load i32, i32* %10, align 4
  %227 = icmp sge i32 %226, 8
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  %229 = load i64, i64* @TARGET_POWERPC64, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = icmp sge i32 %232, 64
  br i1 %233, label %240, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %9, align 4
  %239 = icmp sge i32 %238, 32
  br i1 %239, label %240, label %243

240:                                              ; preds = %237, %231
  store i32 8, i32* %12, align 4
  %241 = load i32, i32* @DImode, align 4
  store i32 %241, i32* %18, align 4
  %242 = bitcast %union.anon* %17 to i32 (i32, i32)**
  store i32 (i32, i32)* @gen_movdi, i32 (i32, i32)** %242, align 8
  br label %307

243:                                              ; preds = %237, %234, %228, %225
  %244 = load i64, i64* @TARGET_STRING, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp sgt i32 %247, 4
  br i1 %248, label %249, label %261

249:                                              ; preds = %246
  %250 = load i64, i64* @TARGET_POWERPC64, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %261, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %10, align 4
  %254 = icmp sgt i32 %253, 8
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %258

256:                                              ; preds = %252
  %257 = load i32, i32* %10, align 4
  br label %258

258:                                              ; preds = %256, %255
  %259 = phi i32 [ 8, %255 ], [ %257, %256 ]
  store i32 %259, i32* %12, align 4
  %260 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)* @gen_movmemsi_2reg, i32 (i32, i32, i32, i32)** %260, align 8
  br label %306

261:                                              ; preds = %249, %246, %243
  %262 = load i32, i32* %10, align 4
  %263 = icmp sge i32 %262, 4
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load i32, i32* %9, align 4
  %266 = icmp sge i32 %265, 32
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267, %264
  store i32 4, i32* %12, align 4
  %271 = load i32, i32* @SImode, align 4
  store i32 %271, i32* %18, align 4
  %272 = bitcast %union.anon* %17 to i32 (i32, i32)**
  store i32 (i32, i32)* @gen_movsi, i32 (i32, i32)** %272, align 8
  br label %305

273:                                              ; preds = %267, %261
  %274 = load i32, i32* %10, align 4
  %275 = icmp sge i32 %274, 2
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = icmp sge i32 %277, 16
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279, %276
  store i32 2, i32* %12, align 4
  %283 = load i32, i32* @HImode, align 4
  store i32 %283, i32* %18, align 4
  %284 = bitcast %union.anon* %17 to i32 (i32, i32)**
  store i32 (i32, i32)* @gen_movhi, i32 (i32, i32)** %284, align 8
  br label %304

285:                                              ; preds = %279, %273
  %286 = load i64, i64* @TARGET_STRING, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %285
  %289 = load i32, i32* %10, align 4
  %290 = icmp sgt i32 %289, 1
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load i32, i32* %10, align 4
  %293 = icmp sgt i32 %292, 4
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %297

295:                                              ; preds = %291
  %296 = load i32, i32* %10, align 4
  br label %297

297:                                              ; preds = %295, %294
  %298 = phi i32 [ 4, %294 ], [ %296, %295 ]
  store i32 %298, i32* %12, align 4
  %299 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)* @gen_movmemsi_1reg, i32 (i32, i32, i32, i32)** %299, align 8
  br label %303

300:                                              ; preds = %288, %285
  store i32 1, i32* %12, align 4
  %301 = load i32, i32* @QImode, align 4
  store i32 %301, i32* %18, align 4
  %302 = bitcast %union.anon* %17 to i32 (i32, i32)**
  store i32 (i32, i32)* @gen_movqi, i32 (i32, i32)** %302, align 8
  br label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %303, %282
  br label %305

305:                                              ; preds = %304, %270
  br label %306

306:                                              ; preds = %305, %258
  br label %307

307:                                              ; preds = %306, %240
  br label %308

308:                                              ; preds = %307, %222
  br label %309

309:                                              ; preds = %308, %187
  br label %310

310:                                              ; preds = %309, %142
  br label %311

311:                                              ; preds = %310, %87
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @adjust_address(i32 %312, i32 %313, i32 %314)
  store i32 %315, i32* %19, align 4
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %18, align 4
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @adjust_address(i32 %316, i32 %317, i32 %318)
  store i32 %319, i32* %20, align 4
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* @BLKmode, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %341

323:                                              ; preds = %311
  %324 = load i32, i32* %18, align 4
  %325 = call i32 @gen_reg_rtx(i32 %324)
  store i32 %325, i32* %21, align 4
  %326 = bitcast %union.anon* %17 to i32 (i32, i32)**
  %327 = load i32 (i32, i32)*, i32 (i32, i32)** %326, align 8
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %19, align 4
  %330 = call i32 %327(i32 %328, i32 %329)
  %331 = call i32 @emit_insn(i32 %330)
  %332 = bitcast %union.anon* %17 to i32 (i32, i32)**
  %333 = load i32 (i32, i32)*, i32 (i32, i32)** %332, align 8
  %334 = load i32, i32* %20, align 4
  %335 = load i32, i32* %21, align 4
  %336 = call i32 %333(i32 %334, i32 %335)
  %337 = load i32, i32* %15, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %15, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i32, i32* %45, i64 %339
  store i32 %336, i32* %340, align 4
  br label %341

341:                                              ; preds = %323, %311
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* @BLKmode, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %353, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* @MAX_MOVE_REG, align 4
  %348 = icmp sge i32 %346, %347
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %368

353:                                              ; preds = %349, %345, %341
  store i32 0, i32* %22, align 4
  br label %354

354:                                              ; preds = %364, %353
  %355 = load i32, i32* %22, align 4
  %356 = load i32, i32* %15, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %367

358:                                              ; preds = %354
  %359 = load i32, i32* %22, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %45, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @emit_insn(i32 %362)
  br label %364

364:                                              ; preds = %358
  %365 = load i32, i32* %22, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %22, align 4
  br label %354

367:                                              ; preds = %354
  store i32 0, i32* %15, align 4
  br label %368

368:                                              ; preds = %367, %349
  %369 = load i32, i32* %18, align 4
  %370 = load i32, i32* @BLKmode, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %415

372:                                              ; preds = %368
  %373 = load i32, i32* %19, align 4
  %374 = call i32 @XEXP(i32 %373, i32 0)
  %375 = call i32 @REG_P(i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %384, label %377

377:                                              ; preds = %372
  %378 = load i32, i32* %19, align 4
  %379 = call i32 @XEXP(i32 %378, i32 0)
  %380 = call i32 @copy_addr_to_reg(i32 %379)
  store i32 %380, i32* %23, align 4
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* %23, align 4
  %383 = call i32 @replace_equiv_address(i32 %381, i32 %382)
  store i32 %383, i32* %19, align 4
  br label %384

384:                                              ; preds = %377, %372
  %385 = load i32, i32* %19, align 4
  %386 = load i32, i32* %12, align 4
  %387 = call i32 @GEN_INT(i32 %386)
  %388 = call i32 @set_mem_size(i32 %385, i32 %387)
  %389 = load i32, i32* %20, align 4
  %390 = call i32 @XEXP(i32 %389, i32 0)
  %391 = call i32 @REG_P(i32 %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %400, label %393

393:                                              ; preds = %384
  %394 = load i32, i32* %20, align 4
  %395 = call i32 @XEXP(i32 %394, i32 0)
  %396 = call i32 @copy_addr_to_reg(i32 %395)
  store i32 %396, i32* %24, align 4
  %397 = load i32, i32* %20, align 4
  %398 = load i32, i32* %24, align 4
  %399 = call i32 @replace_equiv_address(i32 %397, i32 %398)
  store i32 %399, i32* %20, align 4
  br label %400

400:                                              ; preds = %393, %384
  %401 = load i32, i32* %20, align 4
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @GEN_INT(i32 %402)
  %404 = call i32 @set_mem_size(i32 %401, i32 %403)
  %405 = bitcast %union.anon* %17 to i32 (i32, i32, i32, i32)**
  %406 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %405, align 8
  %407 = load i32, i32* %20, align 4
  %408 = load i32, i32* %19, align 4
  %409 = load i32, i32* %12, align 4
  %410 = and i32 %409, 31
  %411 = call i32 @GEN_INT(i32 %410)
  %412 = load i32, i32* %7, align 4
  %413 = call i32 %406(i32 %407, i32 %408, i32 %411, i32 %412)
  %414 = call i32 @emit_insn(i32 %413)
  br label %415

415:                                              ; preds = %400, %368
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %12, align 4
  %418 = load i32, i32* %11, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %11, align 4
  %420 = load i32, i32* %12, align 4
  %421 = load i32, i32* %10, align 4
  %422 = sub nsw i32 %421, %420
  store i32 %422, i32* %10, align 4
  br label %74

423:                                              ; preds = %74
  store i32 1, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %424

424:                                              ; preds = %423, %72, %64, %48
  %425 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %425)
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local i64 @GET_CODE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gen_movv4si(i32, i32) #1

declare dso_local i32 @gen_movmemsi_8reg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movmemsi_6reg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movmemsi_4reg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movdi(i32, i32) #1

declare dso_local i32 @gen_movmemsi_2reg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movsi(i32, i32) #1

declare dso_local i32 @gen_movhi(i32, i32) #1

declare dso_local i32 @gen_movmemsi_1reg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movqi(i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @copy_addr_to_reg(i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @set_mem_size(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
