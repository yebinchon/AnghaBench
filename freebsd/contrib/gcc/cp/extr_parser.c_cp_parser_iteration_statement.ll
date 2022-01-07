; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_iteration_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_iteration_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8, i32 }
%struct.TYPE_14__ = type { i32 }

@CPP_KEYWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"iteration-statement\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@IN_ITERATION_STMT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"`while'\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"`;'\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"expected iteration-statement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @cp_parser_iteration_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_iteration_statement(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = load i32, i32* @CPP_KEYWORD, align 4
  %15 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %13, i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @error_mark_node, align 4
  store i32 %19, i32* %2, align 4
  br label %146

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 4
  store i8 %23, i8* %8, align 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = call i32 @cp_parser_attributes_opt(%struct.TYPE_15__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %140 [
    i32 128, label %30
    i32 130, label %55
    i32 129, label %85
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @begin_while_stmt(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %35 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = call i32 @cp_parser_condition(%struct.TYPE_15__* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @finish_while_stmt_cond(i32 %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %43 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %41, i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** @IN_ITERATION_STMT, align 8
  %45 = ptrtoint i8* %44 to i8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i8 %45, i8* %47, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @cp_parser_already_scoped_statement(%struct.TYPE_15__* %48)
  %50 = load i8, i8* %8, align 1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i8 %50, i8* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @finish_while_stmt(i32 %53)
  br label %144

55:                                               ; preds = %20
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @begin_do_stmt(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** @IN_ITERATION_STMT, align 8
  %59 = ptrtoint i8* %58 to i8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i8 %59, i8* %61, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = call i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_15__* %62, i32* null)
  %64 = load i8, i8* %8, align 1
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i8 %64, i8* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @finish_do_body(i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @cp_parser_require_keyword(%struct.TYPE_15__* %69, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %73 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %71, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = call i32 @cp_parser_expression(%struct.TYPE_15__* %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @finish_do_stmt(i32 %76, i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %81 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %79, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = load i32, i32* @CPP_SEMICOLON, align 4
  %84 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %144

85:                                               ; preds = %20
  %86 = load i32, i32* @NULL_TREE, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @NULL_TREE, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @begin_for_stmt(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %92 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = call i32 @cp_parser_for_init_statement(%struct.TYPE_15__* %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @finish_for_init_stmt(i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CPP_SEMICOLON, align 4
  %101 = call i32 @cp_lexer_next_token_is_not(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %85
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = call i32 @cp_parser_condition(%struct.TYPE_15__* %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %85
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @finish_for_cond(i32 %107, i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = load i32, i32* @CPP_SEMICOLON, align 4
  %112 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %110, i32 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %117 = call i32 @cp_lexer_next_token_is_not(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = call i32 @cp_parser_expression(%struct.TYPE_15__* %120, i32 0)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %119, %106
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @finish_for_expr(i32 %123, i32 %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %128 = call %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__* %126, i32 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i8*, i8** @IN_ITERATION_STMT, align 8
  %130 = ptrtoint i8* %129 to i8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i8 %130, i8* %132, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = call i32 @cp_parser_already_scoped_statement(%struct.TYPE_15__* %133)
  %135 = load i8, i8* %8, align 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i8 %135, i8* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @finish_for_stmt(i32 %138)
  br label %144

140:                                              ; preds = %20
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = call i32 @cp_parser_error(%struct.TYPE_15__* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* @error_mark_node, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %122, %55, %30
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.TYPE_14__* @cp_parser_require(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @cp_parser_attributes_opt(%struct.TYPE_15__*) #1

declare dso_local i32 @begin_while_stmt(i32) #1

declare dso_local i32 @cp_parser_condition(%struct.TYPE_15__*) #1

declare dso_local i32 @finish_while_stmt_cond(i32, i32) #1

declare dso_local i32 @cp_parser_already_scoped_statement(%struct.TYPE_15__*) #1

declare dso_local i32 @finish_while_stmt(i32) #1

declare dso_local i32 @begin_do_stmt(i32) #1

declare dso_local i32 @cp_parser_implicitly_scoped_statement(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @finish_do_body(i32) #1

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @cp_parser_expression(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @finish_do_stmt(i32, i32) #1

declare dso_local i32 @begin_for_stmt(i32) #1

declare dso_local i32 @cp_parser_for_init_statement(%struct.TYPE_15__*) #1

declare dso_local i32 @finish_for_init_stmt(i32) #1

declare dso_local i32 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @finish_for_cond(i32, i32) #1

declare dso_local i32 @finish_for_expr(i32, i32) #1

declare dso_local i32 @finish_for_stmt(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
