; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_conditional_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_conditional_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i32 }

@NULL_TREE = common dso_local global i8* null, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"ISO C++ forbids omitting the middle term of a ?: expression\00", align 1
@boolean_type_node = common dso_local global i8* null, align 8
@error_mark_node = common dso_local global i8* null, align 8
@THROW_EXPR = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"%qE has type %<void%> and is not a throw-expression\00", align 1
@ck_ambig = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"operands to ?: have different types %qT and %qT\00", align 1
@conversion_obstack = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"enumeral mismatch in conditional expression: %qT vs %qT\00", align 1
@extra_warnings = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"enumeral and non-enumeral type in conditional expression\00", align 1
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"conditional expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_conditional_expr(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_candidate*, align 8
  %14 = alloca %struct.z_candidate*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca [3 x i8*], align 16
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** @NULL_TREE, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** @NULL_TREE, align 8
  store i8* %22, i8** %11, align 8
  store i32 1, i32* %12, align 4
  store %struct.z_candidate* null, %struct.z_candidate** %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* @pedantic, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @pedwarn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @real_lvalue_p(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @stabilize_reference(i8* %35)
  store i8* %36, i8** %5, align 8
  store i8* %36, i8** %6, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @save_expr(i8* %38)
  store i8* %39, i8** %5, align 8
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i8*, i8** @boolean_type_node, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @perform_implicit_conversion(i8* %42, i8* %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @error_operand_p(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @error_operand_p(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @error_operand_p(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %48, %41
  %57 = load i8*, i8** @error_mark_node, align 8
  store i8* %57, i8** %4, align 8
  br label %621

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @unlowered_expr_type(i8* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @unlowered_expr_type(i8* %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @VOID_TYPE_P(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @VOID_TYPE_P(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %155

70:                                               ; preds = %66, %58
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @VOID_TYPE_P(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = call i8* @decay_conversion(i8* %75)
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @VOID_TYPE_P(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @decay_conversion(i8* %82)
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @TREE_TYPE(i8* %85)
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @TREE_TYPE(i8* %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @TREE_CODE(i8* %89)
  %91 = load i64, i64* @THROW_EXPR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @TREE_CODE(i8* %94)
  %96 = load i64, i64* @THROW_EXPR, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load i8*, i8** %9, align 8
  %100 = call i64 @VOID_TYPE_P(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = call i8* @force_rvalue(i8* %103)
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i8*, i8** %7, align 8
  %107 = call i8* @TREE_TYPE(i8* %106)
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %9, align 8
  store i8* %108, i8** %11, align 8
  br label %154

109:                                              ; preds = %93, %84
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @TREE_CODE(i8* %110)
  %112 = load i64, i64* @THROW_EXPR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @TREE_CODE(i8* %115)
  %117 = load i64, i64* @THROW_EXPR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @VOID_TYPE_P(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = call i8* @force_rvalue(i8* %124)
  store i8* %125, i8** %6, align 8
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i8*, i8** %6, align 8
  %128 = call i8* @TREE_TYPE(i8* %127)
  store i8* %128, i8** %8, align 8
  %129 = load i8*, i8** %8, align 8
  store i8* %129, i8** %11, align 8
  br label %153

130:                                              ; preds = %114, %109
  %131 = load i8*, i8** %8, align 8
  %132 = call i64 @VOID_TYPE_P(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %9, align 8
  %136 = call i64 @VOID_TYPE_P(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i8*, i8** @void_type_node, align 8
  store i8* %139, i8** %11, align 8
  br label %152

140:                                              ; preds = %134, %130
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @VOID_TYPE_P(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i8*, i8** %6, align 8
  br label %148

146:                                              ; preds = %140
  %147 = load i8*, i8** %7, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i8* [ %145, %144 ], [ %147, %146 ]
  %150 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** @error_mark_node, align 8
  store i8* %151, i8** %4, align 8
  br label %621

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %126
  br label %154

154:                                              ; preds = %153, %105
  store i32 0, i32* %12, align 4
  br label %598

155:                                              ; preds = %66
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = call i64 @same_type_p(i8* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %298, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %8, align 8
  %162 = call i64 @CLASS_TYPE_P(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %9, align 8
  %166 = call i64 @CLASS_TYPE_P(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %298

168:                                              ; preds = %164, %160
  %169 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %169, i8** %15, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = call %struct.TYPE_4__* @conditional_conversion(i8* %170, i8* %171)
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %16, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = call %struct.TYPE_4__* @conditional_conversion(i8* %173, i8* %174)
  store %struct.TYPE_4__* %175, %struct.TYPE_4__** %17, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %177 = icmp ne %struct.TYPE_4__* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %168
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %185 = icmp ne %struct.TYPE_4__* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %186, %183, %178, %168
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %193 = icmp ne %struct.TYPE_4__* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ck_ambig, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %209, label %200

200:                                              ; preds = %194, %191
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %202 = icmp ne %struct.TYPE_4__* %201, null
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ck_ambig, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %203, %194, %186
  %210 = load i8*, i8** %8, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %210, i8* %211)
  %213 = load i8*, i8** @error_mark_node, align 8
  store i8* %213, i8** %10, align 8
  br label %266

214:                                              ; preds = %203, %200
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %216 = icmp ne %struct.TYPE_4__* %215, null
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %224 = icmp ne %struct.TYPE_4__* %223, null
  br i1 %224, label %239, label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = call i8* @convert_like(%struct.TYPE_4__* %226, i8* %227)
  store i8* %228, i8** %6, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = call i8* @convert_from_reference(i8* %229)
  store i8* %230, i8** %6, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = call i8* @TREE_TYPE(i8* %231)
  store i8* %232, i8** %8, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = call i64 @error_operand_p(i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %225
  %237 = load i8*, i8** @error_mark_node, align 8
  store i8* %237, i8** %10, align 8
  br label %238

238:                                              ; preds = %236, %225
  br label %265

239:                                              ; preds = %222, %214
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %241 = icmp ne %struct.TYPE_4__* %240, null
  br i1 %241, label %242, label %264

242:                                              ; preds = %239
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %249 = icmp ne %struct.TYPE_4__* %248, null
  br i1 %249, label %264, label %250

250:                                              ; preds = %247, %242
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = call i8* @convert_like(%struct.TYPE_4__* %251, i8* %252)
  store i8* %253, i8** %7, align 8
  %254 = load i8*, i8** %7, align 8
  %255 = call i8* @convert_from_reference(i8* %254)
  store i8* %255, i8** %7, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = call i8* @TREE_TYPE(i8* %256)
  store i8* %257, i8** %9, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = call i64 @error_operand_p(i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %250
  %262 = load i8*, i8** @error_mark_node, align 8
  store i8* %262, i8** %10, align 8
  br label %263

263:                                              ; preds = %261, %250
  br label %264

264:                                              ; preds = %263, %247, %239
  br label %265

265:                                              ; preds = %264, %238
  br label %266

266:                                              ; preds = %265, %209
  %267 = load i8*, i8** %15, align 8
  %268 = call i32 @obstack_free(i32* @conversion_obstack, i8* %267)
  %269 = load i8*, i8** %10, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i8*, i8** %10, align 8
  store i8* %272, i8** %4, align 8
  br label %621

273:                                              ; preds = %266
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %275 = icmp ne %struct.TYPE_4__* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %278 = icmp ne %struct.TYPE_4__* %277, null
  br i1 %278, label %279, label %297

279:                                              ; preds = %276, %273
  %280 = load i8*, i8** %8, align 8
  %281 = call i64 @CLASS_TYPE_P(i8* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %279
  %284 = load i8*, i8** %8, align 8
  %285 = call i32 @TYPE_QUALS(i8* %284)
  %286 = load i8*, i8** %9, align 8
  %287 = call i32 @TYPE_QUALS(i8* %286)
  %288 = icmp ne i32 %285, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %283
  %290 = load i8*, i8** %8, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 @TYPE_QUALS(i8* %291)
  %293 = load i8*, i8** %9, align 8
  %294 = call i32 @TYPE_QUALS(i8* %293)
  %295 = or i32 %292, %294
  %296 = call i8* @cp_build_qualified_type(i8* %290, i32 %295)
  store i8* %296, i8** %9, align 8
  store i8* %296, i8** %8, align 8
  br label %297

297:                                              ; preds = %289, %283, %279, %276
  br label %298

298:                                              ; preds = %297, %164, %155
  br label %299

299:                                              ; preds = %298
  %300 = load i8*, i8** %6, align 8
  %301 = call i64 @real_lvalue_p(i8* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %299
  %304 = load i8*, i8** %7, align 8
  %305 = call i64 @real_lvalue_p(i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load i8*, i8** %8, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = call i64 @same_type_p(i8* %308, i8* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = load i8*, i8** %8, align 8
  store i8* %313, i8** %11, align 8
  br label %598

314:                                              ; preds = %307, %303, %299
  store i32 0, i32* %12, align 4
  %315 = load i8*, i8** %8, align 8
  %316 = load i8*, i8** %9, align 8
  %317 = call i64 @same_type_p(i8* %315, i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %396, label %319

319:                                              ; preds = %314
  %320 = load i8*, i8** %8, align 8
  %321 = call i64 @CLASS_TYPE_P(i8* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = load i8*, i8** %9, align 8
  %325 = call i64 @CLASS_TYPE_P(i8* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %396

327:                                              ; preds = %323, %319
  %328 = load i8*, i8** %6, align 8
  %329 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  store i8* %328, i8** %329, align 16
  %330 = load i8*, i8** %7, align 8
  %331 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  store i8* %330, i8** %331, align 8
  %332 = load i8*, i8** %5, align 8
  %333 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  store i8* %332, i8** %333, align 16
  %334 = load i32, i32* @COND_EXPR, align 4
  %335 = load i32, i32* @NOP_EXPR, align 4
  %336 = load i32, i32* @COND_EXPR, align 4
  %337 = call i32 @ansi_opname(i32 %336)
  %338 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %339 = load i32, i32* @LOOKUP_NORMAL, align 4
  %340 = call i32 @add_builtin_candidates(%struct.z_candidate** %13, i32 %334, i32 %335, i32 %337, i8** %338, i32 %339)
  %341 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %342 = load i64, i64* @pedantic, align 8
  %343 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %341, i64 %342, i32* %20)
  store %struct.z_candidate* %343, %struct.z_candidate** %13, align 8
  %344 = load i32, i32* %20, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %356, label %346

346:                                              ; preds = %327
  %347 = load i32, i32* @COND_EXPR, align 4
  %348 = load i32, i32* @NOP_EXPR, align 4
  %349 = load i8*, i8** %5, align 8
  %350 = load i8*, i8** %6, align 8
  %351 = load i8*, i8** %7, align 8
  %352 = call i32 @op_error(i32 %347, i32 %348, i8* %349, i8* %350, i8* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %353 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %354 = call i32 @print_z_candidates(%struct.z_candidate* %353)
  %355 = load i8*, i8** @error_mark_node, align 8
  store i8* %355, i8** %4, align 8
  br label %621

356:                                              ; preds = %327
  %357 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %358 = call %struct.z_candidate* @tourney(%struct.z_candidate* %357)
  store %struct.z_candidate* %358, %struct.z_candidate** %14, align 8
  %359 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %360 = icmp ne %struct.z_candidate* %359, null
  br i1 %360, label %371, label %361

361:                                              ; preds = %356
  %362 = load i32, i32* @COND_EXPR, align 4
  %363 = load i32, i32* @NOP_EXPR, align 4
  %364 = load i8*, i8** %5, align 8
  %365 = load i8*, i8** %6, align 8
  %366 = load i8*, i8** %7, align 8
  %367 = call i32 @op_error(i32 %362, i32 %363, i8* %364, i8* %365, i8* %366, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %368 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %369 = call i32 @print_z_candidates(%struct.z_candidate* %368)
  %370 = load i8*, i8** @error_mark_node, align 8
  store i8* %370, i8** %4, align 8
  br label %621

371:                                              ; preds = %356
  %372 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %373 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %372, i32 0, i32 0
  %374 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %374, i64 0
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %375, align 8
  store %struct.TYPE_4__* %376, %struct.TYPE_4__** %19, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %378 = load i8*, i8** %5, align 8
  %379 = call i8* @convert_like(%struct.TYPE_4__* %377, i8* %378)
  store i8* %379, i8** %5, align 8
  %380 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %381 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %380, i32 0, i32 0
  %382 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %382, i64 1
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  store %struct.TYPE_4__* %384, %struct.TYPE_4__** %19, align 8
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %386 = load i8*, i8** %6, align 8
  %387 = call i8* @convert_like(%struct.TYPE_4__* %385, i8* %386)
  store i8* %387, i8** %6, align 8
  %388 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %389 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %388, i32 0, i32 0
  %390 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %390, i64 2
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %391, align 8
  store %struct.TYPE_4__* %392, %struct.TYPE_4__** %19, align 8
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %394 = load i8*, i8** %7, align 8
  %395 = call i8* @convert_like(%struct.TYPE_4__* %393, i8* %394)
  store i8* %395, i8** %7, align 8
  br label %396

396:                                              ; preds = %371, %323, %314
  %397 = load i8*, i8** %6, align 8
  %398 = call i8* @force_rvalue(i8* %397)
  store i8* %398, i8** %6, align 8
  %399 = load i8*, i8** %8, align 8
  %400 = call i64 @CLASS_TYPE_P(i8* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %396
  %403 = load i8*, i8** %6, align 8
  %404 = call i8* @TREE_TYPE(i8* %403)
  store i8* %404, i8** %8, align 8
  br label %405

405:                                              ; preds = %402, %396
  %406 = load i8*, i8** %7, align 8
  %407 = call i8* @force_rvalue(i8* %406)
  store i8* %407, i8** %7, align 8
  %408 = load i8*, i8** %8, align 8
  %409 = call i64 @CLASS_TYPE_P(i8* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %405
  %412 = load i8*, i8** %7, align 8
  %413 = call i8* @TREE_TYPE(i8* %412)
  store i8* %413, i8** %9, align 8
  br label %414

414:                                              ; preds = %411, %405
  %415 = load i8*, i8** %6, align 8
  %416 = load i8*, i8** @error_mark_node, align 8
  %417 = icmp eq i8* %415, %416
  br i1 %417, label %422, label %418

418:                                              ; preds = %414
  %419 = load i8*, i8** %7, align 8
  %420 = load i8*, i8** @error_mark_node, align 8
  %421 = icmp eq i8* %419, %420
  br i1 %421, label %422, label %424

422:                                              ; preds = %418, %414
  %423 = load i8*, i8** @error_mark_node, align 8
  store i8* %423, i8** %4, align 8
  br label %621

424:                                              ; preds = %418
  %425 = load i8*, i8** %8, align 8
  %426 = load i8*, i8** %9, align 8
  %427 = call i64 @same_type_p(i8* %425, i8* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %424
  %430 = load i8*, i8** %8, align 8
  store i8* %430, i8** %11, align 8
  br label %589

431:                                              ; preds = %424
  %432 = load i8*, i8** %8, align 8
  %433 = call i64 @ARITHMETIC_TYPE_P(i8* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %440, label %435

435:                                              ; preds = %431
  %436 = load i8*, i8** %8, align 8
  %437 = call i64 @TREE_CODE(i8* %436)
  %438 = load i64, i64* @ENUMERAL_TYPE, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %501

440:                                              ; preds = %435, %431
  %441 = load i8*, i8** %9, align 8
  %442 = call i64 @ARITHMETIC_TYPE_P(i8* %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %440
  %445 = load i8*, i8** %9, align 8
  %446 = call i64 @TREE_CODE(i8* %445)
  %447 = load i64, i64* @ENUMERAL_TYPE, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %501

449:                                              ; preds = %444, %440
  %450 = load i8*, i8** %8, align 8
  %451 = load i8*, i8** %9, align 8
  %452 = call i8* @type_after_usual_arithmetic_conversions(i8* %450, i8* %451)
  store i8* %452, i8** %11, align 8
  %453 = load i8*, i8** %8, align 8
  %454 = call i64 @TREE_CODE(i8* %453)
  %455 = load i64, i64* @ENUMERAL_TYPE, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %466

457:                                              ; preds = %449
  %458 = load i8*, i8** %9, align 8
  %459 = call i64 @TREE_CODE(i8* %458)
  %460 = load i64, i64* @ENUMERAL_TYPE, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %457
  %463 = load i8*, i8** %8, align 8
  %464 = load i8*, i8** %9, align 8
  %465 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %463, i8* %464)
  br label %494

466:                                              ; preds = %457, %449
  %467 = load i64, i64* @extra_warnings, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %493

469:                                              ; preds = %466
  %470 = load i8*, i8** %8, align 8
  %471 = call i64 @TREE_CODE(i8* %470)
  %472 = load i64, i64* @ENUMERAL_TYPE, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %480

474:                                              ; preds = %469
  %475 = load i8*, i8** %9, align 8
  %476 = load i8*, i8** %8, align 8
  %477 = call i8* @type_promotes_to(i8* %476)
  %478 = call i64 @same_type_p(i8* %475, i8* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %474, %469
  %481 = load i8*, i8** %9, align 8
  %482 = call i64 @TREE_CODE(i8* %481)
  %483 = load i64, i64* @ENUMERAL_TYPE, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %493

485:                                              ; preds = %480
  %486 = load i8*, i8** %8, align 8
  %487 = load i8*, i8** %9, align 8
  %488 = call i8* @type_promotes_to(i8* %487)
  %489 = call i64 @same_type_p(i8* %486, i8* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %493, label %491

491:                                              ; preds = %485, %474
  %492 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %493

493:                                              ; preds = %491, %485, %480, %466
  br label %494

494:                                              ; preds = %493, %462
  %495 = load i8*, i8** %11, align 8
  %496 = load i8*, i8** %6, align 8
  %497 = call i8* @perform_implicit_conversion(i8* %495, i8* %496)
  store i8* %497, i8** %6, align 8
  %498 = load i8*, i8** %11, align 8
  %499 = load i8*, i8** %7, align 8
  %500 = call i8* @perform_implicit_conversion(i8* %498, i8* %499)
  store i8* %500, i8** %7, align 8
  br label %588

501:                                              ; preds = %444, %435
  %502 = load i8*, i8** %6, align 8
  %503 = call i64 @null_ptr_cst_p(i8* %502)
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %518

505:                                              ; preds = %501
  %506 = load i8*, i8** %9, align 8
  %507 = call i64 @TYPE_PTR_P(i8* %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %569, label %509

509:                                              ; preds = %505
  %510 = load i8*, i8** %9, align 8
  %511 = call i64 @TYPE_PTR_TO_MEMBER_P(i8* %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %569, label %513

513:                                              ; preds = %509
  %514 = load i8*, i8** %9, align 8
  %515 = call i64 @TREE_CODE(i8* %514)
  %516 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %569, label %518

518:                                              ; preds = %513, %501
  %519 = load i8*, i8** %7, align 8
  %520 = call i64 @null_ptr_cst_p(i8* %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %535

522:                                              ; preds = %518
  %523 = load i8*, i8** %8, align 8
  %524 = call i64 @TYPE_PTR_P(i8* %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %569, label %526

526:                                              ; preds = %522
  %527 = load i8*, i8** %8, align 8
  %528 = call i64 @TYPE_PTR_TO_MEMBER_P(i8* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %569, label %530

530:                                              ; preds = %526
  %531 = load i8*, i8** %8, align 8
  %532 = call i64 @TREE_CODE(i8* %531)
  %533 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %534 = icmp eq i64 %532, %533
  br i1 %534, label %569, label %535

535:                                              ; preds = %530, %518
  %536 = load i8*, i8** %8, align 8
  %537 = call i64 @TYPE_PTR_P(i8* %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %544, label %539

539:                                              ; preds = %535
  %540 = load i8*, i8** %8, align 8
  %541 = call i64 @TREE_CODE(i8* %540)
  %542 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %543 = icmp eq i64 %541, %542
  br i1 %543, label %544, label %553

544:                                              ; preds = %539, %535
  %545 = load i8*, i8** %9, align 8
  %546 = call i64 @TYPE_PTR_P(i8* %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %569, label %548

548:                                              ; preds = %544
  %549 = load i8*, i8** %9, align 8
  %550 = call i64 @TREE_CODE(i8* %549)
  %551 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %552 = icmp eq i64 %550, %551
  br i1 %552, label %569, label %553

553:                                              ; preds = %548, %539
  %554 = load i8*, i8** %8, align 8
  %555 = call i64 @TYPE_PTRMEM_P(i8* %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %553
  %558 = load i8*, i8** %9, align 8
  %559 = call i64 @TYPE_PTRMEM_P(i8* %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %569, label %561

561:                                              ; preds = %557, %553
  %562 = load i8*, i8** %8, align 8
  %563 = call i64 @TYPE_PTRMEMFUNC_P(i8* %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %587

565:                                              ; preds = %561
  %566 = load i8*, i8** %9, align 8
  %567 = call i64 @TYPE_PTRMEMFUNC_P(i8* %566)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %587

569:                                              ; preds = %565, %557, %548, %544, %530, %526, %522, %513, %509, %505
  %570 = load i8*, i8** %8, align 8
  %571 = load i8*, i8** %9, align 8
  %572 = load i8*, i8** %6, align 8
  %573 = load i8*, i8** %7, align 8
  %574 = call i8* @composite_pointer_type(i8* %570, i8* %571, i8* %572, i8* %573, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i8* %574, i8** %11, align 8
  %575 = load i8*, i8** %11, align 8
  %576 = load i8*, i8** @error_mark_node, align 8
  %577 = icmp eq i8* %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %569
  %579 = load i8*, i8** @error_mark_node, align 8
  store i8* %579, i8** %4, align 8
  br label %621

580:                                              ; preds = %569
  %581 = load i8*, i8** %11, align 8
  %582 = load i8*, i8** %6, align 8
  %583 = call i8* @perform_implicit_conversion(i8* %581, i8* %582)
  store i8* %583, i8** %6, align 8
  %584 = load i8*, i8** %11, align 8
  %585 = load i8*, i8** %7, align 8
  %586 = call i8* @perform_implicit_conversion(i8* %584, i8* %585)
  store i8* %586, i8** %7, align 8
  br label %587

587:                                              ; preds = %580, %565, %561
  br label %588

588:                                              ; preds = %587, %494
  br label %589

589:                                              ; preds = %588, %429
  %590 = load i8*, i8** %11, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %597, label %592

592:                                              ; preds = %589
  %593 = load i8*, i8** %8, align 8
  %594 = load i8*, i8** %9, align 8
  %595 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %593, i8* %594)
  %596 = load i8*, i8** @error_mark_node, align 8
  store i8* %596, i8** %4, align 8
  br label %621

597:                                              ; preds = %589
  br label %598

598:                                              ; preds = %597, %312, %154
  %599 = load i32, i32* @COND_EXPR, align 4
  %600 = load i8*, i8** %11, align 8
  %601 = load i8*, i8** %5, align 8
  %602 = load i8*, i8** %6, align 8
  %603 = load i8*, i8** %7, align 8
  %604 = call i32 @build3(i32 %599, i8* %600, i8* %601, i8* %602, i8* %603)
  %605 = call i8* @fold_if_not_in_template(i32 %604)
  store i8* %605, i8** %10, align 8
  %606 = load i32, i32* %12, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %619, label %608

608:                                              ; preds = %598
  %609 = load i8*, i8** %10, align 8
  %610 = call i8* @TREE_TYPE(i8* %609)
  %611 = call i64 @CLASS_TYPE_P(i8* %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %616

613:                                              ; preds = %608
  %614 = load i8*, i8** %10, align 8
  %615 = call i8* @get_target_expr(i8* %614)
  store i8* %615, i8** %10, align 8
  br label %616

616:                                              ; preds = %613, %608
  %617 = load i8*, i8** %10, align 8
  %618 = call i8* @rvalue(i8* %617)
  store i8* %618, i8** %10, align 8
  br label %619

619:                                              ; preds = %616, %598
  %620 = load i8*, i8** %10, align 8
  store i8* %620, i8** %4, align 8
  br label %621

621:                                              ; preds = %619, %592, %578, %422, %361, %346, %271, %148, %56
  %622 = load i8*, i8** %4, align 8
  ret i8* %622
}

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @real_lvalue_p(i8*) #1

declare dso_local i8* @stabilize_reference(i8*) #1

declare dso_local i8* @save_expr(i8*) #1

declare dso_local i8* @perform_implicit_conversion(i8*, i8*) #1

declare dso_local i64 @error_operand_p(i8*) #1

declare dso_local i8* @unlowered_expr_type(i8*) #1

declare dso_local i64 @VOID_TYPE_P(i8*) #1

declare dso_local i8* @decay_conversion(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @force_rvalue(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @same_type_p(i8*, i8*) #1

declare dso_local i64 @CLASS_TYPE_P(i8*) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local %struct.TYPE_4__* @conditional_conversion(i8*, i8*) #1

declare dso_local i8* @convert_like(%struct.TYPE_4__*, i8*) #1

declare dso_local i8* @convert_from_reference(i8*) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

declare dso_local i32 @TYPE_QUALS(i8*) #1

declare dso_local i8* @cp_build_qualified_type(i8*, i32) #1

declare dso_local i32 @add_builtin_candidates(%struct.z_candidate**, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @ansi_opname(i32) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i64, i32*) #1

declare dso_local i32 @op_error(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i64 @ARITHMETIC_TYPE_P(i8*) #1

declare dso_local i8* @type_after_usual_arithmetic_conversions(i8*, i8*) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i8* @type_promotes_to(i8*) #1

declare dso_local i64 @null_ptr_cst_p(i8*) #1

declare dso_local i64 @TYPE_PTR_P(i8*) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i8*) #1

declare dso_local i64 @TYPE_PTRMEM_P(i8*) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i8*) #1

declare dso_local i8* @composite_pointer_type(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @fold_if_not_in_template(i32) #1

declare dso_local i32 @build3(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @get_target_expr(i8*) #1

declare dso_local i8* @rvalue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
