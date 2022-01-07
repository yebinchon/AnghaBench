; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_convert_nontype_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_convert_nontype_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [108 x i8] c"%qE is not a valid template argument for type %qT because string literals can never be used in this context\00", align 1
@NULL_TREE = common dso_local global i8* null, align 8
@error_mark_node = common dso_local global i8* null, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"%qE is not a valid template argument for type %qT because it is a non-constant expression\00", align 1
@CONV_IMPLICIT = common dso_local global i32 0, align 4
@LOOKUP_PROTECT = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"%qD is not a valid template argument because %qD is a variable, not the address of a variable\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"%qE is not a valid template argument of type %qT because %qE is not a variable\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"%qE is not a valid template argument of type %qT because %qD does not have external linkage\00", align 1
@.str.5 = private unnamed_addr constant [91 x i8] c"%qE is not a valid template argument for type %qT because of conflicts in cv-qualification\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"%qE is not a valid template argument for type %qT because it is not an lvalue\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"%qE is not a valid template argument for type %qT because object %qD has not external linkage\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"%qE is not a valid template argument for type %qT because it is a pointer\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"try using %qE instead\00", align 1
@tf_none = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [76 x i8] c"%qE is not a valid template argument for type %qT because it is of type %qT\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"standard conversions are not allowed in this context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @convert_nontype_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_nontype_argument(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @TREE_CODE(i8* %9)
  %11 = load i64, i64* @STRING_CST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i8*, i8** @NULL_TREE, align 8
  store i8* %17, i8** %3, align 8
  br label %407

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @fold_non_dependent_expr(i8* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @error_operand_p(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** @error_mark_node, align 8
  store i8* %25, i8** %3, align 8
  br label %407

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @TREE_TYPE(i8* %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @TREE_CODE(i8* %29)
  %31 = load i64, i64* @NOP_EXPR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %108

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @TYPE_REF_OBJ_P(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @TYPE_REFFN_P(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @TREE_OPERAND(i8* %42, i32 0)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @TREE_CODE(i8* %44)
  %46 = load i64, i64* @REFERENCE_TYPE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @TREE_CODE(i8* %50)
  %52 = load i64, i64* @ADDR_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @gcc_assert(i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @TREE_TYPE(i8* %56)
  %58 = call i64 @TREE_CODE(i8* %57)
  %59 = load i64, i64* @POINTER_TYPE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @gcc_assert(i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @TREE_TYPE(i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @TREE_TYPE(i8* %65)
  %67 = call i8* @TREE_TYPE(i8* %66)
  %68 = call i32 @same_type_ignoring_top_level_qualifiers_p(i8* %64, i8* %67)
  %69 = call i32 @gcc_assert(i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @TREE_OPERAND(i8* %70, i32 0)
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @TREE_TYPE(i8* %72)
  store i8* %73, i8** %6, align 8
  br label %107

74:                                               ; preds = %37
  %75 = load i8*, i8** %4, align 8
  %76 = call i64 @TYPE_PTROBV_P(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @STRIP_NOPS(i8* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = call i64 @TREE_CODE(i8* %81)
  %83 = load i64, i64* @ADDR_EXPR, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @gcc_assert(i32 %85)
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* @TREE_TYPE(i8* %87)
  %89 = call i64 @TREE_CODE(i8* %88)
  %90 = load i64, i64* @POINTER_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @gcc_assert(i32 %92)
  %94 = load i8*, i8** %5, align 8
  %95 = call i8* @TREE_OPERAND(i8* %94, i32 0)
  %96 = call i8* @TREE_TYPE(i8* %95)
  %97 = call i64 @TREE_CODE(i8* %96)
  %98 = load i64, i64* @ARRAY_TYPE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %78
  %101 = load i8*, i8** %5, align 8
  %102 = call i8* @TREE_OPERAND(i8* %101, i32 0)
  store i8* %102, i8** %5, align 8
  br label %103

103:                                              ; preds = %100, %78
  %104 = load i8*, i8** %5, align 8
  %105 = call i8* @TREE_TYPE(i8* %104)
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %103, %74
  br label %107

107:                                              ; preds = %106, %41
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i8*, i8** %4, align 8
  %110 = call i64 @INTEGRAL_TYPE_P(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @INTEGRAL_TYPE_P(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** @error_mark_node, align 8
  store i8* %117, i8** %3, align 8
  br label %407

118:                                              ; preds = %112
  %119 = load i8*, i8** %5, align 8
  %120 = call i8* @fold_decl_constant_value(i8* %119)
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i64 @TREE_CODE(i8* %121)
  %123 = load i64, i64* @INTEGER_CST, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* %126, i8* %127)
  %129 = load i8*, i8** @NULL_TREE, align 8
  store i8* %129, i8** %3, align 8
  br label %407

130:                                              ; preds = %118
  %131 = load i8*, i8** %4, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* @CONV_IMPLICIT, align 4
  %134 = load i32, i32* @LOOKUP_PROTECT, align 4
  %135 = call i8* @ocp_convert(i8* %131, i8* %132, i32 %133, i32 %134)
  store i8* %135, i8** %5, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i8*, i8** @error_mark_node, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i8*, i8** @error_mark_node, align 8
  store i8* %140, i8** %3, align 8
  br label %407

141:                                              ; preds = %130
  %142 = load i8*, i8** %5, align 8
  %143 = call i8* @fold(i8* %142)
  store i8* %143, i8** %5, align 8
  br label %400

144:                                              ; preds = %108
  %145 = load i8*, i8** %4, align 8
  %146 = call i64 @TYPE_PTROBV_P(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %232

148:                                              ; preds = %144
  %149 = load i8*, i8** %5, align 8
  %150 = call i64 @DECL_P(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i8*, i8** %5, align 8
  %154 = call i64 @DECL_TEMPLATE_PARM_P(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %214

157:                                              ; preds = %152, %148
  %158 = load i8*, i8** %5, align 8
  %159 = call i64 @TREE_CODE(i8* %158)
  %160 = load i64, i64* @ADDR_EXPR, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @TREE_CODE(i8* %163)
  %165 = load i64, i64* @ARRAY_TYPE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load i8*, i8** %5, align 8
  %169 = call i64 @TREE_CODE(i8* %168)
  %170 = load i64, i64* @VAR_DECL, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i8*, i8** %5, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i8* %173, i8* %174)
  %176 = load i8*, i8** @NULL_TREE, align 8
  store i8* %176, i8** %3, align 8
  br label %407

177:                                              ; preds = %167
  %178 = load i8*, i8** @error_mark_node, align 8
  store i8* %178, i8** %3, align 8
  br label %407

179:                                              ; preds = %162, %157
  %180 = load i8*, i8** %5, align 8
  %181 = call i64 @TREE_CODE(i8* %180)
  %182 = load i64, i64* @ADDR_EXPR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i8*, i8** %5, align 8
  %186 = call i8* @TREE_OPERAND(i8* %185, i32 0)
  br label %189

187:                                              ; preds = %179
  %188 = load i8*, i8** %5, align 8
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i8* [ %186, %184 ], [ %188, %187 ]
  store i8* %190, i8** %8, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = call i64 @TREE_CODE(i8* %191)
  %193 = load i64, i64* @VAR_DECL, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i8*, i8** %5, align 8
  %197 = load i8*, i8** %4, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* %196, i8* %197, i8* %198)
  %200 = load i8*, i8** @NULL_TREE, align 8
  store i8* %200, i8** %3, align 8
  br label %407

201:                                              ; preds = %189
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @DECL_EXTERNAL_LINKAGE_P(i8* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %5, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i8* %206, i8* %207, i8* %208)
  %210 = load i8*, i8** @NULL_TREE, align 8
  store i8* %210, i8** %3, align 8
  br label %407

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %156
  %215 = load i8*, i8** %5, align 8
  %216 = call i8* @decay_conversion(i8* %215)
  store i8* %216, i8** %5, align 8
  %217 = load i8*, i8** %5, align 8
  %218 = load i8*, i8** @error_mark_node, align 8
  %219 = icmp eq i8* %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i8*, i8** @error_mark_node, align 8
  store i8* %221, i8** %3, align 8
  br label %407

222:                                              ; preds = %214
  %223 = load i8*, i8** %4, align 8
  %224 = load i8*, i8** %5, align 8
  %225 = call i8* @perform_qualification_conversions(i8* %223, i8* %224)
  store i8* %225, i8** %5, align 8
  %226 = load i8*, i8** %5, align 8
  %227 = load i8*, i8** @error_mark_node, align 8
  %228 = icmp eq i8* %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i8*, i8** @error_mark_node, align 8
  store i8* %230, i8** %3, align 8
  br label %407

231:                                              ; preds = %222
  br label %399

232:                                              ; preds = %144
  %233 = load i8*, i8** %4, align 8
  %234 = call i64 @TYPE_REF_OBJ_P(i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %279

236:                                              ; preds = %232
  %237 = load i8*, i8** %4, align 8
  %238 = call i8* @TREE_TYPE(i8* %237)
  %239 = load i8*, i8** %6, align 8
  %240 = call i32 @same_type_ignoring_top_level_qualifiers_p(i8* %238, i8* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %236
  %243 = load i8*, i8** @error_mark_node, align 8
  store i8* %243, i8** %3, align 8
  br label %407

244:                                              ; preds = %236
  %245 = load i8*, i8** %4, align 8
  %246 = call i8* @TREE_TYPE(i8* %245)
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 @at_least_as_qualified_p(i8* %246, i8* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %244
  %251 = load i8*, i8** %5, align 8
  %252 = load i8*, i8** %4, align 8
  %253 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i8* %251, i8* %252)
  %254 = load i8*, i8** @NULL_TREE, align 8
  store i8* %254, i8** %3, align 8
  br label %407

255:                                              ; preds = %244
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @real_lvalue_p(i8* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load i8*, i8** %5, align 8
  %261 = load i8*, i8** %4, align 8
  %262 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i8* %260, i8* %261)
  %263 = load i8*, i8** @NULL_TREE, align 8
  store i8* %263, i8** %3, align 8
  br label %407

264:                                              ; preds = %255
  %265 = load i8*, i8** %5, align 8
  %266 = call i32 @DECL_EXTERNAL_LINKAGE_P(i8* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %264
  %269 = load i8*, i8** %5, align 8
  %270 = load i8*, i8** %4, align 8
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0), i8* %269, i8* %270, i8* %271)
  %273 = load i8*, i8** @NULL_TREE, align 8
  store i8* %273, i8** %3, align 8
  br label %407

274:                                              ; preds = %264
  %275 = load i8*, i8** %4, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = call i32 @build_address(i8* %276)
  %278 = call i8* @build_nop(i8* %275, i32 %277)
  store i8* %278, i8** %5, align 8
  br label %398

279:                                              ; preds = %232
  %280 = load i8*, i8** %4, align 8
  %281 = call i64 @TYPE_PTRFN_P(i8* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %309

283:                                              ; preds = %279
  %284 = load i8*, i8** %6, align 8
  %285 = call i32 @type_unknown_p(i8* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %296, label %287

287:                                              ; preds = %283
  %288 = load i8*, i8** %5, align 8
  %289 = call i8* @decay_conversion(i8* %288)
  store i8* %289, i8** %5, align 8
  %290 = load i8*, i8** %5, align 8
  %291 = load i8*, i8** @error_mark_node, align 8
  %292 = icmp eq i8* %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = load i8*, i8** @error_mark_node, align 8
  store i8* %294, i8** %3, align 8
  br label %407

295:                                              ; preds = %287
  br label %296

296:                                              ; preds = %295, %283
  %297 = load i8*, i8** %4, align 8
  %298 = load i8*, i8** %5, align 8
  %299 = call i8* @convert_nontype_argument_function(i8* %297, i8* %298)
  store i8* %299, i8** %5, align 8
  %300 = load i8*, i8** %5, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load i8*, i8** %5, align 8
  %304 = load i8*, i8** @error_mark_node, align 8
  %305 = icmp eq i8* %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %302, %296
  %307 = load i8*, i8** %5, align 8
  store i8* %307, i8** %3, align 8
  br label %407

308:                                              ; preds = %302
  br label %397

309:                                              ; preds = %279
  %310 = load i8*, i8** %4, align 8
  %311 = call i64 @TYPE_REFFN_P(i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %344

313:                                              ; preds = %309
  %314 = load i8*, i8** %5, align 8
  %315 = call i64 @TREE_CODE(i8* %314)
  %316 = load i64, i64* @ADDR_EXPR, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %313
  %319 = load i8*, i8** %5, align 8
  %320 = load i8*, i8** %4, align 8
  %321 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* %319, i8* %320)
  %322 = load i8*, i8** %5, align 8
  %323 = call i8* @TREE_OPERAND(i8* %322, i32 0)
  %324 = call i32 (i8*, ...) @inform(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %323)
  %325 = load i8*, i8** @NULL_TREE, align 8
  store i8* %325, i8** %3, align 8
  br label %407

326:                                              ; preds = %313
  %327 = load i8*, i8** %4, align 8
  %328 = call i8* @TREE_TYPE(i8* %327)
  %329 = load i8*, i8** %5, align 8
  %330 = call i8* @convert_nontype_argument_function(i8* %328, i8* %329)
  store i8* %330, i8** %5, align 8
  %331 = load i8*, i8** %5, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load i8*, i8** %5, align 8
  %335 = load i8*, i8** @error_mark_node, align 8
  %336 = icmp eq i8* %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %333, %326
  %338 = load i8*, i8** %5, align 8
  store i8* %338, i8** %3, align 8
  br label %407

339:                                              ; preds = %333
  %340 = load i8*, i8** %4, align 8
  %341 = load i8*, i8** %5, align 8
  %342 = call i32 @build_address(i8* %341)
  %343 = call i8* @build_nop(i8* %340, i32 %342)
  store i8* %343, i8** %5, align 8
  br label %396

344:                                              ; preds = %309
  %345 = load i8*, i8** %4, align 8
  %346 = call i64 @TYPE_PTRMEMFUNC_P(i8* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %378

348:                                              ; preds = %344
  %349 = load i8*, i8** %4, align 8
  %350 = load i8*, i8** %5, align 8
  %351 = load i32, i32* @tf_none, align 4
  %352 = call i8* @instantiate_type(i8* %349, i8* %350, i32 %351)
  store i8* %352, i8** %5, align 8
  %353 = load i8*, i8** %5, align 8
  %354 = load i8*, i8** @error_mark_node, align 8
  %355 = icmp eq i8* %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %348
  %357 = load i8*, i8** @error_mark_node, align 8
  store i8* %357, i8** %3, align 8
  br label %407

358:                                              ; preds = %348
  %359 = load i8*, i8** %5, align 8
  %360 = call i8* @TREE_TYPE(i8* %359)
  %361 = load i8*, i8** %4, align 8
  %362 = call i32 @same_type_p(i8* %360, i8* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %377, label %364

364:                                              ; preds = %358
  %365 = load i8*, i8** %4, align 8
  %366 = load i8*, i8** %5, align 8
  %367 = call i8* @TREE_TYPE(i8* %366)
  %368 = call i32 @can_convert(i8* %365, i8* %367)
  %369 = call i32 @gcc_assert(i32 %368)
  %370 = load i8*, i8** %5, align 8
  %371 = load i8*, i8** %4, align 8
  %372 = load i8*, i8** %5, align 8
  %373 = call i8* @TREE_TYPE(i8* %372)
  %374 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i8* %370, i8* %371, i8* %373)
  %375 = call i32 (i8*, ...) @inform(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %376 = load i8*, i8** @NULL_TREE, align 8
  store i8* %376, i8** %3, align 8
  br label %407

377:                                              ; preds = %358
  br label %395

378:                                              ; preds = %344
  %379 = load i8*, i8** %4, align 8
  %380 = call i64 @TYPE_PTRMEM_P(i8* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %392

382:                                              ; preds = %378
  %383 = load i8*, i8** %4, align 8
  %384 = load i8*, i8** %5, align 8
  %385 = call i8* @perform_qualification_conversions(i8* %383, i8* %384)
  store i8* %385, i8** %5, align 8
  %386 = load i8*, i8** %5, align 8
  %387 = load i8*, i8** @error_mark_node, align 8
  %388 = icmp eq i8* %386, %387
  br i1 %388, label %389, label %391

389:                                              ; preds = %382
  %390 = load i8*, i8** %5, align 8
  store i8* %390, i8** %3, align 8
  br label %407

391:                                              ; preds = %382
  br label %394

392:                                              ; preds = %378
  %393 = call i32 (...) @gcc_unreachable()
  br label %394

394:                                              ; preds = %392, %391
  br label %395

395:                                              ; preds = %394, %377
  br label %396

396:                                              ; preds = %395, %339
  br label %397

397:                                              ; preds = %396, %308
  br label %398

398:                                              ; preds = %397, %274
  br label %399

399:                                              ; preds = %398, %231
  br label %400

400:                                              ; preds = %399, %141
  %401 = load i8*, i8** %4, align 8
  %402 = load i8*, i8** %5, align 8
  %403 = call i8* @TREE_TYPE(i8* %402)
  %404 = call i32 @same_type_p(i8* %401, i8* %403)
  %405 = call i32 @gcc_assert(i32 %404)
  %406 = load i8*, i8** %5, align 8
  store i8* %406, i8** %3, align 8
  br label %407

407:                                              ; preds = %400, %389, %364, %356, %337, %318, %306, %293, %268, %259, %250, %242, %229, %220, %205, %195, %177, %172, %139, %125, %116, %24, %13
  %408 = load i8*, i8** %3, align 8
  ret i8* %408
}

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

declare dso_local i8* @fold_non_dependent_expr(i8*) #1

declare dso_local i64 @error_operand_p(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @TYPE_REF_OBJ_P(i8*) #1

declare dso_local i64 @TYPE_REFFN_P(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i8*, i8*) #1

declare dso_local i64 @TYPE_PTROBV_P(i8*) #1

declare dso_local i32 @STRIP_NOPS(i8*) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i8*) #1

declare dso_local i8* @fold_decl_constant_value(i8*) #1

declare dso_local i8* @ocp_convert(i8*, i8*, i32, i32) #1

declare dso_local i8* @fold(i8*) #1

declare dso_local i64 @DECL_P(i8*) #1

declare dso_local i64 @DECL_TEMPLATE_PARM_P(i8*) #1

declare dso_local i32 @DECL_EXTERNAL_LINKAGE_P(i8*) #1

declare dso_local i8* @decay_conversion(i8*) #1

declare dso_local i8* @perform_qualification_conversions(i8*, i8*) #1

declare dso_local i32 @at_least_as_qualified_p(i8*, i8*) #1

declare dso_local i32 @real_lvalue_p(i8*) #1

declare dso_local i8* @build_nop(i8*, i32) #1

declare dso_local i32 @build_address(i8*) #1

declare dso_local i64 @TYPE_PTRFN_P(i8*) #1

declare dso_local i32 @type_unknown_p(i8*) #1

declare dso_local i8* @convert_nontype_argument_function(i8*, i8*) #1

declare dso_local i32 @inform(i8*, ...) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i8*) #1

declare dso_local i8* @instantiate_type(i8*, i8*, i32) #1

declare dso_local i32 @same_type_p(i8*, i8*) #1

declare dso_local i32 @can_convert(i8*, i8*) #1

declare dso_local i64 @TYPE_PTRMEM_P(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
