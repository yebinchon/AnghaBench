; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_standard_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_standard_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@REFERENCE_TYPE = common dso_local global i64 0, align 8
@tf_conv = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@ck_lvalue = common dso_local global i64 0, align 8
@ck_rvalue = common dso_local global i64 0, align 8
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i32 0, align 4
@BLOCK_POINTER_TYPE = common dso_local global i32 0, align 4
@ck_std = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i64 0, align 8
@ck_ptr = common dso_local global i64 0, align 8
@ck_pmem = common dso_local global i64 0, align 8
@ck_qual = common dso_local global i64 0, align 8
@BOOLEAN_TYPE = common dso_local global i32 0, align 4
@cr_pbool = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i32 0, align 4
@cr_promotion = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i32 0, align 4
@LOOKUP_CONSTRUCTOR_CALLABLE = common dso_local global i32 0, align 4
@ck_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64, i64, i64, i32, i32)* @standard_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @standard_conversion(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @non_reference(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @TREE_CODE(i64 %28)
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @REFERENCE_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @TREE_TYPE(i64 %34)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %5
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @strip_top_quals(i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @strip_top_quals(i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TYPE_PTRFN_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @TYPE_PTRMEMFUNC_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %44, %36
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @type_unknown_p(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @tf_conv, align 4
  %59 = call i64 @instantiate_type(i64 %56, i64 %57, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @error_mark_node, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @TREE_TYPE(i64 %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %64, %51, %48, %44
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @TREE_CODE(i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @TREE_CODE(i64 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call %struct.TYPE_8__* @build_identity_conv(i64 %72, i64 %73)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @FUNCTION_TYPE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @ARRAY_TYPE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78, %67
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @type_decays_to(i64 %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @TREE_CODE(i64 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i64, i64* @ck_lvalue, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %90 = call %struct.TYPE_8__* @build_conv(i64 %87, i64 %88, %struct.TYPE_8__* %89)
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %14, align 8
  br label %121

91:                                               ; preds = %78
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @lvalue_p(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %97, %91
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @is_bitfield_expr_with_lowered_type(i64 %105)
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i64, i64* %16, align 8
  %111 = call i64 @strip_top_quals(i64 %110)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @TREE_CODE(i64 %112)
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i64, i64* @ck_rvalue, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = call %struct.TYPE_8__* @build_conv(i64 %116, i64 %117, %struct.TYPE_8__* %118)
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %14, align 8
  br label %120

120:                                              ; preds = %115, %97, %94
  br label %121

121:                                              ; preds = %120, %82
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @COMPLEX_TYPE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @COMPLEX_TYPE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @TREE_TYPE(i64 %130)
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @TREE_TYPE(i64 %132)
  %134 = load i64, i64* @NULL_TREE, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.TYPE_8__* @standard_conversion(i64 %131, i64 %133, i64 %134, i32 %135, i32 %136)
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %17, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %129
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %146 = call %struct.TYPE_8__* @build_conv(i64 %143, i64 %144, %struct.TYPE_8__* %145)
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %14, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %153

152:                                              ; preds = %129
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  br label %153

153:                                              ; preds = %152, %140
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %6, align 8
  br label %667

155:                                              ; preds = %125, %121
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @same_type_p(i64 %156, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %6, align 8
  br label %667

162:                                              ; preds = %155
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @POINTER_TYPE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %7, align 8
  %172 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %170, %166, %162
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i64, i64* %9, align 8
  %179 = call i64 @null_ptr_cst_p(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i64, i64* @ck_std, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %185 = call %struct.TYPE_8__* @build_conv(i64 %182, i64 %183, %struct.TYPE_8__* %184)
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %14, align 8
  br label %665

186:                                              ; preds = %177, %174, %170
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @INTEGER_TYPE, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @POINTER_TYPE, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %202, label %194

194:                                              ; preds = %190, %186
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @POINTER_TYPE, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @INTEGER_TYPE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198, %190
  %203 = load i64, i64* @ck_std, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %206 = call %struct.TYPE_8__* @build_conv(i64 %203, i64 %204, %struct.TYPE_8__* %205)
  store %struct.TYPE_8__* %206, %struct.TYPE_8__** %14, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  store i32 1, i32* %208, align 8
  br label %664

209:                                              ; preds = %198, %194
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @ENUMERAL_TYPE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @INTEGER_TYPE, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load i64, i64* @ck_std, align 8
  %219 = load i64, i64* %7, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %221 = call %struct.TYPE_8__* @build_conv(i64 %218, i64 %219, %struct.TYPE_8__* %220)
  store %struct.TYPE_8__* %221, %struct.TYPE_8__** %14, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  br label %663

224:                                              ; preds = %213, %209
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @POINTER_TYPE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @POINTER_TYPE, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %240, label %232

232:                                              ; preds = %228, %224
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @TYPE_PTRMEM_P(i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %433

236:                                              ; preds = %232
  %237 = load i64, i64* %8, align 8
  %238 = call i64 @TYPE_PTRMEM_P(i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %433

240:                                              ; preds = %236, %228
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* @POINTER_TYPE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i64, i64* %8, align 8
  %246 = call i64 @TREE_TYPE(i64 %245)
  %247 = load i64, i64* %7, align 8
  %248 = call i64 @TREE_TYPE(i64 %247)
  %249 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %246, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %355

252:                                              ; preds = %244, %240
  %253 = load i64, i64* %7, align 8
  %254 = call i64 @TREE_TYPE(i64 %253)
  %255 = call i64 @VOID_TYPE_P(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %278

257:                                              ; preds = %252
  %258 = load i64, i64* %8, align 8
  %259 = call i64 @TYPE_PTRMEM_P(i64 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %278, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %8, align 8
  %263 = call i64 @TREE_TYPE(i64 %262)
  %264 = call i32 @TREE_CODE(i64 %263)
  %265 = load i32, i32* @FUNCTION_TYPE, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %261
  %268 = load i64, i64* @void_type_node, align 8
  %269 = load i64, i64* %8, align 8
  %270 = call i64 @TREE_TYPE(i64 %269)
  %271 = call i64 @cp_type_quals(i64 %270)
  %272 = call i64 @cp_build_qualified_type(i64 %268, i64 %271)
  %273 = call i64 @build_pointer_type(i64 %272)
  store i64 %273, i64* %8, align 8
  %274 = load i64, i64* @ck_ptr, align 8
  %275 = load i64, i64* %8, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %277 = call %struct.TYPE_8__* @build_conv(i64 %274, i64 %275, %struct.TYPE_8__* %276)
  store %struct.TYPE_8__* %277, %struct.TYPE_8__** %14, align 8
  br label %354

278:                                              ; preds = %261, %257, %252
  %279 = load i64, i64* %8, align 8
  %280 = call i64 @TYPE_PTRMEM_P(i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %315

282:                                              ; preds = %278
  %283 = load i64, i64* %8, align 8
  %284 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %283)
  store i64 %284, i64* %20, align 8
  %285 = load i64, i64* %7, align 8
  %286 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %285)
  store i64 %286, i64* %21, align 8
  %287 = load i64, i64* %20, align 8
  %288 = load i64, i64* %21, align 8
  %289 = call i64 @DERIVED_FROM_P(i64 %287, i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %307

291:                                              ; preds = %282
  %292 = load i64, i64* %8, align 8
  %293 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %292)
  %294 = load i64, i64* %7, align 8
  %295 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %294)
  %296 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %293, i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %291
  %299 = load i64, i64* %21, align 8
  %300 = load i64, i64* %8, align 8
  %301 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %300)
  %302 = call i64 @build_ptrmem_type(i64 %299, i64 %301)
  store i64 %302, i64* %8, align 8
  %303 = load i64, i64* @ck_pmem, align 8
  %304 = load i64, i64* %8, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %306 = call %struct.TYPE_8__* @build_conv(i64 %303, i64 %304, %struct.TYPE_8__* %305)
  store %struct.TYPE_8__* %306, %struct.TYPE_8__** %14, align 8
  br label %314

307:                                              ; preds = %291, %282
  %308 = load i64, i64* %20, align 8
  %309 = load i64, i64* %21, align 8
  %310 = call i64 @same_type_p(i64 %308, i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %307
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313, %298
  br label %353

315:                                              ; preds = %278
  %316 = load i64, i64* %8, align 8
  %317 = call i64 @TREE_TYPE(i64 %316)
  %318 = call i64 @IS_AGGR_TYPE(i64 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %352

320:                                              ; preds = %315
  %321 = load i64, i64* %7, align 8
  %322 = call i64 @TREE_TYPE(i64 %321)
  %323 = call i64 @IS_AGGR_TYPE(i64 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %352

325:                                              ; preds = %320
  %326 = load i64, i64* %7, align 8
  %327 = call i64 @TREE_TYPE(i64 %326)
  %328 = load i64, i64* %8, align 8
  %329 = call i64 @TREE_TYPE(i64 %328)
  %330 = call i64 @DERIVED_FROM_P(i64 %327, i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %352

332:                                              ; preds = %325
  %333 = load i64, i64* %8, align 8
  %334 = call i64 @TREE_TYPE(i64 %333)
  %335 = call i64 @COMPLETE_TYPE_P(i64 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %332
  %338 = load i64, i64* %7, align 8
  %339 = call i64 @TREE_TYPE(i64 %338)
  %340 = load i64, i64* %8, align 8
  %341 = call i64 @TREE_TYPE(i64 %340)
  %342 = call i64 @cp_type_quals(i64 %341)
  %343 = call i64 @cp_build_qualified_type(i64 %339, i64 %342)
  store i64 %343, i64* %8, align 8
  %344 = load i64, i64* %8, align 8
  %345 = call i64 @build_pointer_type(i64 %344)
  store i64 %345, i64* %8, align 8
  %346 = load i64, i64* @ck_ptr, align 8
  %347 = load i64, i64* %8, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %349 = call %struct.TYPE_8__* @build_conv(i64 %346, i64 %347, %struct.TYPE_8__* %348)
  store %struct.TYPE_8__* %349, %struct.TYPE_8__** %14, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 3
  store i32 1, i32* %351, align 4
  br label %352

352:                                              ; preds = %337, %332, %325, %320, %315
  br label %353

353:                                              ; preds = %352, %314
  br label %354

354:                                              ; preds = %353, %267
  br label %355

355:                                              ; preds = %354, %251
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* @POINTER_TYPE, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %355
  %360 = load i64, i64* %7, align 8
  %361 = call i64 @TREE_TYPE(i64 %360)
  store i64 %361, i64* %18, align 8
  %362 = load i64, i64* %8, align 8
  %363 = call i64 @TREE_TYPE(i64 %362)
  store i64 %363, i64* %19, align 8
  br label %369

364:                                              ; preds = %355
  %365 = load i64, i64* %7, align 8
  %366 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %365)
  store i64 %366, i64* %18, align 8
  %367 = load i64, i64* %8, align 8
  %368 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %367)
  store i64 %368, i64* %19, align 8
  br label %369

369:                                              ; preds = %364, %359
  %370 = load i64, i64* %8, align 8
  %371 = load i64, i64* %7, align 8
  %372 = call i64 @same_type_p(i64 %370, i64 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  br label %431

375:                                              ; preds = %369
  %376 = load i32, i32* %10, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %375
  %379 = load i64, i64* %7, align 8
  %380 = load i64, i64* %8, align 8
  %381 = call i64 @comp_ptr_ttypes_const(i64 %379, i64 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %378
  %384 = load i64, i64* @ck_qual, align 8
  %385 = load i64, i64* %7, align 8
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %387 = call %struct.TYPE_8__* @build_conv(i64 %384, i64 %385, %struct.TYPE_8__* %386)
  store %struct.TYPE_8__* %387, %struct.TYPE_8__** %14, align 8
  br label %430

388:                                              ; preds = %378, %375
  %389 = load i32, i32* %10, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %401, label %391

391:                                              ; preds = %388
  %392 = load i64, i64* %18, align 8
  %393 = load i64, i64* %19, align 8
  %394 = call i64 @comp_ptr_ttypes(i64 %392, i64 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %391
  %397 = load i64, i64* @ck_qual, align 8
  %398 = load i64, i64* %7, align 8
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %400 = call %struct.TYPE_8__* @build_conv(i64 %397, i64 %398, %struct.TYPE_8__* %399)
  store %struct.TYPE_8__* %400, %struct.TYPE_8__** %14, align 8
  br label %429

401:                                              ; preds = %391, %388
  %402 = load i64, i64* %9, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %414

404:                                              ; preds = %401
  %405 = load i64, i64* %7, align 8
  %406 = load i64, i64* %9, align 8
  %407 = call i64 @string_conv_p(i64 %405, i64 %406, i32 0)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %404
  %410 = load i64, i64* @ck_qual, align 8
  %411 = load i64, i64* %7, align 8
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %413 = call %struct.TYPE_8__* @build_conv(i64 %410, i64 %411, %struct.TYPE_8__* %412)
  store %struct.TYPE_8__* %413, %struct.TYPE_8__** %14, align 8
  br label %428

414:                                              ; preds = %404, %401
  %415 = load i64, i64* %18, align 8
  %416 = load i64, i64* %19, align 8
  %417 = call i64 @ptr_reasonably_similar(i64 %415, i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %414
  %420 = load i64, i64* @ck_ptr, align 8
  %421 = load i64, i64* %7, align 8
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %423 = call %struct.TYPE_8__* @build_conv(i64 %420, i64 %421, %struct.TYPE_8__* %422)
  store %struct.TYPE_8__* %423, %struct.TYPE_8__** %14, align 8
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 2
  store i32 1, i32* %425, align 8
  br label %427

426:                                              ; preds = %414
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

427:                                              ; preds = %419
  br label %428

428:                                              ; preds = %427, %409
  br label %429

429:                                              ; preds = %428, %396
  br label %430

430:                                              ; preds = %429, %383
  br label %431

431:                                              ; preds = %430, %374
  %432 = load i64, i64* %7, align 8
  store i64 %432, i64* %8, align 8
  br label %662

433:                                              ; preds = %236, %232
  %434 = load i64, i64* %7, align 8
  %435 = call i64 @TYPE_PTRMEMFUNC_P(i64 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %504

437:                                              ; preds = %433
  %438 = load i64, i64* %8, align 8
  %439 = call i64 @TYPE_PTRMEMFUNC_P(i64 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %504

441:                                              ; preds = %437
  %442 = load i64, i64* %8, align 8
  %443 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %442)
  %444 = call i64 @TREE_TYPE(i64 %443)
  store i64 %444, i64* %22, align 8
  %445 = load i64, i64* %7, align 8
  %446 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %445)
  %447 = call i64 @TREE_TYPE(i64 %446)
  store i64 %447, i64* %23, align 8
  %448 = load i64, i64* %22, align 8
  %449 = call i32 @TYPE_ARG_TYPES(i64 %448)
  %450 = call i64 @TREE_VALUE(i32 %449)
  %451 = call i64 @TREE_TYPE(i64 %450)
  store i64 %451, i64* %24, align 8
  %452 = load i64, i64* %23, align 8
  %453 = call i32 @TYPE_ARG_TYPES(i64 %452)
  %454 = call i64 @TREE_VALUE(i32 %453)
  %455 = call i64 @TREE_TYPE(i64 %454)
  store i64 %455, i64* %25, align 8
  %456 = load i64, i64* %24, align 8
  %457 = load i64, i64* %25, align 8
  %458 = call i64 @DERIVED_FROM_P(i64 %456, i64 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %482

460:                                              ; preds = %441
  %461 = load i64, i64* %22, align 8
  %462 = call i64 @TREE_TYPE(i64 %461)
  %463 = load i64, i64* %23, align 8
  %464 = call i64 @TREE_TYPE(i64 %463)
  %465 = call i64 @same_type_p(i64 %462, i64 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %482

467:                                              ; preds = %460
  %468 = load i64, i64* %22, align 8
  %469 = call i32 @TYPE_ARG_TYPES(i64 %468)
  %470 = call i32 @TREE_CHAIN(i32 %469)
  %471 = load i64, i64* %23, align 8
  %472 = call i32 @TYPE_ARG_TYPES(i64 %471)
  %473 = call i32 @TREE_CHAIN(i32 %472)
  %474 = call i32 @compparms(i32 %470, i32 %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %482

476:                                              ; preds = %467
  %477 = load i64, i64* %24, align 8
  %478 = call i64 @cp_type_quals(i64 %477)
  %479 = load i64, i64* %25, align 8
  %480 = call i64 @cp_type_quals(i64 %479)
  %481 = icmp ne i64 %478, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %476, %467, %460, %441
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

483:                                              ; preds = %476
  %484 = load i64, i64* %25, align 8
  %485 = load i64, i64* %24, align 8
  %486 = call i64 @cp_type_quals(i64 %485)
  %487 = call i64 @cp_build_qualified_type(i64 %484, i64 %486)
  store i64 %487, i64* %8, align 8
  %488 = load i64, i64* %8, align 8
  %489 = load i64, i64* %22, align 8
  %490 = call i64 @TREE_TYPE(i64 %489)
  %491 = load i64, i64* %22, align 8
  %492 = call i32 @TYPE_ARG_TYPES(i64 %491)
  %493 = call i32 @TREE_CHAIN(i32 %492)
  %494 = call i64 @build_method_type_directly(i64 %488, i64 %490, i32 %493)
  store i64 %494, i64* %8, align 8
  %495 = load i64, i64* %8, align 8
  %496 = call i64 @build_pointer_type(i64 %495)
  %497 = call i64 @build_ptrmemfunc_type(i64 %496)
  store i64 %497, i64* %8, align 8
  %498 = load i64, i64* @ck_pmem, align 8
  %499 = load i64, i64* %8, align 8
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %501 = call %struct.TYPE_8__* @build_conv(i64 %498, i64 %499, %struct.TYPE_8__* %500)
  store %struct.TYPE_8__* %501, %struct.TYPE_8__** %14, align 8
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 3
  store i32 1, i32* %503, align 4
  br label %661

504:                                              ; preds = %437, %433
  %505 = load i32, i32* %13, align 4
  %506 = load i32, i32* @BOOLEAN_TYPE, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %557

508:                                              ; preds = %504
  %509 = load i64, i64* %8, align 8
  %510 = call i64 @ARITHMETIC_TYPE_P(i64 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %528, label %512

512:                                              ; preds = %508
  %513 = load i32, i32* %12, align 4
  %514 = load i32, i32* @ENUMERAL_TYPE, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %528, label %516

516:                                              ; preds = %512
  %517 = load i32, i32* %12, align 4
  %518 = load i32, i32* @POINTER_TYPE, align 4
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %528, label %520

520:                                              ; preds = %516
  %521 = load i32, i32* %12, align 4
  %522 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %528, label %524

524:                                              ; preds = %520
  %525 = load i64, i64* %8, align 8
  %526 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %556

528:                                              ; preds = %524, %520, %516, %512, %508
  %529 = load i64, i64* @ck_std, align 8
  %530 = load i64, i64* %7, align 8
  %531 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %532 = call %struct.TYPE_8__* @build_conv(i64 %529, i64 %530, %struct.TYPE_8__* %531)
  store %struct.TYPE_8__* %532, %struct.TYPE_8__** %14, align 8
  %533 = load i32, i32* %12, align 4
  %534 = load i32, i32* @POINTER_TYPE, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %550, label %536

536:                                              ; preds = %528
  %537 = load i64, i64* %8, align 8
  %538 = call i64 @TYPE_PTRMEM_P(i64 %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %550, label %540

540:                                              ; preds = %536
  %541 = load i64, i64* %8, align 8
  %542 = call i64 @TYPE_PTRMEMFUNC_P(i64 %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %554

544:                                              ; preds = %540
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @cr_pbool, align 8
  %549 = icmp slt i64 %547, %548
  br i1 %549, label %550, label %554

550:                                              ; preds = %544, %536, %528
  %551 = load i64, i64* @cr_pbool, align 8
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 1
  store i64 %551, i64* %553, align 8
  br label %554

554:                                              ; preds = %550, %544, %540
  %555 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %555, %struct.TYPE_8__** %6, align 8
  br label %667

556:                                              ; preds = %524
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

557:                                              ; preds = %504
  %558 = load i32, i32* %13, align 4
  %559 = load i32, i32* @INTEGER_TYPE, align 4
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %569, label %561

561:                                              ; preds = %557
  %562 = load i32, i32* %13, align 4
  %563 = load i32, i32* @BOOLEAN_TYPE, align 4
  %564 = icmp eq i32 %562, %563
  br i1 %564, label %569, label %565

565:                                              ; preds = %561
  %566 = load i32, i32* %13, align 4
  %567 = load i32, i32* @REAL_TYPE, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %602

569:                                              ; preds = %565, %561, %557
  %570 = load i32, i32* %12, align 4
  %571 = call i64 @INTEGRAL_CODE_P(i32 %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  %574 = load i32, i32* %12, align 4
  %575 = load i32, i32* @REAL_TYPE, align 4
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %578, label %577

577:                                              ; preds = %573
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

578:                                              ; preds = %573, %569
  %579 = load i64, i64* @ck_std, align 8
  %580 = load i64, i64* %7, align 8
  %581 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %582 = call %struct.TYPE_8__* @build_conv(i64 %579, i64 %580, %struct.TYPE_8__* %581)
  store %struct.TYPE_8__* %582, %struct.TYPE_8__** %14, align 8
  %583 = load i64, i64* %7, align 8
  %584 = load i64, i64* %8, align 8
  %585 = call i64 @type_promotes_to(i64 %584)
  %586 = call i64 @same_type_p(i64 %583, i64 %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %601

588:                                              ; preds = %578
  %589 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_8__*, %struct.TYPE_8__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %592, i32 0, i32 1
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @cr_promotion, align 8
  %596 = icmp sle i64 %594, %595
  br i1 %596, label %597, label %601

597:                                              ; preds = %588
  %598 = load i64, i64* @cr_promotion, align 8
  %599 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 1
  store i64 %598, i64* %600, align 8
  br label %601

601:                                              ; preds = %597, %588, %578
  br label %659

602:                                              ; preds = %565
  %603 = load i32, i32* %12, align 4
  %604 = load i32, i32* @VECTOR_TYPE, align 4
  %605 = icmp eq i32 %603, %604
  br i1 %605, label %606, label %620

606:                                              ; preds = %602
  %607 = load i32, i32* %13, align 4
  %608 = load i32, i32* @VECTOR_TYPE, align 4
  %609 = icmp eq i32 %607, %608
  br i1 %609, label %610, label %620

610:                                              ; preds = %606
  %611 = load i64, i64* %8, align 8
  %612 = load i64, i64* %7, align 8
  %613 = call i64 @vector_types_convertible_p(i64 %611, i64 %612, i32 0)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %620

615:                                              ; preds = %610
  %616 = load i64, i64* @ck_std, align 8
  %617 = load i64, i64* %7, align 8
  %618 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %619 = call %struct.TYPE_8__* @build_conv(i64 %616, i64 %617, %struct.TYPE_8__* %618)
  store %struct.TYPE_8__* %619, %struct.TYPE_8__** %6, align 8
  br label %667

620:                                              ; preds = %610, %606, %602
  %621 = load i32, i32* %11, align 4
  %622 = load i32, i32* @LOOKUP_CONSTRUCTOR_CALLABLE, align 4
  %623 = and i32 %621, %622
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %656, label %625

625:                                              ; preds = %620
  %626 = load i64, i64* %7, align 8
  %627 = call i64 @IS_AGGR_TYPE(i64 %626)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %656

629:                                              ; preds = %625
  %630 = load i64, i64* %8, align 8
  %631 = call i64 @IS_AGGR_TYPE(i64 %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %656

633:                                              ; preds = %629
  %634 = load i64, i64* %8, align 8
  %635 = load i64, i64* %7, align 8
  %636 = call i64 @is_properly_derived_from(i64 %634, i64 %635)
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %656

638:                                              ; preds = %633
  %639 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %640 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @ck_rvalue, align 8
  %643 = icmp eq i64 %641, %642
  br i1 %643, label %644, label %649

644:                                              ; preds = %638
  %645 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %646 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %645, i32 0, i32 5
  %647 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %646, i32 0, i32 0
  %648 = load %struct.TYPE_8__*, %struct.TYPE_8__** %647, align 8
  store %struct.TYPE_8__* %648, %struct.TYPE_8__** %14, align 8
  br label %649

649:                                              ; preds = %644, %638
  %650 = load i64, i64* @ck_base, align 8
  %651 = load i64, i64* %7, align 8
  %652 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %653 = call %struct.TYPE_8__* @build_conv(i64 %650, i64 %651, %struct.TYPE_8__* %652)
  store %struct.TYPE_8__* %653, %struct.TYPE_8__** %14, align 8
  %654 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %655 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %654, i32 0, i32 4
  store i32 1, i32* %655, align 8
  br label %657

656:                                              ; preds = %633, %629, %625, %620
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %667

657:                                              ; preds = %649
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658, %601
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660, %483
  br label %662

662:                                              ; preds = %661, %431
  br label %663

663:                                              ; preds = %662, %217
  br label %664

664:                                              ; preds = %663, %202
  br label %665

665:                                              ; preds = %664, %181
  %666 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %666, %struct.TYPE_8__** %6, align 8
  br label %667

667:                                              ; preds = %665, %656, %615, %577, %556, %554, %482, %426, %312, %160, %153, %63
  %668 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %668
}

declare dso_local i64 @non_reference(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @strip_top_quals(i64) #1

declare dso_local i64 @TYPE_PTRFN_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i64 @instantiate_type(i64, i64, i32) #1

declare dso_local %struct.TYPE_8__* @build_identity_conv(i64, i64) #1

declare dso_local i64 @type_decays_to(i64) #1

declare dso_local %struct.TYPE_8__* @build_conv(i64, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @lvalue_p(i64) #1

declare dso_local i64 @is_bitfield_expr_with_lowered_type(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i64 @null_ptr_cst_p(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @cp_build_qualified_type(i64, i64) #1

declare dso_local i64 @cp_type_quals(i64) #1

declare dso_local i64 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i64 @DERIVED_FROM_P(i64, i64) #1

declare dso_local i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64) #1

declare dso_local i64 @build_ptrmem_type(i64, i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @comp_ptr_ttypes_const(i64, i64) #1

declare dso_local i64 @comp_ptr_ttypes(i64, i64) #1

declare dso_local i64 @string_conv_p(i64, i64, i32) #1

declare dso_local i64 @ptr_reasonably_similar(i64, i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @compparms(i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @build_method_type_directly(i64, i64, i32) #1

declare dso_local i64 @build_ptrmemfunc_type(i64) #1

declare dso_local i64 @ARITHMETIC_TYPE_P(i64) #1

declare dso_local i64 @INTEGRAL_CODE_P(i32) #1

declare dso_local i64 @type_promotes_to(i64) #1

declare dso_local i64 @vector_types_convertible_p(i64, i64, i32) #1

declare dso_local i64 @is_properly_derived_from(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
