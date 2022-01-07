; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_direct_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_direct_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_25__ = type { i64, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@BLOCKDEF = common dso_local global i64 0, align 8
@TYPE_UNQUALIFIED = common dso_local global i32 0, align 4
@cp_error_declarator = common dso_local global %struct.TYPE_27__* null, align 8
@CPP_OPEN_SQUARE = common dso_local global i64 0, align 8
@CPP_CLOSE_SQUARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"array bound is not an integer constant\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"`]'\00", align 1
@CP_PARSER_DECLARATOR_EITHER = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"expected unqualified-id\00", align 1
@TYPENAME_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"%<%T::%D%> is not a type\00", align 1
@sfk_none = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"invalid use of constructor as a template\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"use %<%T::%D%> instead of %<%T::%D%> to name the constructor in a qualified name\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid declarator\00", align 1
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@sfk_destructor = common dso_local global i64 0, align 8
@sfk_conversion = common dso_local global i64 0, align 8
@sfk_constructor = common dso_local global i64 0, align 8
@cdk_id = common dso_local global i64 0, align 8
@CP_PARSER_DECLARATOR_BLOCK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"expected declarator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_26__*, i64, i32*, i32)* @cp_parser_direct_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @cp_parser_direct_declarator(%struct.TYPE_26__* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  %31 = load i64, i64* @NULL_TREE, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %38 = load i64, i64* @NULL_TREE, align 8
  store i64 %38, i64* %16, align 8
  br label %39

39:                                               ; preds = %4, %112, %463
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_25__* @cp_lexer_peek_token(i32 %42)
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %10, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %163

49:                                               ; preds = %39
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @CP_PARSER_DECLARATOR_NAMED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_26__* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cp_lexer_consume_token(i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %18, align 4
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = call i32* @cp_parser_parameter_declaration_clause(%struct.TYPE_26__* %80)
  store i32* %81, i32** %17, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %74
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %89 = call i64 @cp_parser_parse_definitely(%struct.TYPE_26__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %87, %74
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %91
  store i32 0, i32* %15, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %102 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %103 = call i32 @cp_parser_require(%struct.TYPE_26__* %101, i64 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @BLOCKDEF, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %109 = call i32 @cp_parser_cv_qualifier_seq_opt(%struct.TYPE_26__* %108)
  store i32 %109, i32* %19, align 4
  br label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @TYPE_UNQUALIFIED, align 4
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = call i64 @cp_parser_exception_specification_opt(%struct.TYPE_26__* %113)
  store i64 %114, i64* %20, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i64, i64* %20, align 8
  %119 = call %struct.TYPE_27__* @make_call_declarator(%struct.TYPE_27__* %115, i32* %116, i32 %117, i64 %118)
  store %struct.TYPE_27__* %119, %struct.TYPE_27__** %11, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %39

122:                                              ; preds = %87
  br label %123

123:                                              ; preds = %122, %52
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cp_lexer_consume_token(i32 %135)
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %21, align 4
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call %struct.TYPE_27__* @cp_parser_declarator(%struct.TYPE_26__* %142, i64 %143, i32* %144, i32* null, i32 %145)
  store %struct.TYPE_27__* %146, %struct.TYPE_27__** %11, align 8
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %15, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %151 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %152 = call i32 @cp_parser_require(%struct.TYPE_26__* %150, i64 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %126
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  store %struct.TYPE_27__* %155, %struct.TYPE_27__** %11, align 8
  br label %156

156:                                              ; preds = %154, %126
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  %159 = icmp eq %struct.TYPE_27__* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %464

161:                                              ; preds = %156
  br label %426

162:                                              ; preds = %123
  br label %464

163:                                              ; preds = %39
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @CP_PARSER_DECLARATOR_NAMED, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %230

170:                                              ; preds = %166, %163
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CPP_OPEN_SQUARE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %230

176:                                              ; preds = %170
  %177 = load i32*, i32** %8, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32*, i32** %8, align 8
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %179, %176
  store i32 0, i32* %15, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @cp_lexer_consume_token(i32 %188)
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = call %struct.TYPE_25__* @cp_lexer_peek_token(i32 %192)
  store %struct.TYPE_25__* %193, %struct.TYPE_25__** %10, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %181
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %201 = call i64 @cp_parser_constant_expression(%struct.TYPE_26__* %200, i32 1, i32* %23)
  store i64 %201, i64* %22, align 8
  %202 = load i32, i32* %23, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load i64, i64* %22, align 8
  %206 = call i64 @fold_non_dependent_expr(i64 %205)
  store i64 %206, i64* %22, align 8
  br label %216

207:                                              ; preds = %199
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %214 = load i64, i64* @error_mark_node, align 8
  store i64 %214, i64* %22, align 8
  br label %215

215:                                              ; preds = %212, %207
  br label %216

216:                                              ; preds = %215, %204
  br label %219

217:                                              ; preds = %181
  %218 = load i64, i64* @NULL_TREE, align 8
  store i64 %218, i64* %22, align 8
  br label %219

219:                                              ; preds = %217, %216
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %221 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %222 = call i32 @cp_parser_require(%struct.TYPE_26__* %220, i64 %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  store %struct.TYPE_27__* %225, %struct.TYPE_27__** %11, align 8
  br label %464

226:                                              ; preds = %219
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %228 = load i64, i64* %22, align 8
  %229 = call %struct.TYPE_27__* @make_array_declarator(%struct.TYPE_27__* %227, i64 %228)
  store %struct.TYPE_27__* %229, %struct.TYPE_27__** %11, align 8
  br label %462

230:                                              ; preds = %170, %166
  %231 = load i32, i32* %15, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %460

233:                                              ; preds = %230
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* @CP_PARSER_DECLARATOR_NAMED, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @CP_PARSER_DECLARATOR_EITHER, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %460

241:                                              ; preds = %237, %233
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* @CP_PARSER_DECLARATOR_EITHER, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %27, align 4
  %246 = load i32, i32* %27, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %250 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_26__* %249)
  br label %251

251:                                              ; preds = %248, %241
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %253 = load i32, i32* %27, align 4
  %254 = call i64 @cp_parser_declarator_id(%struct.TYPE_26__* %252, i32 %253)
  store i64 %254, i64* %25, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %24, align 8
  %258 = load i32, i32* %27, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %251
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %262 = call i64 @cp_parser_parse_definitely(%struct.TYPE_26__* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = load i64, i64* @error_mark_node, align 8
  store i64 %265, i64* %25, align 8
  br label %282

266:                                              ; preds = %260
  %267 = load i64, i64* %25, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = load i64, i64* %24, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %269
  %273 = load i64, i64* %25, align 8
  %274 = call i64 @TREE_CODE(i64 %273)
  %275 = load i64, i64* @IDENTIFIER_NODE, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %272, %269
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %279 = call i32 @cp_parser_error(%struct.TYPE_26__* %278, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %280 = load i64, i64* @error_mark_node, align 8
  store i64 %280, i64* %25, align 8
  br label %281

281:                                              ; preds = %277, %272, %266
  br label %282

282:                                              ; preds = %281, %264
  br label %283

283:                                              ; preds = %282, %251
  %284 = load i64, i64* %25, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %283
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %5, align 8
  br label %488

287:                                              ; preds = %283
  %288 = load i64, i64* %25, align 8
  %289 = load i64, i64* @error_mark_node, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  store %struct.TYPE_27__* %292, %struct.TYPE_27__** %11, align 8
  br label %464

293:                                              ; preds = %287
  %294 = load i64, i64* %24, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %318

296:                                              ; preds = %293
  %297 = call i64 (...) @at_namespace_scope_p()
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %296
  %300 = load i64, i64* %24, align 8
  %301 = call i64 @TREE_CODE(i64 %300)
  %302 = load i64, i64* @TYPENAME_TYPE, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %318

304:                                              ; preds = %299
  %305 = load i64, i64* %24, align 8
  %306 = call i64 @resolve_typename_type(i64 %305, i32 0)
  store i64 %306, i64* %28, align 8
  %307 = load i64, i64* %28, align 8
  %308 = load i64, i64* @error_mark_node, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load i64, i64* %24, align 8
  %312 = call i32 @TYPE_CONTEXT(i64 %311)
  %313 = load i64, i64* %24, align 8
  %314 = call i8* @TYPE_IDENTIFIER(i64 %313)
  %315 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %312, i8* %314)
  br label %316

316:                                              ; preds = %310, %304
  %317 = load i64, i64* %28, align 8
  store i64 %317, i64* %24, align 8
  br label %318

318:                                              ; preds = %316, %299, %296, %293
  %319 = load i64, i64* @sfk_none, align 8
  store i64 %319, i64* %26, align 8
  %320 = load i64, i64* %25, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %416

322:                                              ; preds = %318
  %323 = load i64, i64* %24, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i64, i64* %24, align 8
  %327 = call i64 @CLASS_TYPE_P(i64 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i64, i64* %24, align 8
  store i64 %330, i64* %29, align 8
  br label %333

331:                                              ; preds = %325, %322
  %332 = load i64, i64* @current_class_type, align 8
  store i64 %332, i64* %29, align 8
  br label %333

333:                                              ; preds = %331, %329
  %334 = load i64, i64* %25, align 8
  %335 = call i64 @TREE_CODE(i64 %334)
  %336 = load i64, i64* @TYPE_DECL, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %374

338:                                              ; preds = %333
  %339 = load i64, i64* %25, align 8
  %340 = call i64 @TREE_TYPE(i64 %339)
  store i64 %340, i64* %30, align 8
  %341 = load i64, i64* %29, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %369

343:                                              ; preds = %338
  %344 = load i64, i64* %30, align 8
  %345 = load i64, i64* %29, align 8
  %346 = call i64 @same_type_p(i64 %344, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %369

348:                                              ; preds = %343
  %349 = load i64, i64* %24, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %348
  %352 = load i64, i64* %30, align 8
  %353 = call i64 @CLASSTYPE_USE_TEMPLATE(i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %351
  %356 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %357 = load i64, i64* %29, align 8
  %358 = load i64, i64* %29, align 8
  %359 = call i32 @TYPE_TI_TEMPLATE(i64 %358)
  %360 = call i32 @DECL_NAME(i32 %359)
  %361 = load i64, i64* %29, align 8
  %362 = load i64, i64* %30, align 8
  %363 = call i32 @inform(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i64 %357, i32 %360, i64 %361, i64 %362)
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  store %struct.TYPE_27__* %364, %struct.TYPE_27__** %11, align 8
  br label %464

365:                                              ; preds = %351, %348
  %366 = load i64, i64* %29, align 8
  %367 = call i64 @constructor_name(i64 %366)
  store i64 %367, i64* %25, align 8
  br label %368

368:                                              ; preds = %365
  br label %373

369:                                              ; preds = %343, %338
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %371 = call i32 @cp_parser_error(%struct.TYPE_26__* %370, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** @cp_error_declarator, align 8
  store %struct.TYPE_27__* %372, %struct.TYPE_27__** %11, align 8
  br label %464

373:                                              ; preds = %368
  br label %374

374:                                              ; preds = %373, %333
  %375 = load i64, i64* %29, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %415

377:                                              ; preds = %374
  %378 = load i64, i64* %25, align 8
  %379 = call i64 @TREE_CODE(i64 %378)
  %380 = load i64, i64* @BIT_NOT_EXPR, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = load i64, i64* @sfk_destructor, align 8
  store i64 %383, i64* %26, align 8
  br label %405

384:                                              ; preds = %377
  %385 = load i64, i64* %25, align 8
  %386 = call i64 @IDENTIFIER_TYPENAME_P(i64 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %384
  %389 = load i64, i64* @sfk_conversion, align 8
  store i64 %389, i64* %26, align 8
  br label %404

390:                                              ; preds = %384
  %391 = load i64, i64* %29, align 8
  %392 = call i32 @TYPE_WAS_ANONYMOUS(i64 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %403, label %394

394:                                              ; preds = %390
  %395 = load i64, i64* %25, align 8
  %396 = load i64, i64* %29, align 8
  %397 = call i64 @constructor_name_p(i64 %395, i64 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load i64, i64* %29, align 8
  %401 = call i64 @constructor_name(i64 %400)
  store i64 %401, i64* %25, align 8
  %402 = load i64, i64* @sfk_constructor, align 8
  store i64 %402, i64* %26, align 8
  br label %403

403:                                              ; preds = %399, %394, %390
  br label %404

404:                                              ; preds = %403, %388
  br label %405

405:                                              ; preds = %404, %382
  %406 = load i32*, i32** %8, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %414

408:                                              ; preds = %405
  %409 = load i64, i64* %26, align 8
  %410 = load i64, i64* @sfk_none, align 8
  %411 = icmp ne i64 %409, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %408
  %413 = load i32*, i32** %8, align 8
  store i32 -1, i32* %413, align 4
  br label %414

414:                                              ; preds = %412, %408, %405
  br label %415

415:                                              ; preds = %414, %374
  br label %416

416:                                              ; preds = %415, %318
  %417 = load i64, i64* %24, align 8
  %418 = load i64, i64* %25, align 8
  %419 = load i64, i64* %26, align 8
  %420 = call %struct.TYPE_27__* @make_id_declarator(i64 %417, i64 %418, i64 %419)
  store %struct.TYPE_27__* %420, %struct.TYPE_27__** %11, align 8
  %421 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %425 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 8
  br label %426

426:                                              ; preds = %416, %161
  %427 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %428 = call i64 @get_scope_of_declarator(%struct.TYPE_27__* %427)
  store i64 %428, i64* %12, align 8
  %429 = load i64, i64* %12, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %426
  %432 = load i64, i64* %12, align 8
  %433 = call i64 @push_scope(i64 %432)
  store i64 %433, i64* %16, align 8
  br label %434

434:                                              ; preds = %431, %426
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 1
  store i32 1, i32* %436, align 4
  %437 = load i32*, i32** %8, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = load i32*, i32** %8, align 8
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %452, label %443

443:                                              ; preds = %439, %434
  %444 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %445 = icmp ne %struct.TYPE_27__* %444, null
  br i1 %445, label %446, label %456

446:                                              ; preds = %443
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @cdk_id, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %446, %439
  %453 = load i32, i32* %13, align 4
  %454 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %454, i32 0, i32 0
  store i32 %453, i32* %455, align 8
  br label %459

456:                                              ; preds = %446, %443
  %457 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %457, i32 0, i32 0
  store i32 0, i32* %458, align 8
  br label %459

459:                                              ; preds = %456, %452
  store i32 0, i32* %15, align 4
  br label %461

460:                                              ; preds = %237, %230
  br label %464

461:                                              ; preds = %459
  br label %462

462:                                              ; preds = %461, %226
  br label %463

463:                                              ; preds = %462
  br label %39

464:                                              ; preds = %460, %369, %355, %291, %224, %162, %160
  %465 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %466 = icmp ne %struct.TYPE_27__* %465, null
  br i1 %466, label %474, label %467

467:                                              ; preds = %464
  %468 = load i64, i64* %7, align 8
  %469 = load i64, i64* @CP_PARSER_DECLARATOR_BLOCK, align 8
  %470 = icmp ne i64 %468, %469
  br i1 %470, label %471, label %474

471:                                              ; preds = %467
  %472 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %473 = call i32 @cp_parser_error(%struct.TYPE_26__* %472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %474

474:                                              ; preds = %471, %467, %464
  %475 = load i64, i64* %16, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %474
  %478 = load i64, i64* %16, align 8
  %479 = call i32 @pop_scope(i64 %478)
  br label %480

480:                                              ; preds = %477, %474
  %481 = load i32, i32* %13, align 4
  %482 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %482, i32 0, i32 0
  store i32 %481, i32* %483, align 8
  %484 = load i32, i32* %14, align 4
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %485, i32 0, i32 1
  store i32 %484, i32* %486, align 4
  %487 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %487, %struct.TYPE_27__** %5, align 8
  br label %488

488:                                              ; preds = %480, %286
  %489 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  ret %struct.TYPE_27__* %489
}

declare dso_local %struct.TYPE_25__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32* @cp_parser_parameter_declaration_clause(%struct.TYPE_26__*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_26__*, i64, i8*) #1

declare dso_local i32 @cp_parser_cv_qualifier_seq_opt(%struct.TYPE_26__*) #1

declare dso_local i64 @cp_parser_exception_specification_opt(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @make_call_declarator(%struct.TYPE_27__*, i32*, i32, i64) #1

declare dso_local %struct.TYPE_27__* @cp_parser_declarator(%struct.TYPE_26__*, i64, i32*, i32*, i32) #1

declare dso_local i64 @cp_parser_constant_expression(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i64 @fold_non_dependent_expr(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.TYPE_27__* @make_array_declarator(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @cp_parser_declarator_id(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @at_namespace_scope_p(...) #1

declare dso_local i64 @resolve_typename_type(i64, i32) #1

declare dso_local i32 @TYPE_CONTEXT(i64) #1

declare dso_local i8* @TYPE_IDENTIFIER(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @CLASSTYPE_USE_TEMPLATE(i64) #1

declare dso_local i32 @inform(i8*, i64, i32, i64, i64) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @TYPE_TI_TEMPLATE(i64) #1

declare dso_local i64 @constructor_name(i64) #1

declare dso_local i64 @IDENTIFIER_TYPENAME_P(i64) #1

declare dso_local i32 @TYPE_WAS_ANONYMOUS(i64) #1

declare dso_local i64 @constructor_name_p(i64, i64) #1

declare dso_local %struct.TYPE_27__* @make_id_declarator(i64, i64, i64) #1

declare dso_local i64 @get_scope_of_declarator(%struct.TYPE_27__*) #1

declare dso_local i64 @push_scope(i64) #1

declare dso_local i32 @pop_scope(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
