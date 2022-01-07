; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_elaborated_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_elaborated_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64 }

@NULL_TREE = common dso_local global i8* null, align 8
@RID_ENUM = common dso_local global i32 0, align 4
@enum_type = common dso_local global i32 0, align 4
@RID_TYPENAME = common dso_local global i32 0, align 4
@typename_type = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"using %<typename%> outside of template\00", align 1
@none_type = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@tf_error = common dso_local global i32 0, align 4
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@TYPENAME_TYPE = common dso_local global i64 0, align 8
@ts_within_enclosing_non_class = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@ts_current = common dso_local global i32 0, align 4
@ts_global = common dso_local global i32 0, align 4
@OPT_Wattributes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"attributes ignored on uninstantiated type\00", align 1
@processing_explicit_instantiation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"attributes ignored on template instantiation\00", align 1
@ATTR_FLAG_TYPE_IN_PLACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"attributes ignored on elaborated-type-specifier that is not a forward declaration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32, i32)* @cp_parser_elaborated_type_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_elaborated_type_specifier(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** @NULL_TREE, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** @NULL_TREE, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RID_ENUM, align 4
  %27 = call i64 @cp_lexer_next_token_is_keyword(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cp_lexer_consume_token(i32 %32)
  %34 = load i32, i32* @enum_type, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = call i64 @cp_parser_attributes_opt(%struct.TYPE_20__* %35)
  store i64 %36, i64* %11, align 8
  br label %67

37:                                               ; preds = %3
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RID_TYPENAME, align 4
  %42 = call i64 @cp_lexer_next_token_is_keyword(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cp_lexer_consume_token(i32 %47)
  %49 = load i32, i32* @typename_type, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @processing_template_decl, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  br label %66

55:                                               ; preds = %37
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = call i32 @cp_parser_class_key(%struct.TYPE_20__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @none_type, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @error_mark_node, align 8
  store i64 %62, i64* %4, align 8
  br label %349

63:                                               ; preds = %55
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = call i64 @cp_parser_attributes_opt(%struct.TYPE_20__* %64)
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %63, %54
  br label %67

67:                                               ; preds = %66, %29
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = call i32 @cp_parser_global_scope_opt(%struct.TYPE_20__* %68, i32 0)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @typename_type, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @cp_parser_nested_name_specifier(%struct.TYPE_20__* %74, i32 1, i32 1, i32 1, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* @error_mark_node, align 8
  store i64 %79, i64* %4, align 8
  br label %349

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %67
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @cp_parser_nested_name_specifier_opt(%struct.TYPE_20__* %82, i32 1, i32 1, i32 1, i32 %83)
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @enum_type, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = call i32 @cp_parser_optional_template_keyword(%struct.TYPE_20__* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @cp_parser_template_id(%struct.TYPE_20__* %98, i32 %99, i32 1, i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %130

109:                                              ; preds = %104, %97
  %110 = load i64, i64* %13, align 8
  %111 = call i64 @TREE_CODE(i64 %110)
  %112 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @typename_type, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i32, i32* @typename_type, align 4
  %124 = load i32, i32* @tf_error, align 4
  %125 = call i64 @make_typename_type(i64 %121, i64 %122, i32 %123, i32 %124)
  store i64 %125, i64* %10, align 8
  br label %129

126:                                              ; preds = %114, %109
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %126, %118
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %85
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %287, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = call i64 @cp_parser_identifier(%struct.TYPE_20__* %135)
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @error_mark_node, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i8*, i8** @NULL_TREE, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* @error_mark_node, align 8
  store i64 %145, i64* %4, align 8
  br label %349

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @typename_type, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @TREE_CODE(i64 %153)
  %155 = load i64, i64* @NAMESPACE_DECL, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @cp_parser_make_typename_type(%struct.TYPE_20__* %158, i64 %161, i64 %162)
  store i64 %163, i64* %4, align 8
  br label %349

164:                                              ; preds = %150, %146
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %234

169:                                              ; preds = %164
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i64 @cp_parser_lookup_name(%struct.TYPE_20__* %170, i64 %171, i32 %172, i32 0, i32 0, i32 1, i64* %15)
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i64, i64* @error_mark_node, align 8
  store i64 %177, i64* %4, align 8
  br label %349

178:                                              ; preds = %169
  %179 = load i64, i64* %14, align 8
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %182, %178
  %188 = phi i1 [ false, %178 ], [ %186, %182 ]
  %189 = zext i1 %188 to i32
  %190 = call i64 @cp_parser_maybe_treat_template_as_class(i64 %179, i32 %189)
  store i64 %190, i64* %14, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i64 @TREE_CODE(i64 %191)
  %193 = load i64, i64* @TYPE_DECL, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %187
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = call i32 @cp_parser_diagnose_invalid_type_name(%struct.TYPE_20__* %196, i64 %199, i64 %200)
  %202 = load i64, i64* @error_mark_node, align 8
  store i64 %202, i64* %4, align 8
  br label %349

203:                                              ; preds = %187
  %204 = load i64, i64* %14, align 8
  %205 = call i64 @TREE_TYPE(i64 %204)
  %206 = call i64 @TREE_CODE(i64 %205)
  %207 = load i64, i64* @TYPENAME_TYPE, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %231

209:                                              ; preds = %203
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %209
  %215 = load i64, i64* %14, align 8
  %216 = call i64 @DECL_SELF_REFERENCE_P(i64 %215)
  %217 = icmp ne i64 %216, 0
  br label %218

218:                                              ; preds = %214, %209
  %219 = phi i1 [ true, %209 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i64, i64* %14, align 8
  %223 = load i32, i32* %16, align 4
  %224 = call i64 @check_elaborated_type_specifier(i32 %221, i64 %222, i32 %223)
  store i64 %224, i64* %10, align 8
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* @error_mark_node, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %218
  %229 = load i64, i64* @error_mark_node, align 8
  store i64 %229, i64* %4, align 8
  br label %349

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %203
  %232 = load i64, i64* %14, align 8
  %233 = call i64 @TREE_TYPE(i64 %232)
  store i64 %233, i64* %10, align 8
  br label %286

234:                                              ; preds = %164
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i32, i32* @ts_within_enclosing_non_class, align 4
  store i32 %238, i32* %17, align 4
  br label %254

239:                                              ; preds = %234
  %240 = load i32, i32* %7, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @CPP_SEMICOLON, align 4
  %247 = call i64 @cp_lexer_next_token_is(i32 %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @ts_current, align 4
  store i32 %250, i32* %17, align 4
  br label %253

251:                                              ; preds = %242, %239
  %252 = load i32, i32* @ts_global, align 4
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %251, %249
  br label %254

254:                                              ; preds = %253, %237
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %254
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %261 = call i64 @cp_parser_next_token_starts_class_definition_p(%struct.TYPE_20__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %259
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @CPP_SEMICOLON, align 4
  %268 = call i64 @cp_lexer_next_token_is(i32 %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br label %270

270:                                              ; preds = %263, %259
  %271 = phi i1 [ true, %259 ], [ %269, %263 ]
  br label %272

272:                                              ; preds = %270, %254
  %273 = phi i1 [ false, %254 ], [ %271, %270 ]
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %18, align 4
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %276 = call i32 @cp_parser_check_template_parameters(%struct.TYPE_20__* %275, i32 0)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %272
  %279 = load i64, i64* @error_mark_node, align 8
  store i64 %279, i64* %4, align 8
  br label %349

280:                                              ; preds = %272
  %281 = load i32, i32* %8, align 4
  %282 = load i64, i64* %9, align 8
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = call i64 @xref_tag(i32 %281, i64 %282, i32 %283, i32 %284)
  store i64 %285, i64* %10, align 8
  br label %286

286:                                              ; preds = %280, %231
  br label %287

287:                                              ; preds = %286, %131
  %288 = load i64, i64* %10, align 8
  %289 = load i64, i64* @error_mark_node, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i64, i64* @error_mark_node, align 8
  store i64 %292, i64* %4, align 8
  br label %349

293:                                              ; preds = %287
  %294 = load i64, i64* %11, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %336

296:                                              ; preds = %293
  %297 = load i64, i64* %10, align 8
  %298 = call i64 @TREE_CODE(i64 %297)
  %299 = load i64, i64* @TYPENAME_TYPE, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i32, i32* @OPT_Wattributes, align 4
  %303 = call i32 @warning(i32 %302, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %335

304:                                              ; preds = %296
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @enum_type, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = load i64, i64* %10, align 8
  %310 = call i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %308
  %313 = load i32, i32* @processing_explicit_instantiation, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = load i32, i32* @OPT_Wattributes, align 4
  %317 = call i32 @warning(i32 %316, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %334

318:                                              ; preds = %312, %308, %304
  %319 = load i32, i32* %7, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %318
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %323 = call i64 @cp_parser_declares_only_class_p(%struct.TYPE_20__* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %321
  %326 = load i64, i64* %11, align 8
  %327 = load i64, i64* @ATTR_FLAG_TYPE_IN_PLACE, align 8
  %328 = trunc i64 %327 to i32
  %329 = call i32 @cplus_decl_attributes(i64* %10, i64 %326, i32 %328)
  br label %333

330:                                              ; preds = %321, %318
  %331 = load i32, i32* @OPT_Wattributes, align 4
  %332 = call i32 @warning(i32 %331, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %333

333:                                              ; preds = %330, %325
  br label %334

334:                                              ; preds = %333, %315
  br label %335

335:                                              ; preds = %334, %301
  br label %336

336:                                              ; preds = %335, %293
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @enum_type, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i32, i32* %8, align 4
  %342 = load i64, i64* %10, align 8
  %343 = call i32 @cp_parser_check_class_key(i32 %341, i64 %342)
  br label %344

344:                                              ; preds = %340, %336
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %346 = load i64, i64* %10, align 8
  %347 = call i32 @cp_parser_check_for_invalid_template_id(%struct.TYPE_20__* %345, i64 %346)
  %348 = load i64, i64* %10, align 8
  store i64 %348, i64* %4, align 8
  br label %349

349:                                              ; preds = %344, %291, %278, %228, %195, %176, %157, %140, %78, %61
  %350 = load i64, i64* %4, align 8
  ret i64 %350
}

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_attributes_opt(%struct.TYPE_20__*) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @cp_parser_class_key(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_global_scope_opt(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @cp_parser_nested_name_specifier(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_nested_name_specifier_opt(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_optional_template_keyword(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_template_id(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_20__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @make_typename_type(i64, i64, i32, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @cp_parser_identifier(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_make_typename_type(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i64 @cp_parser_lookup_name(%struct.TYPE_20__*, i64, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @cp_parser_maybe_treat_template_as_class(i64, i32) #1

declare dso_local i32 @cp_parser_diagnose_invalid_type_name(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i64 @DECL_SELF_REFERENCE_P(i64) #1

declare dso_local i64 @check_elaborated_type_specifier(i32, i64, i32) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i64 @cp_parser_next_token_starts_class_definition_p(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_check_template_parameters(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @xref_tag(i32, i64, i32, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64) #1

declare dso_local i64 @cp_parser_declares_only_class_p(%struct.TYPE_20__*) #1

declare dso_local i32 @cplus_decl_attributes(i64*, i64, i32) #1

declare dso_local i32 @cp_parser_check_class_key(i32, i64) #1

declare dso_local i32 @cp_parser_check_for_invalid_template_id(%struct.TYPE_20__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
