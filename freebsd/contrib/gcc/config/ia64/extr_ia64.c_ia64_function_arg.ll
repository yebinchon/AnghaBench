; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@GR_ARG_FIRST = common dso_local global i32 0, align 4
@AR_ARG_FIRST = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@MAX_ARGUMENT_SLOTS = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@FR_ARG_FIRST = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@TCmode = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_function_arg(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @GR_ARG_FIRST, align 4
  br label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @AR_ARG_FIRST, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ia64_function_arg_words(i64 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ia64_function_arg_offset(%struct.TYPE_4__* %41, i64 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %404

54:                                               ; preds = %36
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @hfa_element_mode(i64 %58, i32 0)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @VOIDmode, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %237

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %237

72:                                               ; preds = %69, %64
  store i32 0, i32* %17, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i8* @GET_MODE_SIZE(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @BLKmode, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %72
  %88 = load i64, i64* %9, align 8
  %89 = call i8* @int_size_in_bytes(i64 %88)
  br label %93

90:                                               ; preds = %72
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @GET_MODE_SIZE(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i8* [ %89, %87 ], [ %92, %90 ]
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @UNITS_PER_WORD, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %136, %93
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %110 = load i32, i32* @UNITS_PER_WORD, align 4
  %111 = mul nsw i32 %109, %110
  %112 = icmp slt i32 %108, %111
  br label %113

113:                                              ; preds = %107, %103, %99
  %114 = phi i1 [ false, %103 ], [ false, %99 ], [ %112, %107 ]
  br i1 %114, label %115, label %139

115:                                              ; preds = %113
  %116 = load i32, i32* @VOIDmode, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @FR_ARG_FIRST, align 4
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @gen_rtx_REG(i32 %117, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @GEN_INT(i32 %122)
  %124 = call i32 @gen_rtx_EXPR_LIST(i32 %116, i32 %121, i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %115
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %99

139:                                              ; preds = %113
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 0, i32* %14, align 4
  br label %156

145:                                              ; preds = %139
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @UNITS_PER_WORD, align 4
  %152 = sdiv i32 %150, %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %19, align 4
  br label %155

155:                                              ; preds = %149, %145
  br label %156

156:                                              ; preds = %155, %144
  br label %157

157:                                              ; preds = %228, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %164 = icmp slt i32 %162, %163
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i1 [ false, %157 ], [ %164, %161 ]
  br i1 %166, label %167, label %231

167:                                              ; preds = %165
  %168 = load i32, i32* @DImode, align 4
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %14, align 4
  %170 = and i32 %169, 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @SImode, align 4
  store i32 %173, i32* %23, align 4
  br label %182

174:                                              ; preds = %167
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %175, %176
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @SImode, align 4
  store i32 %180, i32* %23, align 4
  br label %181

181:                                              ; preds = %179, %174
  br label %182

182:                                              ; preds = %181, %172
  %183 = load i32, i32* @VOIDmode, align 4
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @gen_rtx_REG(i32 %184, i32 %187)
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @GEN_INT(i32 %189)
  %191 = call i32 @gen_rtx_EXPR_LIST(i32 %183, i32 %188, i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* %23, align 4
  %196 = call i8* @GET_MODE_SIZE(i32 %195)
  %197 = ptrtoint i8* %196 to i32
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* @UNITS_PER_WORD, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %182
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* @UNITS_PER_WORD, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @UNITS_PER_WORD, align 4
  %211 = srem i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208, %182
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %19, align 4
  br label %227

216:                                              ; preds = %208, %204
  %217 = load i32, i32* %24, align 4
  %218 = load i32, i32* @UNITS_PER_WORD, align 4
  %219 = icmp ugt i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* @UNITS_PER_WORD, align 4
  %223 = udiv i32 %221, %222
  %224 = load i32, i32* %19, align 4
  %225 = add i32 %224, %223
  store i32 %225, i32* %19, align 4
  br label %226

226:                                              ; preds = %220, %216
  br label %227

227:                                              ; preds = %226, %213
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %17, align 4
  br label %157

231:                                              ; preds = %165
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %17, align 4
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %235 = call i32 @gen_rtvec_v(i32 %233, i32* %234)
  %236 = call i32 @gen_rtx_PARALLEL(i32 %232, i32 %235)
  store i32 %236, i32* %6, align 4
  br label %404

237:                                              ; preds = %69, %60
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @TFmode, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %255, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @TCmode, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %255, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @FLOAT_MODE_P(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @MAX_ARGUMENT_SLOTS, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %315

255:                                              ; preds = %249, %245, %241, %237
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @BLKmode, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i64, i64* %9, align 8
  %261 = call i8* @int_size_in_bytes(i64 %260)
  br label %265

262:                                              ; preds = %255
  %263 = load i32, i32* %8, align 4
  %264 = call i8* @GET_MODE_SIZE(i32 %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = phi i8* [ %261, %259 ], [ %264, %262 ]
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* %25, align 4
  %268 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %305

270:                                              ; preds = %265
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @BLKmode, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = load i64, i64* %9, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %274
  %278 = load i64, i64* %9, align 8
  %279 = call i64 @AGGREGATE_TYPE_P(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %305

281:                                              ; preds = %277, %270
  %282 = load i32, i32* %25, align 4
  %283 = load i32, i32* @UNITS_PER_WORD, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %305

285:                                              ; preds = %281
  %286 = load i32, i32* %25, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %285
  %289 = load i32, i32* @VOIDmode, align 4
  %290 = load i32, i32* @DImode, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %291, %294
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %295, %296
  %298 = call i32 @gen_rtx_REG(i32 %290, i32 %297)
  %299 = load i32, i32* @const0_rtx, align 4
  %300 = call i32 @gen_rtx_EXPR_LIST(i32 %289, i32 %298, i32 %299)
  store i32 %300, i32* %26, align 4
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %26, align 4
  %303 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %302)
  %304 = call i32 @gen_rtx_PARALLEL(i32 %301, i32 %303)
  store i32 %304, i32* %6, align 4
  br label %404

305:                                              ; preds = %285, %281, %277, %274, %265
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %307, %310
  %312 = load i32, i32* %14, align 4
  %313 = add nsw i32 %311, %312
  %314 = call i32 @gen_rtx_REG(i32 %306, i32 %313)
  store i32 %314, i32* %6, align 4
  br label %404

315:                                              ; preds = %249
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %364

320:                                              ; preds = %315
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @FR_ARG_FIRST, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %325, %328
  %330 = call i32 @gen_rtx_REG(i32 %324, i32 %329)
  store i32 %330, i32* %6, align 4
  br label %404

331:                                              ; preds = %320
  %332 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %354

334:                                              ; preds = %331
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* @SFmode, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %354

338:                                              ; preds = %334
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* @VOIDmode, align 4
  %341 = load i32, i32* @DImode, align 4
  %342 = load i32, i32* %12, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %342, %345
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %346, %347
  %349 = call i32 @gen_rtx_REG(i32 %341, i32 %348)
  %350 = load i32, i32* @const0_rtx, align 4
  %351 = call i32 @gen_rtx_EXPR_LIST(i32 %340, i32 %349, i32 %350)
  %352 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %351)
  %353 = call i32 @gen_rtx_PARALLEL(i32 %339, i32 %352)
  store i32 %353, i32* %6, align 4
  br label %404

354:                                              ; preds = %334, %331
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %12, align 4
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %356, %359
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %360, %361
  %363 = call i32 @gen_rtx_REG(i32 %355, i32 %362)
  store i32 %363, i32* %6, align 4
  br label %404

364:                                              ; preds = %315
  %365 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = load i32, i32* %8, align 4
  %369 = load i32, i32* @SFmode, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = load i32, i32* @DImode, align 4
  br label %375

373:                                              ; preds = %367, %364
  %374 = load i32, i32* %8, align 4
  br label %375

375:                                              ; preds = %373, %371
  %376 = phi i32 [ %372, %371 ], [ %374, %373 ]
  store i32 %376, i32* %27, align 4
  %377 = load i32, i32* @VOIDmode, align 4
  %378 = load i32, i32* %8, align 4
  %379 = load i32, i32* @FR_ARG_FIRST, align 4
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %379, %382
  %384 = call i32 @gen_rtx_REG(i32 %378, i32 %383)
  %385 = load i32, i32* @const0_rtx, align 4
  %386 = call i32 @gen_rtx_EXPR_LIST(i32 %377, i32 %384, i32 %385)
  store i32 %386, i32* %28, align 4
  %387 = load i32, i32* @VOIDmode, align 4
  %388 = load i32, i32* %27, align 4
  %389 = load i32, i32* %12, align 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %389, %392
  %394 = load i32, i32* %14, align 4
  %395 = add nsw i32 %393, %394
  %396 = call i32 @gen_rtx_REG(i32 %388, i32 %395)
  %397 = load i32, i32* @const0_rtx, align 4
  %398 = call i32 @gen_rtx_EXPR_LIST(i32 %387, i32 %396, i32 %397)
  store i32 %398, i32* %29, align 4
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* %28, align 4
  %401 = load i32, i32* %29, align 4
  %402 = call i32 (i32, i32, ...) @gen_rtvec(i32 2, i32 %400, i32 %401)
  %403 = call i32 @gen_rtx_PARALLEL(i32 %399, i32 %402)
  store i32 %403, i32* %6, align 4
  br label %404

404:                                              ; preds = %375, %354, %338, %323, %305, %288, %231, %53
  %405 = load i32, i32* %6, align 4
  ret i32 %405
}

declare dso_local i32 @ia64_function_arg_words(i64, i32) #1

declare dso_local i32 @ia64_function_arg_offset(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @hfa_element_mode(i64, i32) #1

declare dso_local i8* @GET_MODE_SIZE(i32) #1

declare dso_local i8* @int_size_in_bytes(i64) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec_v(i32, i32*) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i32 @gen_rtvec(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
