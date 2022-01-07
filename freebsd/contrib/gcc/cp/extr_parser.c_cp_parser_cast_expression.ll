; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_cast_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_cast_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32 }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"types may not be defined in casts\00", align 1
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@warn_old_style_cast = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i32 0, align 4
@current_lang_name = common dso_local global i64 0, align 8
@lang_name_c = common dso_local global i64 0, align 8
@OPT_Wold_style_cast = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"use of old-style cast\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"a cast to a type other than an integral or enumeration type\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @cp_parser_cast_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_cast_expression(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %17 = call i64 @cp_lexer_next_token_is(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %3
  %20 = load i32, i32* @NULL_TREE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @NULL_TREE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cp_lexer_consume_token(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cp_lexer_save_tokens(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i64 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_12__* %37, i32 0, i32 0, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %19
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %45 = call i64 @cp_lexer_next_token_is(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %19
  %48 = phi i1 [ false, %19 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cp_lexer_rollback_tokens(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = call i32 @cp_parser_simulate_error(%struct.TYPE_12__* %57)
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = call i32 @cp_parser_type_id(%struct.TYPE_12__* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %69 = call i32 @cp_parser_require(%struct.TYPE_12__* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %59, %56
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = call i32 @cp_parser_error_occurred(%struct.TYPE_12__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = call i32 @cp_parser_cast_expression(%struct.TYPE_12__* %81, i32 0, i32 1)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = call i64 @cp_parser_parse_definitely(%struct.TYPE_12__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = load i64, i64* @warn_old_style_cast, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32, i32* @in_system_header, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @VOID_TYPE_P(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* @current_lang_name, align 8
  %99 = load i64, i64* @lang_name_c, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @OPT_Wold_style_cast, align 4
  %103 = call i32 @warning(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %97, %93, %90, %87
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @cast_valid_in_integral_constant_expression_p(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @error_mark_node, align 4
  store i32 %113, i32* %4, align 4
  br label %125

114:                                              ; preds = %108, %104
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @build_c_cast(i32 %115, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %125

119:                                              ; preds = %83
  br label %120

120:                                              ; preds = %119, %3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @cp_parser_unary_expression(%struct.TYPE_12__* %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %114, %112
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_12__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_lexer_save_tokens(i32) #1

declare dso_local i64 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @cp_lexer_rollback_tokens(i32) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_12__*) #1

declare dso_local i32 @cp_parser_type_id(%struct.TYPE_12__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @cp_parser_error_occurred(%struct.TYPE_12__*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_12__*) #1

declare dso_local i32 @VOID_TYPE_P(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @cast_valid_in_integral_constant_expression_p(i32) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @build_c_cast(i32, i32) #1

declare dso_local i32 @cp_parser_unary_expression(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
