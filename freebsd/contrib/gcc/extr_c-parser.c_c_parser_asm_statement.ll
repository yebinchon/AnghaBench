; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RID_ASM = common dso_local global i32 0, align 4
@RID_VOLATILE = common dso_local global i32 0, align 4
@RID_CONST = common dso_local global i32 0, align 4
@RID_RESTRICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%E qualifier ignored on asm\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@c_lex_string_translate = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@CPP_COLON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"expected %<:%> or %<)%>\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_asm_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_asm_statement(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @RID_ASM, align 4
  %13 = call i64 @c_parser_next_token_is_keyword(i32* %11, i32 %12)
  %14 = call i32 @gcc_assert(i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @c_parser_consume_token(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @RID_VOLATILE, align 4
  %19 = call i64 @c_parser_next_token_is_keyword(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @c_parser_consume_token(i32* %26)
  br label %50

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @RID_CONST, align 4
  %31 = call i64 @c_parser_next_token_is_keyword(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @RID_RESTRICT, align 4
  %36 = call i64 @c_parser_next_token_is_keyword(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %28
  %39 = load i32*, i32** %3, align 8
  %40 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @warning(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @NULL_TREE, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @c_parser_consume_token(i32* %45)
  br label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @NULL_TREE, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49, %21
  store i32 0, i32* @c_lex_string_translate, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %53 = call i32 @c_parser_require(i32* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  store i32 1, i32* @c_lex_string_translate, align 4
  %56 = load i32, i32* @NULL_TREE, align 4
  store i32 %56, i32* %2, align 4
  br label %174

57:                                               ; preds = %50
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @c_parser_asm_string_literal(i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %62 = call i64 @c_parser_next_token_is(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  %65 = load i32, i32* @NULL_TREE, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @NULL_TREE, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @NULL_TREE, align 4
  store i32 %67, i32* %8, align 4
  br label %146

68:                                               ; preds = %57
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @CPP_COLON, align 4
  %71 = call i32 @c_parser_require(i32* %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  store i32 1, i32* @c_lex_string_translate, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %76 = call i32 @c_parser_skip_until_found(i32* %74, i32 %75, i32* null)
  %77 = load i32, i32* @NULL_TREE, align 4
  store i32 %77, i32* %2, align 4
  br label %174

78:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @CPP_COLON, align 4
  %81 = call i64 @c_parser_next_token_is(i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %86 = call i64 @c_parser_next_token_is(i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @NULL_TREE, align 4
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @c_parser_asm_operands(i32* %91, i32 0)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %88
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %96 = call i64 @c_parser_next_token_is(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @NULL_TREE, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @NULL_TREE, align 4
  store i32 %100, i32* %8, align 4
  br label %146

101:                                              ; preds = %93
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @CPP_COLON, align 4
  %104 = call i32 @c_parser_require(i32* %102, i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  store i32 1, i32* @c_lex_string_translate, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %109 = call i32 @c_parser_skip_until_found(i32* %107, i32 %108, i32* null)
  %110 = load i32, i32* @NULL_TREE, align 4
  store i32 %110, i32* %2, align 4
  br label %174

111:                                              ; preds = %101
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @CPP_COLON, align 4
  %114 = call i64 @c_parser_next_token_is(i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %119 = call i64 @c_parser_next_token_is(i32* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @NULL_TREE, align 4
  store i32 %122, i32* %7, align 4
  br label %126

123:                                              ; preds = %116
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @c_parser_asm_operands(i32* %124, i32 1)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %129 = call i64 @c_parser_next_token_is(i32* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @NULL_TREE, align 4
  store i32 %132, i32* %8, align 4
  br label %146

133:                                              ; preds = %126
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* @CPP_COLON, align 4
  %136 = call i32 @c_parser_require(i32* %134, i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  store i32 1, i32* @c_lex_string_translate, align 4
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %141 = call i32 @c_parser_skip_until_found(i32* %139, i32 %140, i32* null)
  %142 = load i32, i32* @NULL_TREE, align 4
  store i32 %142, i32* %2, align 4
  br label %174

143:                                              ; preds = %133
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @c_parser_asm_clobbers(i32* %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %131, %98, %64
  store i32 1, i32* @c_lex_string_translate, align 4
  %147 = load i32*, i32** %3, align 8
  %148 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %149 = call i32 @c_parser_require(i32* %147, i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %154 = call i32 @c_parser_skip_until_found(i32* %152, i32 %153, i32* null)
  %155 = load i32, i32* @NULL_TREE, align 4
  store i32 %155, i32* %2, align 4
  br label %174

156:                                              ; preds = %146
  %157 = load i32*, i32** %3, align 8
  %158 = load i32, i32* @CPP_SEMICOLON, align 4
  %159 = call i32 @c_parser_require(i32* %157, i32 %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @c_parser_skip_to_end_of_block_or_statement(i32* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @build_asm_expr(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = call i32 @build_asm_stmt(i32 %165, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %164, %151, %138, %106, %73, %55
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_asm_string_literal(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i32*) #1

declare dso_local i32 @c_parser_asm_operands(i32*, i32) #1

declare dso_local i32 @c_parser_asm_clobbers(i32*) #1

declare dso_local i32 @c_parser_skip_to_end_of_block_or_statement(i32*) #1

declare dso_local i32 @build_asm_stmt(i32, i32) #1

declare dso_local i32 @build_asm_expr(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
