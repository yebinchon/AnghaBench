; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declaration_or_fndef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declaration_or_fndef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.c_declspecs = type { i64, i32, i64, i64 }
%struct.c_declarator = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.c_expr = type { i64 }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"expected declaration specifiers\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"empty declaration\00", align 1
@RID_AT_INTERFACE = common dso_local global i32 0, align 4
@RID_AT_IMPLEMENTATION = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"no type or storage class may be specified here\00", align 1
@RID_AT_PROTOCOL = common dso_local global i32 0, align 4
@C_DTR_NORMAL = common dso_local global i32 0, align 4
@CPP_EQ = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@RID_ASM = common dso_local global i32 0, align 4
@RID_IN = common dso_local global i32 0, align 4
@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"data definition has no type or storage class\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"expected %<,%> or %<;%>\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"expected %<=%>, %<,%>, %<;%>, %<asm%> or %<__attribute__%>\00", align 1
@cdk_block_pointer = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"bad definition of a block\00", align 1
@pedantic = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"ISO C forbids nested functions\00", align 1
@flag_nested_functions = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [67 x i8] c"nested functions are disabled, use -fnested-functions to re-enable\00", align 1
@CPP_EOF = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@DECL_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32, i32, i32, i32, i64*)* @c_parser_declaration_or_fndef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_declaration_or_fndef(%struct.TYPE_21__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.c_declspecs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.c_declarator*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.c_expr, align 8
  %24 = alloca %struct.c_expr, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %16, align 4
  %28 = call %struct.c_declspecs* (...) @build_null_declspecs()
  store %struct.c_declspecs* %28, %struct.c_declspecs** %13, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @c_parser_declspecs(%struct.TYPE_21__* %29, %struct.c_declspecs* %30, i32 1, i32 1, i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = call i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__* %38)
  br label %447

40:                                               ; preds = %6
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %45 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = call i32 @c_parser_error(%struct.TYPE_21__* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = call i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__* %51)
  br label %447

53:                                               ; preds = %43, %40
  %54 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %55 = call i32 @finish_declspecs(%struct.c_declspecs* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = load i32, i32* @CPP_SEMICOLON, align 4
  %58 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %65 = call i32 @shadow_tag(%struct.c_declspecs* %64)
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %68 = call i32 @shadow_tag_warned(%struct.c_declspecs* %67, i32 1)
  %69 = call i32 @pedwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = call i32 @c_parser_consume_token(%struct.TYPE_21__* %71)
  br label %447

73:                                               ; preds = %53
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = load i32, i32* @RID_AT_INTERFACE, align 4
  %76 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = load i32, i32* @RID_AT_IMPLEMENTATION, align 4
  %81 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %78, %73
  %84 = call i64* (...) @c_dialect_objc()
  %85 = call i32 @gcc_assert(i64* %84)
  %86 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %87 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %92 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NULL_TREE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %98 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %103 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %96, %90, %83
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = call i32 @c_parser_error(%struct.TYPE_21__* %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %111 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %112 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @c_parser_objc_class_definition(%struct.TYPE_21__* %110, i64 %113)
  br label %447

115:                                              ; preds = %78
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %117 = load i32, i32* @RID_AT_PROTOCOL, align 4
  %118 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %115
  %121 = call i64* (...) @c_dialect_objc()
  %122 = call i32 @gcc_assert(i64* %121)
  %123 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %124 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %129 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NULL_TREE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %127
  %134 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %135 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %140 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %133, %127, %120
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = call i32 @c_parser_error(%struct.TYPE_21__* %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %149 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @c_parser_objc_protocol_definition(%struct.TYPE_21__* %147, i64 %150)
  br label %447

152:                                              ; preds = %115
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  %155 = call i32 (...) @pending_xref_error()
  %156 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %157 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %14, align 8
  %159 = load i64, i64* %14, align 8
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* @NULL_TREE, align 8
  %161 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %162 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %154, %338
  store i32 0, i32* %18, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %165 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %166 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @C_DTR_NORMAL, align 4
  %169 = call %struct.c_declarator* @c_parser_declarator(%struct.TYPE_21__* %164, i64 %167, i32 %168, i32* %18)
  store %struct.c_declarator* %169, %struct.c_declarator** %17, align 8
  %170 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %171 = icmp eq %struct.c_declarator* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %174 = call i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__* %173)
  br label %447

175:                                              ; preds = %163
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = load i32, i32* @CPP_EQ, align 4
  %178 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %205, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = load i32, i32* @CPP_COMMA, align 4
  %183 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %205, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %187 = load i32, i32* @CPP_SEMICOLON, align 4
  %188 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %205, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %192 = load i32, i32* @RID_ASM, align 4
  %193 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %197 = load i32, i32* @RID_IN, align 4
  %198 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %202 = load i32, i32* @RID_ATTRIBUTE, align 4
  %203 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %352

205:                                              ; preds = %200, %195, %190, %185, %180, %175
  %206 = load i64, i64* @NULL_TREE, align 8
  store i64 %206, i64* %20, align 8
  %207 = load i64, i64* @NULL_TREE, align 8
  store i64 %207, i64* %21, align 8
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %205
  %211 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %212 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  store i32 1, i32* %16, align 4
  %216 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %210, %205
  store i32 0, i32* %8, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %219 = load i32, i32* @RID_ASM, align 4
  %220 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = call i64 @c_parser_simple_asm_expr(%struct.TYPE_21__* %223)
  store i64 %224, i64* %20, align 8
  br label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %227 = load i32, i32* @RID_ATTRIBUTE, align 4
  %228 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %232 = call i64 @c_parser_attributes(%struct.TYPE_21__* %231)
  store i64 %232, i64* %21, align 8
  br label %233

233:                                              ; preds = %230, %225
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %235 = load i32, i32* @RID_IN, align 4
  %236 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %260

238:                                              ; preds = %233
  %239 = load i64*, i64** %12, align 8
  %240 = call i32 @gcc_assert(i64* %239)
  %241 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %242 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %243 = load i64, i64* %21, align 8
  %244 = load i64, i64* %15, align 8
  %245 = call i64 @chainon(i64 %243, i64 %244)
  %246 = call i64 @start_decl(%struct.c_declarator* %241, %struct.c_declspecs* %242, i32 1, i64 %245)
  %247 = load i64*, i64** %12, align 8
  store i64 %246, i64* %247, align 8
  %248 = load i64*, i64** %12, align 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %238
  %252 = load i64, i64* @error_mark_node, align 8
  %253 = load i64*, i64** %12, align 8
  store i64 %252, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %238
  %255 = load i64*, i64** %12, align 8
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %20, align 8
  %258 = call i32 (...) @global_bindings_p()
  %259 = call i32 @start_init(i64 %256, i64 %257, i32 %258)
  br label %447

260:                                              ; preds = %233
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %262 = load i32, i32* @CPP_EQ, align 4
  %263 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %304

265:                                              ; preds = %260
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %267 = call i32 @c_parser_consume_token(%struct.TYPE_21__* %266)
  %268 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %269 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %270 = load i64, i64* %21, align 8
  %271 = load i64, i64* %15, align 8
  %272 = call i64 @chainon(i64 %270, i64 %271)
  %273 = call i64 @start_decl(%struct.c_declarator* %268, %struct.c_declspecs* %269, i32 1, i64 %272)
  store i64 %273, i64* %22, align 8
  %274 = load i64, i64* %22, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %265
  %277 = load i64, i64* @error_mark_node, align 8
  store i64 %277, i64* %22, align 8
  br label %278

278:                                              ; preds = %276, %265
  %279 = load i64, i64* %22, align 8
  %280 = load i64, i64* %20, align 8
  %281 = call i32 (...) @global_bindings_p()
  %282 = call i32 @start_init(i64 %279, i64 %280, i32 %281)
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %284 = call i64 @c_parser_initializer(%struct.TYPE_21__* %283)
  %285 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %24, i32 0, i32 0
  store i64 %284, i64* %285, align 8
  %286 = bitcast %struct.c_expr* %23 to i8*
  %287 = bitcast %struct.c_expr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %286, i8* align 8 %287, i64 8, i1 false)
  %288 = call i32 (...) @finish_init()
  %289 = load i64, i64* %22, align 8
  %290 = load i64, i64* @error_mark_node, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %278
  %293 = load i64, i64* %22, align 8
  %294 = call i32 @TREE_TYPE(i64 %293)
  %295 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %23, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @maybe_warn_string_init(i32 %294, i64 %296)
  %298 = load i64, i64* %22, align 8
  %299 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %23, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %20, align 8
  %302 = call i32 @finish_decl(i64 %298, i64 %300, i64 %301)
  br label %303

303:                                              ; preds = %292, %278
  br label %319

304:                                              ; preds = %260
  %305 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %306 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %307 = load i64, i64* %21, align 8
  %308 = load i64, i64* %15, align 8
  %309 = call i64 @chainon(i64 %307, i64 %308)
  %310 = call i64 @start_decl(%struct.c_declarator* %305, %struct.c_declspecs* %306, i32 0, i64 %309)
  store i64 %310, i64* %25, align 8
  %311 = load i64, i64* %25, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %304
  %314 = load i64, i64* %25, align 8
  %315 = load i64, i64* @NULL_TREE, align 8
  %316 = load i64, i64* %20, align 8
  %317 = call i32 @finish_decl(i64 %314, i64 %315, i64 %316)
  br label %318

318:                                              ; preds = %313, %304
  br label %319

319:                                              ; preds = %318, %303
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %321 = load i32, i32* @CPP_COMMA, align 4
  %322 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %320, i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %339

324:                                              ; preds = %319
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %326 = call i32 @c_parser_consume_token(%struct.TYPE_21__* %325)
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %328 = load i32, i32* @RID_ATTRIBUTE, align 4
  %329 = call i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__* %327, i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %324
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %333 = call i64 @c_parser_attributes(%struct.TYPE_21__* %332)
  %334 = load i64, i64* %14, align 8
  %335 = call i64 @chainon(i64 %333, i64 %334)
  store i64 %335, i64* %15, align 8
  br label %338

336:                                              ; preds = %324
  %337 = load i64, i64* %14, align 8
  store i64 %337, i64* %15, align 8
  br label %338

338:                                              ; preds = %336, %331
  br label %163

339:                                              ; preds = %319
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %341 = load i32, i32* @CPP_SEMICOLON, align 4
  %342 = call i64 @c_parser_next_token_is(%struct.TYPE_21__* %340, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %346 = call i32 @c_parser_consume_token(%struct.TYPE_21__* %345)
  br label %447

347:                                              ; preds = %339
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %349 = call i32 @c_parser_error(%struct.TYPE_21__* %348, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %351 = call i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__* %350)
  br label %447

352:                                              ; preds = %200
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %352
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %357 = call i32 @c_parser_error(%struct.TYPE_21__* %356, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %359 = call i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__* %358)
  br label %447

360:                                              ; preds = %352
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %10, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %393

364:                                              ; preds = %361
  %365 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %366 = getelementptr inbounds %struct.c_declarator, %struct.c_declarator* %365, i32 0, i32 0
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %366, align 8
  %368 = icmp ne %struct.TYPE_20__* %367, null
  br i1 %368, label %369, label %379

369:                                              ; preds = %364
  %370 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %371 = getelementptr inbounds %struct.c_declarator, %struct.c_declarator* %370, i32 0, i32 0
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @cdk_block_pointer, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %369
  %378 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %391

379:                                              ; preds = %369, %364
  %380 = load i64, i64* @pedantic, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = call i32 @pedwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %390

384:                                              ; preds = %379
  %385 = load i64, i64* @flag_nested_functions, align 8
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  br label %389

389:                                              ; preds = %387, %384
  br label %390

390:                                              ; preds = %389, %382
  br label %391

391:                                              ; preds = %390, %377
  %392 = call i32 (...) @push_function_context()
  br label %393

393:                                              ; preds = %391, %361
  %394 = load %struct.c_declspecs*, %struct.c_declspecs** %13, align 8
  %395 = load %struct.c_declarator*, %struct.c_declarator** %17, align 8
  %396 = load i64, i64* %15, align 8
  %397 = call i32 @start_function(%struct.c_declspecs* %394, %struct.c_declarator* %395, i64 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %393
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %401 = call i32 @c_parser_error(%struct.TYPE_21__* %400, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %402 = load i32, i32* %10, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %399
  %405 = call i32 (...) @pop_function_context()
  br label %406

406:                                              ; preds = %404, %399
  br label %447

407:                                              ; preds = %393
  br label %408

408:                                              ; preds = %420, %407
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %410 = load i32, i32* @CPP_EOF, align 4
  %411 = call i64 @c_parser_next_token_is_not(%struct.TYPE_21__* %409, i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %408
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %415 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %416 = call i64 @c_parser_next_token_is_not(%struct.TYPE_21__* %414, i32 %415)
  %417 = icmp ne i64 %416, 0
  br label %418

418:                                              ; preds = %413, %408
  %419 = phi i1 [ false, %408 ], [ %417, %413 ]
  br i1 %419, label %420, label %422

420:                                              ; preds = %418
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  call void @c_parser_declaration_or_fndef(%struct.TYPE_21__* %421, i32 0, i32 0, i32 1, i32 0, i64* null)
  br label %408

422:                                              ; preds = %418
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %424 = call %struct.TYPE_22__* @c_parser_peek_token(%struct.TYPE_21__* %423)
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %26, align 8
  %427 = call i32 (...) @store_parm_decls()
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %429 = call i64 @c_parser_compound_statement(%struct.TYPE_21__* %428)
  store i64 %429, i64* %19, align 8
  %430 = load i32, i32* %10, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %442

432:                                              ; preds = %422
  %433 = load i64, i64* %26, align 8
  store i64 %433, i64* %27, align 8
  %434 = load i64, i64* %19, align 8
  %435 = call i32 @add_stmt(i64 %434)
  %436 = call i32 (...) @finish_function()
  %437 = call i32 (...) @pop_function_context()
  %438 = load i32, i32* @DECL_EXPR, align 4
  %439 = load i64, i64* %27, align 8
  %440 = call i64 @build_stmt(i32 %438, i64 %439)
  %441 = call i32 @add_stmt(i64 %440)
  br label %446

442:                                              ; preds = %422
  %443 = load i64, i64* %19, align 8
  %444 = call i32 @add_stmt(i64 %443)
  %445 = call i32 (...) @finish_function()
  br label %446

446:                                              ; preds = %442, %432
  br label %447

447:                                              ; preds = %37, %48, %70, %109, %146, %172, %254, %344, %347, %355, %446, %406
  ret void
}

declare dso_local %struct.c_declspecs* @build_null_declspecs(...) #1

declare dso_local i32 @c_parser_declspecs(%struct.TYPE_21__*, %struct.c_declspecs*, i32, i32, i32) #1

declare dso_local i32 @c_parser_skip_to_end_of_block_or_statement(%struct.TYPE_21__*) #1

declare dso_local i32 @c_parser_error(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @finish_declspecs(%struct.c_declspecs*) #1

declare dso_local i64 @c_parser_next_token_is(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @shadow_tag(%struct.c_declspecs*) #1

declare dso_local i32 @shadow_tag_warned(%struct.c_declspecs*, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_consume_token(%struct.TYPE_21__*) #1

declare dso_local i64 @c_parser_next_token_is_keyword(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @gcc_assert(i64*) #1

declare dso_local i64* @c_dialect_objc(...) #1

declare dso_local i32 @c_parser_objc_class_definition(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @c_parser_objc_protocol_definition(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @pending_xref_error(...) #1

declare dso_local %struct.c_declarator* @c_parser_declarator(%struct.TYPE_21__*, i64, i32, i32*) #1

declare dso_local i64 @c_parser_simple_asm_expr(%struct.TYPE_21__*) #1

declare dso_local i64 @c_parser_attributes(%struct.TYPE_21__*) #1

declare dso_local i64 @start_decl(%struct.c_declarator*, %struct.c_declspecs*, i32, i64) #1

declare dso_local i64 @chainon(i64, i64) #1

declare dso_local i32 @start_init(i64, i64, i32) #1

declare dso_local i32 @global_bindings_p(...) #1

declare dso_local i64 @c_parser_initializer(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @finish_init(...) #1

declare dso_local i32 @maybe_warn_string_init(i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @finish_decl(i64, i64, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @push_function_context(...) #1

declare dso_local i32 @start_function(%struct.c_declspecs*, %struct.c_declarator*, i64) #1

declare dso_local i32 @pop_function_context(...) #1

declare dso_local i64 @c_parser_next_token_is_not(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @c_parser_peek_token(%struct.TYPE_21__*) #1

declare dso_local i32 @store_parm_decls(...) #1

declare dso_local i64 @c_parser_compound_statement(%struct.TYPE_21__*) #1

declare dso_local i32 @add_stmt(i64) #1

declare dso_local i32 @finish_function(...) #1

declare dso_local i64 @build_stmt(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
