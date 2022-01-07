; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_process_init_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_process_init_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.c_expr }
%struct.c_expr = type { i64, i64 }
%struct.constructor_range_stack = type { i64, i64, i64, i64, %struct.TYPE_2__*, %struct.constructor_range_stack*, %struct.constructor_range_stack* }

@STRING_CST = common dso_local global i64 0, align 8
@designator_depth = common dso_local global i64 0, align 8
@designator_erroneous = common dso_local global i64 0, align 8
@constructor_type = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@constructor_unfilled_index = common dso_local global i64 0, align 8
@constructor_stack = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"excess elements in char array initializer\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"excess elements in struct initializer\00", align 1
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@constructor_fields = common dso_local global i64 0, align 8
@constructor_max_index = common dso_local global i64 0, align 8
@constructor_index = common dso_local global i64 0, align 8
@constructor_range_stack = common dso_local global %struct.constructor_range_stack* null, align 8
@COMPOUND_LITERAL_EXPR = common dso_local global i64 0, align 8
@require_constant_value = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"non-static initialization of a flexible array member\00", align 1
@constructor_depth = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@constructor_bit_index = common dso_local global i64 0, align 8
@constructor_unfilled_fields = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"excess elements in union initializer\00", align 1
@in_system_header = common dso_local global i32 0, align 4
@constructor_designated = common dso_local global i32 0, align 4
@OPT_Wtraditional = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"traditional C rejects initialization of unions\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"excess elements in array initializer\00", align 1
@bitsize_one_node = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"excess elements in vector initializer\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"excess elements in scalar initializer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_init_element(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.constructor_range_stack*, align 8
  %17 = alloca %struct.constructor_range_stack*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.c_expr, align 8
  %20 = alloca %struct.c_expr, align 8
  %21 = bitcast %struct.c_expr* %3 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %1, i64* %23, align 8
  %24 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @STRING_CST, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ false, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STRING_CST, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  store i64 0, i64* @designator_depth, align 8
  store i64 0, i64* @designator_erroneous, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %33
  %44 = load i64, i64* @constructor_type, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load i64, i64* @constructor_type, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @ARRAY_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load i64, i64* @constructor_type, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i64 @INTEGRAL_TYPE_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load i64, i64* @constructor_unfilled_index, align 8
  %58 = call i64 @integer_zerop(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @error_init(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = bitcast %struct.c_expr* %70 to i8*
  %72 = bitcast %struct.c_expr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  br label %775

73:                                               ; preds = %56, %51, %46, %43, %33
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @error_init(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %775

81:                                               ; preds = %73
  %82 = load i64, i64* @constructor_type, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %775

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %143, %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %86
  %92 = load i64, i64* @constructor_type, align 8
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @RECORD_TYPE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i64, i64* @constructor_type, align 8
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @UNION_TYPE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %96, %91
  %102 = load i64, i64* @constructor_fields, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = call { i64, i64 } @pop_init_level(i32 1)
  %106 = bitcast %struct.c_expr* %7 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = extractvalue { i64, i64 } %105, 0
  store i64 %108, i64* %107, align 8
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = extractvalue { i64, i64 } %105, 1
  store i64 %110, i64* %109, align 8
  %111 = bitcast %struct.c_expr* %7 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  call void @process_init_element(i64 %113, i64 %115)
  br label %143

116:                                              ; preds = %101, %96
  %117 = load i64, i64* @constructor_type, align 8
  %118 = call i64 @TREE_CODE(i64 %117)
  %119 = load i64, i64* @ARRAY_TYPE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load i64, i64* @constructor_max_index, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @constructor_max_index, align 8
  %126 = load i64, i64* @constructor_index, align 8
  %127 = call i64 @tree_int_cst_lt(i64 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124, %121
  %130 = call { i64, i64 } @pop_init_level(i32 1)
  %131 = bitcast %struct.c_expr* %8 to { i64, i64 }*
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0
  %133 = extractvalue { i64, i64 } %130, 0
  store i64 %133, i64* %132, align 8
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1
  %135 = extractvalue { i64, i64 } %130, 1
  store i64 %135, i64* %134, align 8
  %136 = bitcast %struct.c_expr* %8 to { i64, i64 }*
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  call void @process_init_element(i64 %138, i64 %140)
  br label %142

141:                                              ; preds = %124, %116
  br label %144

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %104
  br label %86

144:                                              ; preds = %141, %86
  %145 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** @constructor_range_stack, align 8
  %146 = icmp ne %struct.constructor_range_stack* %145, null
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @TREE_CODE(i64 %149)
  %151 = load i64, i64* @COMPOUND_LITERAL_EXPR, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* @require_constant_value, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i64, i64* @flag_isoc99, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156, %153, %147
  %160 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @save_expr(i64 %161)
  %163 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164, %144
  br label %166

166:                                              ; preds = %165, %259, %429, %515, %772
  %167 = load i64, i64* @constructor_type, align 8
  %168 = call i64 @TREE_CODE(i64 %167)
  %169 = load i64, i64* @RECORD_TYPE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %333

171:                                              ; preds = %166
  %172 = load i64, i64* @constructor_fields, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @pedwarn_init(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %774

176:                                              ; preds = %171
  %177 = load i64, i64* @constructor_fields, align 8
  %178 = call i64 @TREE_TYPE(i64 %177)
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* @error_mark_node, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i64, i64* %9, align 8
  %184 = call i64 @TYPE_MAIN_VARIANT(i64 %183)
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %182, %176
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @TREE_CODE(i64 %186)
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* @ARRAY_TYPE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %185
  %194 = load i32, i32* @require_constant_value, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %208, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* %9, align 8
  %198 = call i64 @TYPE_SIZE(i64 %197)
  %199 = load i64, i64* @NULL_TREE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i64, i64* @constructor_fields, align 8
  %203 = call i64 @TREE_CHAIN(i64 %202)
  %204 = load i64, i64* @NULL_TREE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 @error_init(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %774

208:                                              ; preds = %201, %196, %193, %185
  %209 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* @ARRAY_TYPE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load i64, i64* %9, align 8
  %219 = call i64 @TREE_TYPE(i64 %218)
  %220 = call i64 @INTEGRAL_TYPE_P(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i64, i64* %4, align 8
  %227 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %226, i64* %227, align 8
  br label %262

228:                                              ; preds = %222, %217, %212, %208
  %229 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %261

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @error_mark_node, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %261

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @TREE_TYPE(i64 %239)
  %241 = call i64 @TYPE_MAIN_VARIANT(i64 %240)
  %242 = load i64, i64* %9, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %261

244:                                              ; preds = %237
  %245 = load i32, i32* %10, align 4
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* @RECORD_TYPE, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %259, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %10, align 4
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* @ARRAY_TYPE, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %10, align 4
  %256 = zext i32 %255 to i64
  %257 = load i64, i64* @UNION_TYPE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %254, %249, %244
  %260 = call i32 @push_init_level(i32 1)
  br label %166

261:                                              ; preds = %254, %237, %232, %228
  br label %262

262:                                              ; preds = %261, %225
  %263 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %262
  %267 = load i64, i64* @constructor_fields, align 8
  %268 = call i32 @push_member_name(i64 %267)
  %269 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = load i64, i64* %9, align 8
  %273 = load i64, i64* @constructor_fields, align 8
  %274 = call i32 @output_init_element(i64 %270, i32 %271, i64 %272, i64 %273, i32 1)
  %275 = load i32, i32* @constructor_depth, align 4
  %276 = call i32 @RESTORE_SPELLING_DEPTH(i32 %275)
  br label %313

277:                                              ; preds = %262
  %278 = load i64, i64* @constructor_fields, align 8
  %279 = call i64 @DECL_SIZE(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i32, i32* @PLUS_EXPR, align 4
  %283 = load i64, i64* @constructor_fields, align 8
  %284 = call i64 @bit_position(i64 %283)
  %285 = load i64, i64* @constructor_fields, align 8
  %286 = call i64 @DECL_SIZE(i64 %285)
  %287 = call i64 @size_binop(i32 %282, i64 %284, i64 %286)
  store i64 %287, i64* @constructor_bit_index, align 8
  br label %288

288:                                              ; preds = %281, %277
  %289 = load i64, i64* @constructor_unfilled_fields, align 8
  %290 = load i64, i64* @constructor_fields, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %288
  %293 = load i64, i64* @constructor_fields, align 8
  %294 = call i64 @TREE_CHAIN(i64 %293)
  store i64 %294, i64* @constructor_unfilled_fields, align 8
  br label %295

295:                                              ; preds = %308, %292
  %296 = load i64, i64* @constructor_unfilled_fields, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load i64, i64* @constructor_unfilled_fields, align 8
  %300 = call i64 @DECL_C_BIT_FIELD(i64 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = load i64, i64* @constructor_unfilled_fields, align 8
  %304 = call i64 @DECL_NAME(i64 %303)
  %305 = icmp eq i64 %304, 0
  br label %306

306:                                              ; preds = %302, %298, %295
  %307 = phi i1 [ false, %298 ], [ false, %295 ], [ %305, %302 ]
  br i1 %307, label %308, label %311

308:                                              ; preds = %306
  %309 = load i64, i64* @constructor_unfilled_fields, align 8
  %310 = call i64 @TREE_CHAIN(i64 %309)
  store i64 %310, i64* @constructor_unfilled_fields, align 8
  br label %295

311:                                              ; preds = %306
  br label %312

312:                                              ; preds = %311, %288
  br label %313

313:                                              ; preds = %312, %266
  %314 = load i64, i64* @constructor_fields, align 8
  %315 = call i64 @TREE_CHAIN(i64 %314)
  store i64 %315, i64* @constructor_fields, align 8
  br label %316

316:                                              ; preds = %329, %313
  %317 = load i64, i64* @constructor_fields, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = load i64, i64* @constructor_fields, align 8
  %321 = call i64 @DECL_C_BIT_FIELD(i64 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = load i64, i64* @constructor_fields, align 8
  %325 = call i64 @DECL_NAME(i64 %324)
  %326 = icmp eq i64 %325, 0
  br label %327

327:                                              ; preds = %323, %319, %316
  %328 = phi i1 [ false, %319 ], [ false, %316 ], [ %326, %323 ]
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = load i64, i64* @constructor_fields, align 8
  %331 = call i64 @TREE_CHAIN(i64 %330)
  store i64 %331, i64* @constructor_fields, align 8
  br label %316

332:                                              ; preds = %327
  br label %621

333:                                              ; preds = %166
  %334 = load i64, i64* @constructor_type, align 8
  %335 = call i64 @TREE_CODE(i64 %334)
  %336 = load i64, i64* @UNION_TYPE, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %453

338:                                              ; preds = %333
  %339 = load i64, i64* @constructor_fields, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = call i32 @pedwarn_init(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %774

343:                                              ; preds = %338
  %344 = load i64, i64* @constructor_fields, align 8
  %345 = call i64 @TREE_TYPE(i64 %344)
  store i64 %345, i64* %11, align 8
  %346 = load i64, i64* %11, align 8
  %347 = load i64, i64* @error_mark_node, align 8
  %348 = icmp ne i64 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %343
  %350 = load i64, i64* %11, align 8
  %351 = call i64 @TYPE_MAIN_VARIANT(i64 %350)
  store i64 %351, i64* %11, align 8
  br label %352

352:                                              ; preds = %349, %343
  %353 = load i64, i64* %11, align 8
  %354 = call i64 @TREE_CODE(i64 %353)
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %12, align 4
  %356 = load i32, i32* @in_system_header, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %378, label %358

358:                                              ; preds = %352
  %359 = load i32, i32* @constructor_designated, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %378, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @integer_zerop(i64 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call i64 @real_zerop(i64 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %370, %361
  %376 = load i32, i32* @OPT_Wtraditional, align 4
  %377 = call i32 @warning(i32 %376, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %378

378:                                              ; preds = %375, %370, %365, %358, %352
  %379 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %398

382:                                              ; preds = %378
  %383 = load i32, i32* %12, align 4
  %384 = zext i32 %383 to i64
  %385 = load i64, i64* @ARRAY_TYPE, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %398

387:                                              ; preds = %382
  %388 = load i64, i64* %11, align 8
  %389 = call i64 @TREE_TYPE(i64 %388)
  %390 = call i64 @INTEGRAL_TYPE_P(i64 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %387
  %393 = load i32, i32* %5, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load i64, i64* %4, align 8
  %397 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %396, i64* %397, align 8
  br label %432

398:                                              ; preds = %392, %387, %382, %378
  %399 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %431

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @error_mark_node, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %407, label %431

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i64 @TREE_TYPE(i64 %409)
  %411 = call i64 @TYPE_MAIN_VARIANT(i64 %410)
  %412 = load i64, i64* %11, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %431

414:                                              ; preds = %407
  %415 = load i32, i32* %12, align 4
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* @RECORD_TYPE, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %429, label %419

419:                                              ; preds = %414
  %420 = load i32, i32* %12, align 4
  %421 = zext i32 %420 to i64
  %422 = load i64, i64* @ARRAY_TYPE, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %429, label %424

424:                                              ; preds = %419
  %425 = load i32, i32* %12, align 4
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* @UNION_TYPE, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %424, %419, %414
  %430 = call i32 @push_init_level(i32 1)
  br label %166

431:                                              ; preds = %424, %407, %402, %398
  br label %432

432:                                              ; preds = %431, %395
  %433 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %447

436:                                              ; preds = %432
  %437 = load i64, i64* @constructor_fields, align 8
  %438 = call i32 @push_member_name(i64 %437)
  %439 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i32, i32* %6, align 4
  %442 = load i64, i64* %11, align 8
  %443 = load i64, i64* @constructor_fields, align 8
  %444 = call i32 @output_init_element(i64 %440, i32 %441, i64 %442, i64 %443, i32 1)
  %445 = load i32, i32* @constructor_depth, align 4
  %446 = call i32 @RESTORE_SPELLING_DEPTH(i32 %445)
  br label %452

447:                                              ; preds = %432
  %448 = load i64, i64* @constructor_fields, align 8
  %449 = call i64 @DECL_SIZE(i64 %448)
  store i64 %449, i64* @constructor_bit_index, align 8
  %450 = load i64, i64* @constructor_fields, align 8
  %451 = call i64 @TREE_CHAIN(i64 %450)
  store i64 %451, i64* @constructor_unfilled_fields, align 8
  br label %452

452:                                              ; preds = %447, %436
  store i64 0, i64* @constructor_fields, align 8
  br label %620

453:                                              ; preds = %333
  %454 = load i64, i64* @constructor_type, align 8
  %455 = call i64 @TREE_CODE(i64 %454)
  %456 = load i64, i64* @ARRAY_TYPE, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %559

458:                                              ; preds = %453
  %459 = load i64, i64* @constructor_type, align 8
  %460 = call i64 @TREE_TYPE(i64 %459)
  %461 = call i64 @TYPE_MAIN_VARIANT(i64 %460)
  store i64 %461, i64* %13, align 8
  %462 = load i64, i64* %13, align 8
  %463 = call i64 @TREE_CODE(i64 %462)
  %464 = trunc i64 %463 to i32
  store i32 %464, i32* %14, align 4
  %465 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %484

468:                                              ; preds = %458
  %469 = load i32, i32* %14, align 4
  %470 = zext i32 %469 to i64
  %471 = load i64, i64* @ARRAY_TYPE, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %484

473:                                              ; preds = %468
  %474 = load i64, i64* %13, align 8
  %475 = call i64 @TREE_TYPE(i64 %474)
  %476 = call i64 @INTEGRAL_TYPE_P(i64 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %473
  %479 = load i32, i32* %5, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %478
  %482 = load i64, i64* %4, align 8
  %483 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %482, i64* %483, align 8
  br label %518

484:                                              ; preds = %478, %473, %468, %458
  %485 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %517

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @error_mark_node, align 8
  %492 = icmp ne i64 %490, %491
  br i1 %492, label %493, label %517

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = call i64 @TREE_TYPE(i64 %495)
  %497 = call i64 @TYPE_MAIN_VARIANT(i64 %496)
  %498 = load i64, i64* %13, align 8
  %499 = icmp ne i64 %497, %498
  br i1 %499, label %500, label %517

500:                                              ; preds = %493
  %501 = load i32, i32* %14, align 4
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* @RECORD_TYPE, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %515, label %505

505:                                              ; preds = %500
  %506 = load i32, i32* %14, align 4
  %507 = zext i32 %506 to i64
  %508 = load i64, i64* @ARRAY_TYPE, align 8
  %509 = icmp eq i64 %507, %508
  br i1 %509, label %515, label %510

510:                                              ; preds = %505
  %511 = load i32, i32* %14, align 4
  %512 = zext i32 %511 to i64
  %513 = load i64, i64* @UNION_TYPE, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %517

515:                                              ; preds = %510, %505, %500
  %516 = call i32 @push_init_level(i32 1)
  br label %166

517:                                              ; preds = %510, %493, %488, %484
  br label %518

518:                                              ; preds = %517, %481
  %519 = load i64, i64* @constructor_max_index, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %532

521:                                              ; preds = %518
  %522 = load i64, i64* @constructor_max_index, align 8
  %523 = load i64, i64* @constructor_index, align 8
  %524 = call i64 @tree_int_cst_lt(i64 %522, i64 %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %530, label %526

526:                                              ; preds = %521
  %527 = load i64, i64* @constructor_max_index, align 8
  %528 = call i64 @integer_all_onesp(i64 %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %526, %521
  %531 = call i32 @pedwarn_init(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %774

532:                                              ; preds = %526, %518
  %533 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %548

536:                                              ; preds = %532
  %537 = load i64, i64* @constructor_index, align 8
  %538 = call i32 @tree_low_cst(i64 %537, i32 1)
  %539 = call i32 @push_array_bounds(i32 %538)
  %540 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = load i32, i32* %6, align 4
  %543 = load i64, i64* %13, align 8
  %544 = load i64, i64* @constructor_index, align 8
  %545 = call i32 @output_init_element(i64 %541, i32 %542, i64 %543, i64 %544, i32 1)
  %546 = load i32, i32* @constructor_depth, align 4
  %547 = call i32 @RESTORE_SPELLING_DEPTH(i32 %546)
  br label %548

548:                                              ; preds = %536, %532
  %549 = load i32, i32* @PLUS_EXPR, align 4
  %550 = load i64, i64* @constructor_index, align 8
  %551 = load i64, i64* @bitsize_one_node, align 8
  %552 = call i64 @size_binop(i32 %549, i64 %550, i64 %551)
  store i64 %552, i64* @constructor_index, align 8
  %553 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %558, label %556

556:                                              ; preds = %548
  %557 = load i64, i64* @constructor_index, align 8
  store i64 %557, i64* @constructor_unfilled_index, align 8
  br label %558

558:                                              ; preds = %556, %548
  br label %619

559:                                              ; preds = %453
  %560 = load i64, i64* @constructor_type, align 8
  %561 = call i64 @TREE_CODE(i64 %560)
  %562 = load i64, i64* @VECTOR_TYPE, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %596

564:                                              ; preds = %559
  %565 = load i64, i64* @constructor_type, align 8
  %566 = call i64 @TREE_TYPE(i64 %565)
  %567 = call i64 @TYPE_MAIN_VARIANT(i64 %566)
  store i64 %567, i64* %15, align 8
  %568 = load i64, i64* @constructor_max_index, align 8
  %569 = load i64, i64* @constructor_index, align 8
  %570 = call i64 @tree_int_cst_lt(i64 %568, i64 %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %564
  %573 = call i32 @pedwarn_init(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %774

574:                                              ; preds = %564
  %575 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %585

578:                                              ; preds = %574
  %579 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = load i32, i32* %6, align 4
  %582 = load i64, i64* %15, align 8
  %583 = load i64, i64* @constructor_index, align 8
  %584 = call i32 @output_init_element(i64 %580, i32 %581, i64 %582, i64 %583, i32 1)
  br label %585

585:                                              ; preds = %578, %574
  %586 = load i32, i32* @PLUS_EXPR, align 4
  %587 = load i64, i64* @constructor_index, align 8
  %588 = load i64, i64* @bitsize_one_node, align 8
  %589 = call i64 @size_binop(i32 %586, i64 %587, i64 %588)
  store i64 %589, i64* @constructor_index, align 8
  %590 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %595, label %593

593:                                              ; preds = %585
  %594 = load i64, i64* @constructor_index, align 8
  store i64 %594, i64* @constructor_unfilled_index, align 8
  br label %595

595:                                              ; preds = %593, %585
  br label %618

596:                                              ; preds = %559
  %597 = load i64, i64* @constructor_type, align 8
  %598 = load i64, i64* @error_mark_node, align 8
  %599 = icmp ne i64 %597, %598
  br i1 %599, label %600, label %605

600:                                              ; preds = %596
  %601 = load i64, i64* @constructor_fields, align 8
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %605

603:                                              ; preds = %600
  %604 = call i32 @pedwarn_init(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %774

605:                                              ; preds = %600, %596
  %606 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %616

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = load i32, i32* %6, align 4
  %613 = load i64, i64* @constructor_type, align 8
  %614 = load i64, i64* @NULL_TREE, align 8
  %615 = call i32 @output_init_element(i64 %611, i32 %612, i64 %613, i64 %614, i32 1)
  br label %616

616:                                              ; preds = %609, %605
  store i64 0, i64* @constructor_fields, align 8
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617, %595
  br label %619

619:                                              ; preds = %618, %558
  br label %620

620:                                              ; preds = %619, %452
  br label %621

621:                                              ; preds = %620, %332
  %622 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** @constructor_range_stack, align 8
  %623 = icmp ne %struct.constructor_range_stack* %622, null
  br i1 %623, label %624, label %773

624:                                              ; preds = %621
  store i32 0, i32* %18, align 4
  %625 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** @constructor_range_stack, align 8
  store %struct.constructor_range_stack* %625, %struct.constructor_range_stack** %17, align 8
  store %struct.constructor_range_stack* null, %struct.constructor_range_stack** @constructor_range_stack, align 8
  br label %626

626:                                              ; preds = %632, %624
  %627 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %628 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %17, align 8
  %629 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %628, i32 0, i32 4
  %630 = load %struct.TYPE_2__*, %struct.TYPE_2__** %629, align 8
  %631 = icmp ne %struct.TYPE_2__* %627, %630
  br i1 %631, label %632, label %648

632:                                              ; preds = %626
  %633 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %634 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = call i32 @gcc_assert(i64 %635)
  %637 = call { i64, i64 } @pop_init_level(i32 1)
  %638 = bitcast %struct.c_expr* %19 to { i64, i64 }*
  %639 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %638, i32 0, i32 0
  %640 = extractvalue { i64, i64 } %637, 0
  store i64 %640, i64* %639, align 8
  %641 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %638, i32 0, i32 1
  %642 = extractvalue { i64, i64 } %637, 1
  store i64 %642, i64* %641, align 8
  %643 = bitcast %struct.c_expr* %19 to { i64, i64 }*
  %644 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %643, i32 0, i32 1
  %647 = load i64, i64* %646, align 8
  call void @process_init_element(i64 %645, i64 %647)
  br label %626

648:                                              ; preds = %626
  %649 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %17, align 8
  store %struct.constructor_range_stack* %649, %struct.constructor_range_stack** %16, align 8
  br label %650

650:                                              ; preds = %682, %648
  %651 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %652 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %651, i32 0, i32 3
  %653 = load i64, i64* %652, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %664

655:                                              ; preds = %650
  %656 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %657 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %656, i32 0, i32 0
  %658 = load i64, i64* %657, align 8
  %659 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %660 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %659, i32 0, i32 3
  %661 = load i64, i64* %660, align 8
  %662 = call i64 @tree_int_cst_equal(i64 %658, i64 %661)
  %663 = icmp ne i64 %662, 0
  br label %664

664:                                              ; preds = %655, %650
  %665 = phi i1 [ true, %650 ], [ %663, %655 ]
  br i1 %665, label %666, label %686

666:                                              ; preds = %664
  %667 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %668 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %667, i32 0, i32 0
  %669 = load i64, i64* %668, align 8
  %670 = call i32 @gcc_assert(i64 %669)
  %671 = call { i64, i64 } @pop_init_level(i32 1)
  %672 = bitcast %struct.c_expr* %20 to { i64, i64 }*
  %673 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %672, i32 0, i32 0
  %674 = extractvalue { i64, i64 } %671, 0
  store i64 %674, i64* %673, align 8
  %675 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %672, i32 0, i32 1
  %676 = extractvalue { i64, i64 } %671, 1
  store i64 %676, i64* %675, align 8
  %677 = bitcast %struct.c_expr* %20 to { i64, i64 }*
  %678 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %677, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %677, i32 0, i32 1
  %681 = load i64, i64* %680, align 8
  call void @process_init_element(i64 %679, i64 %681)
  br label %682

682:                                              ; preds = %666
  %683 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %684 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %683, i32 0, i32 6
  %685 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %684, align 8
  store %struct.constructor_range_stack* %685, %struct.constructor_range_stack** %16, align 8
  br label %650

686:                                              ; preds = %664
  %687 = load i32, i32* @PLUS_EXPR, align 4
  %688 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %689 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = load i64, i64* @bitsize_one_node, align 8
  %692 = call i64 @size_binop(i32 %687, i64 %690, i64 %691)
  %693 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %694 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %693, i32 0, i32 0
  store i64 %692, i64* %694, align 8
  %695 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %696 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %695, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %699 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %698, i32 0, i32 3
  %700 = load i64, i64* %699, align 8
  %701 = call i64 @tree_int_cst_equal(i64 %697, i64 %700)
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %703, label %709

703:                                              ; preds = %686
  %704 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %705 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %704, i32 0, i32 6
  %706 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %705, align 8
  %707 = icmp ne %struct.constructor_range_stack* %706, null
  br i1 %707, label %709, label %708

708:                                              ; preds = %703
  store i32 1, i32* %18, align 4
  br label %709

709:                                              ; preds = %708, %703, %686
  br label %710

710:                                              ; preds = %709, %766
  %711 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %712 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* @constructor_index, align 8
  %714 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %715 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %714, i32 0, i32 1
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* @constructor_fields, align 8
  %717 = load i32, i32* %18, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %735

719:                                              ; preds = %710
  %720 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %721 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %720, i32 0, i32 3
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %735

724:                                              ; preds = %719
  %725 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %726 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %725, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %729 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %728, i32 0, i32 2
  %730 = load i64, i64* %729, align 8
  %731 = icmp eq i64 %727, %730
  br i1 %731, label %732, label %735

732:                                              ; preds = %724
  store i32 0, i32* %18, align 4
  %733 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %734 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %733, i32 0, i32 6
  store %struct.constructor_range_stack* null, %struct.constructor_range_stack** %734, align 8
  br label %735

735:                                              ; preds = %732, %724, %719, %710
  %736 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %737 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %736, i32 0, i32 5
  %738 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %737, align 8
  store %struct.constructor_range_stack* %738, %struct.constructor_range_stack** %16, align 8
  %739 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %740 = icmp ne %struct.constructor_range_stack* %739, null
  br i1 %740, label %742, label %741

741:                                              ; preds = %735
  br label %767

742:                                              ; preds = %735
  %743 = call i32 @push_init_level(i32 2)
  %744 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constructor_stack, align 8
  %745 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %746 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %745, i32 0, i32 4
  store %struct.TYPE_2__* %744, %struct.TYPE_2__** %746, align 8
  %747 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %748 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %747, i32 0, i32 3
  %749 = load i64, i64* %748, align 8
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %766

751:                                              ; preds = %742
  %752 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %753 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %756 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %755, i32 0, i32 3
  %757 = load i64, i64* %756, align 8
  %758 = call i64 @tree_int_cst_equal(i64 %754, i64 %757)
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %766

760:                                              ; preds = %751
  %761 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %762 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %761, i32 0, i32 2
  %763 = load i64, i64* %762, align 8
  %764 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %16, align 8
  %765 = getelementptr inbounds %struct.constructor_range_stack, %struct.constructor_range_stack* %764, i32 0, i32 0
  store i64 %763, i64* %765, align 8
  br label %766

766:                                              ; preds = %760, %751, %742
  br label %710

767:                                              ; preds = %741
  %768 = load i32, i32* %18, align 4
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %772, label %770

770:                                              ; preds = %767
  %771 = load %struct.constructor_range_stack*, %struct.constructor_range_stack** %17, align 8
  store %struct.constructor_range_stack* %771, %struct.constructor_range_stack** @constructor_range_stack, align 8
  br label %772

772:                                              ; preds = %770, %767
  br label %166

773:                                              ; preds = %621
  br label %774

774:                                              ; preds = %773, %603, %572, %530, %341, %206, %174
  store %struct.constructor_range_stack* null, %struct.constructor_range_stack** @constructor_range_stack, align 8
  br label %775

775:                                              ; preds = %774, %84, %79, %68
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i32 @error_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @pop_init_level(i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i32 @pedwarn_init(i8*) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @push_init_level(i32) #1

declare dso_local i32 @push_member_name(i64) #1

declare dso_local i32 @output_init_element(i64, i32, i64, i64, i32) #1

declare dso_local i32 @RESTORE_SPELLING_DEPTH(i32) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @bit_position(i64) #1

declare dso_local i64 @DECL_C_BIT_FIELD(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @real_zerop(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @integer_all_onesp(i64) #1

declare dso_local i32 @push_array_bounds(i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
