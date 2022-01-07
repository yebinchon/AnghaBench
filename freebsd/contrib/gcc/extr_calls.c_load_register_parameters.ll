; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_load_register_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_load_register_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { i64, i64, i32, i64, i32, i64*, i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ECF_SIBCALL = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@downward = common dso_local global i64 0, align 8
@upward = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_data*, i32, i64*, i32, i32, i32*)* @load_register_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_register_parameters(%struct.arg_data* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.arg_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.arg_data* %0, %struct.arg_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %331, %6
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %334

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ECF_SIBCALL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %36, i64 %38
  %40 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = phi i64 [ %41, %35 ], [ %48, %42 ]
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %330

53:                                               ; preds = %49
  %54 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %54, i64 %56
  %58 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %60 = call i64 (...) @get_last_insn()
  store i64 %60, i64* %19, align 8
  store i32 -1, i32* %17, align 4
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @GET_CODE(i64 %61)
  %63 = load i64, i64* @PARALLEL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %115

66:                                               ; preds = %53
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @UNITS_PER_WORD, align 4
  %72 = srem i32 %70, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @gcc_assert(i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @UNITS_PER_WORD, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %17, align 4
  br label %114

79:                                               ; preds = %66
  %80 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @TREE_TYPE(i32 %85)
  %87 = call i64 @TYPE_MODE(i32 %86)
  %88 = load i64, i64* @BLKmode, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %79
  %91 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %91, i64 %93
  %95 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @TREE_TYPE(i32 %96)
  %98 = call i32 @int_size_in_bytes(i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @UNITS_PER_WORD, align 4
  %101 = sub nsw i32 %100, 1
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* @UNITS_PER_WORD, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %17, align 4
  br label %113

105:                                              ; preds = %79
  %106 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %106, i64 %108
  %110 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @GET_MODE_SIZE(i32 %111)
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %105, %90
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %65
  %116 = load i64, i64* %15, align 8
  %117 = call i64 @GET_CODE(i64 %116)
  %118 = load i64, i64* @PARALLEL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i64, i64* %15, align 8
  %122 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %122, i64 %124
  %126 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @emit_group_move(i64 %121, i32 %127)
  br label %289

129:                                              ; preds = %115
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %134, i64 %136
  %138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @emit_move_insn(i64 %133, i64 %139)
  br label %288

141:                                              ; preds = %129
  %142 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %142, i64 %144
  %146 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %182

149:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %178, %149
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %152, i64 %154
  %156 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %151, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %150
  %160 = load i32, i32* @word_mode, align 4
  %161 = load i64, i64* %15, align 8
  %162 = call i64 @REGNO(i64 %161)
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = call i64 @gen_rtx_REG(i32 %160, i64 %165)
  %167 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %167, i64 %169
  %171 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %170, i32 0, i32 5
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @emit_move_insn(i64 %166, i64 %176)
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %150

181:                                              ; preds = %150
  br label %287

182:                                              ; preds = %141
  %183 = load i32, i32* %16, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %182
  %186 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %186, i64 %188
  %190 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %286

193:                                              ; preds = %185, %182
  %194 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %194, i64 %196
  %198 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @validize_mem(i64 %199)
  store i64 %200, i64* %20, align 8
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %193
  %204 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %204, i64 %206
  %208 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @XEXP(i64 %209, i32 0)
  %211 = load i32, i32* %18, align 4
  %212 = call i64 @mem_overlaps_already_clobbered_arg_p(i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = load i32*, i32** %12, align 8
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %214, %203, %193
  %217 = load i32, i32* %17, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %273

219:                                              ; preds = %216
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* @UNITS_PER_WORD, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %273

223:                                              ; preds = %219
  %224 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %273

226:                                              ; preds = %223
  %227 = load i64, i64* %20, align 8
  %228 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %228, i64 %230
  %232 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @operand_subword_force(i64 %227, i32 0, i32 %233)
  store i64 %234, i64* %21, align 8
  %235 = load i32, i32* @word_mode, align 4
  %236 = load i64, i64* %15, align 8
  %237 = call i64 @REGNO(i64 %236)
  %238 = call i64 @gen_rtx_REG(i32 %235, i64 %237)
  store i64 %238, i64* %22, align 8
  %239 = load i32, i32* @word_mode, align 4
  %240 = call i64 @gen_reg_rtx(i32 %239)
  store i64 %240, i64* %23, align 8
  %241 = load i32, i32* @UNITS_PER_WORD, align 4
  %242 = load i32, i32* %18, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load i32, i32* @BITS_PER_UNIT, align 4
  %245 = mul nsw i32 %243, %244
  store i32 %245, i32* %24, align 4
  %246 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %226
  %249 = load i32, i32* @RSHIFT_EXPR, align 4
  br label %252

250:                                              ; preds = %226
  %251 = load i32, i32* @LSHIFT_EXPR, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  store i32 %253, i32* %25, align 4
  %254 = load i64, i64* %23, align 8
  %255 = load i64, i64* %21, align 8
  %256 = call i32 @emit_move_insn(i64 %254, i64 %255)
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* @word_mode, align 4
  %259 = load i64, i64* %23, align 8
  %260 = load i32, i32* @NULL_TREE, align 4
  %261 = load i32, i32* %24, align 4
  %262 = call i32 @build_int_cst(i32 %260, i32 %261)
  %263 = load i64, i64* %22, align 8
  %264 = call i64 @expand_shift(i32 %257, i32 %258, i64 %259, i32 %262, i64 %263, i32 1)
  store i64 %264, i64* %23, align 8
  %265 = load i64, i64* %23, align 8
  %266 = load i64, i64* %22, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %252
  %269 = load i64, i64* %22, align 8
  %270 = load i64, i64* %23, align 8
  %271 = call i32 @emit_move_insn(i64 %269, i64 %270)
  br label %272

272:                                              ; preds = %268, %252
  br label %285

273:                                              ; preds = %223, %219, %216
  %274 = load i64, i64* %15, align 8
  %275 = call i64 @REGNO(i64 %274)
  %276 = load i64, i64* %20, align 8
  %277 = load i32, i32* %17, align 4
  %278 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %278, i64 %280
  %282 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @move_block_to_reg(i64 %275, i64 %276, i32 %277, i32 %283)
  br label %285

285:                                              ; preds = %273, %272
  br label %286

286:                                              ; preds = %285, %185
  br label %287

287:                                              ; preds = %286, %181
  br label %288

288:                                              ; preds = %287, %132
  br label %289

289:                                              ; preds = %288, %120
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %289
  %293 = load i64, i64* %19, align 8
  %294 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %294, i64 %296
  %298 = call i64 @check_sibcall_argument_overlap(i64 %293, %struct.arg_data* %297, i32 0)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32*, i32** %12, align 8
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %300, %292, %289
  %303 = load i64, i64* %15, align 8
  %304 = call i64 @GET_CODE(i64 %303)
  %305 = load i64, i64* @PARALLEL, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i64*, i64** %9, align 8
  %309 = load i64, i64* %15, align 8
  %310 = call i32 @use_group_regs(i64* %308, i64 %309)
  br label %329

311:                                              ; preds = %302
  %312 = load i32, i32* %17, align 4
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load i64*, i64** %9, align 8
  %316 = load i64, i64* %15, align 8
  %317 = call i32 @use_reg(i64* %315, i64 %316)
  br label %328

318:                                              ; preds = %311
  %319 = load i32, i32* %17, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %318
  %322 = load i64*, i64** %9, align 8
  %323 = load i64, i64* %15, align 8
  %324 = call i64 @REGNO(i64 %323)
  %325 = load i32, i32* %17, align 4
  %326 = call i32 @use_regs(i64* %322, i64 %324, i32 %325)
  br label %327

327:                                              ; preds = %321, %318
  br label %328

328:                                              ; preds = %327, %314
  br label %329

329:                                              ; preds = %328, %307
  br label %330

330:                                              ; preds = %329, %49
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  br label %26

334:                                              ; preds = %26
  ret void
}

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @emit_group_move(i64, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @validize_mem(i64) #1

declare dso_local i64 @mem_overlaps_already_clobbered_arg_p(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @move_block_to_reg(i64, i64, i32, i32) #1

declare dso_local i64 @check_sibcall_argument_overlap(i64, %struct.arg_data*, i32) #1

declare dso_local i32 @use_group_regs(i64*, i64) #1

declare dso_local i32 @use_reg(i64*, i64) #1

declare dso_local i32 @use_regs(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
