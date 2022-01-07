; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_KEYWORD = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i64 0, align 8
@CPP_COLON = common dso_local global i64 0, align 8
@CPP_OPEN_BRACE = common dso_local global i64 0, align 8
@CPP_PRAGMA = common dso_local global i64 0, align 8
@pragma_compound = common dso_local global i32 0, align 4
@pragma_stmt = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"expected statement\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, i32, i32*)* @cp_parser_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_statement(%struct.TYPE_20__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  br label %13

13:                                               ; preds = %105, %74, %37, %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64, i64* @NULL_TREE, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %10, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CPP_KEYWORD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %18
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %56 [
    i32 138, label %37
    i32 136, label %37
    i32 132, label %40
    i32 130, label %40
    i32 128, label %44
    i32 135, label %44
    i32 134, label %44
    i32 139, label %47
    i32 137, label %47
    i32 131, label %47
    i32 133, label %47
    i32 140, label %50
    i32 144, label %50
    i32 143, label %50
    i32 142, label %50
    i32 141, label %50
    i32 129, label %53
  ]

37:                                               ; preds = %32, %32
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = call i32 @cp_parser_label_for_labeled_statement(%struct.TYPE_20__* %38)
  br label %13

40:                                               ; preds = %32, %32
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @cp_parser_selection_statement(%struct.TYPE_20__* %41, i32* %42)
  store i64 %43, i64* %9, align 8
  br label %57

44:                                               ; preds = %32, %32, %32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = call i64 @cp_parser_iteration_statement(%struct.TYPE_20__* %45)
  store i64 %46, i64* %9, align 8
  br label %57

47:                                               ; preds = %32, %32, %32, %32
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = call i64 @cp_parser_jump_statement(%struct.TYPE_20__* %48)
  store i64 %49, i64* %9, align 8
  br label %57

50:                                               ; preds = %32, %32, %32, %32, %32
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = call i64 @cp_parser_objc_statement(%struct.TYPE_20__* %51)
  store i64 %52, i64* %9, align 8
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = call i64 @cp_parser_try_block(%struct.TYPE_20__* %54)
  store i64 %55, i64* %9, align 8
  br label %57

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %53, %50, %47, %44, %40
  br label %121

58:                                               ; preds = %18
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CPP_NAME, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_19__* @cp_lexer_peek_nth_token(i32 %67, i32 2)
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %10, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CPP_COLON, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = call i32 @cp_parser_label_for_labeled_statement(%struct.TYPE_20__* %75)
  br label %13

77:                                               ; preds = %64
  br label %120

78:                                               ; preds = %58
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CPP_OPEN_BRACE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = call i64 @cp_parser_compound_statement(%struct.TYPE_20__* %85, i32* null, i32 0, i32 0)
  store i64 %86, i64* %9, align 8
  br label %119

87:                                               ; preds = %78
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CPP_PRAGMA, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load i32, i32* @pragma_compound, align 4
  %99 = call i32 @cp_parser_pragma(%struct.TYPE_20__* %97, i32 %98)
  br label %107

100:                                              ; preds = %93
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = load i32, i32* @pragma_stmt, align 4
  %103 = call i32 @cp_parser_pragma(%struct.TYPE_20__* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %13

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %96
  br label %157

108:                                              ; preds = %87
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CPP_EOF, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = call i32 @cp_parser_error(%struct.TYPE_20__* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %157

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %84
  br label %120

120:                                              ; preds = %119, %77
  br label %121

121:                                              ; preds = %120, %57
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CPP_SEMICOLON, align 4
  %129 = call i64 @cp_lexer_next_token_is_not(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = call i32 @cp_parser_declaration_statement(%struct.TYPE_20__* %134)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = call i64 @cp_parser_parse_definitely(%struct.TYPE_20__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %157

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %124
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @cp_parser_expression_statement(%struct.TYPE_20__* %142, i64 %143)
  store i64 %144, i64* %9, align 8
  br label %145

145:                                              ; preds = %141, %121
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @TREE_CODE(i64 %149)
  %151 = call i64 @STATEMENT_CODE_P(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* %9, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @SET_EXPR_LOCATION(i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %107, %114, %139, %153, %148, %145
  ret void
}

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_label_for_labeled_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_selection_statement(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @cp_parser_iteration_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_jump_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_objc_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_try_block(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i64 @cp_parser_compound_statement(%struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i32 @cp_parser_pragma(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_declaration_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_expression_statement(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @STATEMENT_CODE_P(i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
