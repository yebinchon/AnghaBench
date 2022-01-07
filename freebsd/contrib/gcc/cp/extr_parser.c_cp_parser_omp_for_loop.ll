; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_for_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_for_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@RID_FOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"for statement expected\00", align 1
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i32 0, align 4
@CPP_EQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`='\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"`;'\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@IN_OMP_FOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*)* @cp_parser_omp_for_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_parser_omp_for_loop(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RID_FOR, align 4
  %20 = call i32 @cp_lexer_next_token_is_keyword(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = call i32 @cp_parser_error(%struct.TYPE_20__* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %150

25:                                               ; preds = %1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_19__* @cp_lexer_consume_token(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %34 = call i32 @cp_parser_require(%struct.TYPE_20__* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32* null, i32** %2, align 8
  br label %150

37:                                               ; preds = %25
  store i32* null, i32** %8, align 8
  store i32* null, i32** %4, align 8
  %38 = call i32* (...) @push_stmt_list()
  store i32* %38, i32** %9, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CPP_SEMICOLON, align 4
  %43 = call i64 @cp_lexer_next_token_is_not(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %37
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = call i32 @cp_parser_type_specifier_seq(%struct.TYPE_20__* %48, i32 0, i32* %11)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = call i32 @cp_parser_error_occurred(%struct.TYPE_20__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %56 = call i32* @cp_parser_declarator(%struct.TYPE_20__* %54, i32 %55, i32* null, i32* null, i32 0)
  store i32* %56, i32** %14, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = call i32* @cp_parser_attributes_opt(%struct.TYPE_20__* %57)
  store i32* %58, i32** %13, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = call i32* @cp_parser_asm_specification_opt(%struct.TYPE_20__* %59)
  store i32* %60, i32** %12, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = load i32, i32* @CPP_EQ, align 4
  %63 = call i32 @cp_parser_require(%struct.TYPE_20__* %61, i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = call i64 @cp_parser_parse_definitely(%struct.TYPE_20__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %53
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = call i32* @start_decl(i32* %68, i32* %11, i32 0, i32* %69, i32 %70, i32** %15)
  store i32* %71, i32** %8, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = call i32* @cp_parser_assignment_expression(%struct.TYPE_20__* %72, i32 0)
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @NULL_TREE, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %78 = call i32 @cp_finish_decl(i32* %74, i32 %75, i32 0, i32* %76, i32 %77)
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @pop_scope(i32* %82)
  br label %84

84:                                               ; preds = %81, %67
  br label %85

85:                                               ; preds = %84, %53
  br label %89

86:                                               ; preds = %45
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_20__* %87)
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32*, i32** %8, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = call i32* @cp_parser_expression(%struct.TYPE_20__* %93, i32 0)
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %37
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = load i32, i32* @CPP_SEMICOLON, align 4
  %99 = call i32 @cp_parser_require(%struct.TYPE_20__* %97, i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32*, i32** %9, align 8
  %101 = call i32* @pop_stmt_list(i32* %100)
  store i32* %101, i32** %9, align 8
  store i32* null, i32** %5, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CPP_SEMICOLON, align 4
  %106 = call i64 @cp_lexer_next_token_is_not(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = call i32* @cp_parser_condition(%struct.TYPE_20__* %109)
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %108, %96
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load i32, i32* @CPP_SEMICOLON, align 4
  %114 = call i32 @cp_parser_require(%struct.TYPE_20__* %112, i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %119 = call i64 @cp_lexer_next_token_is_not(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = call i32* @cp_parser_expression(%struct.TYPE_20__* %122, i32 0)
  store i32* %123, i32** %6, align 8
  br label %124

124:                                              ; preds = %121, %111
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %126 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %127 = call i32 @cp_parser_require(%struct.TYPE_20__* %125, i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_20__* %130, i32 1, i32 0, i32 1)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* @IN_OMP_FOR, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = call i32* (...) @push_stmt_list()
  store i32* %136, i32** %7, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = call i32 @cp_parser_statement(%struct.TYPE_20__* %137, i32 %138, i32 0, i32* null)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32* @pop_stmt_list(i32* %140)
  store i32* %141, i32** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32* @finish_omp_for(i32 %142, i32* %143, i32* %144, i32* %145, i32* %146, i32* %147, i32* %148)
  store i32* %149, i32** %2, align 8
  br label %150

150:                                              ; preds = %132, %36, %22
  %151 = load i32*, i32** %2, align 8
  ret i32* %151
}

declare dso_local i32 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_19__* @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32* @push_stmt_list(...) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_type_specifier_seq(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @cp_parser_error_occurred(%struct.TYPE_20__*) #1

declare dso_local i32* @cp_parser_declarator(%struct.TYPE_20__*, i32, i32*, i32*, i32) #1

declare dso_local i32* @cp_parser_attributes_opt(%struct.TYPE_20__*) #1

declare dso_local i32* @cp_parser_asm_specification_opt(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_20__*) #1

declare dso_local i32* @start_decl(i32*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i32* @cp_parser_assignment_expression(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @cp_finish_decl(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pop_scope(i32*) #1

declare dso_local i32 @cp_parser_abort_tentative_parse(%struct.TYPE_20__*) #1

declare dso_local i32* @cp_parser_expression(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @pop_stmt_list(i32*) #1

declare dso_local i32* @cp_parser_condition(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @cp_parser_statement(%struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i32* @finish_omp_for(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
