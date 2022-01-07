; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_expand_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.case_node = type { i64, i64, i64, %struct.case_node* }

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@CASE_USE_BIT_TESTS = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@flag_jump_tables = common dso_local global i32 0, align 4
@HAVE_casesi = common dso_local global i32 0, align 4
@HAVE_tablejump = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@COMPARE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@use_cost_table = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@CASE_VECTOR_PC_RELATIVE = common dso_local global i64 0, align 8
@CASE_VECTOR_MODE = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_case(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.case_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.case_node*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %36 = load i64, i64* @NULL_TREE, align 8
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* @NULL_TREE, align 8
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  store i64 %38, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @SWITCH_LABELS(i64 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  store i64 %43, i64* %20, align 8
  %44 = load i64, i64* %2, align 8
  %45 = call i64 @SWITCH_COND(i64 %44)
  store i64 %45, i64* %21, align 8
  %46 = load i64, i64* %21, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  store i64 %47, i64* %22, align 8
  %48 = load i64, i64* %22, align 8
  %49 = call i32 @TYPE_UNSIGNED(i64 %48)
  store i32 %49, i32* %23, align 4
  store %struct.case_node* null, %struct.case_node** %25, align 8
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @SWITCH_BODY(i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @gcc_assert(i32 %54)
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @SWITCH_LABELS(i64 %56)
  %58 = call i32 @gcc_assert(i32 %57)
  %59 = call i32 (...) @do_pending_stack_adjust()
  %60 = load i64, i64* %22, align 8
  %61 = load i64, i64* @error_mark_node, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %535

63:                                               ; preds = %1
  %64 = load i64, i64* %21, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @INTEGER_CST, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @gcc_assert(i32 %68)
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i32 @TREE_VEC_LENGTH(i64 %71)
  %73 = sub nsw i32 %72, 1
  %74 = call i64 @TREE_VEC_ELT(i64 %70, i32 %73)
  store i64 %74, i64* %27, align 8
  %75 = load i64, i64* %27, align 8
  %76 = call i64 @CASE_HIGH(i64 %75)
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @gcc_assert(i32 %79)
  %81 = load i64, i64* %27, align 8
  %82 = call i64 @CASE_LOW(i64 %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @gcc_assert(i32 %85)
  %87 = load i64, i64* %27, align 8
  %88 = call i64 @CASE_LABEL(i64 %87)
  store i64 %88, i64* %26, align 8
  %89 = load i64, i64* %19, align 8
  %90 = call i32 @TREE_VEC_LENGTH(i64 %89)
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %115, %114, %63
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %14, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load i64, i64* %19, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @TREE_VEC_ELT(i64 %97, i32 %98)
  store i64 %99, i64* %27, align 8
  %100 = load i64, i64* %27, align 8
  %101 = call i64 @CASE_LOW(i64 %100)
  store i64 %101, i64* %29, align 8
  %102 = load i64, i64* %29, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @gcc_assert(i32 %103)
  %105 = load i64, i64* %27, align 8
  %106 = call i64 @CASE_HIGH(i64 %105)
  store i64 %106, i64* %30, align 8
  %107 = load i64, i64* %30, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load i64, i64* %30, align 8
  %111 = load i64, i64* %29, align 8
  %112 = call i64 @INT_CST_LT(i64 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %92

115:                                              ; preds = %109, %96
  %116 = load %struct.case_node*, %struct.case_node** %25, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i64, i64* %29, align 8
  %119 = load i64, i64* %30, align 8
  %120 = load i64, i64* %27, align 8
  %121 = call i64 @CASE_LABEL(i64 %120)
  %122 = call %struct.case_node* @add_case_node(%struct.case_node* %116, i64 %117, i64 %118, i64 %119, i64 %121)
  store %struct.case_node* %122, %struct.case_node** %25, align 8
  br label %92

123:                                              ; preds = %92
  %124 = call i64 (...) @get_last_insn()
  store i64 %124, i64* %24, align 8
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %26, align 8
  %126 = call i64 @label_rtx(i64 %125)
  store i64 %126, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %127 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %127, i32* %28, align 4
  %128 = load %struct.case_node*, %struct.case_node** %25, align 8
  store %struct.case_node* %128, %struct.case_node** %7, align 8
  br label %129

129:                                              ; preds = %196, %123
  %130 = load %struct.case_node*, %struct.case_node** %7, align 8
  %131 = icmp ne %struct.case_node* %130, null
  br i1 %131, label %132, label %200

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.case_node*, %struct.case_node** %7, align 8
  %138 = getelementptr inbounds %struct.case_node, %struct.case_node* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %3, align 8
  %140 = load %struct.case_node*, %struct.case_node** %7, align 8
  %141 = getelementptr inbounds %struct.case_node, %struct.case_node* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %4, align 8
  br label %166

143:                                              ; preds = %132
  %144 = load %struct.case_node*, %struct.case_node** %7, align 8
  %145 = getelementptr inbounds %struct.case_node, %struct.case_node* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %3, align 8
  %148 = call i64 @INT_CST_LT(i64 %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load %struct.case_node*, %struct.case_node** %7, align 8
  %152 = getelementptr inbounds %struct.case_node, %struct.case_node* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %3, align 8
  br label %154

154:                                              ; preds = %150, %143
  %155 = load i64, i64* %4, align 8
  %156 = load %struct.case_node*, %struct.case_node** %7, align 8
  %157 = getelementptr inbounds %struct.case_node, %struct.case_node* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @INT_CST_LT(i64 %155, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.case_node*, %struct.case_node** %7, align 8
  %163 = getelementptr inbounds %struct.case_node, %struct.case_node* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %4, align 8
  br label %165

165:                                              ; preds = %161, %154
  br label %166

166:                                              ; preds = %165, %136
  %167 = load %struct.case_node*, %struct.case_node** %7, align 8
  %168 = getelementptr inbounds %struct.case_node, %struct.case_node* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.case_node*, %struct.case_node** %7, align 8
  %171 = getelementptr inbounds %struct.case_node, %struct.case_node* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @tree_int_cst_equal(i64 %169, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %8, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %175, %166
  %179 = load %struct.case_node*, %struct.case_node** %7, align 8
  %180 = getelementptr inbounds %struct.case_node, %struct.case_node* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @label_rtx(i64 %181)
  store i64 %182, i64* %18, align 8
  %183 = load i32, i32* %28, align 4
  %184 = load i64, i64* %18, align 8
  %185 = call i32 @CODE_LABEL_NUMBER(i64 %184)
  %186 = call i32 @bitmap_bit_p(i32 %183, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %28, align 4
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @CODE_LABEL_NUMBER(i64 %190)
  %192 = call i32 @bitmap_set_bit(i32 %189, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %188, %178
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.case_node*, %struct.case_node** %7, align 8
  %198 = getelementptr inbounds %struct.case_node, %struct.case_node* %197, i32 0, i32 3
  %199 = load %struct.case_node*, %struct.case_node** %198, align 8
  store %struct.case_node* %199, %struct.case_node** %7, align 8
  br label %129

200:                                              ; preds = %129
  %201 = load i32, i32* %28, align 4
  %202 = call i32 @BITMAP_FREE(i32 %201)
  %203 = load i32, i32* %8, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i64, i64* %6, align 8
  %207 = call i32 @emit_jump(i64 %206)
  br label %537

208:                                              ; preds = %200
  %209 = load i32, i32* @MINUS_EXPR, align 4
  %210 = load i64, i64* %22, align 8
  %211 = load i64, i64* %4, align 8
  %212 = load i64, i64* %3, align 8
  %213 = call i64 @fold_build2(i32 %209, i64 %210, i64 %211, i64 %212)
  store i64 %213, i64* %5, align 8
  %214 = load i64, i64* @CASE_USE_BIT_TESTS, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %273

216:                                              ; preds = %208
  %217 = load i64, i64* %21, align 8
  %218 = call i64 @TREE_CONSTANT(i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %273, label %220

220:                                              ; preds = %216
  %221 = load i64, i64* %5, align 8
  %222 = load i32, i32* @word_mode, align 4
  %223 = call i32 @GET_MODE_BITSIZE(i32 %222)
  %224 = call i64 @compare_tree_int(i64 %221, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %273

226:                                              ; preds = %220
  %227 = load i64, i64* %5, align 8
  %228 = call i64 @compare_tree_int(i64 %227, i32 0)
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %273

230:                                              ; preds = %226
  %231 = call i64 (...) @lshift_cheap_p()
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %273

233:                                              ; preds = %230
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* %8, align 4
  %238 = icmp uge i32 %237, 3
  br i1 %238, label %251, label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %8, align 4
  %244 = icmp uge i32 %243, 5
  br i1 %244, label %251, label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %9, align 4
  %247 = icmp eq i32 %246, 3
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load i32, i32* %8, align 4
  %250 = icmp uge i32 %249, 6
  br i1 %250, label %251, label %273

251:                                              ; preds = %248, %242, %236
  %252 = load i64, i64* %3, align 8
  %253 = call i64 @compare_tree_int(i64 %252, i32 0)
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %251
  %256 = load i64, i64* %4, align 8
  %257 = load i32, i32* @word_mode, align 4
  %258 = call i32 @GET_MODE_BITSIZE(i32 %257)
  %259 = call i64 @compare_tree_int(i64 %256, i32 %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i64, i64* %22, align 8
  %263 = call i64 @build_int_cst(i64 %262, i32 0)
  store i64 %263, i64* %3, align 8
  %264 = load i64, i64* %4, align 8
  store i64 %264, i64* %5, align 8
  br label %265

265:                                              ; preds = %261, %255, %251
  %266 = load i64, i64* %22, align 8
  %267 = load i64, i64* %21, align 8
  %268 = load i64, i64* %3, align 8
  %269 = load i64, i64* %5, align 8
  %270 = load %struct.case_node*, %struct.case_node** %25, align 8
  %271 = load i64, i64* %6, align 8
  %272 = call i32 @emit_case_bit_tests(i64 %266, i64 %267, i64 %268, i64 %269, %struct.case_node* %270, i64 %271)
  br label %521

273:                                              ; preds = %248, %245, %230, %226, %220, %216, %208
  %274 = load i32, i32* %8, align 4
  %275 = call i32 (...) @case_values_threshold()
  %276 = icmp ult i32 %274, %275
  br i1 %276, label %307, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %5, align 8
  %279 = load i64, i64* @optimize_size, align 8
  %280 = icmp ne i64 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 3, i32 10
  %283 = load i32, i32* %8, align 4
  %284 = mul i32 %282, %283
  %285 = call i64 @compare_tree_int(i64 %278, i32 %284)
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %307, label %287

287:                                              ; preds = %277
  %288 = load i64, i64* %5, align 8
  %289 = call i64 @compare_tree_int(i64 %288, i32 0)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %307, label %291

291:                                              ; preds = %287
  %292 = load i64, i64* @flag_pic, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* @flag_jump_tables, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load i64, i64* %21, align 8
  %299 = call i64 @TREE_CONSTANT(i64 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %307, label %301

301:                                              ; preds = %297
  %302 = load i32, i32* @HAVE_casesi, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %371, label %304

304:                                              ; preds = %301
  %305 = load i32, i32* @HAVE_tablejump, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %371, label %307

307:                                              ; preds = %304, %297, %294, %291, %287, %277, %273
  %308 = load i64, i64* %21, align 8
  %309 = call i64 @expand_normal(i64 %308)
  store i64 %309, i64* %10, align 8
  %310 = load i64, i64* %10, align 8
  %311 = call i32 @GET_MODE(i64 %310)
  %312 = call i64 @GET_MODE_CLASS(i32 %311)
  %313 = load i64, i64* @MODE_INT, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %343

315:                                              ; preds = %307
  %316 = load i32, i32* @COMPARE, align 4
  %317 = load i64, i64* %10, align 8
  %318 = call i32 @GET_MODE(i64 %317)
  %319 = call i64 @have_insn_for(i32 %316, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %343, label %321

321:                                              ; preds = %315
  %322 = load i64, i64* %10, align 8
  %323 = call i32 @GET_MODE(i64 %322)
  store i32 %323, i32* %31, align 4
  br label %324

324:                                              ; preds = %339, %321
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* @VOIDmode, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %342

328:                                              ; preds = %324
  %329 = load i32, i32* @COMPARE, align 4
  %330 = load i32, i32* %31, align 4
  %331 = call i64 @have_insn_for(i32 %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load i32, i32* %31, align 4
  %335 = load i64, i64* %10, align 8
  %336 = load i32, i32* %23, align 4
  %337 = call i64 @convert_to_mode(i32 %334, i64 %335, i32 %336)
  store i64 %337, i64* %10, align 8
  br label %342

338:                                              ; preds = %328
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %31, align 4
  %341 = call i32 @GET_MODE_WIDER_MODE(i32 %340)
  store i32 %341, i32* %31, align 4
  br label %324

342:                                              ; preds = %333, %324
  br label %343

343:                                              ; preds = %342, %315, %307
  %344 = call i32 (...) @do_pending_stack_adjust()
  %345 = load i64, i64* %10, align 8
  %346 = call i64 @MEM_P(i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = load i64, i64* %10, align 8
  %350 = call i64 @copy_to_reg(i64 %349)
  store i64 %350, i64* %10, align 8
  br label %351

351:                                              ; preds = %348, %343
  %352 = load i64, i64* %20, align 8
  %353 = call i64 @TREE_CODE(i64 %352)
  %354 = load i64, i64* @ENUMERAL_TYPE, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = load %struct.case_node*, %struct.case_node** %25, align 8
  %358 = call i64 @estimate_case_costs(%struct.case_node* %357)
  %359 = icmp ne i64 %358, 0
  br label %360

360:                                              ; preds = %356, %351
  %361 = phi i1 [ false, %351 ], [ %359, %356 ]
  %362 = zext i1 %361 to i32
  store i32 %362, i32* @use_cost_table, align 4
  %363 = call i32 @balance_case_nodes(%struct.case_node** %25, i32* null)
  %364 = load i64, i64* %10, align 8
  %365 = load %struct.case_node*, %struct.case_node** %25, align 8
  %366 = load i64, i64* %6, align 8
  %367 = load i64, i64* %22, align 8
  %368 = call i32 @emit_case_nodes(i64 %364, %struct.case_node* %365, i64 %366, i64 %367)
  %369 = load i64, i64* %6, align 8
  %370 = call i32 @emit_jump(i64 %369)
  br label %520

371:                                              ; preds = %304, %301
  %372 = call i64 (...) @gen_label_rtx()
  store i64 %372, i64* %11, align 8
  %373 = load i64, i64* %22, align 8
  %374 = load i64, i64* %21, align 8
  %375 = load i64, i64* %3, align 8
  %376 = load i64, i64* %5, align 8
  %377 = load i64, i64* %11, align 8
  %378 = load i64, i64* %6, align 8
  %379 = call i32 @try_casesi(i64 %373, i64 %374, i64 %375, i64 %376, i64 %377, i64 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %406, label %381

381:                                              ; preds = %371
  %382 = load i64, i64* @optimize_size, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %381
  %385 = load i64, i64* %3, align 8
  %386 = call i64 @compare_tree_int(i64 %385, i32 0)
  %387 = icmp sgt i64 %386, 0
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load i64, i64* %3, align 8
  %390 = call i64 @compare_tree_int(i64 %389, i32 3)
  %391 = icmp slt i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = load i64, i64* %22, align 8
  %394 = call i64 @build_int_cst(i64 %393, i32 0)
  store i64 %394, i64* %3, align 8
  %395 = load i64, i64* %4, align 8
  store i64 %395, i64* %5, align 8
  br label %396

396:                                              ; preds = %392, %388, %384, %381
  %397 = load i64, i64* %22, align 8
  %398 = load i64, i64* %21, align 8
  %399 = load i64, i64* %3, align 8
  %400 = load i64, i64* %5, align 8
  %401 = load i64, i64* %11, align 8
  %402 = load i64, i64* %6, align 8
  %403 = call i32 @try_tablejump(i64 %397, i64 %398, i64 %399, i64 %400, i64 %401, i64 %402)
  store i32 %403, i32* %32, align 4
  %404 = load i32, i32* %32, align 4
  %405 = call i32 @gcc_assert(i32 %404)
  br label %406

406:                                              ; preds = %396, %371
  %407 = load i64, i64* %5, align 8
  %408 = call i32 @tree_low_cst(i64 %407, i32 0)
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %12, align 4
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = mul i64 %411, 8
  %413 = trunc i64 %412 to i32
  %414 = call i64* @alloca(i32 %413)
  store i64* %414, i64** %13, align 8
  %415 = load i64*, i64** %13, align 8
  %416 = load i32, i32* %12, align 4
  %417 = sext i32 %416 to i64
  %418 = mul i64 %417, 8
  %419 = trunc i64 %418 to i32
  %420 = call i32 @memset(i64* %415, i32 0, i32 %419)
  %421 = load %struct.case_node*, %struct.case_node** %25, align 8
  store %struct.case_node* %421, %struct.case_node** %7, align 8
  br label %422

422:                                              ; preds = %463, %406
  %423 = load %struct.case_node*, %struct.case_node** %7, align 8
  %424 = icmp ne %struct.case_node* %423, null
  br i1 %424, label %425, label %467

425:                                              ; preds = %422
  %426 = load i32, i32* @MINUS_EXPR, align 4
  %427 = load i64, i64* %22, align 8
  %428 = load %struct.case_node*, %struct.case_node** %7, align 8
  %429 = getelementptr inbounds %struct.case_node, %struct.case_node* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* %3, align 8
  %432 = call i64 @fold_build2(i32 %426, i64 %427, i64 %430, i64 %431)
  %433 = call i32 @tree_low_cst(i64 %432, i32 1)
  %434 = sext i32 %433 to i64
  store i64 %434, i64* %33, align 8
  %435 = load i32, i32* @MINUS_EXPR, align 4
  %436 = load i64, i64* %22, align 8
  %437 = load %struct.case_node*, %struct.case_node** %7, align 8
  %438 = getelementptr inbounds %struct.case_node, %struct.case_node* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* %3, align 8
  %441 = call i64 @fold_build2(i32 %435, i64 %436, i64 %439, i64 %440)
  %442 = call i32 @tree_low_cst(i64 %441, i32 1)
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %34, align 8
  %444 = load i64, i64* %33, align 8
  store i64 %444, i64* %35, align 8
  br label %445

445:                                              ; preds = %459, %425
  %446 = load i64, i64* %35, align 8
  %447 = load i64, i64* %34, align 8
  %448 = icmp ule i64 %446, %447
  br i1 %448, label %449, label %462

449:                                              ; preds = %445
  %450 = load i32, i32* @Pmode, align 4
  %451 = load %struct.case_node*, %struct.case_node** %7, align 8
  %452 = getelementptr inbounds %struct.case_node, %struct.case_node* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = call i64 @label_rtx(i64 %453)
  %455 = call i64 @gen_rtx_LABEL_REF(i32 %450, i64 %454)
  %456 = load i64*, i64** %13, align 8
  %457 = load i64, i64* %35, align 8
  %458 = getelementptr inbounds i64, i64* %456, i64 %457
  store i64 %455, i64* %458, align 8
  br label %459

459:                                              ; preds = %449
  %460 = load i64, i64* %35, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %35, align 8
  br label %445

462:                                              ; preds = %445
  br label %463

463:                                              ; preds = %462
  %464 = load %struct.case_node*, %struct.case_node** %7, align 8
  %465 = getelementptr inbounds %struct.case_node, %struct.case_node* %464, i32 0, i32 3
  %466 = load %struct.case_node*, %struct.case_node** %465, align 8
  store %struct.case_node* %466, %struct.case_node** %7, align 8
  br label %422

467:                                              ; preds = %422
  store i32 0, i32* %14, align 4
  br label %468

468:                                              ; preds = %488, %467
  %469 = load i32, i32* %14, align 4
  %470 = load i32, i32* %12, align 4
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %491

472:                                              ; preds = %468
  %473 = load i64*, i64** %13, align 8
  %474 = load i32, i32* %14, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i64, i64* %473, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %472
  %480 = load i32, i32* @Pmode, align 4
  %481 = load i64, i64* %6, align 8
  %482 = call i64 @gen_rtx_LABEL_REF(i32 %480, i64 %481)
  %483 = load i64*, i64** %13, align 8
  %484 = load i32, i32* %14, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i64, i64* %483, i64 %485
  store i64 %482, i64* %486, align 8
  br label %487

487:                                              ; preds = %479, %472
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %14, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %14, align 4
  br label %468

491:                                              ; preds = %468
  %492 = load i64, i64* %11, align 8
  %493 = call i32 @emit_label(i64 %492)
  %494 = load i64, i64* @CASE_VECTOR_PC_RELATIVE, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %491
  %497 = load i64, i64* @flag_pic, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %511

499:                                              ; preds = %496, %491
  %500 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %501 = load i32, i32* @Pmode, align 4
  %502 = load i64, i64* %11, align 8
  %503 = call i64 @gen_rtx_LABEL_REF(i32 %501, i64 %502)
  %504 = load i32, i32* %12, align 4
  %505 = load i64*, i64** %13, align 8
  %506 = call i32 @gen_rtvec_v(i32 %504, i64* %505)
  %507 = load i32, i32* @const0_rtx, align 4
  %508 = load i32, i32* @const0_rtx, align 4
  %509 = call i32 @gen_rtx_ADDR_DIFF_VEC(i32 %500, i64 %503, i32 %506, i32 %507, i32 %508)
  %510 = call i32 @emit_jump_insn(i32 %509)
  br label %518

511:                                              ; preds = %496
  %512 = load i32, i32* @CASE_VECTOR_MODE, align 4
  %513 = load i32, i32* %12, align 4
  %514 = load i64*, i64** %13, align 8
  %515 = call i32 @gen_rtvec_v(i32 %513, i64* %514)
  %516 = call i32 @gen_rtx_ADDR_VEC(i32 %512, i32 %515)
  %517 = call i32 @emit_jump_insn(i32 %516)
  br label %518

518:                                              ; preds = %511, %499
  %519 = call i32 (...) @emit_barrier()
  br label %520

520:                                              ; preds = %518, %360
  br label %521

521:                                              ; preds = %520, %265
  %522 = load i64, i64* %16, align 8
  %523 = call i64 @NEXT_INSN(i64 %522)
  store i64 %523, i64* %16, align 8
  %524 = call i64 (...) @get_last_insn()
  store i64 %524, i64* %17, align 8
  %525 = call i32 @squeeze_notes(i64* %16, i64* %17)
  store i32 %525, i32* %15, align 4
  %526 = load i32, i32* %15, align 4
  %527 = icmp ne i32 %526, 0
  %528 = xor i1 %527, true
  %529 = zext i1 %528 to i32
  %530 = call i32 @gcc_assert(i32 %529)
  %531 = load i64, i64* %16, align 8
  %532 = load i64, i64* %17, align 8
  %533 = load i64, i64* %24, align 8
  %534 = call i32 @reorder_insns(i64 %531, i64 %532, i64 %533)
  br label %535

535:                                              ; preds = %521, %1
  %536 = call i32 (...) @free_temp_slots()
  br label %537

537:                                              ; preds = %535, %205
  ret void
}

declare dso_local i32 @SWITCH_LABELS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @SWITCH_COND(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SWITCH_BODY(i64) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @CASE_HIGH(i64) #1

declare dso_local i64 @CASE_LOW(i64) #1

declare dso_local i64 @CASE_LABEL(i64) #1

declare dso_local i64 @INT_CST_LT(i64, i64) #1

declare dso_local %struct.case_node* @add_case_node(%struct.case_node*, i64, i64, i64, i64) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @label_rtx(i64) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i64) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @compare_tree_int(i64, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @lshift_cheap_p(...) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @emit_case_bit_tests(i64, i64, i64, i64, %struct.case_node*, i64) #1

declare dso_local i32 @case_values_threshold(...) #1

declare dso_local i64 @expand_normal(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @have_insn_for(i32, i32) #1

declare dso_local i64 @convert_to_mode(i32, i64, i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i64 @estimate_case_costs(%struct.case_node*) #1

declare dso_local i32 @balance_case_nodes(%struct.case_node**, i32*) #1

declare dso_local i32 @emit_case_nodes(i64, %struct.case_node*, i64, i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @try_casesi(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @try_tablejump(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i64* @alloca(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @gen_rtx_LABEL_REF(i32, i64) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_rtx_ADDR_DIFF_VEC(i32, i64, i32, i32, i32) #1

declare dso_local i32 @gen_rtvec_v(i32, i64*) #1

declare dso_local i32 @gen_rtx_ADDR_VEC(i32, i32) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @squeeze_notes(i64*, i64*) #1

declare dso_local i32 @reorder_insns(i64, i64, i64) #1

declare dso_local i32 @free_temp_slots(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
