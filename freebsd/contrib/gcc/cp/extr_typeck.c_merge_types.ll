; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_merge_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_merge_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @merge_types(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %3, align 8
  br label %306

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @original_type(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @original_type(i64 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %3, align 8
  br label %306

35:                                               ; preds = %27
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @error_mark_node, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %3, align 8
  br label %306

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @error_mark_node, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %3, align 8
  br label %306

47:                                               ; preds = %41
  %48 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 %48(i64 %49, i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @TYPE_PTRMEMFUNC_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %56)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @TYPE_PTRMEMFUNC_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %63)
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @TREE_CODE(i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @TREE_CODE(i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  switch i32 %70, label %285 [
    i32 130, label %71
    i32 129, label %71
    i32 131, label %102
    i32 134, label %117
    i32 133, label %161
    i32 132, label %252
    i32 128, label %283
  ]

71:                                               ; preds = %65, %65
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_TYPE(i64 %74)
  %76 = call i64 @merge_types(i64 %73, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @cp_type_quals(i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @build_pointer_type(i64 %82)
  store i64 %83, i64* %4, align 8
  br label %87

84:                                               ; preds = %71
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @build_reference_type(i64 %85)
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @build_type_attribute_variant(i64 %88, i64 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @cp_build_qualified_type(i64 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @TREE_CODE(i64 %94)
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @build_ptrmemfunc_type(i64 %98)
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %97, %87
  %101 = load i64, i64* %4, align 8
  store i64 %101, i64* %3, align 8
  br label %306

102:                                              ; preds = %65
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @cp_type_quals(i64 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %107)
  %109 = call i64 @merge_types(i64 %106, i64 %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i64 %110)
  %112 = load i64, i64* %12, align 8
  %113 = call i64 @build_ptrmem_type(i32 %111, i64 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @cp_build_qualified_type(i64 %114, i32 %115)
  store i64 %116, i64* %4, align 8
  br label %286

117:                                              ; preds = %65
  %118 = load i64, i64* %4, align 8
  %119 = call i64 @TREE_TYPE(i64 %118)
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @TREE_TYPE(i64 %120)
  %122 = call i64 @merge_types(i64 %119, i64 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %4, align 8
  %125 = call i64 @TREE_TYPE(i64 %124)
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @TYPE_DOMAIN(i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i64 @build_type_attribute_variant(i64 %132, i64 %133)
  store i64 %134, i64* %3, align 8
  br label %306

135:                                              ; preds = %127, %117
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i64 @TREE_TYPE(i64 %137)
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @TYPE_DOMAIN(i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i64 @build_type_attribute_variant(i64 %145, i64 %146)
  store i64 %147, i64* %3, align 8
  br label %306

148:                                              ; preds = %140, %135
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @TYPE_DOMAIN(i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i64, i64* %4, align 8
  br label %157

155:                                              ; preds = %148
  %156 = load i64, i64* %5, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i64 [ %154, %153 ], [ %156, %155 ]
  %159 = call i32 @TYPE_DOMAIN(i64 %158)
  %160 = call i64 @build_cplus_array_type(i64 %149, i32 %159)
  store i64 %160, i64* %4, align 8
  br label %286

161:                                              ; preds = %65
  %162 = load i64, i64* %4, align 8
  %163 = call i64 @TREE_TYPE(i64 %162)
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @TREE_TYPE(i64 %164)
  %166 = call i64 @merge_types(i64 %163, i64 %165)
  store i64 %166, i64* %14, align 8
  %167 = load i64, i64* %4, align 8
  %168 = call i64 @TYPE_ARG_TYPES(i64 %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @TYPE_ARG_TYPES(i64 %169)
  store i64 %170, i64* %16, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* %4, align 8
  %173 = call i64 @TREE_TYPE(i64 %172)
  %174 = icmp eq i64 %171, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %161
  %176 = load i64, i64* %16, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* %8, align 8
  %181 = call i64 @cp_build_type_attribute_variant(i64 %179, i64 %180)
  store i64 %181, i64* %3, align 8
  br label %306

182:                                              ; preds = %175, %161
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %5, align 8
  %185 = call i64 @TREE_TYPE(i64 %184)
  %186 = icmp eq i64 %183, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load i64, i64* %15, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* %8, align 8
  %193 = call i64 @cp_build_type_attribute_variant(i64 %191, i64 %192)
  store i64 %193, i64* %3, align 8
  br label %306

194:                                              ; preds = %187, %182
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* @NULL_TREE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %194
  %199 = load i64, i64* %15, align 8
  %200 = call i64 @TREE_VALUE(i64 %199)
  %201 = load i64, i64* @void_type_node, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %198, %194
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* %16, align 8
  %206 = call i64 @build_function_type(i64 %204, i64 %205)
  store i64 %206, i64* %17, align 8
  %207 = load i64, i64* %5, align 8
  %208 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %207)
  store i64 %208, i64* %18, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* %18, align 8
  %213 = call i64 @build_exception_variant(i64 %211, i64 %212)
  store i64 %213, i64* %17, align 8
  br label %214

214:                                              ; preds = %210, %203
  %215 = load i64, i64* %17, align 8
  %216 = load i64, i64* %8, align 8
  %217 = call i64 @cp_build_type_attribute_variant(i64 %215, i64 %216)
  store i64 %217, i64* %3, align 8
  br label %306

218:                                              ; preds = %198
  %219 = load i64, i64* %4, align 8
  %220 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %219)
  store i64 %220, i64* %18, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* @NULL_TREE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %229, label %224

224:                                              ; preds = %218
  %225 = load i64, i64* %16, align 8
  %226 = call i64 @TREE_VALUE(i64 %225)
  %227 = load i64, i64* @void_type_node, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %224, %218
  %230 = load i64, i64* %14, align 8
  %231 = load i64, i64* %15, align 8
  %232 = call i64 @build_function_type(i64 %230, i64 %231)
  store i64 %232, i64* %17, align 8
  %233 = load i64, i64* %18, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i64, i64* %17, align 8
  %237 = load i64, i64* %18, align 8
  %238 = call i64 @build_exception_variant(i64 %236, i64 %237)
  store i64 %238, i64* %17, align 8
  br label %239

239:                                              ; preds = %235, %229
  %240 = load i64, i64* %17, align 8
  %241 = load i64, i64* %8, align 8
  %242 = call i64 @cp_build_type_attribute_variant(i64 %240, i64 %241)
  store i64 %242, i64* %3, align 8
  br label %306

243:                                              ; preds = %224
  %244 = load i64, i64* %14, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load i64, i64* %16, align 8
  %247 = call i64 @commonparms(i64 %245, i64 %246)
  %248 = call i64 @build_function_type(i64 %244, i64 %247)
  store i64 %248, i64* %17, align 8
  %249 = load i64, i64* %17, align 8
  %250 = load i64, i64* %18, align 8
  %251 = call i64 @build_exception_variant(i64 %249, i64 %250)
  store i64 %251, i64* %4, align 8
  br label %286

252:                                              ; preds = %65
  %253 = load i64, i64* %5, align 8
  %254 = call i64 @TYPE_ARG_TYPES(i64 %253)
  %255 = call i64 @TREE_VALUE(i64 %254)
  %256 = call i64 @TREE_TYPE(i64 %255)
  store i64 %256, i64* %19, align 8
  %257 = load i64, i64* %4, align 8
  %258 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %257)
  store i64 %258, i64* %20, align 8
  %259 = load i64, i64* %4, align 8
  %260 = call i64 @TREE_TYPE(i64 %259)
  %261 = load i64, i64* %4, align 8
  %262 = call i64 @TYPE_ARG_TYPES(i64 %261)
  %263 = call i64 @TREE_CHAIN(i64 %262)
  %264 = call i64 @build_function_type(i64 %260, i64 %263)
  store i64 %264, i64* %4, align 8
  %265 = load i64, i64* %5, align 8
  %266 = call i64 @TREE_TYPE(i64 %265)
  %267 = load i64, i64* %5, align 8
  %268 = call i64 @TYPE_ARG_TYPES(i64 %267)
  %269 = call i64 @TREE_CHAIN(i64 %268)
  %270 = call i64 @build_function_type(i64 %266, i64 %269)
  store i64 %270, i64* %5, align 8
  %271 = load i64, i64* %4, align 8
  %272 = load i64, i64* %5, align 8
  %273 = call i64 @merge_types(i64 %271, i64 %272)
  store i64 %273, i64* %21, align 8
  %274 = load i64, i64* %19, align 8
  %275 = load i64, i64* %21, align 8
  %276 = call i64 @TREE_TYPE(i64 %275)
  %277 = load i64, i64* %21, align 8
  %278 = call i64 @TYPE_ARG_TYPES(i64 %277)
  %279 = call i64 @build_method_type_directly(i64 %274, i64 %276, i64 %278)
  store i64 %279, i64* %21, align 8
  %280 = load i64, i64* %21, align 8
  %281 = load i64, i64* %20, align 8
  %282 = call i64 @build_exception_variant(i64 %280, i64 %281)
  store i64 %282, i64* %4, align 8
  br label %286

283:                                              ; preds = %65
  %284 = load i64, i64* %4, align 8
  store i64 %284, i64* %3, align 8
  br label %306

285:                                              ; preds = %65
  br label %286

286:                                              ; preds = %285, %252, %243, %157, %102
  %287 = load i64, i64* %4, align 8
  %288 = call i32 @TYPE_ATTRIBUTES(i64 %287)
  %289 = load i64, i64* %8, align 8
  %290 = call i64 @attribute_list_equal(i32 %288, i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = load i64, i64* %4, align 8
  store i64 %293, i64* %3, align 8
  br label %306

294:                                              ; preds = %286
  %295 = load i64, i64* %5, align 8
  %296 = call i32 @TYPE_ATTRIBUTES(i64 %295)
  %297 = load i64, i64* %8, align 8
  %298 = call i64 @attribute_list_equal(i32 %296, i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = load i64, i64* %5, align 8
  store i64 %301, i64* %3, align 8
  br label %306

302:                                              ; preds = %294
  %303 = load i64, i64* %4, align 8
  %304 = load i64, i64* %8, align 8
  %305 = call i64 @cp_build_type_attribute_variant(i64 %303, i64 %304)
  store i64 %305, i64* %3, align 8
  br label %306

306:                                              ; preds = %302, %300, %292, %283, %239, %214, %190, %178, %144, %131, %100, %45, %39, %33, %25
  %307 = load i64, i64* %3, align 8
  ret i64 %307
}

declare dso_local i64 @original_type(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @cp_type_quals(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build_reference_type(i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

declare dso_local i64 @cp_build_qualified_type(i64, i32) #1

declare dso_local i64 @build_ptrmemfunc_type(i64) #1

declare dso_local i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64) #1

declare dso_local i64 @build_ptrmem_type(i32, i64) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i32 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @build_cplus_array_type(i64, i32) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @cp_build_type_attribute_variant(i64, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @build_function_type(i64, i64) #1

declare dso_local i64 @TYPE_RAISES_EXCEPTIONS(i64) #1

declare dso_local i64 @build_exception_variant(i64, i64) #1

declare dso_local i64 @commonparms(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_method_type_directly(i64, i64, i64) #1

declare dso_local i64 @attribute_list_equal(i32, i64) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
