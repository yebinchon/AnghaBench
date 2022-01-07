; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_template_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_template_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }

@CPP_RSHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"expected template-argument\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@none_type = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@UNBOUND_CLASS_TEMPLATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"expected template-name\00", align 1
@CPP_NAME = common dso_local global i64 0, align 8
@TEMPLATE_PARM_INDEX = common dso_local global i64 0, align 8
@CPP_AND = common dso_local global i64 0, align 8
@RID_OPERATOR = common dso_local global i64 0, align 8
@CPP_SCOPE = common dso_local global i64 0, align 8
@CPP_TEMPLATE_ID = common dso_local global i64 0, align 8
@CPP_NESTED_NAME_SPECIFIER = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8
@SCOPE_REF = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid non-type template argument\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @cp_parser_template_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_template_argument(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %10)
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = call i32 @cp_parser_type_id(%struct.TYPE_18__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = call i64 @cp_parser_error_occurred(%struct.TYPE_18__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @CPP_RSHIFT, align 8
  %22 = call i32 @cp_lexer_next_token_is(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_18__* %25)
  br label %41

27:                                               ; preds = %17, %1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = call i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = call i32 @cp_parser_error(%struct.TYPE_18__* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = call i64 @cp_parser_parse_definitely(%struct.TYPE_18__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %291

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call i32 @cp_parser_id_expression(%struct.TYPE_18__* %44, i32 0, i32 1, i32* %5, i32 0, i32 0)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = call i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = call i32 @cp_parser_error(%struct.TYPE_18__* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = call i64 @cp_parser_error_occurred(%struct.TYPE_18__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @TREE_CODE(i32 %57)
  %59 = load i64, i64* @TYPE_DECL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @none_type, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @cp_parser_lookup_name(%struct.TYPE_18__* %62, i32 %63, i32 %64, i32 %65, i32 0, i32 1, i32* null)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @TREE_CODE(i32 %68)
  %70 = load i64, i64* @TEMPLATE_DECL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @TREE_CODE(i32 %73)
  %75 = load i64, i64* @UNBOUND_CLASS_TEMPLATE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = call i32 @cp_parser_error(%struct.TYPE_18__* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72, %67
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = call i64 @cp_parser_parse_definitely(%struct.TYPE_18__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %291

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @CPP_NAME, align 8
  %92 = call i32 @cp_lexer_next_token_is(i32 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %87
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = call i32 @cp_parser_primary_expression(%struct.TYPE_18__* %97, i32 0, i32 0, i32 1, i32* %9)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @TREE_CODE(i32 %99)
  %101 = load i64, i64* @TEMPLATE_PARM_INDEX, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %94
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = call i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = call i32 @cp_parser_simulate_error(%struct.TYPE_18__* %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = call i64 @cp_parser_parse_definitely(%struct.TYPE_18__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %291

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %87
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* @CPP_AND, align 8
  %122 = call i32 @cp_lexer_next_token_is(i32 %120, i64 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cp_lexer_consume_token(i32 %128)
  br label %130

130:                                              ; preds = %125, %117
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_17__* @cp_lexer_peek_token(i32 %133)
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %8, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CPP_NAME, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %164, label %140

140:                                              ; preds = %130
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RID_OPERATOR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %164, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CPP_SCOPE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %164, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CPP_TEMPLATE_ID, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CPP_NESTED_NAME_SPECIFIER, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %253

164:                                              ; preds = %158, %152, %146, %140, %130
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @cp_parser_primary_expression(%struct.TYPE_18__* %167, i32 %168, i32 0, i32 1, i32* %9)
  store i32 %169, i32* %4, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = call i64 @cp_parser_error_occurred(%struct.TYPE_18__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %164
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = call i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173, %164
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_18__* %178)
  br label %252

180:                                              ; preds = %173
  %181 = load i32, i32* %4, align 4
  %182 = call i64 @TREE_CODE(i32 %181)
  %183 = load i64, i64* @INDIRECT_REF, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @REFERENCE_REF_P(i32 %186)
  %188 = call i32 @gcc_assert(i32 %187)
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @TREE_OPERAND(i32 %189, i32 0)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %180
  %192 = load i32, i32* %4, align 4
  %193 = call i64 @TREE_CODE(i32 %192)
  %194 = load i64, i64* @VAR_DECL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @DECL_EXTERNAL_LINKAGE_P(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %205 = call i32 @cp_parser_simulate_error(%struct.TYPE_18__* %204)
  br label %206

206:                                              ; preds = %203, %199, %196
  br label %238

207:                                              ; preds = %191
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @is_overloaded_fn(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %237

212:                                              ; preds = %207
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load i32, i32* %4, align 4
  %217 = call i64 @TREE_CODE(i32 %216)
  %218 = load i64, i64* @OFFSET_REF, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %4, align 4
  %222 = call i64 @TREE_CODE(i32 %221)
  %223 = load i64, i64* @SCOPE_REF, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220, %215
  br label %236

226:                                              ; preds = %220, %212
  %227 = load i32, i32* %4, align 4
  %228 = call i64 @TREE_CODE(i32 %227)
  %229 = load i64, i64* @TEMPLATE_PARM_INDEX, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %235

232:                                              ; preds = %226
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = call i32 @cp_parser_simulate_error(%struct.TYPE_18__* %233)
  br label %235

235:                                              ; preds = %232, %231
  br label %236

236:                                              ; preds = %235, %225
  br label %237

237:                                              ; preds = %236, %211
  br label %238

238:                                              ; preds = %237, %206
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = call i64 @cp_parser_parse_definitely(%struct.TYPE_18__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* @ADDR_EXPR, align 4
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @build_x_unary_op(i32 %246, i32 %247)
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %4, align 4
  store i32 %250, i32* %2, align 4
  br label %291

251:                                              ; preds = %238
  br label %252

252:                                              ; preds = %251, %177
  br label %253

253:                                              ; preds = %252, %158
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = call i32 @cp_parser_error(%struct.TYPE_18__* %257, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %259 = load i32, i32* @error_mark_node, align 4
  store i32 %259, i32* %2, align 4
  br label %291

260:                                              ; preds = %253
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %265 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %264)
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %268 = call i32 @cp_parser_constant_expression(%struct.TYPE_18__* %267, i32 0, i32* null)
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* %4, align 4
  %270 = call i32 @fold_non_dependent_expr(i32 %269)
  store i32 %270, i32* %4, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %266
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* %2, align 4
  br label %291

275:                                              ; preds = %266
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %277 = call i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %275
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %281 = call i32 @cp_parser_error(%struct.TYPE_18__* %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %275
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %284 = call i64 @cp_parser_parse_definitely(%struct.TYPE_18__* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i32, i32* %4, align 4
  store i32 %287, i32* %2, align 4
  br label %291

288:                                              ; preds = %282
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %290 = call i32 @cp_parser_type_id(%struct.TYPE_18__* %289)
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %288, %286, %273, %256, %249, %114, %85, %38
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_type_id(%struct.TYPE_18__*) #1

declare dso_local i64 @cp_parser_error_occurred(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i64) #1

declare dso_local i32 @cp_parser_abort_tentative_parse(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_next_token_ends_template_argument_p(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_id_expression(%struct.TYPE_18__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @cp_parser_lookup_name(%struct.TYPE_18__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cp_parser_primary_expression(%struct.TYPE_18__*, i32, i32, i32, i32*) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local %struct.TYPE_17__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REFERENCE_REF_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_EXTERNAL_LINKAGE_P(i32) #1

declare dso_local i64 @is_overloaded_fn(i32) #1

declare dso_local i32 @build_x_unary_op(i32, i32) #1

declare dso_local i32 @cp_parser_constant_expression(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @fold_non_dependent_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
