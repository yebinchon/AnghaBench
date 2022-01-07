; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i32, i64, i64 }

@DEFAULT_ABI = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ABI_V4 = common dso_local global i32 0, align 4
@CALL_LIBCALL = common dso_local global i32 0, align 4
@TARGET_NO_PROTOTYPE = common dso_local global i64 0, align 8
@TARGET_SPE_ABI = common dso_local global i64 0, align 8
@CALL_V4_SET_FP_ARGS = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@FP_ARG_MIN_REG = common dso_local global i64 0, align 8
@CALL_V4_CLEAR_FP_ARGS = common dso_local global i32 0, align 4
@rs6000_darwin64_abi = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@GP_ARG_NUM_REG = common dso_local global i32 0, align 4
@GP_ARG_MIN_REG = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@TARGET_ALTIVEC_ABI = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@TARGET_32BIT = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@TARGET_SPE = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DCmode = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@TARGET_IEEEQUAD = common dso_local global i32 0, align 4
@FP_ARG_V4_MAX_REG = common dso_local global i64 0, align 8
@GP_ARG_MAX_REG = common dso_local global i32 0, align 4
@FP_ARG_MAX_REG = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@TARGET_XL_COMPAT = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @function_arg(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %33 = load i64, i64* @DEFAULT_ABI, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @VOIDmode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ABI_V4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CALL_LIBCALL, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @TARGET_NO_PROTOTYPE, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64, %59, %49
  %68 = load i64, i64* @TARGET_SPE_ABI, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CALL_V4_SET_FP_ARGS, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @GEN_INT(i32 %75)
  store i64 %76, i64* %5, align 8
  br label %626

77:                                               ; preds = %67
  %78 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i64, i64* @TARGET_FPRS, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FP_ARG_MIN_REG, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @CALL_V4_SET_FP_ARGS, align 4
  br label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @CALL_V4_CLEAR_FP_ARGS, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = or i32 %86, %97
  %99 = call i64 @GEN_INT(i32 %98)
  store i64 %99, i64* %5, align 8
  br label %626

100:                                              ; preds = %80, %77
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %64, %54, %42, %38
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @GEN_INT(i32 %105)
  store i64 %106, i64* %5, align 8
  br label %626

107:                                              ; preds = %4
  %108 = load i64, i64* @rs6000_darwin64_abi, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @BLKmode, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @TREE_CODE(i64 %115)
  %117 = load i64, i64* @RECORD_TYPE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @rs6000_darwin64_record_arg(%struct.TYPE_7__* %120, i64 %121, i32 %122, i32 0)
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @NULL_RTX, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i64, i64* %11, align 8
  store i64 %128, i64* %5, align 8
  br label %626

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %114, %110, %107
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i64, i64* %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_7__* %131, i32 %132, i64 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %184

137:                                              ; preds = %130
  %138 = load i64, i64* @TARGET_64BIT, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %178

140:                                              ; preds = %137
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = and i32 %149, -2
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i64, i64* @NULL_RTX, align 8
  store i64 %155, i64* %13, align 8
  br label %162

156:                                              ; preds = %145
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i64 @gen_rtx_REG(i32 %157, i32 %160)
  store i64 %161, i64* %13, align 8
  br label %162

162:                                              ; preds = %156, %154
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @VOIDmode, align 4
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* @const0_rtx, align 8
  %167 = call i64 @gen_rtx_EXPR_LIST(i32 %164, i64 %165, i64 %166)
  %168 = load i32, i32* @VOIDmode, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @gen_rtx_REG(i32 %169, i32 %172)
  %174 = load i64, i64* @const0_rtx, align 8
  %175 = call i64 @gen_rtx_EXPR_LIST(i32 %168, i64 %173, i64 %174)
  %176 = call i32 @gen_rtvec(i32 2, i64 %167, i64 %175)
  %177 = call i64 @gen_rtx_PARALLEL(i32 %163, i32 %176)
  store i64 %177, i64* %5, align 8
  br label %626

178:                                              ; preds = %140, %137
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @gen_rtx_REG(i32 %179, i32 %182)
  store i64 %183, i64* %5, align 8
  br label %626

184:                                              ; preds = %130
  %185 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %267

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = call i64 @ALTIVEC_VECTOR_MODE(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %8, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %267

194:                                              ; preds = %191
  %195 = load i64, i64* %8, align 8
  %196 = call i64 @TREE_CODE(i64 %195)
  %197 = load i64, i64* @VECTOR_TYPE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %267

199:                                              ; preds = %194
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @int_size_in_bytes(i64 %200)
  %202 = icmp eq i32 %201, 16
  br i1 %202, label %203, label %267

203:                                              ; preds = %199, %187
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @ABI_V4, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %203
  %211 = load i64, i64* @NULL_RTX, align 8
  store i64 %211, i64* %5, align 8
  br label %626

212:                                              ; preds = %206
  %213 = load i64, i64* @TARGET_32BIT, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 2, %218
  %220 = and i32 %219, 3
  store i32 %220, i32* %14, align 4
  br label %226

221:                                              ; preds = %212
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %221, %215
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %229, %230
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = load i64, i64* @NULL_RTX, align 8
  store i64 %236, i64* %5, align 8
  br label %626

237:                                              ; preds = %226
  %238 = load i64, i64* @TARGET_32BIT, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load i64, i64* @TARGET_POWERPC64, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load i32, i32* %7, align 4
  %245 = load i64, i64* %8, align 8
  %246 = load i32, i32* %15, align 4
  %247 = call i64 @rs6000_mixed_function_arg(i32 %244, i64 %245, i32 %246)
  store i64 %247, i64* %5, align 8
  br label %626

248:                                              ; preds = %240, %237
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %17, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i64, i64* %8, align 8
  %252 = call i8* @rs6000_arg_size(i32 %250, i64 %251)
  %253 = ptrtoint i8* %252 to i32
  store i32 %253, i32* %16, align 4
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %254, %255
  %257 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %248
  %260 = load i32, i32* @DImode, align 4
  store i32 %260, i32* %17, align 4
  br label %261

261:                                              ; preds = %259, %248
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %264 = load i32, i32* %15, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i64 @gen_rtx_REG(i32 %262, i32 %265)
  store i64 %266, i64* %5, align 8
  br label %626

267:                                              ; preds = %199, %194, %191, %184
  %268 = load i64, i64* @TARGET_SPE_ABI, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %293

270:                                              ; preds = %267
  %271 = load i64, i64* @TARGET_SPE, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = load i32, i32* %7, align 4
  %275 = call i64 @SPE_VECTOR_MODE(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %288, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %277
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @DFmode, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @DCmode, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %284, %280, %273
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i64, i64* %8, align 8
  %292 = call i64 @rs6000_spe_function_arg(%struct.TYPE_7__* %289, i32 %290, i64 %291)
  store i64 %292, i64* %5, align 8
  br label %626

293:                                              ; preds = %284, %277, %270, %267
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @ABI_V4, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %382

297:                                              ; preds = %293
  %298 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %340

300:                                              ; preds = %297
  %301 = load i64, i64* @TARGET_FPRS, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %340

303:                                              ; preds = %300
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* @SFmode, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %318, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @DFmode, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %318, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @TFmode, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %340

315:                                              ; preds = %311
  %316 = load i32, i32* @TARGET_IEEEQUAD, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %340, label %318

318:                                              ; preds = %315, %307, %303
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @TFmode, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 1, i32 0
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %321, %327
  %329 = load i64, i64* @FP_ARG_V4_MAX_REG, align 8
  %330 = icmp sle i64 %328, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %318
  %332 = load i32, i32* %7, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = call i64 @gen_rtx_REG(i32 %332, i32 %336)
  store i64 %337, i64* %5, align 8
  br label %626

338:                                              ; preds = %318
  %339 = load i64, i64* @NULL_RTX, align 8
  store i64 %339, i64* %5, align 8
  br label %626

340:                                              ; preds = %315, %311, %300, %297
  %341 = load i32, i32* %7, align 4
  %342 = load i64, i64* %8, align 8
  %343 = call i8* @rs6000_arg_size(i32 %341, i64 %342)
  %344 = ptrtoint i8* %343 to i32
  store i32 %344, i32* %18, align 4
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  store i32 %347, i32* %19, align 4
  %348 = load i32, i32* %18, align 4
  %349 = icmp eq i32 %348, 2
  br i1 %349, label %350, label %356

350:                                              ; preds = %340
  %351 = load i32, i32* %19, align 4
  %352 = sub nsw i32 1, %351
  %353 = and i32 %352, 1
  %354 = load i32, i32* %19, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %19, align 4
  br label %356

356:                                              ; preds = %350, %340
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %18, align 4
  %359 = add nsw i32 %357, %358
  %360 = sub nsw i32 %359, 1
  %361 = load i32, i32* @GP_ARG_MAX_REG, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %356
  %364 = load i64, i64* @NULL_RTX, align 8
  store i64 %364, i64* %5, align 8
  br label %626

365:                                              ; preds = %356
  %366 = load i64, i64* @TARGET_32BIT, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %365
  %369 = load i64, i64* @TARGET_POWERPC64, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %368
  %372 = load i32, i32* %7, align 4
  %373 = load i64, i64* %8, align 8
  %374 = load i32, i32* %19, align 4
  %375 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i64 @rs6000_mixed_function_arg(i32 %372, i64 %373, i32 %376)
  store i64 %377, i64* %5, align 8
  br label %626

378:                                              ; preds = %368, %365
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* %19, align 4
  %381 = call i64 @gen_rtx_REG(i32 %379, i32 %380)
  store i64 %381, i64* %5, align 8
  br label %626

382:                                              ; preds = %293
  %383 = load i32, i32* %7, align 4
  %384 = load i64, i64* %8, align 8
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @rs6000_parm_start(i32 %383, i64 %384, i32 %387)
  store i32 %388, i32* %20, align 4
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %390 = load i32, i32* %7, align 4
  %391 = load i64, i64* %8, align 8
  %392 = call i64 @USE_FP_FOR_ARG_P(%struct.TYPE_7__* %389, i32 %390, i64 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %597

394:                                              ; preds = %382
  %395 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %396 = add nsw i32 %395, 1
  %397 = zext i32 %396 to i64
  %398 = call i8* @llvm.stacksave()
  store i8* %398, i8** %21, align 8
  %399 = alloca i64, i64 %397, align 16
  store i64 %397, i64* %22, align 8
  %400 = load i32, i32* %7, align 4
  store i32 %400, i32* %26, align 4
  %401 = load i32, i32* %7, align 4
  %402 = call i32 @GET_MODE_SIZE(i32 %401)
  %403 = add nsw i32 %402, 7
  %404 = ashr i32 %403, 3
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %27, align 8
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* %27, align 8
  %410 = add i64 %408, %409
  %411 = load i64, i64* @FP_ARG_MAX_REG, align 8
  %412 = add i64 %411, 1
  %413 = icmp ugt i64 %410, %412
  br i1 %413, label %414, label %429

414:                                              ; preds = %394
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @FP_ARG_MAX_REG, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = load i32, i32* %26, align 4
  %422 = load i32, i32* @TFmode, align 4
  %423 = icmp eq i32 %421, %422
  br label %424

424:                                              ; preds = %420, %414
  %425 = phi i1 [ false, %414 ], [ %423, %420 ]
  %426 = zext i1 %425 to i32
  %427 = call i32 @gcc_assert(i32 %426)
  %428 = load i32, i32* @DFmode, align 4
  store i32 %428, i32* %26, align 4
  br label %429

429:                                              ; preds = %424, %394
  %430 = load i64, i64* %8, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %452

432:                                              ; preds = %429
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = icmp sle i64 %435, 0
  br i1 %436, label %450, label %437

437:                                              ; preds = %432
  %438 = load i64, i64* @DEFAULT_ABI, align 8
  %439 = load i64, i64* @ABI_AIX, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %448

441:                                              ; preds = %437
  %442 = load i64, i64* @TARGET_XL_COMPAT, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %441
  %445 = load i32, i32* %20, align 4
  %446 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %447 = icmp sge i32 %445, %446
  br label %448

448:                                              ; preds = %444, %441, %437
  %449 = phi i1 [ false, %441 ], [ false, %437 ], [ %447, %444 ]
  br label %450

450:                                              ; preds = %448, %432
  %451 = phi i1 [ true, %432 ], [ %449, %448 ]
  br label %452

452:                                              ; preds = %450, %429
  %453 = phi i1 [ false, %429 ], [ %451, %450 ]
  %454 = zext i1 %453 to i32
  store i32 %454, i32* %25, align 4
  %455 = load i32, i32* %25, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %468, label %457

457:                                              ; preds = %452
  %458 = load i32, i32* %7, align 4
  %459 = load i32, i32* %26, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %468

461:                                              ; preds = %457
  %462 = load i32, i32* %26, align 4
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 2
  %465 = load i64, i64* %464, align 8
  %466 = trunc i64 %465 to i32
  %467 = call i64 @gen_rtx_REG(i32 %462, i32 %466)
  store i64 %467, i64* %5, align 8
  store i32 1, i32* %28, align 4
  br label %595

468:                                              ; preds = %457, %452
  store i32 0, i32* %24, align 4
  %469 = load i32, i32* %25, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %576

471:                                              ; preds = %468
  %472 = load i32, i32* %20, align 4
  %473 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %566

475:                                              ; preds = %471
  %476 = load i32, i32* %7, align 4
  %477 = load i64, i64* %8, align 8
  %478 = call i8* @rs6000_arg_size(i32 %476, i64 %477)
  %479 = ptrtoint i8* %478 to i64
  store i64 %479, i64* %29, align 8
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = load i64, i64* %29, align 8
  %483 = add i64 %481, %482
  %484 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %485 = sext i32 %484 to i64
  %486 = icmp ugt i64 %483, %485
  br i1 %486, label %493, label %487

487:                                              ; preds = %475
  %488 = load i64, i64* @TARGET_32BIT, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %551

490:                                              ; preds = %487
  %491 = load i64, i64* @TARGET_POWERPC64, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %551

493:                                              ; preds = %490, %475
  %494 = load i64, i64* @TARGET_32BIT, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %493
  %497 = load i32, i32* @SImode, align 4
  br label %500

498:                                              ; preds = %493
  %499 = load i32, i32* @DImode, align 4
  br label %500

500:                                              ; preds = %498, %496
  %501 = phi i32 [ %497, %496 ], [ %499, %498 ]
  store i32 %501, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %502 = load i32, i32* %20, align 4
  %503 = sext i32 %502 to i64
  %504 = load i64, i64* %29, align 8
  %505 = add i64 %503, %504
  %506 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %507 = sext i32 %506 to i64
  %508 = icmp ugt i64 %505, %507
  br i1 %508, label %509, label %518

509:                                              ; preds = %500
  %510 = load i32, i32* @VOIDmode, align 4
  %511 = load i64, i64* @NULL_RTX, align 8
  %512 = load i64, i64* @const0_rtx, align 8
  %513 = call i64 @gen_rtx_EXPR_LIST(i32 %510, i64 %511, i64 %512)
  %514 = load i32, i32* %24, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %24, align 4
  %516 = sext i32 %514 to i64
  %517 = getelementptr inbounds i64, i64* %399, i64 %516
  store i64 %513, i64* %517, align 8
  br label %518

518:                                              ; preds = %509, %500
  br label %519

519:                                              ; preds = %548, %518
  %520 = load i32, i32* %30, align 4
  %521 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %522 = load i32, i32* %20, align 4
  %523 = add nsw i32 %521, %522
  %524 = call i64 @gen_rtx_REG(i32 %520, i32 %523)
  store i64 %524, i64* %23, align 8
  %525 = load i32, i32* %32, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %32, align 4
  %527 = load i32, i32* %30, align 4
  %528 = call i32 @GET_MODE_SIZE(i32 %527)
  %529 = mul nsw i32 %525, %528
  %530 = call i64 @GEN_INT(i32 %529)
  store i64 %530, i64* %31, align 8
  %531 = load i32, i32* @VOIDmode, align 4
  %532 = load i64, i64* %23, align 8
  %533 = load i64, i64* %31, align 8
  %534 = call i64 @gen_rtx_EXPR_LIST(i32 %531, i64 %532, i64 %533)
  %535 = load i32, i32* %24, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %24, align 4
  %537 = sext i32 %535 to i64
  %538 = getelementptr inbounds i64, i64* %399, i64 %537
  store i64 %534, i64* %538, align 8
  br label %539

539:                                              ; preds = %519
  %540 = load i32, i32* %20, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %20, align 4
  %542 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %539
  %545 = load i64, i64* %29, align 8
  %546 = add i64 %545, -1
  store i64 %546, i64* %29, align 8
  %547 = icmp ne i64 %546, 0
  br label %548

548:                                              ; preds = %544, %539
  %549 = phi i1 [ false, %539 ], [ %547, %544 ]
  br i1 %549, label %519, label %550

550:                                              ; preds = %548
  br label %565

551:                                              ; preds = %490, %487
  %552 = load i32, i32* %7, align 4
  %553 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %554 = load i32, i32* %20, align 4
  %555 = add nsw i32 %553, %554
  %556 = call i64 @gen_rtx_REG(i32 %552, i32 %555)
  store i64 %556, i64* %23, align 8
  %557 = load i32, i32* @VOIDmode, align 4
  %558 = load i64, i64* %23, align 8
  %559 = load i64, i64* @const0_rtx, align 8
  %560 = call i64 @gen_rtx_EXPR_LIST(i32 %557, i64 %558, i64 %559)
  %561 = load i32, i32* %24, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %24, align 4
  %563 = sext i32 %561 to i64
  %564 = getelementptr inbounds i64, i64* %399, i64 %563
  store i64 %560, i64* %564, align 8
  br label %565

565:                                              ; preds = %551, %550
  br label %575

566:                                              ; preds = %471
  %567 = load i32, i32* @VOIDmode, align 4
  %568 = load i64, i64* @NULL_RTX, align 8
  %569 = load i64, i64* @const0_rtx, align 8
  %570 = call i64 @gen_rtx_EXPR_LIST(i32 %567, i64 %568, i64 %569)
  %571 = load i32, i32* %24, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %24, align 4
  %573 = sext i32 %571 to i64
  %574 = getelementptr inbounds i64, i64* %399, i64 %573
  store i64 %570, i64* %574, align 8
  br label %575

575:                                              ; preds = %566, %565
  br label %576

576:                                              ; preds = %575, %468
  %577 = load i32, i32* %26, align 4
  %578 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %579 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %578, i32 0, i32 2
  %580 = load i64, i64* %579, align 8
  %581 = trunc i64 %580 to i32
  %582 = call i64 @gen_rtx_REG(i32 %577, i32 %581)
  store i64 %582, i64* %23, align 8
  %583 = load i32, i32* @VOIDmode, align 4
  %584 = load i64, i64* %23, align 8
  %585 = load i64, i64* @const0_rtx, align 8
  %586 = call i64 @gen_rtx_EXPR_LIST(i32 %583, i64 %584, i64 %585)
  %587 = load i32, i32* %24, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %24, align 4
  %589 = sext i32 %587 to i64
  %590 = getelementptr inbounds i64, i64* %399, i64 %589
  store i64 %586, i64* %590, align 8
  %591 = load i32, i32* %7, align 4
  %592 = load i32, i32* %24, align 4
  %593 = call i32 @gen_rtvec_v(i32 %592, i64* %399)
  %594 = call i64 @gen_rtx_PARALLEL(i32 %591, i32 %593)
  store i64 %594, i64* %5, align 8
  store i32 1, i32* %28, align 4
  br label %595

595:                                              ; preds = %576, %461
  %596 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %596)
  br label %626

597:                                              ; preds = %382
  %598 = load i32, i32* %20, align 4
  %599 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %600 = icmp slt i32 %598, %599
  br i1 %600, label %601, label %624

601:                                              ; preds = %597
  %602 = load i64, i64* @TARGET_32BIT, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %612

604:                                              ; preds = %601
  %605 = load i64, i64* @TARGET_POWERPC64, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %612

607:                                              ; preds = %604
  %608 = load i32, i32* %7, align 4
  %609 = load i64, i64* %8, align 8
  %610 = load i32, i32* %20, align 4
  %611 = call i64 @rs6000_mixed_function_arg(i32 %608, i64 %609, i32 %610)
  store i64 %611, i64* %5, align 8
  br label %626

612:                                              ; preds = %604, %601
  %613 = load i32, i32* %7, align 4
  %614 = load i32, i32* @BLKmode, align 4
  %615 = icmp eq i32 %613, %614
  br i1 %615, label %616, label %618

616:                                              ; preds = %612
  %617 = load i32, i32* @Pmode, align 4
  store i32 %617, i32* %7, align 4
  br label %618

618:                                              ; preds = %616, %612
  %619 = load i32, i32* %7, align 4
  %620 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %621 = load i32, i32* %20, align 4
  %622 = add nsw i32 %620, %621
  %623 = call i64 @gen_rtx_REG(i32 %619, i32 %622)
  store i64 %623, i64* %5, align 8
  br label %626

624:                                              ; preds = %597
  %625 = load i64, i64* @NULL_RTX, align 8
  store i64 %625, i64* %5, align 8
  br label %626

626:                                              ; preds = %624, %618, %607, %595, %378, %371, %363, %338, %331, %288, %261, %243, %235, %210, %178, %162, %127, %102, %96, %70
  %627 = load i64, i64* %5, align 8
  ret i64 %627
}

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @rs6000_darwin64_record_arg(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_EXPR_LIST(i32, i64, i64) #1

declare dso_local i64 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i64 @rs6000_mixed_function_arg(i32, i64, i32) #1

declare dso_local i8* @rs6000_arg_size(i32, i64) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

declare dso_local i64 @rs6000_spe_function_arg(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @rs6000_parm_start(i32, i64, i32) #1

declare dso_local i64 @USE_FP_FOR_ARG_P(%struct.TYPE_7__*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtvec_v(i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
