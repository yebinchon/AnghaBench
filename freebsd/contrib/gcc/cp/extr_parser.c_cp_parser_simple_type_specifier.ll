; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_simple_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_simple_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@char_type_node = common dso_local global i64 0, align 8
@wchar_type_node = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i64 0, align 8
@ds_short = common dso_local global i64 0, align 8
@short_integer_type_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@ds_long = common dso_local global i64 0, align 8
@long_integer_type_node = common dso_local global i64 0, align 8
@ds_signed = common dso_local global i64 0, align 8
@ds_unsigned = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES = common dso_local global i32 0, align 4
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"expected template-id for type\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"expected type-name\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_25__*, i32)* @cp_parser_simple_type_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_simple_type_specifier(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_23__* @cp_lexer_peek_token(i32 %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %9, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %131 [
    i32 138, label %23
    i32 128, label %31
    i32 139, label %33
    i32 133, label %35
    i32 135, label %50
    i32 134, label %58
    i32 132, label %73
    i32 130, label %88
    i32 136, label %103
    i32 137, label %105
    i32 129, label %107
    i32 131, label %109
  ]

23:                                               ; preds = %3
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @char_type_node, align 8
  store i64 %30, i64* %8, align 8
  br label %132

31:                                               ; preds = %3
  %32 = load i64, i64* @wchar_type_node, align 8
  store i64 %32, i64* %8, align 8
  br label %132

33:                                               ; preds = %3
  %34 = load i64, i64* @boolean_type_node, align 8
  store i64 %34, i64* %8, align 8
  br label %132

35:                                               ; preds = %3
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = icmp ne %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ds_short, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %38, %35
  %49 = load i64, i64* @short_integer_type_node, align 8
  store i64 %49, i64* %8, align 8
  br label %132

50:                                               ; preds = %3
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %52 = icmp ne %struct.TYPE_25__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64, i64* @integer_type_node, align 8
  store i64 %57, i64* %8, align 8
  br label %132

58:                                               ; preds = %3
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = icmp ne %struct.TYPE_25__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @ds_long, align 8
  %66 = trunc i64 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %61, %58
  %72 = load i64, i64* @long_integer_type_node, align 8
  store i64 %72, i64* %8, align 8
  br label %132

73:                                               ; preds = %3
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %75 = icmp ne %struct.TYPE_25__* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @ds_signed, align 8
  %81 = trunc i64 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %76, %73
  %87 = load i64, i64* @integer_type_node, align 8
  store i64 %87, i64* %8, align 8
  br label %132

88:                                               ; preds = %3
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = icmp ne %struct.TYPE_25__* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @ds_unsigned, align 8
  %96 = trunc i64 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %88
  %102 = load i64, i64* @unsigned_type_node, align 8
  store i64 %102, i64* %8, align 8
  br label %132

103:                                              ; preds = %3
  %104 = load i64, i64* @float_type_node, align 8
  store i64 %104, i64* %8, align 8
  br label %132

105:                                              ; preds = %3
  %106 = load i64, i64* @double_type_node, align 8
  store i64 %106, i64* %8, align 8
  br label %132

107:                                              ; preds = %3
  %108 = load i64, i64* @void_type_node, align 8
  store i64 %108, i64* %8, align 8
  br label %132

109:                                              ; preds = %3
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_22__* @cp_lexer_consume_token(i32 %112)
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %115 = call i64 @cp_parser_sizeof_operand(%struct.TYPE_24__* %114, i32 131)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @TYPE_P(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @finish_typeof(i64 %120)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = icmp ne %struct.TYPE_25__* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_25__* %126, i64 %127, i32 1)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i64, i64* %8, align 8
  store i64 %130, i64* %4, align 8
  br label %326

131:                                              ; preds = %3
  br label %132

132:                                              ; preds = %131, %107, %105, %103, %101, %86, %71, %56, %48, %33, %31, %29
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %132
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %137 = icmp ne %struct.TYPE_25__* %136, null
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 132
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 130
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 133
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 134
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_25__* %159, i64 %160, i32 0)
  br label %162

162:                                              ; preds = %158, %153, %148, %143, %138, %135
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %164 = icmp ne %struct.TYPE_25__* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 2
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.TYPE_22__* @cp_lexer_consume_token(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %10, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @cp_parser_check_for_invalid_template_id(%struct.TYPE_24__* %176, i64 %177)
  %179 = load i64, i64* %8, align 8
  %180 = call i64 @TYPE_NAME(i64 %179)
  store i64 %180, i64* %4, align 8
  br label %326

181:                                              ; preds = %132
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %275, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %193 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_24__* %192)
  br label %194

194:                                              ; preds = %191, %186
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %196 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_24__* %195, i32 0)
  %197 = load i64, i64* @NULL_TREE, align 8
  %198 = icmp ne i64 %196, %197
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %12, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %201 = call i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_24__* %200, i32 0, i32 1, i32 0, i32 0)
  %202 = load i64, i64* @NULL_TREE, align 8
  %203 = icmp ne i64 %201, %202
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %11, align 4
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %194
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %211 = call i64 @cp_parser_optional_template_keyword(%struct.TYPE_24__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %215 = call i64 @cp_parser_template_id(%struct.TYPE_24__* %214, i32 1, i32 1, i32 0)
  store i64 %215, i64* %8, align 8
  %216 = load i64, i64* %8, align 8
  %217 = call i64 @TREE_CODE(i64 %216)
  %218 = load i64, i64* @TYPE_DECL, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %222 = call i32 @cp_parser_error(%struct.TYPE_24__* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %223 = load i64, i64* @NULL_TREE, align 8
  store i64 %223, i64* %8, align 8
  br label %224

224:                                              ; preds = %220, %213
  br label %228

225:                                              ; preds = %209, %194
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %227 = call i64 @cp_parser_type_name(%struct.TYPE_24__* %226)
  store i64 %227, i64* %8, align 8
  br label %228

228:                                              ; preds = %225, %224
  %229 = load i64, i64* %8, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %253, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %253, label %237

237:                                              ; preds = %234
  %238 = load i64, i64* %8, align 8
  %239 = call i64 @TREE_CODE(i64 %238)
  %240 = load i64, i64* @TYPE_DECL, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = load i64, i64* %8, align 8
  %244 = call i64 @DECL_NAME(i64 %243)
  %245 = call i64 @TREE_CODE(i64 %244)
  %246 = load i64, i64* @IDENTIFIER_NODE, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load i64, i64* %8, align 8
  %250 = call i64 @DECL_NAME(i64 %249)
  %251 = load i64, i64* %8, align 8
  %252 = call i32 @maybe_note_name_used_in_class(i64 %250, i64 %251)
  br label %253

253:                                              ; preds = %248, %242, %237, %234, %231, %228
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %260 = call i32 @cp_parser_parse_definitely(%struct.TYPE_24__* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = load i64, i64* @NULL_TREE, align 8
  store i64 %263, i64* %8, align 8
  br label %264

264:                                              ; preds = %262, %258, %253
  %265 = load i64, i64* %8, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %269 = icmp ne %struct.TYPE_25__* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %272 = load i64, i64* %8, align 8
  %273 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_25__* %271, i64 %272, i32 1)
  br label %274

274:                                              ; preds = %270, %267, %264
  br label %275

275:                                              ; preds = %274, %181
  %276 = load i64, i64* %8, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %285 = call i32 @cp_parser_error(%struct.TYPE_24__* %284, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %286 = load i64, i64* @error_mark_node, align 8
  store i64 %286, i64* %4, align 8
  br label %326

287:                                              ; preds = %278, %275
  %288 = load i64, i64* %8, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %324

290:                                              ; preds = %287
  %291 = load i64, i64* %8, align 8
  %292 = load i64, i64* @error_mark_node, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %324

294:                                              ; preds = %290
  %295 = call i64 (...) @c_dialect_objc()
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %319

297:                                              ; preds = %294
  %298 = load i64, i64* %8, align 8
  %299 = call i64 @objc_is_id(i64 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %297
  %302 = load i64, i64* %8, align 8
  %303 = call i64 @objc_is_class_name(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %319

305:                                              ; preds = %301, %297
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %307 = call i64 @cp_parser_objc_protocol_refs_opt(%struct.TYPE_24__* %306)
  store i64 %307, i64* %13, align 8
  %308 = load i64, i64* %8, align 8
  %309 = load i64, i64* %13, align 8
  %310 = call i64 @objc_get_protocol_qualified_type(i64 %308, i64 %309)
  store i64 %310, i64* %14, align 8
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %312 = icmp ne %struct.TYPE_25__* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %305
  %314 = load i64, i64* %14, align 8
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 3
  store i64 %314, i64* %316, align 8
  br label %317

317:                                              ; preds = %313, %305
  %318 = load i64, i64* %14, align 8
  store i64 %318, i64* %4, align 8
  br label %326

319:                                              ; preds = %301, %294
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %321 = load i64, i64* %8, align 8
  %322 = call i64 @TREE_TYPE(i64 %321)
  %323 = call i32 @cp_parser_check_for_invalid_template_id(%struct.TYPE_24__* %320, i64 %322)
  br label %324

324:                                              ; preds = %319, %290, %287
  %325 = load i64, i64* %8, align 8
  store i64 %325, i64* %4, align 8
  br label %326

326:                                              ; preds = %324, %317, %283, %168, %129
  %327 = load i64, i64* %4, align 8
  ret i64 %327
}

declare dso_local %struct.TYPE_23__* @cp_lexer_peek_token(i32) #1

declare dso_local %struct.TYPE_22__* @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_sizeof_operand(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i64 @finish_typeof(i64) #1

declare dso_local i32 @cp_parser_set_decl_spec_type(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i32 @cp_parser_check_for_invalid_template_id(%struct.TYPE_24__*, i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_24__*) #1

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i64 @cp_parser_optional_template_keyword(%struct.TYPE_24__*) #1

declare dso_local i64 @cp_parser_template_id(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @cp_parser_type_name(%struct.TYPE_24__*) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @maybe_note_name_used_in_class(i64, i64) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_24__*) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i64 @objc_is_id(i64) #1

declare dso_local i64 @objc_is_class_name(i64) #1

declare dso_local i64 @cp_parser_objc_protocol_refs_opt(%struct.TYPE_24__*) #1

declare dso_local i64 @objc_get_protocol_qualified_type(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
