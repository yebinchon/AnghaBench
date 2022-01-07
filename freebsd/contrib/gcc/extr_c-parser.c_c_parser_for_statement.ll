; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_for_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_for_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }

@RID_FOR = common dso_local global i64 0, align 8
@flag_isoc99 = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@RID_IN = common dso_local global i64 0, align 8
@RID_EXTENSION = common dso_local global i64 0, align 8
@CPP_KEYWORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@objc_foreach_context = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@c_break_label = common dso_local global i64 0, align 8
@c_cont_label = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_for_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_for_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i64, i64* @RID_FOR, align 8
  %20 = call i64 @c_parser_next_token_is_keyword(i32* %18, i64 %19)
  %21 = call i32 @gcc_assert(i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_8__* @c_parser_peek_token(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @c_parser_consume_token(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @c_parser_attributes(i32* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* @flag_isoc99, align 4
  %31 = call i64 @c_begin_compound_stmt(i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %34 = call i64 @c_parser_require(i32* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %209

36:                                               ; preds = %1
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @CPP_SEMICOLON, align 4
  %39 = call i64 @c_parser_next_token_is(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @c_parser_consume_token(i32* %42)
  %44 = load i64, i64* @NULL_TREE, align 8
  %45 = call i32 @c_finish_expr_stmt(i64 %44)
  br label %153

46:                                               ; preds = %36
  %47 = load i32*, i32** %2, align 8
  %48 = call i64 @c_parser_next_token_starts_declspecs(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i64, i64* @NULL_TREE, align 8
  store i64 %51, i64* %4, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @c_parser_declaration_or_fndef(i32* %52, i32 1, i32 1, i32 1, i32 1, i64* %4)
  %54 = load i32*, i32** %2, align 8
  %55 = load i64, i64* @RID_IN, align 8
  %56 = call i64 @c_parser_next_token_is_keyword(i32* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %2, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @finish_parse_foreach_header(i32* %62, i64 %63)
  store i64 %64, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %67

65:                                               ; preds = %58, %50
  %66 = call i32 (...) @check_for_loop_decls()
  br label %67

67:                                               ; preds = %65, %61
  br label %152

68:                                               ; preds = %46
  %69 = load i32*, i32** %2, align 8
  %70 = load i64, i64* @RID_EXTENSION, align 8
  %71 = call i64 @c_parser_next_token_is_keyword(i32* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %123

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32*, i32** %2, align 8
  %76 = call %struct.TYPE_7__* @c_parser_peek_2nd_token(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CPP_KEYWORD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32*, i32** %2, align 8
  %83 = call %struct.TYPE_7__* @c_parser_peek_2nd_token(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RID_EXTENSION, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %81, %74
  %89 = phi i1 [ false, %74 ], [ %87, %81 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @c_parser_consume_token(i32* %91)
  br label %74

93:                                               ; preds = %88
  %94 = load i32*, i32** %2, align 8
  %95 = call %struct.TYPE_7__* @c_parser_peek_2nd_token(i32* %94)
  %96 = call i64 @c_token_starts_declspecs(%struct.TYPE_7__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = call i32 (...) @disable_extension_diagnostics()
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @c_parser_consume_token(i32* %100)
  %102 = load i64, i64* @NULL_TREE, align 8
  store i64 %102, i64* %4, align 8
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @c_parser_declaration_or_fndef(i32* %103, i32 1, i32 1, i32 1, i32 1, i64* %4)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @restore_extension_diagnostics(i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load i64, i64* @RID_IN, align 8
  %109 = call i64 @c_parser_next_token_is_keyword(i32* %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %98
  %112 = load i64, i64* %4, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** %2, align 8
  %116 = load i64, i64* %4, align 8
  %117 = call i64 @finish_parse_foreach_header(i32* %115, i64 %116)
  store i64 %117, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

118:                                              ; preds = %111, %98
  %119 = call i32 (...) @check_for_loop_decls()
  br label %120

120:                                              ; preds = %118, %114
  br label %122

121:                                              ; preds = %93
  br label %124

122:                                              ; preds = %120
  br label %151

123:                                              ; preds = %68
  br label %124

124:                                              ; preds = %123, %121
  %125 = load i32*, i32** %2, align 8
  %126 = call i64 @c_parser_expression(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %4, align 8
  %130 = load i32*, i32** %2, align 8
  %131 = load i64, i64* @RID_IN, align 8
  %132 = call i64 @c_parser_next_token_is_keyword(i32* %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %124
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @c_parser_consume_token(i32* %135)
  %137 = load i64, i64* %4, align 8
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @c_parser_initializer(i32* %138)
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @build_tree_list(i64 %137, i32 %142)
  store i64 %143, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %150

144:                                              ; preds = %124
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @c_finish_expr_stmt(i64 %145)
  %147 = load i32*, i32** %2, align 8
  %148 = load i32, i32* @CPP_SEMICOLON, align 4
  %149 = call i32 @c_parser_skip_until_found(i32* %147, i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %144, %134
  br label %151

151:                                              ; preds = %150, %122
  br label %152

152:                                              ; preds = %151, %67
  br label %153

153:                                              ; preds = %152, %41
  store i64 0, i64* @objc_foreach_context, align 8
  %154 = load i32*, i32** %2, align 8
  %155 = call %struct.TYPE_8__* @c_parser_peek_token(i32* %154)
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %10, align 4
  %158 = load i32*, i32** %2, align 8
  %159 = load i32, i32* @CPP_SEMICOLON, align 4
  %160 = call i64 @c_parser_next_token_is(i32* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i32*, i32** %2, align 8
  %164 = call i32 @c_parser_consume_token(i32* %163)
  %165 = load i64, i64* @NULL_TREE, align 8
  store i64 %165, i64* %4, align 8
  br label %190

166:                                              ; preds = %153
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %189

170:                                              ; preds = %166
  %171 = load i32*, i32** %2, align 8
  %172 = call i64 @c_parser_expression_conv(i32* %171)
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %15, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i64 @c_objc_common_truthvalue_conversion(i64 %176)
  store i64 %177, i64* %4, align 8
  %178 = load i64, i64* %4, align 8
  %179 = call i64 @EXPR_P(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %170
  %182 = load i64, i64* %4, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @SET_EXPR_LOCATION(i64 %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %170
  %186 = load i32*, i32** %2, align 8
  %187 = load i32, i32* @CPP_SEMICOLON, align 4
  %188 = call i32 @c_parser_skip_until_found(i32* %186, i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %169
  br label %190

190:                                              ; preds = %189, %162
  %191 = load i32*, i32** %2, align 8
  %192 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %193 = call i64 @c_parser_next_token_is(i32* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i64, i64* @NULL_TREE, align 8
  %197 = call i64 @c_process_expr_stmt(i64 %196)
  store i64 %197, i64* %5, align 8
  br label %205

198:                                              ; preds = %190
  %199 = load i32*, i32** %2, align 8
  %200 = call i64 @c_parser_expression(i32* %199)
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %200, i64* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @c_process_expr_stmt(i64 %203)
  store i64 %204, i64* %5, align 8
  br label %205

205:                                              ; preds = %198, %195
  %206 = load i32*, i32** %2, align 8
  %207 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %208 = call i32 @c_parser_skip_until_found(i32* %206, i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %212

209:                                              ; preds = %1
  %210 = load i64, i64* @error_mark_node, align 8
  store i64 %210, i64* %4, align 8
  %211 = load i64, i64* @error_mark_node, align 8
  store i64 %211, i64* %5, align 8
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i64, i64* @c_break_label, align 8
  store i64 %213, i64* %6, align 8
  %214 = load i64, i64* @NULL_TREE, align 8
  store i64 %214, i64* @c_break_label, align 8
  %215 = load i64, i64* @c_cont_label, align 8
  store i64 %215, i64* %7, align 8
  %216 = load i64, i64* @NULL_TREE, align 8
  store i64 %216, i64* @c_cont_label, align 8
  %217 = load i32*, i32** %2, align 8
  %218 = call i64 @c_parser_c99_block_statement(i32* %217)
  store i64 %218, i64* %8, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* @c_break_label, align 8
  %224 = load i64, i64* @c_cont_label, align 8
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @c_finish_loop(i32 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i32 1)
  %227 = load i64, i64* %3, align 8
  %228 = load i32, i32* @flag_isoc99, align 4
  %229 = call i32 @c_end_compound_stmt(i64 %227, i32 %228)
  %230 = call i32 @add_stmt(i32 %229)
  %231 = load i64, i64* %6, align 8
  store i64 %231, i64* @c_break_label, align 8
  %232 = load i64, i64* %7, align 8
  store i64 %232, i64* @c_cont_label, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_attributes(i32*) #1

declare dso_local i64 @c_begin_compound_stmt(i32) #1

declare dso_local i64 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_finish_expr_stmt(i64) #1

declare dso_local i64 @c_parser_next_token_starts_declspecs(i32*) #1

declare dso_local i32 @c_parser_declaration_or_fndef(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @finish_parse_foreach_header(i32*, i64) #1

declare dso_local i32 @check_for_loop_decls(...) #1

declare dso_local %struct.TYPE_7__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i64 @c_token_starts_declspecs(%struct.TYPE_7__*) #1

declare dso_local i32 @disable_extension_diagnostics(...) #1

declare dso_local i32 @restore_extension_diagnostics(i32) #1

declare dso_local i64 @c_parser_expression(i32*) #1

declare dso_local i64 @build_tree_list(i64, i32) #1

declare dso_local i32 @c_parser_initializer(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_expression_conv(i32*) #1

declare dso_local i64 @c_objc_common_truthvalue_conversion(i64) #1

declare dso_local i64 @EXPR_P(i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

declare dso_local i64 @c_process_expr_stmt(i64) #1

declare dso_local i64 @c_parser_c99_block_statement(i32*) #1

declare dso_local i32 @c_finish_loop(i32, i64, i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_end_compound_stmt(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
