; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parse_foreach_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parse_foreach_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@RID_ENUM = common dso_local global i64 0, align 8
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i32 0, align 4
@cp_error_declarator = common dso_local global i32* null, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@ridpointers = common dso_local global i64* null, align 8
@RID_IN = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"selector is undeclared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @cp_parser_parse_foreach_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_parse_foreach_stmt(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_16__* @cp_lexer_peek_token(i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %9, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = call i64 @cp_parser_token_is_class_key(%struct.TYPE_16__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RID_ENUM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %1
  store i32 0, i32* %2, align 4
  br label %126

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_17__* %31)
  %33 = call i32 @clear_decl_specs(i32* %7)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %36 = call i64 @cp_parser_type_specifier(%struct.TYPE_17__* %34, i32 %35, i32* %7, i32 1, i32* %4, i32* %5)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %39 = call i32* @cp_parser_declarator(%struct.TYPE_17__* %37, i32 %38, i32* null, i32* null, i32 0)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** @cp_error_declarator, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_17__* %44)
  store i32 0, i32* %2, align 4
  br label %126

46:                                               ; preds = %30
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_16__* @cp_lexer_peek_token(i32 %49)
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %9, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %46
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @IDENTIFIER_NODE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = load i64*, i64** @ridpointers, align 8
  %65 = load i64, i64* @RID_IN, align 8
  %66 = trunc i64 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_14__* @cp_lexer_peek_nth_token(i32 %74, i32 2)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %80 [
    i32 132, label %79
    i32 131, label %79
    i32 133, label %79
    i32 129, label %79
    i32 128, label %79
    i32 135, label %79
    i32 134, label %79
    i32 130, label %79
  ]

79:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %71
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %71, %79
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %62, %57, %46
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %82
  store i64 0, i64* %13, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_17__* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @NULL_TREE, align 4
  %93 = load i32, i32* @NULL_TREE, align 4
  %94 = call i64 @start_decl(i32* %91, i32* %7, i32 0, i32 %92, i32 %93, i64* %13)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @error_mark_node, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %88
  %102 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %108

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* @NULL_TREE, align 4
  %106 = load i32, i32* @NULL_TREE, align 4
  %107 = call i32 @cp_finish_decl(i64 %104, i32 %105, i32 0, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %103, %101
  br label %116

109:                                              ; preds = %85
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_17__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = call i64 @cp_parser_expression(%struct.TYPE_17__* %112, i32 0)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @add_stmt(i64 %114)
  br label %116

116:                                              ; preds = %109, %108
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cp_lexer_consume_token(i32 %119)
  br label %124

121:                                              ; preds = %82
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_17__* %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %43, %29
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_16__* @cp_lexer_peek_token(i32) #1

declare dso_local i64 @cp_parser_token_is_class_key(%struct.TYPE_16__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_17__*) #1

declare dso_local i32 @clear_decl_specs(i32*) #1

declare dso_local i64 @cp_parser_type_specifier(%struct.TYPE_17__*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @cp_parser_declarator(%struct.TYPE_17__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @cp_parser_abort_tentative_parse(%struct.TYPE_17__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_14__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_17__*) #1

declare dso_local i64 @start_decl(i32*, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @cp_finish_decl(i64, i32, i32, i32, i32) #1

declare dso_local i64 @cp_parser_expression(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @add_stmt(i64) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
