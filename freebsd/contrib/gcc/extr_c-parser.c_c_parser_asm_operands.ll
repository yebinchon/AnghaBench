; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_asm_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i64 }
%struct.TYPE_2__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<]%>\00", align 1
@c_lex_string_translate = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@CPP_COMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @c_parser_asm_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_asm_operands(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %2, %108
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %17 = call i64 @c_parser_next_token_is(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @c_parser_consume_token(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @CPP_NAME, align 4
  %24 = call i64 @c_parser_next_token_is(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @c_parser_consume_token(i32* %31)
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @IDENTIFIER_LENGTH(i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @IDENTIFIER_POINTER(i64 %35)
  %37 = call i64 @build_string(i32 %34, i32 %36)
  store i64 %37, i64* %7, align 8
  br label %45

38:                                               ; preds = %19
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @c_parser_error(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %43 = call i32 @c_parser_skip_until_found(i32* %41, i32 %42, i8* null)
  %44 = load i64, i64* @NULL_TREE, align 8
  store i64 %44, i64* %3, align 8
  br label %111

45:                                               ; preds = %26
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %48 = call i32 @c_parser_skip_until_found(i32* %46, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

49:                                               ; preds = %14
  %50 = load i64, i64* @NULL_TREE, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @c_parser_asm_string_literal(i32* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @NULL_TREE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @NULL_TREE, align 8
  store i64 %58, i64* %3, align 8
  br label %111

59:                                               ; preds = %51
  store i32 1, i32* @c_lex_string_translate, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %62 = call i32 @c_parser_require(i32* %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  store i32 0, i32* @c_lex_string_translate, align 4
  %65 = load i64, i64* @NULL_TREE, align 8
  store i64 %65, i64* %3, align 8
  br label %111

66:                                               ; preds = %59
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @c_parser_expression(i32* %67)
  %69 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %11, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = bitcast %struct.c_expr* %9 to i8*
  %71 = bitcast %struct.c_expr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @default_function_array_conversion(i64 %76)
  %78 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %12, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = bitcast %struct.c_expr* %9 to i8*
  %80 = bitcast %struct.c_expr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  br label %81

81:                                               ; preds = %74, %66
  store i32 0, i32* @c_lex_string_translate, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %84 = call i32 @c_parser_require(i32* %82, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %89 = call i32 @c_parser_skip_until_found(i32* %87, i32 %88, i8* null)
  %90 = load i64, i64* @NULL_TREE, align 8
  store i64 %90, i64* %3, align 8
  br label %111

91:                                               ; preds = %81
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @build_tree_list(i64 %93, i64 %94)
  %96 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @build_tree_list(i64 %95, i64 %97)
  %99 = call i64 @chainon(i64 %92, i64 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @CPP_COMMA, align 4
  %102 = call i64 @c_parser_next_token_is(i32* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @c_parser_consume_token(i32* %105)
  br label %108

107:                                              ; preds = %91
  br label %109

108:                                              ; preds = %104
  br label %14

109:                                              ; preds = %107
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %109, %86, %64, %57, %38
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i64 @build_string(i32, i32) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i64) #1

declare dso_local i32 @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_asm_string_literal(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_expression(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @default_function_array_conversion(i64) #1

declare dso_local i64 @chainon(i64, i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
