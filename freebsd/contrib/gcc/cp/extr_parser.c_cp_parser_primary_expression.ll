; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_primary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_primary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32 }

@CP_ID_KIND_NONE = common dso_local global i32 0, align 4
@flag_blocks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"expected primary-expression\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@REAL_CST = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@CPP_GREATER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"floating-point literal\00", align 1
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ISO C++ forbids braced-groups within expressions\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"statement-expressions are allowed only inside functions\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@boolean_true_node = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i32 0, align 4
@null_node = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"%<this%> may not be used in this context\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"`this'\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"`,'\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"`va_arg'\00", align 1
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@CPP_DOT = common dso_local global i32 0, align 4
@CPP_DEREF = common dso_local global i32 0, align 4
@CPP_PLUS_PLUS = common dso_local global i32 0, align 4
@CPP_MINUS_MINUS = common dso_local global i32 0, align 4
@TEMPLATE_ID_EXPR = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i32 0, align 4
@none_type = common dso_local global i32 0, align 4
@SCOPE_REF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"local variable %qD may not appear in this context\00", align 1
@CPP_OBJC_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i32, i32, i32*)* @cp_parser_primary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_primary_expression(%struct.TYPE_26__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %25 = load i32, i32* @CP_ID_KIND_NONE, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_25__* @cp_lexer_peek_token(i32 %29)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %12, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %426 [
    i32 141, label %34
    i32 152, label %45
    i32 143, label %45
    i32 148, label %45
    i32 145, label %127
    i32 142, label %127
    i32 147, label %133
    i32 151, label %191
    i32 150, label %280
    i32 146, label %280
    i32 144, label %280
    i32 149, label %280
  ]

34:                                               ; preds = %5
  %35 = load i32, i32* @flag_blocks, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = call i32 @cp_parser_block_literal_expr(%struct.TYPE_26__* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %448

41:                                               ; preds = %34
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = call i32 @cp_parser_error(%struct.TYPE_26__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @error_mark_node, align 4
  store i32 %44, i32* %6, align 4
  br label %448

45:                                               ; preds = %5, %5, %5
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %12, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TREE_CODE(i32 %53)
  %55 = load i32, i32* @REAL_CST, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %45
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %57
  %63 = load i32, i32* @pedantic, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %122

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %65
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_25__* @cp_lexer_peek_token(i32 %71)
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %14, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CPP_COMMA, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %68
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CPP_SEMICOLON, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CPP_GREATER, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %102
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %108, %96, %90, %84, %78, %68
  br label %115

115:                                              ; preds = %114, %65
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %120 = call i32 @cp_parser_non_integral_constant_expression(%struct.TYPE_26__* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %62, %57, %45
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %6, align 4
  br label %448

127:                                              ; preds = %5, %5
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @cp_parser_string_literal(%struct.TYPE_26__* %128, i32 %131, i32 1)
  store i32 %132, i32* %6, align 4
  br label %448

133:                                              ; preds = %5
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %136)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %16, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %144 = call i32 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_26__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %133
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %151 = call i32 @cp_lexer_next_token_is(i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load i32, i32* @pedantic, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 @pedwarn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %153
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158
  %166 = call i32 (...) @begin_stmt_expr()
  store i32 %166, i32* %15, align 4
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @cp_parser_compound_statement(%struct.TYPE_26__* %167, i32 %168, i32 0, i32 0)
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @finish_stmt_expr(i32 %170, i32 0)
  store i32 %171, i32* %15, align 4
  br label %178

172:                                              ; preds = %146, %133
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @cp_parser_expression(%struct.TYPE_26__* %173, i32 %174)
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @finish_parenthesized_expr(i32 %176)
  br label %178

178:                                              ; preds = %172, %165
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %183 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %184 = call i32 @cp_parser_require(%struct.TYPE_26__* %182, i32 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %188 = call i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_26__* %187)
  br label %189

189:                                              ; preds = %186, %178
  %190 = load i32, i32* %15, align 4
  store i32 %190, i32* %6, align 4
  br label %448

191:                                              ; preds = %5
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %276 [
    i32 129, label %195
    i32 136, label %201
    i32 134, label %207
    i32 130, label %213
    i32 132, label %233
    i32 135, label %234
    i32 131, label %234
    i32 137, label %234
    i32 128, label %244
    i32 133, label %270
    i32 140, label %273
    i32 139, label %273
    i32 138, label %273
  ]

195:                                              ; preds = %191
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %198)
  %200 = load i32, i32* @boolean_true_node, align 4
  store i32 %200, i32* %6, align 4
  br label %448

201:                                              ; preds = %191
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %204)
  %206 = load i32, i32* @boolean_false_node, align 4
  store i32 %206, i32* %6, align 4
  br label %448

207:                                              ; preds = %191
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %210)
  %212 = load i32, i32* @null_node, align 4
  store i32 %212, i32* %6, align 4
  br label %448

213:                                              ; preds = %191
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %216)
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %213
  %223 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32, i32* @error_mark_node, align 4
  store i32 %224, i32* %6, align 4
  br label %448

225:                                              ; preds = %213
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %227 = call i32 @cp_parser_non_integral_constant_expression(%struct.TYPE_26__* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* @error_mark_node, align 4
  store i32 %230, i32* %6, align 4
  br label %448

231:                                              ; preds = %225
  %232 = call i32 (...) @finish_this_expr()
  store i32 %232, i32* %6, align 4
  br label %448

233:                                              ; preds = %191
  br label %281

234:                                              ; preds = %191, %191, %191
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %237)
  store %struct.TYPE_25__* %238, %struct.TYPE_25__** %12, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @finish_fname(i32 %242)
  store i32 %243, i32* %6, align 4
  br label %448

244:                                              ; preds = %191
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = call %struct.TYPE_25__* @cp_lexer_consume_token(i32 %247)
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %250 = call i32 @cp_parser_require(%struct.TYPE_26__* %249, i32 147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %252 = call i32 @cp_parser_assignment_expression(%struct.TYPE_26__* %251, i32 0)
  store i32 %252, i32* %17, align 4
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %254 = load i32, i32* @CPP_COMMA, align 4
  %255 = call i32 @cp_parser_require(%struct.TYPE_26__* %253, i32 %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %257 = call i32 @cp_parser_type_id(%struct.TYPE_26__* %256)
  store i32 %257, i32* %18, align 4
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %259 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %260 = call i32 @cp_parser_require(%struct.TYPE_26__* %258, i32 %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %262 = call i32 @cp_parser_non_integral_constant_expression(%struct.TYPE_26__* %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %244
  %265 = load i32, i32* @error_mark_node, align 4
  store i32 %265, i32* %6, align 4
  br label %448

266:                                              ; preds = %244
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @build_x_va_arg(i32 %267, i32 %268)
  store i32 %269, i32* %6, align 4
  br label %448

270:                                              ; preds = %191
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %272 = call i32 @cp_parser_builtin_offsetof(%struct.TYPE_26__* %271)
  store i32 %272, i32* %6, align 4
  br label %448

273:                                              ; preds = %191, %191, %191
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %275 = call i32 @cp_parser_objc_expression(%struct.TYPE_26__* %274)
  store i32 %275, i32* %6, align 4
  br label %448

276:                                              ; preds = %191
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %278 = call i32 @cp_parser_error(%struct.TYPE_26__* %277, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %279 = load i32, i32* @error_mark_node, align 4
  store i32 %279, i32* %6, align 4
  br label %448

280:                                              ; preds = %5, %5, %5, %5
  br label %281

281:                                              ; preds = %280, %233
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %283 = call i32 @cp_parser_id_expression(%struct.TYPE_26__* %282, i32 0, i32 1, i32* %22, i32 0, i32 0)
  store i32 %283, i32* %19, align 4
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* @error_mark_node, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = load i32, i32* @error_mark_node, align 4
  store i32 %288, i32* %6, align 4
  br label %448

289:                                              ; preds = %281
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = call %struct.TYPE_25__* @cp_lexer_peek_token(i32 %292)
  store %struct.TYPE_25__* %293, %struct.TYPE_25__** %12, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %328

299:                                              ; preds = %289
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 147
  br i1 %303, label %304, label %328

304:                                              ; preds = %299
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @CPP_DOT, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %328

310:                                              ; preds = %304
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @CPP_DEREF, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %310
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @CPP_PLUS_PLUS, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @CPP_MINUS_MINUS, align 4
  %327 = icmp ne i32 %325, %326
  br label %328

328:                                              ; preds = %322, %316, %310, %304, %299, %289
  %329 = phi i1 [ false, %316 ], [ false, %310 ], [ false, %304 ], [ false, %299 ], [ false, %289 ], [ %327, %322 ]
  %330 = zext i1 %329 to i32
  store i32 %330, i32* %23, align 4
  %331 = load i32, i32* %19, align 4
  %332 = call i32 @TREE_CODE(i32 %331)
  %333 = load i32, i32* @TEMPLATE_ID_EXPR, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %340, label %335

335:                                              ; preds = %328
  %336 = load i32, i32* %19, align 4
  %337 = call i32 @TREE_CODE(i32 %336)
  %338 = load i32, i32* @TYPE_DECL, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %335, %328
  %341 = load i32, i32* %19, align 4
  store i32 %341, i32* %20, align 4
  br label %398

342:                                              ; preds = %335
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %344 = load i32, i32* %19, align 4
  %345 = load i32, i32* @none_type, align 4
  %346 = load i32, i32* %22, align 4
  %347 = call i32 @cp_parser_lookup_name(%struct.TYPE_26__* %343, i32 %344, i32 %345, i32 %346, i32 0, i32 1, i32* %24)
  store i32 %347, i32* %20, align 4
  %348 = load i32, i32* %24, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %342
  %351 = load i32, i32* @error_mark_node, align 4
  store i32 %351, i32* %6, align 4
  br label %448

352:                                              ; preds = %342
  %353 = load i32, i32* %20, align 4
  %354 = call i32 @TREE_CODE(i32 %353)
  %355 = load i32, i32* @TYPE_DECL, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %352
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %359 = load i32, i32* %20, align 4
  %360 = call i32 @TREE_TYPE(i32 %359)
  %361 = call i32 @cp_objc_property_reference_prefix(%struct.TYPE_26__* %358, i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %357
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @cp_parser_objc_reference_expression(%struct.TYPE_26__* %364, i32 %365)
  store i32 %366, i32* %6, align 4
  br label %448

367:                                              ; preds = %357, %352
  %368 = load i32, i32* %20, align 4
  %369 = load i32, i32* %19, align 4
  %370 = call i32 @objc_lookup_ivar(i32 %368, i32 %369)
  store i32 %370, i32* %20, align 4
  %371 = load i32, i32* %20, align 4
  %372 = call i32 @TREE_CODE(i32 %371)
  %373 = load i32, i32* @SCOPE_REF, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %367
  %376 = load i32, i32* %20, align 4
  store i32 %376, i32* %6, align 4
  br label %448

377:                                              ; preds = %367
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %397

382:                                              ; preds = %377
  %383 = load i32, i32* %20, align 4
  %384 = call i32 @local_variable_p(i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %382
  %387 = load i32, i32* %20, align 4
  %388 = call i32 @check_for_out_of_scope_variable(i32 %387)
  store i32 %388, i32* %20, align 4
  %389 = load i32, i32* %20, align 4
  %390 = call i32 @local_variable_p(i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load i32, i32* %20, align 4
  %394 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* @error_mark_node, align 4
  store i32 %395, i32* %6, align 4
  br label %448

396:                                              ; preds = %386
  br label %397

397:                                              ; preds = %396, %382, %377
  br label %398

398:                                              ; preds = %397, %340
  %399 = load i32, i32* %19, align 4
  %400 = load i32, i32* %20, align 4
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %11, align 8
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i32 0, i32 1
  %413 = load i32, i32* %22, align 4
  %414 = load i32, i32* %23, align 4
  %415 = load i32, i32* %8, align 4
  %416 = load i32, i32* %10, align 4
  %417 = call i32 @finish_id_expression(i32 %399, i32 %400, i32 %403, i32* %404, i32 %407, i32 %410, i32* %412, i32 %413, i32 %414, i32 %415, i32 %416, i8** %21)
  store i32 %417, i32* %20, align 4
  %418 = load i8*, i8** %21, align 8
  %419 = icmp ne i8* %418, null
  br i1 %419, label %420, label %424

420:                                              ; preds = %398
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %422 = load i8*, i8** %21, align 8
  %423 = call i32 @cp_parser_error(%struct.TYPE_26__* %421, i8* %422)
  br label %424

424:                                              ; preds = %420, %398
  %425 = load i32, i32* %20, align 4
  store i32 %425, i32* %6, align 4
  br label %448

426:                                              ; preds = %5
  %427 = call i32 (...) @c_dialect_objc()
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %444

429:                                              ; preds = %426
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %441, label %435

435:                                              ; preds = %429
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @CPP_OBJC_STRING, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %435, %429
  %442 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %443 = call i32 @cp_parser_objc_expression(%struct.TYPE_26__* %442)
  store i32 %443, i32* %6, align 4
  br label %448

444:                                              ; preds = %435, %426
  %445 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %446 = call i32 @cp_parser_error(%struct.TYPE_26__* %445, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %447 = load i32, i32* @error_mark_node, align 4
  store i32 %447, i32* %6, align 4
  br label %448

448:                                              ; preds = %444, %441, %424, %392, %375, %363, %350, %287, %276, %273, %270, %266, %264, %234, %231, %229, %222, %207, %201, %195, %189, %127, %122, %41, %37
  %449 = load i32, i32* %6, align 4
  ret i32 %449
}

declare dso_local %struct.TYPE_25__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_block_literal_expr(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_26__*, i8*) #1

declare dso_local %struct.TYPE_25__* @cp_lexer_consume_token(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @cp_parser_non_integral_constant_expression(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @cp_parser_string_literal(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @begin_stmt_expr(...) #1

declare dso_local i32 @cp_parser_compound_statement(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @finish_stmt_expr(i32, i32) #1

declare dso_local i32 @cp_parser_expression(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @finish_parenthesized_expr(i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_26__*) #1

declare dso_local i32 @finish_this_expr(...) #1

declare dso_local i32 @finish_fname(i32) #1

declare dso_local i32 @cp_parser_assignment_expression(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @cp_parser_type_id(%struct.TYPE_26__*) #1

declare dso_local i32 @build_x_va_arg(i32, i32) #1

declare dso_local i32 @cp_parser_builtin_offsetof(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_parser_objc_expression(%struct.TYPE_26__*) #1

declare dso_local i32 @cp_parser_id_expression(%struct.TYPE_26__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cp_parser_lookup_name(%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cp_objc_property_reference_prefix(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @cp_parser_objc_reference_expression(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @objc_lookup_ivar(i32, i32) #1

declare dso_local i32 @local_variable_p(i32) #1

declare dso_local i32 @check_for_out_of_scope_variable(i32) #1

declare dso_local i32 @finish_id_expression(i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @c_dialect_objc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
