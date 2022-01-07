; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_reinterpret_cast_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_reinterpret_cast_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"invalid cast of an rvalue expression of type %qT to type %qT\00", align 1
@COMPARE_BASE = common dso_local global i32 0, align 4
@COMPARE_DERIVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"casting %qT to %qT does not dereference pointer\00", align 1
@ADDR_EXPR = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"cast from %qT to %qT loses precision\00", align 1
@INTEGER_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"reinterpret_cast\00", align 1
@STRICT_ALIGNMENT = common dso_local global i64 0, align 8
@warn_cast_align = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"cast from %qT to %qT increases required alignment of target type\00", align 1
@warn_strict_aliasing = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [74 x i8] c"ISO C++ forbids casting between pointer-to-function and pointer-to-object\00", align 1
@VECTOR_TYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"invalid cast from type %qT to type %qT\00", align 1
@POINTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32*)* @build_reinterpret_cast_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_reinterpret_cast_1(i64 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @error_operand_p(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i64, i64* @error_mark_node, align 8
  store i64 %25, i64* %5, align 8
  br label %443

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @used_types_insert(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @REFERENCE_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @real_lvalue_p(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* @error_mark_node, align 8
  store i64 %43, i64* %5, align 8
  br label %443

44:                                               ; preds = %35
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @TYPE_PTR_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @TREE_TYPE(i64 %51)
  %53 = load i32, i32* @COMPARE_BASE, align 4
  %54 = load i32, i32* @COMPARE_DERIVED, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @comptypes(i64 %50, i64 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %48, %44
  %63 = load i32, i32* @ADDR_EXPR, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @build_unary_op(i32 %63, i64 %64, i32 0)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @error_mark_node, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = call i64 @build_pointer_type(i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @build_reinterpret_cast_1(i64 %72, i64 %73, i32 %74, i32* %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %69, %62
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @error_mark_node, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @build_indirect_ref(i64 %82, i32 0)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %5, align 8
  br label %443

86:                                               ; preds = %26
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @TYPE_PTRMEMFUNC_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @METHOD_TYPE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90, %86
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @TYPE_PTR_P(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @TREE_TYPE(i64 %100)
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @FUNCTION_TYPE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @TREE_TYPE(i64 %106)
  %108 = call i64 @VOID_TYPE_P(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105, %99
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @convert_member_func_to_ptr(i64 %111, i64 %112)
  store i64 %113, i64* %5, align 8
  br label %443

114:                                              ; preds = %105, %95, %90
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @decay_conversion(i64 %115)
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @TREE_CODE(i64 %117)
  %119 = load i64, i64* @NOP_EXPR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @TREE_TYPE(i64 %122)
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @TREE_OPERAND(i64 %124, i32 0)
  %126 = call i64 @TREE_TYPE(i64 %125)
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @TREE_OPERAND(i64 %129, i32 0)
  store i64 %130, i64* %7, align 8
  br label %131

131:                                              ; preds = %128, %121, %114
  %132 = load i64, i64* %7, align 8
  %133 = call i64 @error_operand_p(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i64, i64* @error_mark_node, align 8
  store i64 %136, i64* %5, align 8
  br label %443

137:                                              ; preds = %131
  %138 = load i64, i64* %7, align 8
  %139 = call i64 @TREE_TYPE(i64 %138)
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i64 @CP_INTEGRAL_TYPE_P(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @TYPE_PTR_P(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load i64, i64* %6, align 8
  %149 = call i64 @TYPE_PRECISION(i64 %148)
  %150 = load i64, i64* %10, align 8
  %151 = call i64 @TYPE_PRECISION(i64 %150)
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @pedwarn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %153, %147
  br label %414

158:                                              ; preds = %143, %137
  %159 = load i64, i64* %6, align 8
  %160 = call i64 @TYPE_PTR_P(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i64, i64* %10, align 8
  %164 = call i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %413

167:                                              ; preds = %162, %158
  %168 = load i64, i64* %6, align 8
  %169 = call i64 @TREE_CODE(i64 %168)
  %170 = load i64, i64* @INTEGER_TYPE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %167
  %173 = load i64, i64* %10, align 8
  %174 = call i64 @TREE_CODE(i64 %173)
  %175 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load i64, i64* %6, align 8
  %179 = call i64 @TYPE_PRECISION(i64 %178)
  %180 = load i64, i64* %10, align 8
  %181 = call i64 @TYPE_PRECISION(i64 %180)
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %6, align 8
  %186 = call i32 @pedwarn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %184, i64 %185)
  br label %187

187:                                              ; preds = %183, %177
  br label %412

188:                                              ; preds = %172, %167
  %189 = load i64, i64* %6, align 8
  %190 = call i64 @TREE_CODE(i64 %189)
  %191 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i64, i64* %10, align 8
  %195 = call i64 @TREE_CODE(i64 %194)
  %196 = load i64, i64* @INTEGER_TYPE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %411

199:                                              ; preds = %193, %188
  %200 = load i64, i64* %6, align 8
  %201 = call i64 @TREE_CODE(i64 %200)
  %202 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i64, i64* %10, align 8
  %206 = call i64 @TREE_CODE(i64 %205)
  %207 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %410

210:                                              ; preds = %204, %199
  %211 = load i64, i64* %10, align 8
  %212 = call i64 @TREE_CODE(i64 %211)
  %213 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load i64, i64* %6, align 8
  %217 = call i64 @objc_is_id(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %215
  %220 = load i64, i64* %6, align 8
  %221 = call i64 @TREE_CODE(i64 %220)
  %222 = load i64, i64* @POINTER_TYPE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @TREE_TYPE(i64 %225)
  %227 = call i64 @VOID_TYPE_P(i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224, %215
  br label %409

230:                                              ; preds = %224, %219, %210
  %231 = load i64, i64* %6, align 8
  %232 = call i64 @TREE_CODE(i64 %231)
  %233 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load i64, i64* %10, align 8
  %237 = call i64 @TREE_CODE(i64 %236)
  %238 = load i64, i64* @POINTER_TYPE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load i64, i64* %10, align 8
  %242 = call i64 @objc_is_id(i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* %10, align 8
  %246 = call i64 @TREE_TYPE(i64 %245)
  %247 = call i64 @VOID_TYPE_P(i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244, %240
  br label %408

250:                                              ; preds = %244, %235, %230
  %251 = load i64, i64* %6, align 8
  %252 = call i64 @TYPE_PTRFN_P(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i64, i64* %10, align 8
  %256 = call i64 @TYPE_PTRFN_P(i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %254, %250
  %259 = load i64, i64* %6, align 8
  %260 = call i64 @TYPE_PTRMEMFUNC_P(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i64, i64* %10, align 8
  %264 = call i64 @TYPE_PTRMEMFUNC_P(i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %262, %254
  %267 = load i64, i64* %6, align 8
  %268 = load i64, i64* %7, align 8
  %269 = call i32 @build_nop(i64 %267, i64 %268)
  %270 = call i64 @fold_if_not_in_template(i32 %269)
  store i64 %270, i64* %5, align 8
  br label %443

271:                                              ; preds = %262, %258
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @TYPE_PTRMEM_P(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = load i64, i64* %10, align 8
  %277 = call i64 @TYPE_PTRMEM_P(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %275, %271
  %280 = load i64, i64* %6, align 8
  %281 = call i64 @TYPE_PTROBV_P(i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %348

283:                                              ; preds = %279
  %284 = load i64, i64* %10, align 8
  %285 = call i64 @TYPE_PTROBV_P(i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %348

287:                                              ; preds = %283, %275
  %288 = load i64, i64* %7, align 8
  store i64 %288, i64* %11, align 8
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* %6, align 8
  %294 = call i32 @check_for_casting_away_constness(i64 %292, i64 %293, i32 (i8*, i64, i64)* @error, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %295

295:                                              ; preds = %291, %287
  %296 = load i64, i64* @STRICT_ALIGNMENT, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %333

298:                                              ; preds = %295
  %299 = load i64, i64* @warn_cast_align, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %333

301:                                              ; preds = %298
  %302 = load i64, i64* %6, align 8
  %303 = call i64 @VOID_TYPE_P(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %333, label %305

305:                                              ; preds = %301
  %306 = load i64, i64* %10, align 8
  %307 = call i64 @TREE_TYPE(i64 %306)
  %308 = call i64 @TREE_CODE(i64 %307)
  %309 = load i64, i64* @FUNCTION_TYPE, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %333

311:                                              ; preds = %305
  %312 = load i64, i64* %6, align 8
  %313 = call i64 @TREE_TYPE(i64 %312)
  %314 = call i64 @COMPLETE_TYPE_P(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %333

316:                                              ; preds = %311
  %317 = load i64, i64* %10, align 8
  %318 = call i64 @TREE_TYPE(i64 %317)
  %319 = call i64 @COMPLETE_TYPE_P(i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %316
  %322 = load i64, i64* %6, align 8
  %323 = call i64 @TREE_TYPE(i64 %322)
  %324 = call i64 @TYPE_ALIGN(i64 %323)
  %325 = load i64, i64* %10, align 8
  %326 = call i64 @TREE_TYPE(i64 %325)
  %327 = call i64 @TYPE_ALIGN(i64 %326)
  %328 = icmp sgt i64 %324, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %321
  %330 = load i64, i64* %10, align 8
  %331 = load i64, i64* %6, align 8
  %332 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %330, i64 %331)
  br label %333

333:                                              ; preds = %329, %321, %316, %311, %305, %301, %298, %295
  %334 = load i64, i64* %11, align 8
  %335 = call i32 @STRIP_NOPS(i64 %334)
  %336 = load i32, i32* @warn_strict_aliasing, align 4
  %337 = icmp sle i32 %336, 2
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load i64, i64* %10, align 8
  %340 = load i64, i64* %6, align 8
  %341 = load i64, i64* %11, align 8
  %342 = call i32 @strict_aliasing_warning(i64 %339, i64 %340, i64 %341)
  br label %343

343:                                              ; preds = %338, %333
  %344 = load i64, i64* %6, align 8
  %345 = load i64, i64* %7, align 8
  %346 = call i32 @build_nop(i64 %344, i64 %345)
  %347 = call i64 @fold_if_not_in_template(i32 %346)
  store i64 %347, i64* %5, align 8
  br label %443

348:                                              ; preds = %283, %279
  %349 = load i64, i64* %6, align 8
  %350 = call i64 @TYPE_PTRFN_P(i64 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load i64, i64* %10, align 8
  %354 = call i64 @TYPE_PTROBV_P(i64 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %364, label %356

356:                                              ; preds = %352, %348
  %357 = load i64, i64* %10, align 8
  %358 = call i64 @TYPE_PTRFN_P(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %356
  %361 = load i64, i64* %6, align 8
  %362 = call i64 @TYPE_PTROBV_P(i64 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %360, %352
  %365 = load i64, i64* @pedantic, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %364
  %370 = load i64, i64* %6, align 8
  %371 = load i64, i64* %7, align 8
  %372 = call i32 @build_nop(i64 %370, i64 %371)
  %373 = call i64 @fold_if_not_in_template(i32 %372)
  store i64 %373, i64* %5, align 8
  br label %443

374:                                              ; preds = %360, %356
  %375 = load i64, i64* %6, align 8
  %376 = call i64 @TREE_CODE(i64 %375)
  %377 = load i64, i64* @VECTOR_TYPE, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load i64, i64* %6, align 8
  %381 = load i64, i64* %7, align 8
  %382 = call i32 @convert_to_vector(i64 %380, i64 %381)
  %383 = call i64 @fold_if_not_in_template(i32 %382)
  store i64 %383, i64* %5, align 8
  br label %443

384:                                              ; preds = %374
  %385 = load i64, i64* %10, align 8
  %386 = call i64 @TREE_CODE(i64 %385)
  %387 = load i64, i64* @VECTOR_TYPE, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %398

389:                                              ; preds = %384
  %390 = load i64, i64* %6, align 8
  %391 = call i64 @INTEGRAL_TYPE_P(i64 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %389
  %394 = load i64, i64* %6, align 8
  %395 = load i64, i64* %7, align 8
  %396 = call i32 @convert_to_integer(i64 %394, i64 %395)
  %397 = call i64 @fold_if_not_in_template(i32 %396)
  store i64 %397, i64* %5, align 8
  br label %443

398:                                              ; preds = %389, %384
  %399 = load i32*, i32** %9, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = load i32*, i32** %9, align 8
  store i32 0, i32* %402, align 4
  br label %403

403:                                              ; preds = %401, %398
  %404 = load i64, i64* %10, align 8
  %405 = load i64, i64* %6, align 8
  %406 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %404, i64 %405)
  %407 = load i64, i64* @error_mark_node, align 8
  store i64 %407, i64* %5, align 8
  br label %443

408:                                              ; preds = %249
  br label %409

409:                                              ; preds = %408, %229
  br label %410

410:                                              ; preds = %409, %209
  br label %411

411:                                              ; preds = %410, %198
  br label %412

412:                                              ; preds = %411, %187
  br label %413

413:                                              ; preds = %412, %166
  br label %414

414:                                              ; preds = %413, %157
  %415 = load i64, i64* %6, align 8
  %416 = call i64 @TREE_CODE(i64 %415)
  %417 = load i64, i64* @INTEGER_TYPE, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %439

419:                                              ; preds = %414
  %420 = load i64, i64* %10, align 8
  %421 = call i64 @TREE_CODE(i64 %420)
  %422 = load i64, i64* @POINTER_TYPE, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %439

424:                                              ; preds = %419
  %425 = load i64, i64* %6, align 8
  %426 = call i64 @TYPE_PRECISION(i64 %425)
  %427 = load i64, i64* %10, align 8
  %428 = call i64 @TYPE_PRECISION(i64 %427)
  %429 = icmp sgt i64 %426, %428
  br i1 %429, label %430, label %439

430:                                              ; preds = %424
  %431 = load i64, i64* %6, align 8
  %432 = call i64 @TYPE_UNSIGNED(i64 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %430
  %435 = load i32, i32* @POINTER_SIZE, align 4
  %436 = call i64 @c_common_type_for_size(i32 %435, i32 1)
  %437 = load i64, i64* %7, align 8
  %438 = call i64 @cp_convert(i64 %436, i64 %437)
  store i64 %438, i64* %7, align 8
  br label %439

439:                                              ; preds = %434, %430, %424, %419, %414
  %440 = load i64, i64* %6, align 8
  %441 = load i64, i64* %7, align 8
  %442 = call i64 @cp_convert(i64 %440, i64 %441)
  store i64 %442, i64* %5, align 8
  br label %443

443:                                              ; preds = %439, %403, %393, %379, %369, %343, %266, %135, %110, %84, %39, %24
  %444 = load i64, i64* %5, align 8
  ret i64 %444
}

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @used_types_insert(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @real_lvalue_p(i64) #1

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @comptypes(i64, i64, i32) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build_indirect_ref(i64, i32) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @convert_member_func_to_ptr(i64, i64) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @CP_INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i32 @pedwarn(i8*, i64, i64) #1

declare dso_local i64 @INTEGRAL_OR_ENUMERATION_TYPE_P(i64) #1

declare dso_local i64 @objc_is_id(i64) #1

declare dso_local i64 @TYPE_PTRFN_P(i64) #1

declare dso_local i64 @fold_if_not_in_template(i32) #1

declare dso_local i32 @build_nop(i64, i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i64 @TYPE_PTROBV_P(i64) #1

declare dso_local i32 @check_for_casting_away_constness(i64, i64, i32 (i8*, i64, i64)*, i8*) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @TYPE_ALIGN(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i32 @strict_aliasing_warning(i64, i64, i64) #1

declare dso_local i32 @convert_to_vector(i64, i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @convert_to_integer(i64, i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @cp_convert(i64, i64) #1

declare dso_local i64 @c_common_type_for_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
