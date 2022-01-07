; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_build_throw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_build_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@cfun = common dso_local global i64 0, align 8
@current_function_returns_abnormally = common dso_local global i32 0, align 4
@THROW_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@null_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"throwing NULL, which has integral, not pointer type\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"_Jv_Throw\00", align 1
@ptr_type_node = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%qD should never be overloaded\00", align 1
@cleanup_type = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"__cxa_throw\00", align 1
@TARGET_EXPR = common dso_local global i64 0, align 8
@complete_ctor_identifier = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"  in thrown expression\00", align 1
@INIT_EXPR = common dso_local global i32 0, align 4
@CLEANUP_POINT_EXPR = common dso_local global i32 0, align 4
@TRY_CATCH_EXPR = common dso_local global i32 0, align 4
@MUST_NOT_THROW_EXPR = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@wrap_cleanups_r = common dso_local global i32 0, align 4
@complete_dtor_identifier = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"__cxa_rethrow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_throw(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* %2, align 8
  br label %314

22:                                               ; preds = %1
  %23 = load i64, i64* @processing_template_decl, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* @cfun, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* @current_function_returns_abnormally, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* @THROW_EXPR, align 4
  %31 = load i64, i64* @void_type_node, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @build_min(i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %2, align 8
  br label %314

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @null_node, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @warning(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @NULL_TREE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @is_admissible_throw_operand(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @error_mark_node, align 8
  store i64 %49, i64* %2, align 8
  br label %314

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %40
  %52 = call i32 @doing_eh(i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* @error_mark_node, align 8
  store i64 %55, i64* %2, align 8
  br label %314

56:                                               ; preds = %51
  %57 = load i64, i64* %3, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %56
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @TREE_TYPE(i64 %60)
  %62 = call i64 @decl_is_java_type(i64 %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = call i64 @get_identifier(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @get_global_value_if_present(i64 %66, i64* %5)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = load i64, i64* @ptr_type_node, align 8
  %72 = load i64, i64* @void_list_node, align 8
  %73 = call i64 @tree_cons(i64 %70, i64 %71, i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* @ptr_type_node, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @build_function_type(i64 %74, i64 %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @push_throw_library_fn(i64 %77, i64 %78)
  store i64 %79, i64* %5, align 8
  br label %89

80:                                               ; preds = %64
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @really_overloaded_fn(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* @error_mark_node, align 8
  store i64 %87, i64* %2, align 8
  br label %314

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @OVL_CURRENT(i64 %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @NULL_TREE, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @NULL_TREE, align 8
  %96 = call i64 @tree_cons(i64 %93, i64 %94, i64 %95)
  %97 = call i64 @build_function_call(i64 %92, i64 %96)
  store i64 %97, i64* %3, align 8
  br label %308

98:                                               ; preds = %59, %56
  %99 = load i64, i64* %3, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %292

101:                                              ; preds = %98
  %102 = load i64, i64* @cleanup_type, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @void_list_node, align 8
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* @NULL_TREE, align 8
  %107 = load i64, i64* @ptr_type_node, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i64 @tree_cons(i64 %106, i64 %107, i64 %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* @void_type_node, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i64 @build_function_type(i64 %110, i64 %111)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i64 @build_pointer_type(i64 %113)
  store i64 %114, i64* @cleanup_type, align 8
  br label %115

115:                                              ; preds = %104, %101
  %116 = call i64 @get_identifier(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @get_global_value_if_present(i64 %117, i64* %4)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* @void_list_node, align 8
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* @NULL_TREE, align 8
  %123 = load i64, i64* @cleanup_type, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @tree_cons(i64 %122, i64 %123, i64 %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* @NULL_TREE, align 8
  %127 = load i64, i64* @ptr_type_node, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i64 @tree_cons(i64 %126, i64 %127, i64 %128)
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = load i64, i64* @ptr_type_node, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i64 @tree_cons(i64 %130, i64 %131, i64 %132)
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* @void_type_node, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i64 @build_function_type(i64 %134, i64 %135)
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i64 @push_throw_library_fn(i64 %137, i64 %138)
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %120, %115
  %141 = load i64, i64* %3, align 8
  %142 = call i64 @is_bitfield_expr_with_lowered_type(i64 %141)
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %3, align 8
  %147 = call i64 @TREE_TYPE(i64 %146)
  %148 = call i32 @TYPE_MAIN_VARIANT(i64 %147)
  %149 = call i64 @type_decays_to(i32 %148)
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i64, i64* %8, align 8
  %152 = call i64 @do_allocate_exception(i64 %151)
  store i64 %152, i64* %14, align 8
  %153 = load i64, i64* %14, align 8
  %154 = call i64 @get_target_expr(i64 %153)
  store i64 %154, i64* %14, align 8
  %155 = load i64, i64* %14, align 8
  %156 = call i64 @TARGET_EXPR_SLOT(i64 %155)
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @build_pointer_type(i64 %157)
  %159 = load i64, i64* %11, align 8
  %160 = call i64 @build_nop(i64 %158, i64 %159)
  store i64 %160, i64* %10, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i64 @build_indirect_ref(i64 %161, i32* null)
  store i64 %162, i64* %10, align 8
  %163 = load i64, i64* %3, align 8
  %164 = call i64 @TREE_CODE(i64 %163)
  %165 = load i64, i64* @TARGET_EXPR, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %15, align 4
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @CLASS_TYPE_P(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %150
  %172 = load i64, i64* %10, align 8
  %173 = load i32, i32* @complete_ctor_identifier, align 4
  %174 = load i64, i64* @NULL_TREE, align 8
  %175 = load i64, i64* %3, align 8
  %176 = call i32 @build_tree_list(i64 %174, i64 %175)
  %177 = load i64, i64* %10, align 8
  %178 = call i64 @TREE_TYPE(i64 %177)
  %179 = load i32, i32* @LOOKUP_NORMAL, align 4
  %180 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %181 = or i32 %179, %180
  %182 = call i64 @build_special_member_call(i64 %172, i32 %173, i32 %176, i64 %178, i32 %181)
  store i64 %182, i64* %3, align 8
  %183 = load i64, i64* %3, align 8
  %184 = load i64, i64* @error_mark_node, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %171
  %187 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i64, i64* @error_mark_node, align 8
  store i64 %188, i64* %2, align 8
  br label %314

189:                                              ; preds = %171
  br label %197

190:                                              ; preds = %150
  %191 = load i32, i32* @INIT_EXPR, align 4
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* %3, align 8
  %195 = call i64 @decay_conversion(i64 %194)
  %196 = call i64 @build2(i32 %191, i64 %192, i64 %193, i64 %195)
  store i64 %196, i64* %3, align 8
  br label %197

197:                                              ; preds = %190, %189
  %198 = load i64, i64* @NULL_TREE, align 8
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %3, align 8
  %200 = call i32 @stabilize_init(i64 %199, i64* %13)
  %201 = load i32, i32* @CLEANUP_POINT_EXPR, align 4
  %202 = load i64, i64* @void_type_node, align 8
  %203 = load i64, i64* %3, align 8
  %204 = call i64 @build1(i32 %201, i64 %202, i64 %203)
  store i64 %204, i64* %3, align 8
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %197
  %208 = load i32, i32* @TRY_CATCH_EXPR, align 4
  %209 = load i64, i64* @void_type_node, align 8
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* %11, align 8
  %212 = call i64 @do_free_exception(i64 %211)
  %213 = call i64 @build2(i32 %208, i64 %209, i64 %210, i64 %212)
  store i64 %213, i64* %3, align 8
  br label %219

214:                                              ; preds = %197
  %215 = load i32, i32* @MUST_NOT_THROW_EXPR, align 4
  %216 = load i64, i64* @void_type_node, align 8
  %217 = load i64, i64* %3, align 8
  %218 = call i64 @build1(i32 %215, i64 %216, i64 %217)
  store i64 %218, i64* %3, align 8
  br label %219

219:                                              ; preds = %214, %207
  %220 = load i32, i32* @COMPOUND_EXPR, align 4
  %221 = load i64, i64* %3, align 8
  %222 = call i64 @TREE_TYPE(i64 %221)
  %223 = load i64, i64* %14, align 8
  %224 = load i64, i64* %3, align 8
  %225 = call i64 @build2(i32 %220, i64 %222, i64 %223, i64 %224)
  store i64 %225, i64* %3, align 8
  %226 = load i64, i64* %13, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %219
  %229 = load i32, i32* @wrap_cleanups_r, align 4
  %230 = call i32 @walk_tree_without_duplicates(i64* %13, i32 %229, i32 0)
  %231 = load i32, i32* @COMPOUND_EXPR, align 4
  %232 = load i64, i64* %3, align 8
  %233 = call i64 @TREE_TYPE(i64 %232)
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* %3, align 8
  %236 = call i64 @build2(i32 %231, i64 %233, i64 %234, i64 %235)
  store i64 %236, i64* %3, align 8
  %237 = load i32, i32* @CLEANUP_POINT_EXPR, align 4
  %238 = load i64, i64* %3, align 8
  %239 = call i64 @TREE_TYPE(i64 %238)
  %240 = load i64, i64* %3, align 8
  %241 = call i64 @build1(i32 %237, i64 %239, i64 %240)
  store i64 %241, i64* %3, align 8
  br label %242

242:                                              ; preds = %228, %219
  %243 = load i64, i64* %10, align 8
  %244 = call i64 @TREE_TYPE(i64 %243)
  %245 = call i32 @prepare_eh_type(i64 %244)
  %246 = call i64 @build_eh_type_type(i32 %245)
  store i64 %246, i64* %7, align 8
  %247 = load i64, i64* %10, align 8
  %248 = call i64 @TREE_TYPE(i64 %247)
  %249 = call i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %242
  %252 = load i64, i64* %10, align 8
  %253 = call i64 @TREE_TYPE(i64 %252)
  %254 = call i32 @TYPE_BINFO(i64 %253)
  %255 = load i32, i32* @complete_dtor_identifier, align 4
  %256 = call i64 @lookup_fnfields(i32 %254, i32 %255, i32 0)
  store i64 %256, i64* %9, align 8
  %257 = load i64, i64* %9, align 8
  %258 = call i64 @BASELINK_FUNCTIONS(i64 %257)
  store i64 %258, i64* %9, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i32 @mark_used(i64 %259)
  %261 = load i64, i64* %9, align 8
  %262 = call i32 @cxx_mark_addressable(i64 %261)
  %263 = load i32, i32* @ADDR_EXPR, align 4
  %264 = load i64, i64* @cleanup_type, align 8
  %265 = load i64, i64* %9, align 8
  %266 = call i64 @build1(i32 %263, i64 %264, i64 %265)
  store i64 %266, i64* %9, align 8
  br label %270

267:                                              ; preds = %242
  %268 = load i64, i64* @cleanup_type, align 8
  %269 = call i64 @build_int_cst(i64 %268, i32 0)
  store i64 %269, i64* %9, align 8
  br label %270

270:                                              ; preds = %267, %251
  %271 = load i64, i64* @NULL_TREE, align 8
  %272 = load i64, i64* %9, align 8
  %273 = load i64, i64* @NULL_TREE, align 8
  %274 = call i64 @tree_cons(i64 %271, i64 %272, i64 %273)
  store i64 %274, i64* %12, align 8
  %275 = load i64, i64* @NULL_TREE, align 8
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* %12, align 8
  %278 = call i64 @tree_cons(i64 %275, i64 %276, i64 %277)
  store i64 %278, i64* %12, align 8
  %279 = load i64, i64* @NULL_TREE, align 8
  %280 = load i64, i64* %11, align 8
  %281 = load i64, i64* %12, align 8
  %282 = call i64 @tree_cons(i64 %279, i64 %280, i64 %281)
  store i64 %282, i64* %12, align 8
  %283 = load i64, i64* %4, align 8
  %284 = load i64, i64* %12, align 8
  %285 = call i64 @build_function_call(i64 %283, i64 %284)
  store i64 %285, i64* %12, align 8
  %286 = load i32, i32* @COMPOUND_EXPR, align 4
  %287 = load i64, i64* %12, align 8
  %288 = call i64 @TREE_TYPE(i64 %287)
  %289 = load i64, i64* %3, align 8
  %290 = load i64, i64* %12, align 8
  %291 = call i64 @build2(i32 %286, i64 %288, i64 %289, i64 %290)
  store i64 %291, i64* %3, align 8
  br label %307

292:                                              ; preds = %98
  %293 = call i64 @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i64 %293, i64* %16, align 8
  %294 = load i64, i64* %16, align 8
  %295 = call i32 @get_global_value_if_present(i64 %294, i64* %16)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %292
  %298 = load i64, i64* %16, align 8
  %299 = load i64, i64* @void_type_node, align 8
  %300 = load i64, i64* @void_list_node, align 8
  %301 = call i64 @build_function_type(i64 %299, i64 %300)
  %302 = call i64 @push_throw_library_fn(i64 %298, i64 %301)
  store i64 %302, i64* %16, align 8
  br label %303

303:                                              ; preds = %297, %292
  %304 = load i64, i64* %16, align 8
  %305 = load i64, i64* @NULL_TREE, align 8
  %306 = call i64 @build_function_call(i64 %304, i64 %305)
  store i64 %306, i64* %3, align 8
  br label %307

307:                                              ; preds = %303, %270
  br label %308

308:                                              ; preds = %307, %89
  %309 = load i32, i32* @THROW_EXPR, align 4
  %310 = load i64, i64* @void_type_node, align 8
  %311 = load i64, i64* %3, align 8
  %312 = call i64 @build1(i32 %309, i64 %310, i64 %311)
  store i64 %312, i64* %3, align 8
  %313 = load i64, i64* %3, align 8
  store i64 %313, i64* %2, align 8
  br label %314

314:                                              ; preds = %308, %186, %84, %54, %48, %29, %20
  %315 = load i64, i64* %2, align 8
  ret i64 %315
}

declare dso_local i64 @build_min(i32, i64, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @is_admissible_throw_operand(i64) #1

declare dso_local i32 @doing_eh(i32) #1

declare dso_local i64 @decl_is_java_type(i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @get_identifier(i8*) #1

declare dso_local i32 @get_global_value_if_present(i64, i64*) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_function_type(i64, i64) #1

declare dso_local i64 @push_throw_library_fn(i64, i64) #1

declare dso_local i64 @really_overloaded_fn(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @build_function_call(i64, i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @is_bitfield_expr_with_lowered_type(i64) #1

declare dso_local i64 @type_decays_to(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @do_allocate_exception(i64) #1

declare dso_local i64 @get_target_expr(i64) #1

declare dso_local i64 @TARGET_EXPR_SLOT(i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @build_special_member_call(i64, i32, i32, i64, i32) #1

declare dso_local i32 @build_tree_list(i64, i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i32 @stabilize_init(i64, i64*) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @do_free_exception(i64) #1

declare dso_local i32 @walk_tree_without_duplicates(i64*, i32, i32) #1

declare dso_local i64 @build_eh_type_type(i32) #1

declare dso_local i32 @prepare_eh_type(i64) #1

declare dso_local i64 @TYPE_HAS_NONTRIVIAL_DESTRUCTOR(i64) #1

declare dso_local i64 @lookup_fnfields(i32, i32, i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i32 @cxx_mark_addressable(i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
