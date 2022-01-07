; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_for_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_for_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@RID_FOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"for statement expected\00", align 1
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_EQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<=%>\00", align 1
@NOP_EXPR = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@NULL_TREE = common dso_local global i8* null, align 8
@input_location = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@c_break_label = common dso_local global i32* null, align 8
@size_one_node = common dso_local global i32* null, align 8
@c_cont_label = common dso_local global i32* null, align 8
@LABEL_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"expected iteration declaration or initialization\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @c_parser_omp_for_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @c_parser_omp_for_loop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @RID_FOR, align 4
  %18 = call i32 @c_parser_next_token_is_keyword(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @c_parser_error(i32* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %179

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.TYPE_8__* @c_parser_peek_token(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @c_parser_consume_token(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %32 = call i32 @c_parser_require(i32* %30, i64 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32* null, i32** %2, align 8
  br label %179

35:                                               ; preds = %23
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @c_parser_next_token_starts_declspecs(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @c_parser_declaration_or_fndef(i32* %40, i32 1, i32 1, i32 1, i32 1, i32* null)
  %42 = call i32* (...) @check_for_loop_decls()
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %171

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  store i32* %47, i32** %10, align 8
  br label %85

48:                                               ; preds = %35
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @CPP_NAME, align 4
  %51 = call i64 @c_parser_next_token_is(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = call %struct.TYPE_9__* @c_parser_peek_2nd_token(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CPP_EQ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @c_parser_postfix_expression(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* %62, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* @CPP_EQ, align 8
  %68 = call i32 @c_parser_require(i32* %66, i64 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = call i32* @c_parser_expr_no_commas(i32* %69, i32* null)
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32* %70, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @NOP_EXPR, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32* @build_modify_expr(i32* %74, i32 %75, i32* %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @c_process_expr_stmt(i32* %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @CPP_SEMICOLON, align 4
  %82 = call i32 @c_parser_skip_until_found(i32* %80, i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %84

83:                                               ; preds = %53, %48
  br label %171

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %46
  %86 = load i8*, i8** @NULL_TREE, align 8
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %5, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @CPP_SEMICOLON, align 4
  %90 = call i64 @c_parser_next_token_is_not(i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load i32*, i32** %3, align 8
  %94 = call i32* @c_parser_expression_conv(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32* %94, i32** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %5, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i32* @c_objc_common_truthvalue_conversion(i32* %98)
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @EXPR_P(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @input_location, align 4
  %106 = call i32 @SET_EXPR_LOCATION(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %92
  br label %108

108:                                              ; preds = %107, %85
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @CPP_SEMICOLON, align 4
  %111 = call i32 @c_parser_skip_until_found(i32* %109, i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i8*, i8** @NULL_TREE, align 8
  %113 = bitcast i8* %112 to i32*
  store i32* %113, i32** %6, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %116 = call i64 @c_parser_next_token_is_not(i32* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load i32*, i32** %3, align 8
  %120 = call i32* @c_parser_expression(i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32* %120, i32** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32* @c_process_expr_stmt(i32* %123)
  store i32* %124, i32** %6, align 8
  br label %125

125:                                              ; preds = %118, %108
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %128 = call i32 @c_parser_skip_until_found(i32* %126, i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %171, %125
  %130 = load i32*, i32** @c_break_label, align 8
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** @size_one_node, align 8
  store i32* %131, i32** @c_break_label, align 8
  %132 = load i32*, i32** @c_cont_label, align 8
  store i32* %132, i32** %8, align 8
  %133 = load i8*, i8** @NULL_TREE, align 8
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** @c_cont_label, align 8
  %135 = call i32* (...) @push_stmt_list()
  store i32* %135, i32** %9, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @c_parser_c99_block_statement(i32* %136)
  %138 = call i32 @add_stmt(i32 %137)
  %139 = load i32*, i32** @c_cont_label, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %129
  %142 = load i32, i32* @LABEL_EXPR, align 4
  %143 = load i32, i32* @void_type_node, align 4
  %144 = load i32*, i32** @c_cont_label, align 8
  %145 = call i32 @build1(i32 %142, i32 %143, i32* %144)
  %146 = call i32 @add_stmt(i32 %145)
  br label %147

147:                                              ; preds = %141, %129
  %148 = load i32*, i32** %9, align 8
  %149 = call i32* @pop_stmt_list(i32* %148)
  store i32* %149, i32** %9, align 8
  %150 = load i32*, i32** %7, align 8
  store i32* %150, i32** @c_break_label, align 8
  %151 = load i32*, i32** %8, align 8
  store i32* %151, i32** @c_cont_label, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %147
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** @error_mark_node, align 8
  %157 = icmp ne i32* %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i32*, i32** %10, align 8
  %160 = load i32*, i32** @error_mark_node, align 8
  %161 = icmp ne i32* %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, i32* %11, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = call i32* @c_finish_omp_for(i32 %163, i32* %164, i32* %165, i32* %166, i32* %167, i32* %168, i32* null)
  store i32* %169, i32** %2, align 8
  br label %179

170:                                              ; preds = %158, %154, %147
  store i32* null, i32** %2, align 8
  br label %179

171:                                              ; preds = %83, %45
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @c_parser_error(i32* %172, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i32*, i32** %3, align 8
  %175 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %176 = call i32 @c_parser_skip_until_found(i32* %174, i32 %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i8*, i8** @NULL_TREE, align 8
  %178 = bitcast i8* %177 to i32*
  store i32* %178, i32** %6, align 8
  store i32* %178, i32** %5, align 8
  store i32* %178, i32** %10, align 8
  store i32* %178, i32** %4, align 8
  br label %129

179:                                              ; preds = %170, %162, %34, %20
  %180 = load i32*, i32** %2, align 8
  ret i32* %180
}

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i64, i8*) #1

declare dso_local i64 @c_parser_next_token_starts_declspecs(i32*) #1

declare dso_local i32 @c_parser_declaration_or_fndef(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @check_for_loop_decls(...) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32* @c_parser_postfix_expression(i32*) #1

declare dso_local i32* @c_parser_expr_no_commas(i32*, i32*) #1

declare dso_local i32* @build_modify_expr(i32*, i32, i32*) #1

declare dso_local i32* @c_process_expr_stmt(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32* @c_parser_expression_conv(i32*) #1

declare dso_local i32* @c_objc_common_truthvalue_conversion(i32*) #1

declare dso_local i64 @EXPR_P(i32*) #1

declare dso_local i32 @SET_EXPR_LOCATION(i32*, i32) #1

declare dso_local i32* @c_parser_expression(i32*) #1

declare dso_local i32* @push_stmt_list(...) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_parser_c99_block_statement(i32*) #1

declare dso_local i32 @build1(i32, i32, i32*) #1

declare dso_local i32* @pop_stmt_list(i32*) #1

declare dso_local i32* @c_finish_omp_for(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
