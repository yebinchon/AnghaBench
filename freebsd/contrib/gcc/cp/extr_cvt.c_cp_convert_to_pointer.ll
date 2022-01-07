; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_cp_convert_to_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_cp_convert_to_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"can't convert from incomplete type %qT to %qT\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"conversion of %qE from %qT to %qT is ambiguous\00", align 1
@POINTER_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@ba_check = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot convert %qE from type %qT to type %qT\00", align 1
@bk_via_virtual = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"pointer to member cast from %qT to %qT is via virtual base\00", align 1
@NOP_EXPR = common dso_local global i32 0, align 4
@PTRMEM_CST = common dso_local global i64 0, align 8
@sizetype = common dso_local global i64 0, align 8
@warn_pmf2ptr = common dso_local global i32 0, align 4
@OFFSET_REF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid conversion from %qT to %qT\00", align 1
@POINTER_SIZE = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i32 0, align 4
@tf_warning_or_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @cp_convert_to_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_convert_to_pointer(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @error_mark_node, align 8
  store i64 %28, i64* %4, align 8
  br label %443

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @IS_AGGR_TYPE(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @complete_type(i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @COMPLETE_TYPE_P(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* @error_mark_node, align 8
  store i64 %43, i64* %4, align 8
  br label %443

44:                                               ; preds = %33
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @build_type_conversion(i64 %45, i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @error_mark_node, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %4, align 8
  br label %443

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @POINTER_TYPE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @TREE_TYPE(i64 %68)
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = load i64, i64* @FUNCTION_TYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_TYPE(i64 %74)
  %76 = call i64 @VOID_TYPE_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %73, %67
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @TYPE_PTRMEMFUNC_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @TREE_CODE(i64 %83)
  %85 = load i64, i64* @METHOD_TYPE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82, %78
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @convert_member_func_to_ptr(i64 %88, i64 %89)
  store i64 %90, i64* %4, align 8
  br label %443

91:                                               ; preds = %82
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @TREE_TYPE(i64 %92)
  %94 = call i64 @TREE_CODE(i64 %93)
  %95 = load i64, i64* @POINTER_TYPE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @build_nop(i64 %98, i64 %99)
  store i64 %100, i64* %4, align 8
  br label %443

101:                                              ; preds = %91
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @TREE_TYPE(i64 %102)
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %101, %73, %62
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @error_mark_node, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @error_mark_node, align 8
  store i64 %109, i64* %4, align 8
  br label %443

110:                                              ; preds = %104
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @TREE_CODE(i64 %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @POINTER_TYPE_P(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %221

117:                                              ; preds = %110
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @TYPE_MAIN_VARIANT(i64 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @TYPE_MAIN_VARIANT(i64 %120)
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %207

124:                                              ; preds = %117
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @TREE_CODE(i64 %125)
  %127 = load i64, i64* @POINTER_TYPE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %207

129:                                              ; preds = %124
  %130 = load i64, i64* %5, align 8
  %131 = call i64 @TREE_TYPE(i64 %130)
  %132 = call i64 @TREE_CODE(i64 %131)
  %133 = load i64, i64* @RECORD_TYPE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %207

135:                                              ; preds = %129
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @TREE_TYPE(i64 %136)
  %138 = call i64 @IS_AGGR_TYPE(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %207

140:                                              ; preds = %135
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @TREE_TYPE(i64 %141)
  %143 = call i64 @IS_AGGR_TYPE(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %207

145:                                              ; preds = %140
  %146 = load i64, i64* %8, align 8
  %147 = call i64 @TREE_TYPE(i64 %146)
  %148 = call i64 @TREE_CODE(i64 %147)
  %149 = load i64, i64* @RECORD_TYPE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %207

151:                                              ; preds = %145
  %152 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %152, i32* %11, align 4
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @TREE_TYPE(i64 %153)
  store i64 %154, i64* %13, align 8
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @TREE_TYPE(i64 %155)
  store i64 %156, i64* %14, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i64 @TYPE_MAIN_VARIANT(i64 %157)
  %159 = load i64, i64* %14, align 8
  %160 = call i64 @TYPE_MAIN_VARIANT(i64 %159)
  %161 = call i32 @same_type_p(i64 %158, i64 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i64, i64* @NULL_TREE, align 8
  store i64 %162, i64* %12, align 8
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %151
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load i32, i32* @ba_check, align 4
  %169 = call i64 @lookup_base(i64 %166, i64 %167, i32 %168, i64* null)
  store i64 %169, i64* %12, align 8
  br label %170

170:                                              ; preds = %165, %151
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* %12, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = load i64, i64* %14, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load i32, i32* @ba_check, align 4
  %180 = call i64 @lookup_base(i64 %177, i64 %178, i32 %179, i64* null)
  store i64 %180, i64* %12, align 8
  %181 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %176, %173, %170
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* @error_mark_node, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i64, i64* @error_mark_node, align 8
  store i64 %187, i64* %4, align 8
  br label %443

188:                                              ; preds = %182
  %189 = load i64, i64* %12, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %191, %188
  %195 = load i64, i64* %12, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, i32* %11, align 4
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* %12, align 8
  %201 = call i64 @build_base_path(i32 %198, i64 %199, i64 %200, i32 0)
  store i64 %201, i64* %6, align 8
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i64, i64* %5, align 8
  %204 = load i64, i64* %6, align 8
  %205 = call i64 @build_nop(i64 %203, i64 %204)
  store i64 %205, i64* %4, align 8
  br label %443

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206, %145, %140, %135, %129, %124, %117
  %208 = load i64, i64* %5, align 8
  %209 = call i64 @TYPE_PTRMEMFUNC_P(i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i64, i64* %6, align 8
  %213 = load i64, i64* %8, align 8
  %214 = load i64, i64* %5, align 8
  %215 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* @error_mark_node, align 8
  store i64 %216, i64* %4, align 8
  br label %443

217:                                              ; preds = %207
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* %6, align 8
  %220 = call i64 @build_nop(i64 %218, i64 %219)
  store i64 %220, i64* %4, align 8
  br label %443

221:                                              ; preds = %110
  %222 = load i64, i64* %5, align 8
  %223 = call i64 @TYPE_PTRMEM_P(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %302

225:                                              ; preds = %221
  %226 = load i64, i64* %8, align 8
  %227 = call i64 @TYPE_PTRMEM_P(i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %302

229:                                              ; preds = %225
  %230 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %230, i32* %19, align 4
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %231)
  store i64 %232, i64* %16, align 8
  %233 = load i64, i64* %8, align 8
  %234 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %233)
  store i64 %234, i64* %17, align 8
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* %17, align 8
  %237 = load i32, i32* @ba_check, align 4
  %238 = call i64 @lookup_base(i64 %235, i64 %236, i32 %237, i64* %20)
  store i64 %238, i64* %18, align 8
  %239 = load i64, i64* %18, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %229
  %242 = load i64, i64* %17, align 8
  %243 = load i64, i64* %16, align 8
  %244 = load i32, i32* @ba_check, align 4
  %245 = call i64 @lookup_base(i64 %242, i64 %243, i32 %244, i64* %20)
  store i64 %245, i64* %18, align 8
  %246 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %241, %229
  %248 = load i64, i64* %18, align 8
  %249 = load i64, i64* @error_mark_node, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i64, i64* @error_mark_node, align 8
  store i64 %252, i64* %4, align 8
  br label %443

253:                                              ; preds = %247
  %254 = load i64, i64* %20, align 8
  %255 = load i64, i64* @bk_via_virtual, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %274

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i64, i64* %8, align 8
  %262 = load i64, i64* %5, align 8
  %263 = call i32 @warning(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %261, i64 %262)
  br label %269

264:                                              ; preds = %257
  %265 = load i64, i64* %8, align 8
  %266 = load i64, i64* %5, align 8
  %267 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %265, i64 %266)
  %268 = load i64, i64* @error_mark_node, align 8
  store i64 %268, i64* %4, align 8
  br label %443

269:                                              ; preds = %260
  %270 = load i32, i32* @NOP_EXPR, align 4
  %271 = load i64, i64* %5, align 8
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @build1(i32 %270, i64 %271, i64 %272)
  store i64 %273, i64* %4, align 8
  br label %443

274:                                              ; preds = %253
  %275 = load i64, i64* %6, align 8
  %276 = call i64 @TREE_CODE(i64 %275)
  %277 = load i64, i64* @PTRMEM_CST, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i64, i64* %6, align 8
  %281 = call i64 @cplus_expand_constant(i64 %280)
  store i64 %281, i64* %6, align 8
  br label %282

282:                                              ; preds = %279, %274
  %283 = load i64, i64* %18, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %282
  %286 = load i64, i64* %18, align 8
  %287 = call i64 @BINFO_OFFSET(i64 %286)
  %288 = call i64 @integer_zerop(i64 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %19, align 4
  %292 = load i64, i64* @sizetype, align 8
  %293 = load i64, i64* %6, align 8
  %294 = call i64 @build_nop(i64 %292, i64 %293)
  %295 = load i64, i64* %18, align 8
  %296 = call i64 @BINFO_OFFSET(i64 %295)
  %297 = call i64 @size_binop(i32 %291, i64 %294, i64 %296)
  store i64 %297, i64* %6, align 8
  br label %298

298:                                              ; preds = %290, %285, %282
  %299 = load i64, i64* %5, align 8
  %300 = load i64, i64* %6, align 8
  %301 = call i64 @build_nop(i64 %299, i64 %300)
  store i64 %301, i64* %4, align 8
  br label %443

302:                                              ; preds = %225, %221
  %303 = load i64, i64* %5, align 8
  %304 = call i64 @TYPE_PTRMEMFUNC_P(i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %302
  %307 = load i64, i64* %8, align 8
  %308 = call i64 @TYPE_PTRMEMFUNC_P(i64 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %306
  %311 = load i64, i64* %5, align 8
  %312 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %311)
  %313 = load i64, i64* %6, align 8
  %314 = call i64 @build_ptrmemfunc(i32 %312, i64 %313, i32 0, i32 0)
  store i64 %314, i64* %4, align 8
  br label %443

315:                                              ; preds = %306, %302
  %316 = load i64, i64* %8, align 8
  %317 = call i64 @TYPE_PTRMEMFUNC_P(i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %352

319:                                              ; preds = %315
  %320 = load i32, i32* @warn_pmf2ptr, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %346, label %322

322:                                              ; preds = %319
  %323 = load i64, i64* %6, align 8
  %324 = call i64 @TREE_CODE(i64 %323)
  %325 = load i64, i64* @PTRMEM_CST, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = load i64, i64* %5, align 8
  %329 = load i64, i64* %6, align 8
  %330 = call i64 @PTRMEM_CST_MEMBER(i64 %329)
  %331 = load i32, i32* %7, align 4
  %332 = call i64 @cp_convert_to_pointer(i64 %328, i64 %330, i32 %331)
  store i64 %332, i64* %4, align 8
  br label %443

333:                                              ; preds = %322
  %334 = load i64, i64* %6, align 8
  %335 = call i64 @TREE_CODE(i64 %334)
  %336 = load i64, i64* @OFFSET_REF, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load i64, i64* %6, align 8
  %340 = call i64 @TREE_OPERAND(i64 %339, i32 0)
  store i64 %340, i64* %21, align 8
  %341 = load i64, i64* %6, align 8
  %342 = call i64 @TREE_OPERAND(i64 %341, i32 1)
  %343 = call i64 @get_member_function_from_ptrfunc(i64* %21, i64 %342)
  store i64 %343, i64* %4, align 8
  br label %443

344:                                              ; preds = %333
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345, %319
  %347 = load i64, i64* %6, align 8
  %348 = load i64, i64* %8, align 8
  %349 = load i64, i64* %5, align 8
  %350 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %347, i64 %348, i64 %349)
  %351 = load i64, i64* @error_mark_node, align 8
  store i64 %351, i64* %4, align 8
  br label %443

352:                                              ; preds = %315
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  %356 = load i64, i64* %6, align 8
  %357 = call i64 @integer_zerop(i64 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %382

359:                                              ; preds = %355
  %360 = load i64, i64* %5, align 8
  %361 = call i64 @TYPE_PTRMEMFUNC_P(i64 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = load i64, i64* %5, align 8
  %365 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %364)
  %366 = load i64, i64* %6, align 8
  %367 = call i64 @build_ptrmemfunc(i32 %365, i64 %366, i32 0, i32 0)
  store i64 %367, i64* %4, align 8
  br label %443

368:                                              ; preds = %359
  %369 = load i64, i64* %5, align 8
  %370 = call i64 @TYPE_PTRMEM_P(i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %368
  %373 = load i64, i64* %5, align 8
  %374 = call i64 @build_int_cst(i64 %373, i32 -1)
  store i64 %374, i64* %6, align 8
  %375 = load i64, i64* %6, align 8
  %376 = call i64 @force_fit_type(i64 %375, i32 0, i32 0, i32 0)
  store i64 %376, i64* %6, align 8
  br label %380

377:                                              ; preds = %368
  %378 = load i64, i64* %5, align 8
  %379 = call i64 @build_int_cst(i64 %378, i32 0)
  store i64 %379, i64* %6, align 8
  br label %380

380:                                              ; preds = %377, %372
  %381 = load i64, i64* %6, align 8
  store i64 %381, i64* %4, align 8
  br label %443

382:                                              ; preds = %355
  %383 = load i64, i64* %5, align 8
  %384 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load i32, i32* %9, align 4
  %388 = call i64 @INTEGRAL_CODE_P(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %386
  %391 = load i64, i64* %8, align 8
  %392 = load i64, i64* %5, align 8
  %393 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %391, i64 %392)
  %394 = load i64, i64* @error_mark_node, align 8
  store i64 %394, i64* %4, align 8
  br label %443

395:                                              ; preds = %386, %382
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %9, align 4
  %398 = call i64 @INTEGRAL_CODE_P(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %428

400:                                              ; preds = %396
  %401 = load i64, i64* %8, align 8
  %402 = call i64 @TYPE_PRECISION(i64 %401)
  %403 = load i64, i64* @POINTER_SIZE, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %410

405:                                              ; preds = %400
  %406 = load i32, i32* @CONVERT_EXPR, align 4
  %407 = load i64, i64* %5, align 8
  %408 = load i64, i64* %6, align 8
  %409 = call i64 @build1(i32 %406, i64 %407, i64 %408)
  store i64 %409, i64* %4, align 8
  br label %443

410:                                              ; preds = %400
  %411 = load i64, i64* @POINTER_SIZE, align 8
  %412 = call i32 @c_common_type_for_size(i64 %411, i32 0)
  %413 = load i64, i64* %6, align 8
  %414 = call i64 @cp_convert(i32 %412, i64 %413)
  store i64 %414, i64* %6, align 8
  %415 = load i64, i64* %6, align 8
  %416 = call i64 @TREE_TYPE(i64 %415)
  %417 = call i32 @TYPE_MODE(i64 %416)
  %418 = call i64 @GET_MODE_SIZE(i32 %417)
  %419 = load i64, i64* %5, align 8
  %420 = call i32 @TYPE_MODE(i64 %419)
  %421 = call i64 @GET_MODE_SIZE(i32 %420)
  %422 = icmp eq i64 %418, %421
  %423 = zext i1 %422 to i32
  %424 = call i32 @gcc_assert(i32 %423)
  %425 = load i64, i64* %5, align 8
  %426 = load i64, i64* %6, align 8
  %427 = call i64 @convert_to_pointer(i64 %425, i64 %426)
  store i64 %427, i64* %4, align 8
  br label %443

428:                                              ; preds = %396
  %429 = load i64, i64* %6, align 8
  %430 = call i64 @type_unknown_p(i64 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %428
  %433 = load i64, i64* %5, align 8
  %434 = load i64, i64* %6, align 8
  %435 = load i32, i32* @tf_warning_or_error, align 4
  %436 = call i64 @instantiate_type(i64 %433, i64 %434, i32 %435)
  store i64 %436, i64* %4, align 8
  br label %443

437:                                              ; preds = %428
  %438 = load i64, i64* %6, align 8
  %439 = load i64, i64* %8, align 8
  %440 = load i64, i64* %5, align 8
  %441 = call i32 (i8*, i64, i64, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %438, i64 %439, i64 %440)
  %442 = load i64, i64* @error_mark_node, align 8
  store i64 %442, i64* %4, align 8
  br label %443

443:                                              ; preds = %437, %432, %410, %405, %390, %380, %363, %346, %338, %327, %310, %298, %269, %264, %251, %217, %211, %202, %186, %108, %97, %87, %59, %39, %27
  %444 = load i64, i64* %4, align 8
  ret i64 %444
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @complete_type(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @error(i8*, i64, i64, ...) #1

declare dso_local i64 @build_type_conversion(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @VOID_TYPE_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @convert_member_func_to_ptr(i64, i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @lookup_base(i64, i64, i32, i64*) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i64 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i32 @warning(i32, i8*, i64, i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i64 @cplus_expand_constant(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @BINFO_OFFSET(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @build_ptrmemfunc(i32, i64, i32, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i64) #1

declare dso_local i64 @PTRMEM_CST_MEMBER(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_member_function_from_ptrfunc(i64*, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @force_fit_type(i64, i32, i32, i32) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i64 @INTEGRAL_CODE_P(i32) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @cp_convert(i32, i64) #1

declare dso_local i32 @c_common_type_for_size(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @convert_to_pointer(i64, i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i64 @instantiate_type(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
