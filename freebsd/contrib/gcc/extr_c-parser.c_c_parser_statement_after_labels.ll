; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_statement_after_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_statement_after_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@cur_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"goto not allowed in block literal\00", align 1
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"expected identifier or %<*%>\00", align 1
@c_cont_label = common dso_local global i32 0, align 4
@c_break_label = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"expected statement\00", align 1
@pragma_stmt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@MODIFY_EXPR = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@input_location = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_statement_after_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_statement_after_labels(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %156 [
    i32 143, label %18
    i32 144, label %22
    i32 141, label %144
    i32 146, label %147
    i32 145, label %147
    i32 142, label %152
  ]

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @c_parser_compound_statement(i32* %19)
  %21 = call i32 @add_stmt(i32 %20)
  br label %167

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %142 [
    i32 131, label %27
    i32 129, label %30
    i32 128, label %33
    i32 134, label %36
    i32 133, label %39
    i32 132, label %42
    i32 135, label %81
    i32 136, label %85
    i32 130, label %89
    i32 140, label %108
    i32 138, label %111
    i32 137, label %132
    i32 139, label %137
  ]

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @c_parser_if_statement(i32* %28)
  br label %143

30:                                               ; preds = %22
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @c_parser_switch_statement(i32* %31)
  br label %143

33:                                               ; preds = %22
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @c_parser_while_statement(i32* %34)
  br label %143

36:                                               ; preds = %22
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @c_parser_do_statement(i32* %37)
  br label %143

39:                                               ; preds = %22
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @c_parser_for_statement(i32* %40)
  br label %143

42:                                               ; preds = %22
  %43 = load i32, i32* @cur_block, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @c_parser_consume_token(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @CPP_NAME, align 4
  %52 = call i32 @c_parser_next_token_is(i32* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32*, i32** %2, align 8
  %56 = call %struct.TYPE_4__* @c_parser_peek_token(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @c_finish_goto_label(i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @c_parser_consume_token(i32* %60)
  br label %80

62:                                               ; preds = %47
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @CPP_MULT, align 4
  %65 = call i32 @c_parser_next_token_is(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @c_parser_consume_token(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @c_parser_expression(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @c_finish_goto_ptr(i64 %74)
  store i64 %75, i64* %4, align 8
  br label %79

76:                                               ; preds = %62
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @c_parser_error(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %67
  br label %80

80:                                               ; preds = %79, %54
  br label %164

81:                                               ; preds = %22
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @c_parser_consume_token(i32* %82)
  %84 = call i64 @c_finish_bc_stmt(i32* @c_cont_label, i32 0)
  store i64 %84, i64* %4, align 8
  br label %164

85:                                               ; preds = %22
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @c_parser_consume_token(i32* %86)
  %88 = call i64 @c_finish_bc_stmt(i32* @c_break_label, i32 1)
  store i64 %88, i64* %4, align 8
  br label %164

89:                                               ; preds = %22
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @c_parser_consume_token(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @c_parser_next_token_is(i32* %92, i32 141)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i64, i64* @NULL_TREE, align 8
  %97 = call i64 @c_finish_return(i64 %96)
  store i64 %97, i64* %4, align 8
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @c_parser_consume_token(i32* %98)
  br label %107

100:                                              ; preds = %89
  %101 = load i32*, i32** %2, align 8
  %102 = call i64 @c_parser_expression_conv(i32* %101)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @c_finish_return(i64 %105)
  store i64 %106, i64* %4, align 8
  br label %164

107:                                              ; preds = %95
  br label %143

108:                                              ; preds = %22
  %109 = load i32*, i32** %2, align 8
  %110 = call i64 @c_parser_asm_statement(i32* %109)
  store i64 %110, i64* %4, align 8
  br label %143

111:                                              ; preds = %22
  %112 = call i32 (...) @c_dialect_objc()
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @c_parser_consume_token(i32* %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @c_parser_next_token_is(i32* %116, i32 141)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i64, i64* @NULL_TREE, align 8
  %121 = call i64 @objc_build_throw_stmt(i64 %120)
  store i64 %121, i64* %4, align 8
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @c_parser_consume_token(i32* %122)
  br label %131

124:                                              ; preds = %111
  %125 = load i32*, i32** %2, align 8
  %126 = call i64 @c_parser_expression(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @objc_build_throw_stmt(i64 %129)
  store i64 %130, i64* %4, align 8
  br label %164

131:                                              ; preds = %119
  br label %143

132:                                              ; preds = %22
  %133 = call i32 (...) @c_dialect_objc()
  %134 = call i32 @gcc_assert(i32 %133)
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @c_parser_objc_try_catch_statement(i32* %135)
  br label %143

137:                                              ; preds = %22
  %138 = call i32 (...) @c_dialect_objc()
  %139 = call i32 @gcc_assert(i32 %138)
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @c_parser_objc_synchronized_statement(i32* %140)
  br label %143

142:                                              ; preds = %22
  br label %157

143:                                              ; preds = %137, %132, %131, %108, %107, %39, %36, %33, %30, %27
  br label %167

144:                                              ; preds = %1
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @c_parser_consume_token(i32* %145)
  br label %167

147:                                              ; preds = %1, %1
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @c_parser_error(i32* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @c_parser_consume_token(i32* %150)
  br label %167

152:                                              ; preds = %1
  %153 = load i32*, i32** %2, align 8
  %154 = load i32, i32* @pragma_stmt, align 4
  %155 = call i32 @c_parser_pragma(i32* %153, i32 %154)
  br label %167

156:                                              ; preds = %1
  br label %157

157:                                              ; preds = %156, %142
  %158 = load i32*, i32** %2, align 8
  %159 = call i64 @c_parser_expression_conv(i32* %158)
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @c_finish_expr_stmt(i64 %162)
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %157, %124, %100, %85, %81, %80
  %165 = load i32*, i32** %2, align 8
  %166 = call i32 @c_parser_skip_until_found(i32* %165, i32 141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %152, %147, %144, %143, %18
  %168 = load i64, i64* %4, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %167
  %171 = load i64, i64* %4, align 8
  %172 = call i64 @EXPR_P(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load i64, i64* %4, align 8
  %176 = call i64 @TREE_CODE(i64 %175)
  %177 = load i64, i64* @MODIFY_EXPR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = load i64, i64* %4, align 8
  %181 = call i32 @TREE_OPERAND(i64 %180, i32 0)
  %182 = call i64 @TREE_TYPE(i32 %181)
  %183 = call i64 @TREE_CODE(i64 %182)
  %184 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i64, i64* %4, align 8
  %188 = load i32, i32* @input_location, align 4
  %189 = call i32 @SET_EXPR_LOCATION(i64 %187, i32 %188)
  br label %194

190:                                              ; preds = %179, %174
  %191 = load i64, i64* %4, align 8
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @SET_EXPR_LOCATION(i64 %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194, %170, %167
  ret void
}

declare dso_local %struct.TYPE_4__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_parser_compound_statement(i32*) #1

declare dso_local i32 @c_parser_if_statement(i32*) #1

declare dso_local i32 @c_parser_switch_statement(i32*) #1

declare dso_local i32 @c_parser_while_statement(i32*) #1

declare dso_local i32 @c_parser_do_statement(i32*) #1

declare dso_local i32 @c_parser_for_statement(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_finish_goto_label(i32) #1

declare dso_local i64 @c_finish_goto_ptr(i64) #1

declare dso_local i64 @c_parser_expression(i32*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i64 @c_finish_bc_stmt(i32*, i32) #1

declare dso_local i64 @c_finish_return(i64) #1

declare dso_local i64 @c_parser_expression_conv(i32*) #1

declare dso_local i64 @c_parser_asm_statement(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i64 @objc_build_throw_stmt(i64) #1

declare dso_local i32 @c_parser_objc_try_catch_statement(i32*) #1

declare dso_local i32 @c_parser_objc_synchronized_statement(i32*) #1

declare dso_local i32 @c_parser_pragma(i32*, i32) #1

declare dso_local i64 @c_finish_expr_stmt(i64) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i64 @EXPR_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
