; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_conditional_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_conditional_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOID_TYPE = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"non-lvalue array in conditional expression\00", align 1
@INTEGER_TYPE = common dso_local global i32 0, align 4
@REAL_TYPE = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@warn_sign_compare = common dso_local global i64 0, align 8
@skip_evaluation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"signed and unsigned type in conditional expression\00", align 1
@pedantic = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"ISO C forbids conditional expr with only one void side\00", align 1
@void_type_node = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i32 0, align 4
@BLOCK_POINTER_TYPE = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"ISO C forbids conditional expr between %<void *%> and function pointer\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"pointer type mismatch in conditional expression\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"pointer/integer type mismatch in conditional expression\00", align 1
@null_pointer_node = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"block pointer/integer type mismatch in conditional expression\00", align 1
@flag_cond_mismatch = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"type mismatch in conditional expression\00", align 1
@COND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_conditional_expr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %12, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @VOID_TYPE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @default_conversion(i64 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @VOID_TYPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @default_conversion(i64 %35)
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @ERROR_MARK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @ERROR_MARK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @ERROR_MARK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42, %37
  %55 = load i64, i64* @error_mark_node, align 8
  store i64 %55, i64* %4, align 8
  br label %452

56:                                               ; preds = %48
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @TREE_TYPE(i64 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ARRAY_TYPE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ARRAY_TYPE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %56
  %75 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* @error_mark_node, align 8
  store i64 %76, i64* %4, align 8
  br label %452

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @TYPE_MAIN_VARIANT(i64 %78)
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @TYPE_MAIN_VARIANT(i64 %80)
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %12, align 8
  br label %92

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @TYPE_MAIN_VARIANT(i64 %90)
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %89, %87
  br label %393

93:                                               ; preds = %77
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @INTEGER_TYPE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @REAL_TYPE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @COMPLEX_TYPE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %163

105:                                              ; preds = %101, %97, %93
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @INTEGER_TYPE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @REAL_TYPE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @COMPLEX_TYPE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %163

117:                                              ; preds = %113, %109, %105
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @c_common_type(i64 %118, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* @warn_sign_compare, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %162

123:                                              ; preds = %117
  %124 = load i32, i32* @skip_evaluation, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %162, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  %129 = call i32 @TYPE_UNSIGNED(i64 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @TREE_TYPE(i64 %130)
  %132 = call i32 @TYPE_UNSIGNED(i64 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %16, align 4
  %135 = xor i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %126
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @TYPE_UNSIGNED(i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %160

142:                                              ; preds = %137
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @tree_expr_nonnegative_warnv_p(i64 %146, i32* %17)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @tree_expr_nonnegative_warnv_p(i64 %153, i32* %17)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %145
  br label %159

157:                                              ; preds = %152, %149
  %158 = call i32 @warning(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %156
  br label %160

160:                                              ; preds = %159, %141
  br label %161

161:                                              ; preds = %160, %126
  br label %162

162:                                              ; preds = %161, %123, %117
  br label %392

163:                                              ; preds = %113, %101
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* @VOID_TYPE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* @VOID_TYPE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %168, %163
  %174 = load i64, i64* @pedantic, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* @VOID_TYPE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* @VOID_TYPE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %181, %176
  %187 = call i32 @pedwarn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %181, %173
  %189 = load i64, i64* @void_type_node, align 8
  store i64 %189, i64* %12, align 8
  br label %391

190:                                              ; preds = %168
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @POINTER_TYPE, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %310

198:                                              ; preds = %194, %190
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @POINTER_TYPE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %310

206:                                              ; preds = %202, %198
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* %9, align 8
  %209 = call i64 @comp_target_types(i64 %207, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %9, align 8
  %214 = call i64 @common_pointer_type(i64 %212, i64 %213)
  store i64 %214, i64* %12, align 8
  br label %309

215:                                              ; preds = %206
  %216 = load i64, i64* %13, align 8
  %217 = call i64 @null_pointer_constant_p(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i64, i64* %9, align 8
  %221 = load i64, i64* %8, align 8
  %222 = call i64 @qualify_type(i64 %220, i64 %221)
  store i64 %222, i64* %12, align 8
  br label %308

223:                                              ; preds = %215
  %224 = load i64, i64* %14, align 8
  %225 = call i64 @null_pointer_constant_p(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i64, i64* %8, align 8
  %229 = load i64, i64* %9, align 8
  %230 = call i64 @qualify_type(i64 %228, i64 %229)
  store i64 %230, i64* %12, align 8
  br label %307

231:                                              ; preds = %223
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %231
  %236 = load i64, i64* %8, align 8
  %237 = call i64 @TREE_TYPE(i64 %236)
  %238 = call i64 @VOID_TYPE_P(i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i64, i64* %9, align 8
  store i64 %241, i64* %12, align 8
  br label %306

242:                                              ; preds = %235, %231
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = load i64, i64* %9, align 8
  %248 = call i64 @TREE_TYPE(i64 %247)
  %249 = call i64 @VOID_TYPE_P(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i64, i64* %8, align 8
  store i64 %252, i64* %12, align 8
  br label %305

253:                                              ; preds = %246, %242
  %254 = load i64, i64* %8, align 8
  %255 = call i64 @TREE_TYPE(i64 %254)
  %256 = call i64 @VOID_TYPE_P(i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253
  %259 = load i64, i64* @pedantic, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load i64, i64* %9, align 8
  %263 = call i64 @TREE_TYPE(i64 %262)
  %264 = call i64 @TREE_CODE(i64 %263)
  %265 = load i64, i64* @FUNCTION_TYPE, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = call i32 @pedwarn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %261, %258
  %270 = load i64, i64* %8, align 8
  %271 = call i64 @TREE_TYPE(i64 %270)
  %272 = load i64, i64* %9, align 8
  %273 = call i64 @TREE_TYPE(i64 %272)
  %274 = call i64 @qualify_type(i64 %271, i64 %273)
  %275 = call i64 @build_pointer_type(i64 %274)
  store i64 %275, i64* %12, align 8
  br label %304

276:                                              ; preds = %253
  %277 = load i64, i64* %9, align 8
  %278 = call i64 @TREE_TYPE(i64 %277)
  %279 = call i64 @VOID_TYPE_P(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %276
  %282 = load i64, i64* @pedantic, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %281
  %285 = load i64, i64* %8, align 8
  %286 = call i64 @TREE_TYPE(i64 %285)
  %287 = call i64 @TREE_CODE(i64 %286)
  %288 = load i64, i64* @FUNCTION_TYPE, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = call i32 @pedwarn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %284, %281
  %293 = load i64, i64* %9, align 8
  %294 = call i64 @TREE_TYPE(i64 %293)
  %295 = load i64, i64* %8, align 8
  %296 = call i64 @TREE_TYPE(i64 %295)
  %297 = call i64 @qualify_type(i64 %294, i64 %296)
  %298 = call i64 @build_pointer_type(i64 %297)
  store i64 %298, i64* %12, align 8
  br label %303

299:                                              ; preds = %276
  %300 = call i32 @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %301 = load i64, i64* @void_type_node, align 8
  %302 = call i64 @build_pointer_type(i64 %301)
  store i64 %302, i64* %12, align 8
  br label %303

303:                                              ; preds = %299, %292
  br label %304

304:                                              ; preds = %303, %269
  br label %305

305:                                              ; preds = %304, %251
  br label %306

306:                                              ; preds = %305, %240
  br label %307

307:                                              ; preds = %306, %227
  br label %308

308:                                              ; preds = %307, %219
  br label %309

309:                                              ; preds = %308, %211
  br label %390

310:                                              ; preds = %202, %194
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* @POINTER_TYPE, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %328

314:                                              ; preds = %310
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* @INTEGER_TYPE, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %328

318:                                              ; preds = %314
  %319 = load i64, i64* %14, align 8
  %320 = call i64 @null_pointer_constant_p(i64 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = call i32 @pedwarn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %326

324:                                              ; preds = %318
  %325 = load i64, i64* @null_pointer_node, align 8
  store i64 %325, i64* %7, align 8
  br label %326

326:                                              ; preds = %324, %322
  %327 = load i64, i64* %8, align 8
  store i64 %327, i64* %12, align 8
  br label %389

328:                                              ; preds = %314, %310
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @POINTER_TYPE, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %328
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* @INTEGER_TYPE, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %332
  %337 = load i64, i64* %13, align 8
  %338 = call i64 @null_pointer_constant_p(i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = call i32 @pedwarn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %344

342:                                              ; preds = %336
  %343 = load i64, i64* @null_pointer_node, align 8
  store i64 %343, i64* %6, align 8
  br label %344

344:                                              ; preds = %342, %340
  %345 = load i64, i64* %9, align 8
  store i64 %345, i64* %12, align 8
  br label %388

346:                                              ; preds = %332, %328
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %366

350:                                              ; preds = %346
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* @INTEGER_TYPE, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %366

354:                                              ; preds = %350
  %355 = load i64, i64* %14, align 8
  %356 = call i64 @null_pointer_constant_p(i64 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %354
  %359 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  br label %364

360:                                              ; preds = %354
  %361 = load i64, i64* %8, align 8
  %362 = load i64, i64* @null_pointer_node, align 8
  %363 = call i64 @convert(i64 %361, i64 %362)
  store i64 %363, i64* %7, align 8
  br label %364

364:                                              ; preds = %360, %358
  %365 = load i64, i64* %8, align 8
  store i64 %365, i64* %12, align 8
  br label %387

366:                                              ; preds = %350, %346
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %386

370:                                              ; preds = %366
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* @INTEGER_TYPE, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %386

374:                                              ; preds = %370
  %375 = load i64, i64* %13, align 8
  %376 = call i64 @null_pointer_constant_p(i64 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  br label %384

380:                                              ; preds = %374
  %381 = load i64, i64* %9, align 8
  %382 = load i64, i64* @null_pointer_node, align 8
  %383 = call i64 @convert(i64 %381, i64 %382)
  store i64 %383, i64* %6, align 8
  br label %384

384:                                              ; preds = %380, %378
  %385 = load i64, i64* %9, align 8
  store i64 %385, i64* %12, align 8
  br label %386

386:                                              ; preds = %384, %370, %366
  br label %387

387:                                              ; preds = %386, %364
  br label %388

388:                                              ; preds = %387, %344
  br label %389

389:                                              ; preds = %388, %326
  br label %390

390:                                              ; preds = %389, %309
  br label %391

391:                                              ; preds = %390, %188
  br label %392

392:                                              ; preds = %391, %162
  br label %393

393:                                              ; preds = %392, %92
  %394 = load i64, i64* %12, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %405, label %396

396:                                              ; preds = %393
  %397 = load i64, i64* @flag_cond_mismatch, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = load i64, i64* @void_type_node, align 8
  store i64 %400, i64* %12, align 8
  br label %404

401:                                              ; preds = %396
  %402 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %403 = load i64, i64* @error_mark_node, align 8
  store i64 %403, i64* %4, align 8
  br label %452

404:                                              ; preds = %399
  br label %405

405:                                              ; preds = %404, %393
  %406 = load i64, i64* %12, align 8
  %407 = load i64, i64* %6, align 8
  %408 = call i64 @TREE_READONLY(i64 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %405
  %411 = load i64, i64* %7, align 8
  %412 = call i64 @TREE_READONLY(i64 %411)
  %413 = icmp ne i64 %412, 0
  br label %414

414:                                              ; preds = %410, %405
  %415 = phi i1 [ true, %405 ], [ %413, %410 ]
  %416 = zext i1 %415 to i32
  %417 = load i64, i64* %6, align 8
  %418 = call i64 @TREE_THIS_VOLATILE(i64 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %414
  %421 = load i64, i64* %7, align 8
  %422 = call i64 @TREE_THIS_VOLATILE(i64 %421)
  %423 = icmp ne i64 %422, 0
  br label %424

424:                                              ; preds = %420, %414
  %425 = phi i1 [ true, %414 ], [ %423, %420 ]
  %426 = zext i1 %425 to i32
  %427 = call i64 @build_type_variant(i64 %406, i32 %416, i32 %426)
  store i64 %427, i64* %12, align 8
  %428 = load i64, i64* %12, align 8
  %429 = load i64, i64* %6, align 8
  %430 = call i64 @TREE_TYPE(i64 %429)
  %431 = icmp ne i64 %428, %430
  br i1 %431, label %432, label %436

432:                                              ; preds = %424
  %433 = load i64, i64* %12, align 8
  %434 = load i64, i64* %6, align 8
  %435 = call i64 @convert_and_check(i64 %433, i64 %434)
  store i64 %435, i64* %6, align 8
  br label %436

436:                                              ; preds = %432, %424
  %437 = load i64, i64* %12, align 8
  %438 = load i64, i64* %7, align 8
  %439 = call i64 @TREE_TYPE(i64 %438)
  %440 = icmp ne i64 %437, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load i64, i64* %12, align 8
  %443 = load i64, i64* %7, align 8
  %444 = call i64 @convert_and_check(i64 %442, i64 %443)
  store i64 %444, i64* %7, align 8
  br label %445

445:                                              ; preds = %441, %436
  %446 = load i32, i32* @COND_EXPR, align 4
  %447 = load i64, i64* %12, align 8
  %448 = load i64, i64* %5, align 8
  %449 = load i64, i64* %6, align 8
  %450 = load i64, i64* %7, align 8
  %451 = call i64 @fold_build3(i32 %446, i64 %447, i64 %448, i64 %449, i64 %450)
  store i64 %451, i64* %4, align 8
  br label %452

452:                                              ; preds = %445, %401, %74, %54
  %453 = load i64, i64* %4, align 8
  ret i64 %453
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @default_conversion(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @c_common_type(i64, i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @tree_expr_nonnegative_warnv_p(i64, i32*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @comp_target_types(i64, i64) #1

declare dso_local i64 @common_pointer_type(i64, i64) #1

declare dso_local i64 @null_pointer_constant_p(i64) #1

declare dso_local i64 @qualify_type(i64, i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @convert(i64, i64) #1

declare dso_local i64 @build_type_variant(i64, i32, i32) #1

declare dso_local i64 @TREE_READONLY(i64) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i64 @convert_and_check(i64, i64) #1

declare dso_local i64 @fold_build3(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
