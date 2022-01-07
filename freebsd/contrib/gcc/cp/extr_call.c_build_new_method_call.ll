; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_method_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_method_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"call to non-function %qD\00", align 1
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@ctor_identifier = common dso_local global i64 0, align 8
@dtor_identifier = common dso_local global i64 0, align 8
@base_ctor_identifier = common dso_local global i64 0, align 8
@base_dtor_identifier = common dso_local global i64 0, align 8
@complete_dtor_identifier = common dso_local global i64 0, align 8
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@DEDUCE_CALL = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"no matching function for call to %<%T::%s(%A)%#V%>\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"call of overloaded %<%s(%A)%> is ambiguous\00", align 1
@LOOKUP_NONVIRTUAL = common dso_local global i32 0, align 4
@current_class_ref = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"abstract virtual %q#D called from constructor\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"abstract virtual %q#D called from destructor\00", align 1
@METHOD_TYPE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"cannot call member function %qD without object\00", align 1
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@conversion_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_new_method_call(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.z_candidate*, align 8
  %15 = alloca %struct.z_candidate*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %14, align 8
  %40 = load i64, i64* @NULL_TREE, align 8
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* @NULL_TREE, align 8
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* @NULL_TREE, align 8
  store i64 %42, i64* %20, align 8
  store i32 0, i32* %27, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @NULL_TREE, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gcc_assert(i32 %46)
  %48 = load i64*, i64** %13, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %6
  %51 = load i64, i64* @NULL_TREE, align 8
  %52 = load i64*, i64** %13, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %6
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @error_operand_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @error_operand_p(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @error_mark_node, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57, %53
  %66 = load i64, i64* @error_mark_node, align 8
  store i64 %66, i64* %7, align 8
  br label %461

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @BASELINK_P(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* @error_mark_node, align 8
  store i64 %74, i64* %7, align 8
  br label %461

75:                                               ; preds = %67
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %29, align 8
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %30, align 8
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %31, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @BASELINK_BINFO(i64 %82)
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @BASELINK_ACCESS_BINFO(i64 %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @BASELINK_OPTYPE(i64 %87)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @BASELINK_FUNCTIONS(i64 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @TREE_OPERAND(i64 %96, i32 1)
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @TREE_OPERAND(i64 %98, i32 0)
  store i64 %99, i64* %9, align 8
  store i32 1, i32* %27, align 4
  br label %100

100:                                              ; preds = %95, %84
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @FUNCTION_DECL, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @TREE_CODE(i64 %106)
  %108 = load i64, i64* @TEMPLATE_DECL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i64, i64* %9, align 8
  %112 = call i64 @TREE_CODE(i64 %111)
  %113 = load i64, i64* @OVERLOAD, align 8
  %114 = icmp eq i64 %112, %113
  br label %115

115:                                              ; preds = %110, %105, %100
  %116 = phi i1 [ true, %105 ], [ true, %100 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @gcc_assert(i32 %117)
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @get_first_fn(i64 %119)
  store i64 %120, i64* %25, align 8
  %121 = load i64, i64* %25, align 8
  %122 = call i64 @DECL_NAME(i64 %121)
  store i64 %122, i64* %22, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i64 @TREE_TYPE(i64 %123)
  %125 = call i64 @TYPE_MAIN_VARIANT(i64 %124)
  store i64 %125, i64* %17, align 8
  %126 = load i64, i64* %17, align 8
  %127 = call i32 @CLASS_TYPE_P(i64 %126)
  %128 = call i32 @gcc_assert(i32 %127)
  %129 = load i64, i64* @processing_template_decl, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %115
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @build_non_dependent_expr(i64 %132)
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %31, align 8
  %135 = call i64 @build_non_dependent_args(i64 %134)
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %131, %115
  %137 = load i64, i64* %10, align 8
  store i64 %137, i64* %23, align 8
  %138 = load i64, i64* %22, align 8
  %139 = call i64 @IDENTIFIER_CTOR_OR_DTOR_P(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %136
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* @ctor_identifier, align 8
  %144 = icmp ne i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @gcc_assert(i32 %145)
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* @dtor_identifier, align 8
  %149 = icmp ne i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @gcc_assert(i32 %150)
  %152 = load i64, i64* %22, align 8
  %153 = load i64, i64* @base_ctor_identifier, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %141
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* @base_dtor_identifier, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155, %141
  %160 = load i64, i64* %17, align 8
  %161 = call i64 @CLASSTYPE_VBASECLASSES(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i64, i64* %23, align 8
  %165 = call i64 @TREE_CHAIN(i64 %164)
  store i64 %165, i64* %23, align 8
  br label %166

166:                                              ; preds = %163, %159, %155
  br label %167

167:                                              ; preds = %166, %136
  %168 = load i64, i64* %10, align 8
  %169 = call i64 @resolve_args(i64 %168)
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* @error_mark_node, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i64, i64* @error_mark_node, align 8
  store i64 %174, i64* %7, align 8
  br label %461

175:                                              ; preds = %167
  %176 = load i64, i64* %8, align 8
  %177 = call i64 @build_this(i64 %176)
  store i64 %177, i64* %21, align 8
  %178 = load i64, i64* %25, align 8
  %179 = call i64 @DECL_DESTRUCTOR_P(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load i64, i64* %17, align 8
  %183 = call i64 @build_pointer_type(i64 %182)
  store i64 %183, i64* %33, align 8
  %184 = load i64, i64* %33, align 8
  %185 = load i64, i64* %21, align 8
  %186 = call i64 @TREE_TYPE(i64 %185)
  %187 = call i32 @same_type_p(i64 %184, i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = load i64, i64* %33, align 8
  %191 = load i64, i64* %21, align 8
  %192 = call i64 @build_nop(i64 %190, i64 %191)
  store i64 %192, i64* %21, align 8
  br label %193

193:                                              ; preds = %189, %181
  %194 = load i64, i64* @complete_dtor_identifier, align 8
  store i64 %194, i64* %22, align 8
  br label %195

195:                                              ; preds = %193, %175
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, i64* %11, align 8
  %200 = call i64 @BINFO_TYPE(i64 %199)
  br label %203

201:                                              ; preds = %195
  %202 = load i64, i64* @NULL_TREE, align 8
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi i64 [ %200, %198 ], [ %202, %201 ]
  store i64 %204, i64* %26, align 8
  %205 = load i64, i64* @NULL_TREE, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i64, i64* %10, align 8
  %208 = call i64 @tree_cons(i64 %205, i64 %206, i64 %207)
  store i64 %208, i64* %20, align 8
  %209 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %209, i8** %32, align 8
  %210 = load i64, i64* %9, align 8
  store i64 %210, i64* %25, align 8
  br label %211

211:                                              ; preds = %263, %203
  %212 = load i64, i64* %25, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %266

214:                                              ; preds = %211
  %215 = load i64, i64* %25, align 8
  %216 = call i64 @OVL_CURRENT(i64 %215)
  store i64 %216, i64* %34, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load i64, i64* %34, align 8
  %223 = call i64 @DECL_NONCONVERTING_P(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %263

226:                                              ; preds = %221, %214
  %227 = load i64, i64* %34, align 8
  %228 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i64, i64* %20, align 8
  store i64 %231, i64* %35, align 8
  br label %234

232:                                              ; preds = %226
  %233 = load i64, i64* %10, align 8
  store i64 %233, i64* %35, align 8
  br label %234

234:                                              ; preds = %232, %230
  %235 = load i64, i64* %34, align 8
  %236 = call i64 @TREE_CODE(i64 %235)
  %237 = load i64, i64* @TEMPLATE_DECL, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %234
  %240 = load i64, i64* %34, align 8
  %241 = load i64, i64* %26, align 8
  %242 = load i64, i64* %16, align 8
  %243 = load i64, i64* %35, align 8
  %244 = load i64, i64* %19, align 8
  %245 = load i64, i64* %18, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* @DEDUCE_CALL, align 4
  %249 = call i32 @add_template_candidate(%struct.z_candidate** %14, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i32 %247, i32 %248)
  br label %262

250:                                              ; preds = %234
  %251 = load i32, i32* %27, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load i64, i64* %34, align 8
  %255 = load i64, i64* %26, align 8
  %256 = load i64, i64* %35, align 8
  %257 = load i64, i64* %18, align 8
  %258 = load i64, i64* %11, align 8
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @add_function_candidate(%struct.z_candidate** %14, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i32 %259)
  br label %261

261:                                              ; preds = %253, %250
  br label %262

262:                                              ; preds = %261, %239
  br label %263

263:                                              ; preds = %262, %225
  %264 = load i64, i64* %25, align 8
  %265 = call i64 @OVL_NEXT(i64 %264)
  store i64 %265, i64* %25, align 8
  br label %211

266:                                              ; preds = %211
  %267 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %268 = load i32, i32* @pedantic, align 4
  %269 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %267, i32 %268, i32* %28)
  store %struct.z_candidate* %269, %struct.z_candidate** %14, align 8
  %270 = load i32, i32* %28, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %301, label %272

272:                                              ; preds = %266
  %273 = load i64, i64* %17, align 8
  %274 = call i32 @COMPLETE_TYPE_P(i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = load i64, i64* %21, align 8
  %278 = load i64, i64* %17, align 8
  %279 = call i32 @cxx_incomplete_type_error(i64 %277, i64 %278)
  br label %297

280:                                              ; preds = %272
  %281 = load i64, i64* %22, align 8
  %282 = load i64, i64* %17, align 8
  %283 = call i8* @name_as_c_string(i64 %281, i64 %282, i32* %37)
  store i8* %283, i8** %36, align 8
  %284 = load i64, i64* %17, align 8
  %285 = load i8*, i8** %36, align 8
  %286 = load i64, i64* %23, align 8
  %287 = load i64, i64* %21, align 8
  %288 = call i64 @TREE_TYPE(i64 %287)
  %289 = call i64 @TREE_TYPE(i64 %288)
  %290 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %284, i8* %285, i64 %286, i64 %289)
  %291 = load i32, i32* %37, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %280
  %294 = load i8*, i8** %36, align 8
  %295 = call i32 @free(i8* %294)
  br label %296

296:                                              ; preds = %293, %280
  br label %297

297:                                              ; preds = %296, %276
  %298 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %299 = call i32 @print_z_candidates(%struct.z_candidate* %298)
  %300 = load i64, i64* @error_mark_node, align 8
  store i64 %300, i64* %24, align 8
  br label %439

301:                                              ; preds = %266
  %302 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %303 = call %struct.z_candidate* @tourney(%struct.z_candidate* %302)
  store %struct.z_candidate* %303, %struct.z_candidate** %15, align 8
  %304 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %305 = icmp eq %struct.z_candidate* %304, null
  br i1 %305, label %306, label %323

306:                                              ; preds = %301
  %307 = load i64, i64* %22, align 8
  %308 = load i64, i64* %17, align 8
  %309 = call i8* @name_as_c_string(i64 %307, i64 %308, i32* %39)
  store i8* %309, i8** %38, align 8
  %310 = load i8*, i8** %38, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load i64, i64* %23, align 8
  %313 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %311, i64 %312)
  %314 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %315 = call i32 @print_z_candidates(%struct.z_candidate* %314)
  %316 = load i32, i32* %39, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %306
  %319 = load i8*, i8** %38, align 8
  %320 = call i32 @free(i8* %319)
  br label %321

321:                                              ; preds = %318, %306
  %322 = load i64, i64* @error_mark_node, align 8
  store i64 %322, i64* %24, align 8
  br label %438

323:                                              ; preds = %301
  %324 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %325 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %25, align 8
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %355, label %331

331:                                              ; preds = %323
  %332 = load i64, i64* %25, align 8
  %333 = call i64 @DECL_PURE_VIRTUAL_P(i64 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %355

335:                                              ; preds = %331
  %336 = load i64, i64* %8, align 8
  %337 = load i64, i64* @current_class_ref, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %355

339:                                              ; preds = %335
  %340 = load i64, i64* @current_function_decl, align 8
  %341 = call i64 @DECL_CONSTRUCTOR_P(i64 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %339
  %344 = load i64, i64* @current_function_decl, align 8
  %345 = call i64 @DECL_DESTRUCTOR_P(i64 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %343, %339
  %348 = load i64, i64* @current_function_decl, align 8
  %349 = call i64 @DECL_CONSTRUCTOR_P(i64 %348)
  %350 = icmp ne i64 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)
  %353 = load i64, i64* %25, align 8
  %354 = call i32 @warning(i32 0, i8* %352, i64 %353)
  br label %355

355:                                              ; preds = %347, %343, %335, %331, %323
  %356 = load i64, i64* %25, align 8
  %357 = call i64 @TREE_TYPE(i64 %356)
  %358 = call i64 @TREE_CODE(i64 %357)
  %359 = load i64, i64* @METHOD_TYPE, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %355
  %362 = load i64, i64* %21, align 8
  %363 = call i64 @is_dummy_object(i64 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load i64, i64* %25, align 8
  %367 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %366)
  %368 = load i64, i64* @error_mark_node, align 8
  store i64 %368, i64* %24, align 8
  br label %437

369:                                              ; preds = %361, %355
  %370 = load i64, i64* %25, align 8
  %371 = call i64 @DECL_VINDEX(i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %369
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %373
  %379 = load i64, i64* %8, align 8
  %380 = call i64 @resolves_to_fixed_type_p(i64 %379, i32 0)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = load i32, i32* @LOOKUP_NONVIRTUAL, align 4
  %384 = load i32, i32* %12, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %12, align 4
  br label %386

386:                                              ; preds = %382, %378, %373, %369
  %387 = load i64*, i64** %13, align 8
  %388 = icmp ne i64* %387, null
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i64, i64* %25, align 8
  %391 = load i64*, i64** %13, align 8
  store i64 %390, i64* %391, align 8
  br label %392

392:                                              ; preds = %389, %386
  %393 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %394 = load i32, i32* %12, align 4
  %395 = call i64 @build_over_call(%struct.z_candidate* %393, i32 %394)
  store i64 %395, i64* %24, align 8
  %396 = load i64, i64* %25, align 8
  %397 = call i64 @TREE_TYPE(i64 %396)
  %398 = call i64 @TREE_CODE(i64 %397)
  %399 = load i64, i64* @METHOD_TYPE, align 8
  %400 = icmp ne i64 %398, %399
  br i1 %400, label %401, label %416

401:                                              ; preds = %392
  %402 = load i64, i64* %21, align 8
  %403 = call i64 @is_dummy_object(i64 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %416, label %405

405:                                              ; preds = %401
  %406 = load i64, i64* %21, align 8
  %407 = call i64 @TREE_SIDE_EFFECTS(i64 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %405
  %410 = load i32, i32* @COMPOUND_EXPR, align 4
  %411 = load i64, i64* %24, align 8
  %412 = call i64 @TREE_TYPE(i64 %411)
  %413 = load i64, i64* %21, align 8
  %414 = load i64, i64* %24, align 8
  %415 = call i64 @build2(i32 %410, i64 %412, i64 %413, i64 %414)
  store i64 %415, i64* %24, align 8
  br label %436

416:                                              ; preds = %405, %401, %392
  %417 = load i64, i64* %24, align 8
  %418 = load i64, i64* @error_mark_node, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %420, label %435

420:                                              ; preds = %416
  %421 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %422 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = call i64 @DECL_DESTRUCTOR_P(i64 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %420
  %427 = load i64, i64* %24, align 8
  %428 = call i64 @TREE_TYPE(i64 %427)
  %429 = call i32 @VOID_TYPE_P(i64 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %435, label %431

431:                                              ; preds = %426
  %432 = load i64, i64* @void_type_node, align 8
  %433 = load i64, i64* %24, align 8
  %434 = call i64 @build_nop(i64 %432, i64 %433)
  store i64 %434, i64* %24, align 8
  br label %435

435:                                              ; preds = %431, %426, %420, %416
  br label %436

436:                                              ; preds = %435, %409
  br label %437

437:                                              ; preds = %436, %365
  br label %438

438:                                              ; preds = %437, %321
  br label %439

439:                                              ; preds = %438, %297
  %440 = load i64, i64* @processing_template_decl, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %457

442:                                              ; preds = %439
  %443 = load i64, i64* %24, align 8
  %444 = load i64, i64* @error_mark_node, align 8
  %445 = icmp ne i64 %443, %444
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = load i32, i32* @CALL_EXPR, align 4
  %448 = load i64, i64* %24, align 8
  %449 = load i32, i32* @COMPONENT_REF, align 4
  %450 = load i64, i64* %29, align 8
  %451 = load i64, i64* %30, align 8
  %452 = load i64, i64* @NULL_TREE, align 8
  %453 = call i32 @build_min_nt(i32 %449, i64 %450, i64 %451, i64 %452)
  %454 = load i64, i64* %31, align 8
  %455 = load i64, i64* @NULL_TREE, align 8
  %456 = call i64 @build_min_non_dep(i32 %447, i64 %448, i32 %453, i64 %454, i64 %455)
  store i64 %456, i64* %24, align 8
  br label %457

457:                                              ; preds = %446, %442, %439
  %458 = load i8*, i8** %32, align 8
  %459 = call i32 @obstack_free(i32* @conversion_obstack, i8* %458)
  %460 = load i64, i64* %24, align 8
  store i64 %460, i64* %7, align 8
  br label %461

461:                                              ; preds = %457, %173, %71, %65
  %462 = load i64, i64* %7, align 8
  ret i64 %462
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i32 @BASELINK_P(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @BASELINK_BINFO(i64) #1

declare dso_local i64 @BASELINK_ACCESS_BINFO(i64) #1

declare dso_local i64 @BASELINK_OPTYPE(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_first_fn(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @build_non_dependent_expr(i64) #1

declare dso_local i64 @build_non_dependent_args(i64) #1

declare dso_local i64 @IDENTIFIER_CTOR_OR_DTOR_P(i64) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @resolve_args(i64) #1

declare dso_local i64 @build_this(i64) #1

declare dso_local i64 @DECL_DESTRUCTOR_P(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_NONCONVERTING_P(i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i32 @add_template_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @add_function_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @cxx_incomplete_type_error(i64, i64) #1

declare dso_local i8* @name_as_c_string(i64, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i64 @DECL_PURE_VIRTUAL_P(i64) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @is_dummy_object(i64) #1

declare dso_local i64 @DECL_VINDEX(i64) #1

declare dso_local i64 @resolves_to_fixed_type_p(i64, i32) #1

declare dso_local i64 @build_over_call(%struct.z_candidate*, i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i32 @VOID_TYPE_P(i64) #1

declare dso_local i64 @build_min_non_dep(i32, i64, i32, i64, i64) #1

declare dso_local i32 @build_min_nt(i32, i64, i64, i64) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
