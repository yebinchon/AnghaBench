; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_truthop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_truthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (...)* }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@BIT_AND_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@tcc_comparison = common dso_local global i64 0, align 8
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@LOGICAL_OP_NON_SHORT_CIRCUIT = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@word_mode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_NOT_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"comparison is always %d\00", align 1
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%<or%> of unmatched not-equal tests is always 1\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%<and%> of mutually exclusive equal-tests is always 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_truthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_truthop(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
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
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i32, align 4
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %63, align 8
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %64, align 8
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %65, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @TREE_SIDE_EFFECTS(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %4
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @TREE_SIDE_EFFECTS(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %4
  store i64 0, i64* %5, align 8
  br label %951

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @TREE_CODE(i64 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @BIT_AND_EXPR, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @TREE_OPERAND(i64 %90, i32 1)
  %92 = call i64 @integer_onep(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @NE_EXPR, align 4
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @TREE_TYPE(i64 %98)
  %100 = call i64 @build_int_cst(i64 %99, i32 0)
  %101 = call i64 @build2(i32 %95, i64 %96, i64 %97, i64 %100)
  store i64 %101, i64* %8, align 8
  %102 = load i32, i32* @NE_EXPR, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %94, %89, %79
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @BIT_AND_EXPR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @TREE_OPERAND(i64 %108, i32 1)
  %110 = call i64 @integer_onep(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* @NE_EXPR, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @TREE_TYPE(i64 %116)
  %118 = call i64 @build_int_cst(i64 %117, i32 0)
  %119 = call i64 @build2(i32 %113, i64 %114, i64 %115, i64 %118)
  store i64 %119, i64* %9, align 8
  %120 = load i32, i32* @NE_EXPR, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %112, %107, %103
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @TREE_CODE_CLASS(i32 %122)
  %124 = load i64, i64* @tcc_comparison, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = call i64 @TREE_CODE_CLASS(i32 %127)
  %129 = load i64, i64* @tcc_comparison, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %121
  store i64 0, i64* %5, align 8
  br label %951

132:                                              ; preds = %126
  %133 = load i64, i64* %8, align 8
  %134 = call i64 @TREE_OPERAND(i64 %133, i32 0)
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @TREE_OPERAND(i64 %135, i32 1)
  store i64 %136, i64* %14, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i64 @TREE_OPERAND(i64 %137, i32 0)
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i64 @TREE_OPERAND(i64 %139, i32 1)
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %13, align 8
  %142 = call i64 @simple_operand_p(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %132
  %145 = load i64, i64* %14, align 8
  %146 = call i64 @simple_operand_p(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %144
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %15, align 8
  %151 = call i64 @operand_equal_p(i64 %149, i64 %150, i32 0)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %16, align 8
  %156 = call i64 @operand_equal_p(i64 %154, i64 %155, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i64 @combine_comparisons(i32 %159, i32 %160, i32 %161, i64 %162, i64 %163, i64 %164)
  store i64 %165, i64* %66, align 8
  %166 = load i64, i64* %66, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i64, i64* %66, align 8
  store i64 %169, i64* %5, align 8
  br label %951

170:                                              ; preds = %158
  br label %196

171:                                              ; preds = %153, %148
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %16, align 8
  %174 = call i64 @operand_equal_p(i64 %172, i64 %173, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = load i64, i64* %14, align 8
  %178 = load i64, i64* %15, align 8
  %179 = call i64 @operand_equal_p(i64 %177, i64 %178, i32 0)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @swap_tree_comparison(i32 %184)
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = call i64 @combine_comparisons(i32 %182, i32 %183, i32 %185, i64 %186, i64 %187, i64 %188)
  store i64 %189, i64* %66, align 8
  %190 = load i64, i64* %66, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load i64, i64* %66, align 8
  store i64 %193, i64* %5, align 8
  br label %951

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194, %176, %171
  br label %196

196:                                              ; preds = %195, %170
  br label %197

197:                                              ; preds = %196, %144, %132
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201, %197
  %206 = load i32, i32* @TRUTH_AND_EXPR, align 4
  br label %209

207:                                              ; preds = %201
  %208 = load i32, i32* @TRUTH_OR_EXPR, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %206, %205 ], [ %208, %207 ]
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* @BRANCH_COST, align 4
  %212 = icmp sge i32 %211, 2
  br i1 %212, label %213, label %328

213:                                              ; preds = %209
  %214 = load i64, i64* %15, align 8
  %215 = call i64 @TREE_TYPE(i64 %214)
  %216 = call i32 @FLOAT_TYPE_P(i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %328, label %218

218:                                              ; preds = %213
  %219 = load i64, i64* %15, align 8
  %220 = call i64 @simple_operand_p(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %328

222:                                              ; preds = %218
  %223 = load i64, i64* %16, align 8
  %224 = call i64 @simple_operand_p(i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %328

226:                                              ; preds = %222
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %265

230:                                              ; preds = %226
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @NE_EXPR, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %265

234:                                              ; preds = %230
  %235 = load i64, i64* %14, align 8
  %236 = call i64 @integer_zerop(i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %265

238:                                              ; preds = %234
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @NE_EXPR, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %238
  %243 = load i64, i64* %16, align 8
  %244 = call i64 @integer_zerop(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %242
  %247 = load i64, i64* %13, align 8
  %248 = call i64 @TREE_TYPE(i64 %247)
  %249 = load i64, i64* %15, align 8
  %250 = call i64 @TREE_TYPE(i64 %249)
  %251 = icmp eq i64 %248, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load i32, i32* @NE_EXPR, align 4
  %254 = load i64, i64* %7, align 8
  %255 = load i32, i32* @BIT_IOR_EXPR, align 4
  %256 = load i64, i64* %13, align 8
  %257 = call i64 @TREE_TYPE(i64 %256)
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* %15, align 8
  %260 = call i64 @build2(i32 %255, i64 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %13, align 8
  %262 = call i64 @TREE_TYPE(i64 %261)
  %263 = call i64 @build_int_cst(i64 %262, i32 0)
  %264 = call i64 @build2(i32 %253, i64 %254, i64 %260, i64 %263)
  store i64 %264, i64* %5, align 8
  br label %951

265:                                              ; preds = %246, %242, %238, %234, %230, %226
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %265
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @EQ_EXPR, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %304

273:                                              ; preds = %269
  %274 = load i64, i64* %14, align 8
  %275 = call i64 @integer_zerop(i64 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %304

277:                                              ; preds = %273
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @EQ_EXPR, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %304

281:                                              ; preds = %277
  %282 = load i64, i64* %16, align 8
  %283 = call i64 @integer_zerop(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %281
  %286 = load i64, i64* %13, align 8
  %287 = call i64 @TREE_TYPE(i64 %286)
  %288 = load i64, i64* %15, align 8
  %289 = call i64 @TREE_TYPE(i64 %288)
  %290 = icmp eq i64 %287, %289
  br i1 %290, label %291, label %304

291:                                              ; preds = %285
  %292 = load i32, i32* @EQ_EXPR, align 4
  %293 = load i64, i64* %7, align 8
  %294 = load i32, i32* @BIT_IOR_EXPR, align 4
  %295 = load i64, i64* %13, align 8
  %296 = call i64 @TREE_TYPE(i64 %295)
  %297 = load i64, i64* %13, align 8
  %298 = load i64, i64* %15, align 8
  %299 = call i64 @build2(i32 %294, i64 %296, i64 %297, i64 %298)
  %300 = load i64, i64* %13, align 8
  %301 = call i64 @TREE_TYPE(i64 %300)
  %302 = call i64 @build_int_cst(i64 %301, i32 0)
  %303 = call i64 @build2(i32 %292, i64 %293, i64 %299, i64 %302)
  store i64 %303, i64* %5, align 8
  br label %951

304:                                              ; preds = %285, %281, %277, %273, %269, %265
  %305 = load i64, i64* @LOGICAL_OP_NON_SHORT_CIRCUIT, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %327

307:                                              ; preds = %304
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %65, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %319, label %311

311:                                              ; preds = %307
  %312 = load i64, i64* %8, align 8
  %313 = load i64, i64* %63, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = load i64, i64* %9, align 8
  %317 = load i64, i64* %64, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %315, %311, %307
  %320 = load i32, i32* %6, align 4
  %321 = load i64, i64* %7, align 8
  %322 = load i64, i64* %8, align 8
  %323 = load i64, i64* %9, align 8
  %324 = call i64 @build2(i32 %320, i64 %321, i64 %322, i64 %323)
  store i64 %324, i64* %5, align 8
  br label %951

325:                                              ; preds = %315
  %326 = load i64, i64* @NULL_TREE, align 8
  store i64 %326, i64* %5, align 8
  br label %951

327:                                              ; preds = %304
  br label %328

328:                                              ; preds = %327, %222, %218, %213, %209
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @EQ_EXPR, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* @NE_EXPR, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %344, label %336

336:                                              ; preds = %332, %328
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* @EQ_EXPR, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %336
  %341 = load i32, i32* %12, align 4
  %342 = load i32, i32* @NE_EXPR, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %340, %332
  store i64 0, i64* %5, align 8
  br label %951

345:                                              ; preds = %340, %336
  store i32 0, i32* %62, align 4
  %346 = load i64, i64* %13, align 8
  %347 = call i64 @decode_field_reference(i64 %346, i32* %21, i32* %22, i32* %41, i32* %37, i32* %62, i64* %47, i64* %51)
  store i64 %347, i64* %17, align 8
  %348 = load i64, i64* %14, align 8
  %349 = call i64 @decode_field_reference(i64 %348, i32* %23, i32* %24, i32* %42, i32* %38, i32* %62, i64* %48, i64* %52)
  store i64 %349, i64* %18, align 8
  %350 = load i64, i64* %15, align 8
  %351 = call i64 @decode_field_reference(i64 %350, i32* %25, i32* %26, i32* %43, i32* %39, i32* %62, i64* %49, i64* %53)
  store i64 %351, i64* %19, align 8
  %352 = load i64, i64* %16, align 8
  %353 = call i64 @decode_field_reference(i64 %352, i32* %27, i32* %28, i32* %44, i32* %40, i32* %62, i64* %50, i64* %54)
  store i64 %353, i64* %20, align 8
  %354 = load i32, i32* %62, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %367, label %356

356:                                              ; preds = %345
  %357 = load i64, i64* %17, align 8
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %356
  %360 = load i64, i64* %19, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %359
  %363 = load i64, i64* %17, align 8
  %364 = load i64, i64* %19, align 8
  %365 = call i64 @operand_equal_p(i64 %363, i64 %364, i32 0)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %362, %359, %356, %345
  store i64 0, i64* %5, align 8
  br label %951

368:                                              ; preds = %362
  %369 = load i64, i64* %14, align 8
  %370 = call i64 @TREE_CODE(i64 %369)
  %371 = load i64, i64* @INTEGER_CST, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %381

373:                                              ; preds = %368
  %374 = load i64, i64* %16, align 8
  %375 = call i64 @TREE_CODE(i64 %374)
  %376 = load i64, i64* @INTEGER_CST, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = load i64, i64* %14, align 8
  store i64 %379, i64* %55, align 8
  %380 = load i64, i64* %16, align 8
  store i64 %380, i64* %56, align 8
  br label %395

381:                                              ; preds = %373, %368
  %382 = load i64, i64* %18, align 8
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %392, label %384

384:                                              ; preds = %381
  %385 = load i64, i64* %20, align 8
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %384
  %388 = load i64, i64* %18, align 8
  %389 = load i64, i64* %20, align 8
  %390 = call i64 @operand_equal_p(i64 %388, i64 %389, i32 0)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %387, %384, %381
  store i64 0, i64* %5, align 8
  br label %951

393:                                              ; preds = %387
  store i64 0, i64* %56, align 8
  store i64 0, i64* %55, align 8
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394, %378
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %395
  %400 = load i32, i32* @EQ_EXPR, align 4
  br label %403

401:                                              ; preds = %395
  %402 = load i32, i32* @NE_EXPR, align 4
  br label %403

403:                                              ; preds = %401, %399
  %404 = phi i32 [ %400, %399 ], [ %402, %401 ]
  store i32 %404, i32* %10, align 4
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %10, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %423

408:                                              ; preds = %403
  %409 = load i64, i64* %55, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %421

411:                                              ; preds = %408
  %412 = load i64, i64* %55, align 8
  %413 = call i64 @integer_zerop(i64 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  %416 = load i64, i64* %47, align 8
  %417 = call i64 @integer_pow2p(i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %415
  store i32 1, i32* %37, align 4
  %420 = load i64, i64* %47, align 8
  store i64 %420, i64* %55, align 8
  br label %422

421:                                              ; preds = %415, %411, %408
  store i64 0, i64* %5, align 8
  br label %951

422:                                              ; preds = %419
  br label %423

423:                                              ; preds = %422, %403
  %424 = load i32, i32* %12, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %442

427:                                              ; preds = %423
  %428 = load i64, i64* %56, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %440

430:                                              ; preds = %427
  %431 = load i64, i64* %56, align 8
  %432 = call i64 @integer_zerop(i64 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %430
  %435 = load i64, i64* %49, align 8
  %436 = call i64 @integer_pow2p(i64 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  store i32 1, i32* %39, align 4
  %439 = load i64, i64* %49, align 8
  store i64 %439, i64* %56, align 8
  br label %441

440:                                              ; preds = %434, %430, %427
  store i64 0, i64* %5, align 8
  br label %951

441:                                              ; preds = %438
  br label %442

442:                                              ; preds = %441, %423
  %443 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 1), align 8
  %444 = call i32 (...) %443()
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %442
  store i64 0, i64* %5, align 8
  br label %951

447:                                              ; preds = %442
  %448 = load i32, i32* %22, align 4
  %449 = load i32, i32* %26, align 4
  %450 = call i32 @MIN(i32 %448, i32 %449)
  store i32 %450, i32* %60, align 4
  %451 = load i32, i32* %22, align 4
  %452 = load i32, i32* %21, align 4
  %453 = add nsw i32 %451, %452
  %454 = load i32, i32* %26, align 4
  %455 = load i32, i32* %25, align 4
  %456 = add nsw i32 %454, %455
  %457 = call i32 @MAX(i32 %453, i32 %456)
  store i32 %457, i32* %61, align 4
  %458 = load i32, i32* %61, align 4
  %459 = load i32, i32* %60, align 4
  %460 = sub nsw i32 %458, %459
  %461 = load i32, i32* %60, align 4
  %462 = load i64, i64* %17, align 8
  %463 = call i64 @TREE_TYPE(i64 %462)
  %464 = call i32 @TYPE_ALIGN(i64 %463)
  %465 = load i32, i32* @word_mode, align 4
  %466 = load i32, i32* %62, align 4
  %467 = call i32 @get_best_mode(i32 %460, i32 %461, i32 %464, i32 %465, i32 %466)
  store i32 %467, i32* %45, align 4
  %468 = load i32, i32* %45, align 4
  %469 = load i32, i32* @VOIDmode, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %447
  store i64 0, i64* %5, align 8
  br label %951

472:                                              ; preds = %447
  %473 = load i32, i32* %45, align 4
  %474 = call i32 @GET_MODE_BITSIZE(i32 %473)
  store i32 %474, i32* %33, align 4
  %475 = load i32, i32* %60, align 4
  %476 = load i32, i32* %33, align 4
  %477 = sub nsw i32 %476, 1
  %478 = xor i32 %477, -1
  %479 = and i32 %475, %478
  store i32 %479, i32* %34, align 4
  %480 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %481 = load i32, i32* %33, align 4
  %482 = call i64 %480(i32 %481, i32 1)
  store i64 %482, i64* %57, align 8
  %483 = load i32, i32* %22, align 4
  %484 = load i32, i32* %34, align 4
  %485 = sub nsw i32 %483, %484
  store i32 %485, i32* %29, align 4
  %486 = load i32, i32* %26, align 4
  %487 = load i32, i32* %34, align 4
  %488 = sub nsw i32 %486, %487
  store i32 %488, i32* %31, align 4
  %489 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %472
  %492 = load i32, i32* %33, align 4
  %493 = load i32, i32* %29, align 4
  %494 = sub nsw i32 %492, %493
  %495 = load i32, i32* %21, align 4
  %496 = sub nsw i32 %494, %495
  store i32 %496, i32* %29, align 4
  %497 = load i32, i32* %33, align 4
  %498 = load i32, i32* %31, align 4
  %499 = sub nsw i32 %497, %498
  %500 = load i32, i32* %25, align 4
  %501 = sub nsw i32 %499, %500
  store i32 %501, i32* %31, align 4
  br label %502

502:                                              ; preds = %491, %472
  %503 = load i32, i32* @LSHIFT_EXPR, align 4
  %504 = load i64, i64* %57, align 8
  %505 = load i64, i64* %47, align 8
  %506 = call i64 @fold_convert(i64 %504, i64 %505)
  %507 = load i32, i32* %29, align 4
  %508 = call i64 @size_int(i32 %507)
  %509 = call i64 @const_binop(i32 %503, i64 %506, i64 %508, i32 0)
  store i64 %509, i64* %47, align 8
  %510 = load i32, i32* @LSHIFT_EXPR, align 4
  %511 = load i64, i64* %57, align 8
  %512 = load i64, i64* %49, align 8
  %513 = call i64 @fold_convert(i64 %511, i64 %512)
  %514 = load i32, i32* %31, align 4
  %515 = call i64 @size_int(i32 %514)
  %516 = call i64 @const_binop(i32 %510, i64 %513, i64 %515, i32 0)
  store i64 %516, i64* %49, align 8
  %517 = load i64, i64* %55, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %555

519:                                              ; preds = %502
  %520 = load i64, i64* %57, align 8
  %521 = load i64, i64* %55, align 8
  %522 = call i64 @fold_convert(i64 %520, i64 %521)
  store i64 %522, i64* %55, align 8
  %523 = load i64, i64* %55, align 8
  %524 = load i32, i32* %21, align 4
  %525 = load i32, i32* %37, align 4
  %526 = load i64, i64* %51, align 8
  %527 = call i64 @unextend(i64 %523, i32 %524, i32 %525, i64 %526)
  store i64 %527, i64* %55, align 8
  %528 = load i32, i32* @LSHIFT_EXPR, align 4
  %529 = load i64, i64* %55, align 8
  %530 = load i32, i32* %29, align 4
  %531 = call i64 @size_int(i32 %530)
  %532 = call i64 @const_binop(i32 %528, i64 %529, i64 %531, i32 0)
  store i64 %532, i64* %55, align 8
  %533 = load i32, i32* @BIT_AND_EXPR, align 4
  %534 = load i64, i64* %55, align 8
  %535 = load i32, i32* @BIT_NOT_EXPR, align 4
  %536 = load i64, i64* %57, align 8
  %537 = load i64, i64* %47, align 8
  %538 = call i64 @fold_build1(i32 %535, i64 %536, i64 %537)
  %539 = call i64 @const_binop(i32 %533, i64 %534, i64 %538, i32 0)
  %540 = call i64 @integer_zerop(i64 %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %554, label %542

542:                                              ; preds = %519
  %543 = load i32, i32* %10, align 4
  %544 = load i32, i32* @NE_EXPR, align 4
  %545 = icmp eq i32 %543, %544
  %546 = zext i1 %545 to i32
  %547 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %546)
  %548 = load i32, i32* %10, align 4
  %549 = load i32, i32* @NE_EXPR, align 4
  %550 = icmp eq i32 %548, %549
  %551 = zext i1 %550 to i32
  %552 = load i64, i64* %7, align 8
  %553 = call i64 @constant_boolean_node(i32 %551, i64 %552)
  store i64 %553, i64* %5, align 8
  br label %951

554:                                              ; preds = %519
  br label %555

555:                                              ; preds = %554, %502
  %556 = load i64, i64* %56, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %594

558:                                              ; preds = %555
  %559 = load i64, i64* %57, align 8
  %560 = load i64, i64* %56, align 8
  %561 = call i64 @fold_convert(i64 %559, i64 %560)
  store i64 %561, i64* %56, align 8
  %562 = load i64, i64* %56, align 8
  %563 = load i32, i32* %25, align 4
  %564 = load i32, i32* %39, align 4
  %565 = load i64, i64* %53, align 8
  %566 = call i64 @unextend(i64 %562, i32 %563, i32 %564, i64 %565)
  store i64 %566, i64* %56, align 8
  %567 = load i32, i32* @LSHIFT_EXPR, align 4
  %568 = load i64, i64* %56, align 8
  %569 = load i32, i32* %31, align 4
  %570 = call i64 @size_int(i32 %569)
  %571 = call i64 @const_binop(i32 %567, i64 %568, i64 %570, i32 0)
  store i64 %571, i64* %56, align 8
  %572 = load i32, i32* @BIT_AND_EXPR, align 4
  %573 = load i64, i64* %56, align 8
  %574 = load i32, i32* @BIT_NOT_EXPR, align 4
  %575 = load i64, i64* %57, align 8
  %576 = load i64, i64* %49, align 8
  %577 = call i64 @fold_build1(i32 %574, i64 %575, i64 %576)
  %578 = call i64 @const_binop(i32 %572, i64 %573, i64 %577, i32 0)
  %579 = call i64 @integer_zerop(i64 %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %593, label %581

581:                                              ; preds = %558
  %582 = load i32, i32* %10, align 4
  %583 = load i32, i32* @NE_EXPR, align 4
  %584 = icmp eq i32 %582, %583
  %585 = zext i1 %584 to i32
  %586 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %585)
  %587 = load i32, i32* %10, align 4
  %588 = load i32, i32* @NE_EXPR, align 4
  %589 = icmp eq i32 %587, %588
  %590 = zext i1 %589 to i32
  %591 = load i64, i64* %7, align 8
  %592 = call i64 @constant_boolean_node(i32 %590, i64 %591)
  store i64 %592, i64* %5, align 8
  br label %951

593:                                              ; preds = %558
  br label %594

594:                                              ; preds = %593, %555
  %595 = load i64, i64* %55, align 8
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %883

597:                                              ; preds = %594
  %598 = load i32, i32* %21, align 4
  %599 = load i32, i32* %23, align 4
  %600 = icmp ne i32 %598, %599
  br i1 %600, label %621, label %601

601:                                              ; preds = %597
  %602 = load i32, i32* %25, align 4
  %603 = load i32, i32* %27, align 4
  %604 = icmp ne i32 %602, %603
  br i1 %604, label %621, label %605

605:                                              ; preds = %601
  %606 = load i32, i32* %37, align 4
  %607 = load i32, i32* %38, align 4
  %608 = icmp ne i32 %606, %607
  br i1 %608, label %621, label %609

609:                                              ; preds = %605
  %610 = load i32, i32* %39, align 4
  %611 = load i32, i32* %40, align 4
  %612 = icmp ne i32 %610, %611
  br i1 %612, label %621, label %613

613:                                              ; preds = %609
  %614 = load i32, i32* %22, align 4
  %615 = load i32, i32* %26, align 4
  %616 = sub nsw i32 %614, %615
  %617 = load i32, i32* %24, align 4
  %618 = load i32, i32* %28, align 4
  %619 = sub nsw i32 %617, %618
  %620 = icmp ne i32 %616, %619
  br i1 %620, label %621, label %622

621:                                              ; preds = %613, %609, %605, %601, %597
  store i64 0, i64* %5, align 8
  br label %951

622:                                              ; preds = %613
  %623 = load i32, i32* %24, align 4
  %624 = load i32, i32* %28, align 4
  %625 = call i32 @MIN(i32 %623, i32 %624)
  store i32 %625, i32* %60, align 4
  %626 = load i32, i32* %24, align 4
  %627 = load i32, i32* %23, align 4
  %628 = add nsw i32 %626, %627
  %629 = load i32, i32* %28, align 4
  %630 = load i32, i32* %27, align 4
  %631 = add nsw i32 %629, %630
  %632 = call i32 @MAX(i32 %628, i32 %631)
  store i32 %632, i32* %61, align 4
  %633 = load i32, i32* %61, align 4
  %634 = load i32, i32* %60, align 4
  %635 = sub nsw i32 %633, %634
  %636 = load i32, i32* %60, align 4
  %637 = load i64, i64* %18, align 8
  %638 = call i64 @TREE_TYPE(i64 %637)
  %639 = call i32 @TYPE_ALIGN(i64 %638)
  %640 = load i32, i32* @word_mode, align 4
  %641 = load i32, i32* %62, align 4
  %642 = call i32 @get_best_mode(i32 %635, i32 %636, i32 %639, i32 %640, i32 %641)
  store i32 %642, i32* %46, align 4
  %643 = load i32, i32* %46, align 4
  %644 = load i32, i32* @VOIDmode, align 4
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %646, label %647

646:                                              ; preds = %622
  store i64 0, i64* %5, align 8
  br label %951

647:                                              ; preds = %622
  %648 = load i32, i32* %46, align 4
  %649 = call i32 @GET_MODE_BITSIZE(i32 %648)
  store i32 %649, i32* %35, align 4
  %650 = load i32, i32* %60, align 4
  %651 = load i32, i32* %35, align 4
  %652 = sub nsw i32 %651, 1
  %653 = xor i32 %652, -1
  %654 = and i32 %650, %653
  store i32 %654, i32* %36, align 4
  %655 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %656 = load i32, i32* %35, align 4
  %657 = call i64 %655(i32 %656, i32 1)
  store i64 %657, i64* %58, align 8
  %658 = load i32, i32* %24, align 4
  %659 = load i32, i32* %36, align 4
  %660 = sub nsw i32 %658, %659
  store i32 %660, i32* %30, align 4
  %661 = load i32, i32* %28, align 4
  %662 = load i32, i32* %36, align 4
  %663 = sub nsw i32 %661, %662
  store i32 %663, i32* %32, align 4
  %664 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %677

666:                                              ; preds = %647
  %667 = load i32, i32* %35, align 4
  %668 = load i32, i32* %30, align 4
  %669 = sub nsw i32 %667, %668
  %670 = load i32, i32* %23, align 4
  %671 = sub nsw i32 %669, %670
  store i32 %671, i32* %30, align 4
  %672 = load i32, i32* %35, align 4
  %673 = load i32, i32* %32, align 4
  %674 = sub nsw i32 %672, %673
  %675 = load i32, i32* %27, align 4
  %676 = sub nsw i32 %674, %675
  store i32 %676, i32* %32, align 4
  br label %677

677:                                              ; preds = %666, %647
  %678 = load i32, i32* @LSHIFT_EXPR, align 4
  %679 = load i64, i64* %58, align 8
  %680 = load i64, i64* %48, align 8
  %681 = call i64 @fold_convert(i64 %679, i64 %680)
  %682 = load i32, i32* %30, align 4
  %683 = call i64 @size_int(i32 %682)
  %684 = call i64 @const_binop(i32 %678, i64 %681, i64 %683, i32 0)
  store i64 %684, i64* %48, align 8
  %685 = load i32, i32* @LSHIFT_EXPR, align 4
  %686 = load i64, i64* %58, align 8
  %687 = load i64, i64* %50, align 8
  %688 = call i64 @fold_convert(i64 %686, i64 %687)
  %689 = load i32, i32* %32, align 4
  %690 = call i64 @size_int(i32 %689)
  %691 = call i64 @const_binop(i32 %685, i64 %688, i64 %690, i32 0)
  store i64 %691, i64* %50, align 8
  %692 = load i32, i32* @BIT_IOR_EXPR, align 4
  %693 = load i64, i64* %47, align 8
  %694 = load i64, i64* %49, align 8
  %695 = call i64 @const_binop(i32 %692, i64 %693, i64 %694, i32 0)
  store i64 %695, i64* %47, align 8
  %696 = load i32, i32* @BIT_IOR_EXPR, align 4
  %697 = load i64, i64* %48, align 8
  %698 = load i64, i64* %50, align 8
  %699 = call i64 @const_binop(i32 %696, i64 %697, i64 %698, i32 0)
  store i64 %699, i64* %48, align 8
  %700 = load i32, i32* %33, align 4
  %701 = load i32, i32* %35, align 4
  %702 = icmp eq i32 %700, %701
  br i1 %702, label %703, label %761

703:                                              ; preds = %677
  %704 = load i32, i32* %29, align 4
  %705 = load i32, i32* %30, align 4
  %706 = icmp eq i32 %704, %705
  br i1 %706, label %707, label %761

707:                                              ; preds = %703
  %708 = load i64, i64* %17, align 8
  %709 = load i64, i64* %57, align 8
  %710 = load i32, i32* %33, align 4
  %711 = load i32, i32* %34, align 4
  %712 = load i32, i32* %37, align 4
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %717, label %714

714:                                              ; preds = %707
  %715 = load i32, i32* %39, align 4
  %716 = icmp ne i32 %715, 0
  br label %717

717:                                              ; preds = %714, %707
  %718 = phi i1 [ true, %707 ], [ %716, %714 ]
  %719 = zext i1 %718 to i32
  %720 = call i64 @make_bit_field_ref(i64 %708, i64 %709, i32 %710, i32 %711, i32 %719)
  store i64 %720, i64* %8, align 8
  %721 = load i64, i64* %47, align 8
  %722 = load i32, i32* %33, align 4
  %723 = call i32 @all_ones_mask_p(i64 %721, i32 %722)
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %731, label %725

725:                                              ; preds = %717
  %726 = load i32, i32* @BIT_AND_EXPR, align 4
  %727 = load i64, i64* %57, align 8
  %728 = load i64, i64* %8, align 8
  %729 = load i64, i64* %47, align 8
  %730 = call i64 @build2(i32 %726, i64 %727, i64 %728, i64 %729)
  store i64 %730, i64* %8, align 8
  br label %731

731:                                              ; preds = %725, %717
  %732 = load i64, i64* %18, align 8
  %733 = load i64, i64* %58, align 8
  %734 = load i32, i32* %35, align 4
  %735 = load i32, i32* %36, align 4
  %736 = load i32, i32* %38, align 4
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %741, label %738

738:                                              ; preds = %731
  %739 = load i32, i32* %40, align 4
  %740 = icmp ne i32 %739, 0
  br label %741

741:                                              ; preds = %738, %731
  %742 = phi i1 [ true, %731 ], [ %740, %738 ]
  %743 = zext i1 %742 to i32
  %744 = call i64 @make_bit_field_ref(i64 %732, i64 %733, i32 %734, i32 %735, i32 %743)
  store i64 %744, i64* %9, align 8
  %745 = load i64, i64* %48, align 8
  %746 = load i32, i32* %35, align 4
  %747 = call i32 @all_ones_mask_p(i64 %745, i32 %746)
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %755, label %749

749:                                              ; preds = %741
  %750 = load i32, i32* @BIT_AND_EXPR, align 4
  %751 = load i64, i64* %58, align 8
  %752 = load i64, i64* %9, align 8
  %753 = load i64, i64* %48, align 8
  %754 = call i64 @build2(i32 %750, i64 %751, i64 %752, i64 %753)
  store i64 %754, i64* %9, align 8
  br label %755

755:                                              ; preds = %749, %741
  %756 = load i32, i32* %10, align 4
  %757 = load i64, i64* %7, align 8
  %758 = load i64, i64* %8, align 8
  %759 = load i64, i64* %9, align 8
  %760 = call i64 @build2(i32 %756, i64 %757, i64 %758, i64 %759)
  store i64 %760, i64* %5, align 8
  br label %951

761:                                              ; preds = %703, %677
  %762 = load i32, i32* %21, align 4
  %763 = load i32, i32* %22, align 4
  %764 = add nsw i32 %762, %763
  %765 = load i32, i32* %26, align 4
  %766 = icmp eq i32 %764, %765
  br i1 %766, label %767, label %773

767:                                              ; preds = %761
  %768 = load i32, i32* %23, align 4
  %769 = load i32, i32* %24, align 4
  %770 = add nsw i32 %768, %769
  %771 = load i32, i32* %28, align 4
  %772 = icmp eq i32 %770, %771
  br i1 %772, label %785, label %773

773:                                              ; preds = %767, %761
  %774 = load i32, i32* %22, align 4
  %775 = load i32, i32* %26, align 4
  %776 = load i32, i32* %25, align 4
  %777 = add nsw i32 %775, %776
  %778 = icmp eq i32 %774, %777
  br i1 %778, label %779, label %882

779:                                              ; preds = %773
  %780 = load i32, i32* %24, align 4
  %781 = load i32, i32* %28, align 4
  %782 = load i32, i32* %27, align 4
  %783 = add nsw i32 %781, %782
  %784 = icmp eq i32 %780, %783
  br i1 %784, label %785, label %882

785:                                              ; preds = %779, %767
  %786 = load i64, i64* %17, align 8
  %787 = load i64, i64* %57, align 8
  %788 = load i32, i32* %21, align 4
  %789 = load i32, i32* %25, align 4
  %790 = add nsw i32 %788, %789
  %791 = load i32, i32* %22, align 4
  %792 = load i32, i32* %26, align 4
  %793 = call i32 @MIN(i32 %791, i32 %792)
  %794 = load i32, i32* %37, align 4
  %795 = call i64 @make_bit_field_ref(i64 %786, i64 %787, i32 %790, i32 %793, i32 %794)
  store i64 %795, i64* %8, align 8
  %796 = load i64, i64* %18, align 8
  %797 = load i64, i64* %58, align 8
  %798 = load i32, i32* %23, align 4
  %799 = load i32, i32* %27, align 4
  %800 = add nsw i32 %798, %799
  %801 = load i32, i32* %24, align 4
  %802 = load i32, i32* %28, align 4
  %803 = call i32 @MIN(i32 %801, i32 %802)
  %804 = load i32, i32* %38, align 4
  %805 = call i64 @make_bit_field_ref(i64 %796, i64 %797, i32 %800, i32 %803, i32 %804)
  store i64 %805, i64* %9, align 8
  %806 = load i32, i32* @RSHIFT_EXPR, align 4
  %807 = load i64, i64* %47, align 8
  %808 = load i32, i32* %29, align 4
  %809 = load i32, i32* %31, align 4
  %810 = call i32 @MIN(i32 %808, i32 %809)
  %811 = call i64 @size_int(i32 %810)
  %812 = call i64 @const_binop(i32 %806, i64 %807, i64 %811, i32 0)
  store i64 %812, i64* %47, align 8
  %813 = load i32, i32* @RSHIFT_EXPR, align 4
  %814 = load i64, i64* %48, align 8
  %815 = load i32, i32* %30, align 4
  %816 = load i32, i32* %32, align 4
  %817 = call i32 @MIN(i32 %815, i32 %816)
  %818 = call i64 @size_int(i32 %817)
  %819 = call i64 @const_binop(i32 %813, i64 %814, i64 %818, i32 0)
  store i64 %819, i64* %48, align 8
  %820 = load i64, i64* %57, align 8
  store i64 %820, i64* %67, align 8
  %821 = load i64, i64* %57, align 8
  %822 = load i64, i64* %58, align 8
  %823 = icmp ne i64 %821, %822
  br i1 %823, label %824, label %850

824:                                              ; preds = %785
  %825 = load i32, i32* %33, align 4
  %826 = load i32, i32* %35, align 4
  %827 = icmp sgt i32 %825, %826
  br i1 %827, label %828, label %836

828:                                              ; preds = %824
  %829 = load i64, i64* %58, align 8
  %830 = load i64, i64* %8, align 8
  %831 = call i64 @fold_convert(i64 %829, i64 %830)
  store i64 %831, i64* %8, align 8
  %832 = load i64, i64* %58, align 8
  %833 = load i64, i64* %47, align 8
  %834 = call i64 @fold_convert(i64 %832, i64 %833)
  store i64 %834, i64* %47, align 8
  %835 = load i64, i64* %58, align 8
  store i64 %835, i64* %67, align 8
  br label %849

836:                                              ; preds = %824
  %837 = load i32, i32* %33, align 4
  %838 = load i32, i32* %35, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %848

840:                                              ; preds = %836
  %841 = load i64, i64* %57, align 8
  %842 = load i64, i64* %9, align 8
  %843 = call i64 @fold_convert(i64 %841, i64 %842)
  store i64 %843, i64* %9, align 8
  %844 = load i64, i64* %57, align 8
  %845 = load i64, i64* %48, align 8
  %846 = call i64 @fold_convert(i64 %844, i64 %845)
  store i64 %846, i64* %48, align 8
  %847 = load i64, i64* %57, align 8
  store i64 %847, i64* %67, align 8
  br label %848

848:                                              ; preds = %840, %836
  br label %849

849:                                              ; preds = %848, %828
  br label %850

850:                                              ; preds = %849, %785
  %851 = load i64, i64* %47, align 8
  %852 = load i32, i32* %21, align 4
  %853 = load i32, i32* %25, align 4
  %854 = add nsw i32 %852, %853
  %855 = call i32 @all_ones_mask_p(i64 %851, i32 %854)
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %863, label %857

857:                                              ; preds = %850
  %858 = load i32, i32* @BIT_AND_EXPR, align 4
  %859 = load i64, i64* %67, align 8
  %860 = load i64, i64* %8, align 8
  %861 = load i64, i64* %47, align 8
  %862 = call i64 @build2(i32 %858, i64 %859, i64 %860, i64 %861)
  store i64 %862, i64* %8, align 8
  br label %863

863:                                              ; preds = %857, %850
  %864 = load i64, i64* %48, align 8
  %865 = load i32, i32* %23, align 4
  %866 = load i32, i32* %27, align 4
  %867 = add nsw i32 %865, %866
  %868 = call i32 @all_ones_mask_p(i64 %864, i32 %867)
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %876, label %870

870:                                              ; preds = %863
  %871 = load i32, i32* @BIT_AND_EXPR, align 4
  %872 = load i64, i64* %67, align 8
  %873 = load i64, i64* %9, align 8
  %874 = load i64, i64* %48, align 8
  %875 = call i64 @build2(i32 %871, i64 %872, i64 %873, i64 %874)
  store i64 %875, i64* %9, align 8
  br label %876

876:                                              ; preds = %870, %863
  %877 = load i32, i32* %10, align 4
  %878 = load i64, i64* %7, align 8
  %879 = load i64, i64* %8, align 8
  %880 = load i64, i64* %9, align 8
  %881 = call i64 @build2(i32 %877, i64 %878, i64 %879, i64 %880)
  store i64 %881, i64* %5, align 8
  br label %951

882:                                              ; preds = %779, %773
  store i64 0, i64* %5, align 8
  br label %951

883:                                              ; preds = %594
  %884 = load i32, i32* @BIT_AND_EXPR, align 4
  %885 = load i64, i64* %47, align 8
  %886 = load i64, i64* %49, align 8
  %887 = call i64 @const_binop(i32 %884, i64 %885, i64 %886, i32 0)
  store i64 %887, i64* %59, align 8
  %888 = load i64, i64* %59, align 8
  %889 = call i64 @integer_zerop(i64 %888)
  %890 = icmp ne i64 %889, 0
  br i1 %890, label %914, label %891

891:                                              ; preds = %883
  %892 = load i32, i32* @BIT_AND_EXPR, align 4
  %893 = load i64, i64* %59, align 8
  %894 = load i64, i64* %55, align 8
  %895 = call i64 @const_binop(i32 %892, i64 %893, i64 %894, i32 0)
  %896 = load i32, i32* @BIT_AND_EXPR, align 4
  %897 = load i64, i64* %59, align 8
  %898 = load i64, i64* %56, align 8
  %899 = call i64 @const_binop(i32 %896, i64 %897, i64 %898, i32 0)
  %900 = call i32 @simple_cst_equal(i64 %895, i64 %899)
  %901 = icmp ne i32 %900, 1
  br i1 %901, label %902, label %914

902:                                              ; preds = %891
  %903 = load i32, i32* %10, align 4
  %904 = load i32, i32* @NE_EXPR, align 4
  %905 = icmp eq i32 %903, %904
  br i1 %905, label %906, label %910

906:                                              ; preds = %902
  %907 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %908 = load i64, i64* %7, align 8
  %909 = call i64 @constant_boolean_node(i32 1, i64 %908)
  store i64 %909, i64* %5, align 8
  br label %951

910:                                              ; preds = %902
  %911 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %912 = load i64, i64* %7, align 8
  %913 = call i64 @constant_boolean_node(i32 0, i64 %912)
  store i64 %913, i64* %5, align 8
  br label %951

914:                                              ; preds = %891, %883
  %915 = load i64, i64* %17, align 8
  %916 = load i64, i64* %57, align 8
  %917 = load i32, i32* %33, align 4
  %918 = load i32, i32* %34, align 4
  %919 = load i32, i32* %37, align 4
  %920 = icmp ne i32 %919, 0
  br i1 %920, label %924, label %921

921:                                              ; preds = %914
  %922 = load i32, i32* %39, align 4
  %923 = icmp ne i32 %922, 0
  br label %924

924:                                              ; preds = %921, %914
  %925 = phi i1 [ true, %914 ], [ %923, %921 ]
  %926 = zext i1 %925 to i32
  %927 = call i64 @make_bit_field_ref(i64 %915, i64 %916, i32 %917, i32 %918, i32 %926)
  store i64 %927, i64* %59, align 8
  %928 = load i32, i32* @BIT_IOR_EXPR, align 4
  %929 = load i64, i64* %47, align 8
  %930 = load i64, i64* %49, align 8
  %931 = call i64 @const_binop(i32 %928, i64 %929, i64 %930, i32 0)
  store i64 %931, i64* %47, align 8
  %932 = load i64, i64* %47, align 8
  %933 = load i32, i32* %33, align 4
  %934 = call i32 @all_ones_mask_p(i64 %932, i32 %933)
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %942, label %936

936:                                              ; preds = %924
  %937 = load i32, i32* @BIT_AND_EXPR, align 4
  %938 = load i64, i64* %57, align 8
  %939 = load i64, i64* %59, align 8
  %940 = load i64, i64* %47, align 8
  %941 = call i64 @build2(i32 %937, i64 %938, i64 %939, i64 %940)
  store i64 %941, i64* %59, align 8
  br label %942

942:                                              ; preds = %936, %924
  %943 = load i32, i32* %10, align 4
  %944 = load i64, i64* %7, align 8
  %945 = load i64, i64* %59, align 8
  %946 = load i32, i32* @BIT_IOR_EXPR, align 4
  %947 = load i64, i64* %55, align 8
  %948 = load i64, i64* %56, align 8
  %949 = call i64 @const_binop(i32 %946, i64 %947, i64 %948, i32 0)
  %950 = call i64 @build2(i32 %943, i64 %944, i64 %945, i64 %949)
  store i64 %950, i64* %5, align 8
  br label %951

951:                                              ; preds = %942, %910, %906, %882, %876, %755, %646, %621, %581, %542, %471, %446, %440, %421, %392, %367, %344, %325, %319, %291, %252, %192, %168, %131, %78
  %952 = load i64, i64* %5, align 8
  ret i64 %952
}

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @integer_onep(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i64 @simple_operand_p(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @combine_comparisons(i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i32 @FLOAT_TYPE_P(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @decode_field_reference(i64, i32*, i32*, i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @integer_pow2p(i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @get_best_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @const_binop(i32, i64, i64, i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @size_int(i32) #1

declare dso_local i64 @unextend(i64, i32, i32, i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i64 @constant_boolean_node(i32, i64) #1

declare dso_local i64 @make_bit_field_ref(i64, i64, i32, i32, i32) #1

declare dso_local i32 @all_ones_mask_p(i64, i32) #1

declare dso_local i32 @simple_cst_equal(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
