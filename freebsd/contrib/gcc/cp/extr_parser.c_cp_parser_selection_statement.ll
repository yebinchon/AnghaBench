; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_selection_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_selection_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8, i32 }
%struct.TYPE_11__ = type { i32 }

@CPP_KEYWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"selection-statement\00", align 1
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@RID_ELSE = common dso_local global i32 0, align 4
@OPT_Wparentheses = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"%Hsuggest explicit braces to avoid ambiguous %<else%>\00", align 1
@IN_SWITCH_STMT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"expected selection-statement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @cp_parser_selection_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_selection_statement(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load i32, i32* @CPP_KEYWORD, align 4
  %20 = call %struct.TYPE_11__* @cp_parser_require(%struct.TYPE_12__* %18, i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %128 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %17, %17
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %28 = call %struct.TYPE_11__* @cp_parser_require(%struct.TYPE_12__* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_12__* %31)
  %33 = load i32, i32* @error_mark_node, align 4
  store i32 %33, i32* %3, align 4
  br label %132

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @begin_if_stmt()
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @begin_switch_stmt()
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @cp_parser_condition(%struct.TYPE_12__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %46 = call %struct.TYPE_11__* @cp_parser_require(%struct.TYPE_12__* %44, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_12__* %49, i32 1, i32 0, i32 1)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @finish_if_stmt_cond(i32 %55, i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = call i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_12__* %58, i32* %10)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @finish_then_clause(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RID_ELSE, align 4
  %66 = call i32 @cp_lexer_next_token_is_keyword(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %54
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cp_lexer_consume_token(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @begin_else_clause(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = call i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_12__* %75, i32* null)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @finish_else_clause(i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32*, i32** %5, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %68
  br label %93

84:                                               ; preds = %54
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @OPT_Wparentheses, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @EXPR_LOCUS(i32 %89)
  %91 = call i32 @warning(i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92, %83
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @finish_if_stmt(i32 %94)
  br label %126

96:                                               ; preds = %51
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @finish_switch_cond(i32 %97, i32 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 4
  store i8 %105, i8* %12, align 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i8, i8* @IN_SWITCH_STMT, align 1
  %109 = zext i8 %108 to i32
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %109
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = call i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_12__* %116, i32* null)
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i8, i8* %12, align 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store i8 %121, i8* %123, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @finish_switch_stmt(i32 %124)
  br label %126

126:                                              ; preds = %96, %93
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %17
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = call i32 @cp_parser_error(%struct.TYPE_12__* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @error_mark_node, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %126, %30
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_11__* @cp_parser_require(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_12__*) #1

declare dso_local i32 @begin_if_stmt(...) #1

declare dso_local i32 @begin_switch_stmt(...) #1

declare dso_local i32 @cp_parser_condition(%struct.TYPE_12__*) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @finish_if_stmt_cond(i32, i32) #1

declare dso_local i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @finish_then_clause(i32) #1

declare dso_local i32 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @begin_else_clause(i32) #1

declare dso_local i32 @finish_else_clause(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @EXPR_LOCUS(i32) #1

declare dso_local i32 @finish_if_stmt(i32) #1

declare dso_local i32 @finish_switch_cond(i32, i32) #1

declare dso_local i32 @finish_switch_stmt(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
