; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_output_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_output_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@spill_reg_store = common dso_local global i64* null, align 8
@spill_reg_stored_to = common dso_local global i64* null, align 8
@SUBREG = common dso_local global i64 0, align 8
@reg_equiv_memory_loc = common dso_local global i64* null, align 8
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@reload_override_in = common dso_local global i64* null, align 8
@reload_inherited = common dso_local global i64* null, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@reg_equiv_alt_mem_list = common dso_local global i64* null, align 8
@USE = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@REG_DEAD = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @delete_output_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_output_reload(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i64*, i64** @spill_reg_store, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64*, i64** @spill_reg_stored_to, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @INSN_DELETED_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %431

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %38, %32
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @SUBREG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @SUBREG_REG(i64 %39)
  store i64 %40, i64* %8, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i64*, i64** @reg_equiv_memory_loc, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @REGNO(i64 %43)
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load i32, i32* @n_reloads, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %145, %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %148

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %145

62:                                               ; preds = %52
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @MEM_P(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i64*, i64** @reload_override_in, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66, %62
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %86, %80
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @GET_CODE(i64 %82)
  %84 = load i64, i64* @SUBREG, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @SUBREG_REG(i64 %87)
  store i64 %88, i64* %14, align 8
  br label %81

89:                                               ; preds = %81
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @rtx_equal_p(i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %144

94:                                               ; preds = %89
  %95 = load i64*, i64** @reload_inherited, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %94
  %102 = load i64*, i64** @reload_override_in, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108, %101, %94
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  br label %145

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %130, %124
  %126 = load i64, i64* %14, align 8
  %127 = call i64 @GET_CODE(i64 %126)
  %128 = load i64, i64* @SUBREG, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i64, i64* %14, align 8
  %132 = call i64 @XEXP(i64 %131, i32 0)
  store i64 %132, i64* %14, align 8
  br label %125

133:                                              ; preds = %125
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @rtx_equal_p(i64 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %138, %133
  br label %143

142:                                              ; preds = %108
  br label %431

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %143, %89
  br label %145

145:                                              ; preds = %144, %123, %61
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %9, align 4
  br label %49

148:                                              ; preds = %49
  %149 = load i64, i64* %4, align 8
  %150 = call i64 @PATTERN(i64 %149)
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @count_occurrences(i64 %150, i64 %151, i32 0)
  store i32 %152, i32* %10, align 4
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load i64, i64* %4, align 8
  %157 = call i64 @PATTERN(i64 %156)
  %158 = load i64, i64* %13, align 8
  %159 = load i32, i32* @NULL_RTX, align 4
  %160 = call i64 @eliminate_regs(i64 %158, i32 0, i32 %159)
  %161 = call i32 @count_occurrences(i64 %157, i64 %160, i32 0)
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %155, %148
  %165 = load i64*, i64** @reg_equiv_alt_mem_list, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i64 @REGNO(i64 %166)
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %12, align 8
  br label %170

170:                                              ; preds = %189, %164
  %171 = load i64, i64* %12, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  %174 = load i64, i64* %12, align 8
  %175 = call i64 @XEXP(i64 %174, i32 0)
  %176 = load i64, i64* %13, align 8
  %177 = call i64 @rtx_equal_p(i64 %175, i64 %176)
  %178 = icmp ne i64 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @gcc_assert(i32 %180)
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @PATTERN(i64 %182)
  %184 = load i64, i64* %12, align 8
  %185 = call i64 @XEXP(i64 %184, i32 0)
  %186 = call i32 @count_occurrences(i64 %183, i64 %185, i32 0)
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %173
  %190 = load i64, i64* %12, align 8
  %191 = call i64 @XEXP(i64 %190, i32 1)
  store i64 %191, i64* %12, align 8
  br label %170

192:                                              ; preds = %170
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %431

197:                                              ; preds = %192
  %198 = load i64, i64* %7, align 8
  %199 = call i64 @NEXT_INSN(i64 %198)
  store i64 %199, i64* %12, align 8
  br label %200

200:                                              ; preds = %259, %197
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %4, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %262

204:                                              ; preds = %200
  %205 = load i64, i64* %12, align 8
  %206 = call i64 @NOTE_INSN_BASIC_BLOCK_P(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %431

209:                                              ; preds = %204
  %210 = load i64, i64* %12, align 8
  %211 = call i64 @NONJUMP_INSN_P(i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %12, align 8
  %215 = call i64 @CALL_P(i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %258

217:                                              ; preds = %213, %209
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* %12, align 8
  %220 = call i64 @PATTERN(i64 %219)
  %221 = call i64 @reg_mentioned_p(i64 %218, i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %258

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %236, %223
  %225 = load i64, i64* %12, align 8
  %226 = call i64 @NONJUMP_INSN_P(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i64, i64* %12, align 8
  %230 = call i64 @PATTERN(i64 %229)
  %231 = call i64 @GET_CODE(i64 %230)
  %232 = load i64, i64* @USE, align 8
  %233 = icmp eq i64 %231, %232
  br label %234

234:                                              ; preds = %228, %224
  %235 = phi i1 [ false, %224 ], [ %233, %228 ]
  br i1 %235, label %236, label %248

236:                                              ; preds = %234
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %12, align 8
  %239 = call i64 @PATTERN(i64 %238)
  %240 = call i64 @XEXP(i64 %239, i32 0)
  %241 = call i64 @rtx_equal_p(i64 %237, i64 %240)
  %242 = icmp ne i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load i64, i64* %12, align 8
  %247 = call i64 @NEXT_INSN(i64 %246)
  store i64 %247, i64* %12, align 8
  br label %224

248:                                              ; preds = %234
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i64, i64* %12, align 8
  %254 = load i64, i64* %4, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %262

257:                                              ; preds = %252, %248
  br label %431

258:                                              ; preds = %217, %213
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %12, align 8
  %261 = call i64 @NEXT_INSN(i64 %260)
  store i64 %261, i64* %12, align 8
  br label %200

262:                                              ; preds = %256, %200
  %263 = load i32**, i32*** @hard_regno_nregs, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* %8, align 8
  %269 = call i64 @GET_MODE(i64 %268)
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %276, %262
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %9, align 4
  %275 = icmp sgt i32 %273, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load i64*, i64** @spill_reg_store, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %277, i64 %281
  store i64 0, i64* %282, align 8
  %283 = load i64*, i64** @spill_reg_stored_to, align 8
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %283, i64 %287
  store i64 0, i64* %288, align 8
  br label %272

289:                                              ; preds = %272
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %295, %301
  br i1 %302, label %303, label %425

303:                                              ; preds = %289
  %304 = load i64, i64* %8, align 8
  %305 = call i64 @REGNO(i64 %304)
  %306 = call i32 @REG_N_DEATHS(i64 %305)
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %425

308:                                              ; preds = %303
  %309 = load i64, i64* %8, align 8
  %310 = call i64 @REGNO(i64 %309)
  %311 = call i32 @REG_N_SETS(i64 %310)
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %425

313:                                              ; preds = %308
  %314 = load i64, i64* %8, align 8
  %315 = call i64 @REGNO(i64 %314)
  %316 = call i64 @REG_BASIC_BLOCK(i64 %315)
  %317 = icmp sge i64 %316, 0
  br i1 %317, label %318, label %425

318:                                              ; preds = %313
  %319 = load i64, i64* %4, align 8
  %320 = load i32, i32* @REG_DEAD, align 4
  %321 = load i64, i64* %8, align 8
  %322 = call i64 @REGNO(i64 %321)
  %323 = call i64 @find_regno_note(i64 %319, i32 %320, i64 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %425

325:                                              ; preds = %318
  %326 = load i64, i64* %4, align 8
  %327 = call i64 @PREV_INSN(i64 %326)
  store i64 %327, i64* %15, align 8
  br label %328

328:                                              ; preds = %372, %325
  %329 = load i64, i64* %15, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %375

331:                                              ; preds = %328
  %332 = load i64, i64* %15, align 8
  %333 = call i64 @single_set(i64 %332)
  store i64 %333, i64* %16, align 8
  %334 = load i64, i64* %16, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load i64, i64* %16, align 8
  %338 = call i64 @SET_DEST(i64 %337)
  %339 = load i64, i64* %8, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  br label %372

342:                                              ; preds = %336, %331
  %343 = load i64, i64* %15, align 8
  %344 = call i64 @LABEL_P(i64 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = load i64, i64* %15, align 8
  %348 = call i64 @JUMP_P(i64 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346, %342
  br label %375

351:                                              ; preds = %346
  %352 = load i64, i64* %15, align 8
  %353 = call i64 @NONJUMP_INSN_P(i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = load i64, i64* %15, align 8
  %357 = call i64 @CALL_P(i64 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %355, %351
  %360 = load i64, i64* %8, align 8
  %361 = load i64, i64* %15, align 8
  %362 = call i64 @PATTERN(i64 %361)
  %363 = call i64 @reg_mentioned_p(i64 %360, i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load i64, i64* %7, align 8
  %367 = load i64, i64* %4, align 8
  %368 = call i32 @delete_address_reloads(i64 %366, i64 %367)
  %369 = load i64, i64* %7, align 8
  %370 = call i32 @delete_insn(i64 %369)
  br label %431

371:                                              ; preds = %359, %355
  br label %372

372:                                              ; preds = %371, %341
  %373 = load i64, i64* %15, align 8
  %374 = call i64 @PREV_INSN(i64 %373)
  store i64 %374, i64* %15, align 8
  br label %328

375:                                              ; preds = %350, %328
  %376 = load i64, i64* %4, align 8
  %377 = call i64 @PREV_INSN(i64 %376)
  store i64 %377, i64* %15, align 8
  br label %378

378:                                              ; preds = %407, %375
  %379 = load i64, i64* %15, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %410

381:                                              ; preds = %378
  %382 = load i64, i64* %15, align 8
  %383 = call i64 @single_set(i64 %382)
  store i64 %383, i64* %17, align 8
  %384 = load i64, i64* %17, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %381
  %387 = load i64, i64* %17, align 8
  %388 = call i64 @SET_DEST(i64 %387)
  %389 = load i64, i64* %8, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %397

391:                                              ; preds = %386
  %392 = load i64, i64* %15, align 8
  %393 = load i64, i64* %4, align 8
  %394 = call i32 @delete_address_reloads(i64 %392, i64 %393)
  %395 = load i64, i64* %15, align 8
  %396 = call i32 @delete_insn(i64 %395)
  br label %397

397:                                              ; preds = %391, %386, %381
  %398 = load i64, i64* %15, align 8
  %399 = call i64 @LABEL_P(i64 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = load i64, i64* %15, align 8
  %403 = call i64 @JUMP_P(i64 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %401, %397
  br label %410

406:                                              ; preds = %401
  br label %407

407:                                              ; preds = %406
  %408 = load i64, i64* %15, align 8
  %409 = call i64 @PREV_INSN(i64 %408)
  store i64 %409, i64* %15, align 8
  br label %378

410:                                              ; preds = %405, %378
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %412 = load i32, i32* %5, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  %417 = call i64 @REGNO(i64 %416)
  %418 = load i64*, i64** @reg_renumber, align 8
  %419 = load i64, i64* %8, align 8
  %420 = call i64 @REGNO(i64 %419)
  %421 = getelementptr inbounds i64, i64* %418, i64 %420
  store i64 %417, i64* %421, align 8
  %422 = load i64, i64* %8, align 8
  %423 = call i64 @REGNO(i64 %422)
  %424 = call i32 @alter_reg(i64 %423, i32 -1)
  br label %431

425:                                              ; preds = %318, %313, %308, %303, %289
  %426 = load i64, i64* %7, align 8
  %427 = load i64, i64* %4, align 8
  %428 = call i32 @delete_address_reloads(i64 %426, i64 %427)
  %429 = load i64, i64* %7, align 8
  %430 = call i32 @delete_insn(i64 %429)
  br label %431

431:                                              ; preds = %31, %142, %196, %208, %257, %365, %425, %410
  ret void
}

declare dso_local i64 @INSN_DELETED_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @count_occurrences(i64, i64, i32) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @eliminate_regs(i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @NOTE_INSN_BASIC_BLOCK_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @reg_mentioned_p(i64, i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @REG_N_DEATHS(i64) #1

declare dso_local i32 @REG_N_SETS(i64) #1

declare dso_local i64 @REG_BASIC_BLOCK(i64) #1

declare dso_local i64 @find_regno_note(i64, i32, i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i32 @delete_address_reloads(i64, i64) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i32 @alter_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
