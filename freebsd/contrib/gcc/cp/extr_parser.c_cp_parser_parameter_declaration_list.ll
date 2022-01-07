; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parameter_declaration_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parameter_declaration_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@CPP_ELLIPSIS = common dso_local global i64 0, align 8
@CPP_SEMICOLON = common dso_local global i64 0, align 8
@CPP_OPEN_BRACE = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"expected %<,%> or %<...%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, i32*)* @cp_parser_parameter_declaration_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @cp_parser_parameter_declaration_list(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__** %5, %struct.TYPE_15__*** %6, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %2, %111
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call %struct.TYPE_15__* @cp_parser_parameter_declaration(%struct.TYPE_14__* %18, i32 0, i32* %9)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  store i32 1, i32* %23, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %112

24:                                               ; preds = %17
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store %struct.TYPE_15__** %28, %struct.TYPE_15__*** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %33 = call i64 @cp_lexer_next_token_is(i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @CPP_ELLIPSIS, align 8
  %40 = call i64 @cp_lexer_next_token_is(i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @CPP_SEMICOLON, align 8
  %47 = call i64 @cp_lexer_next_token_is(i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @CPP_OPEN_BRACE, align 8
  %54 = call i64 @cp_lexer_next_token_is(i32 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42, %35, %24
  br label %112

57:                                               ; preds = %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @CPP_COMMA, align 8
  %62 = call i64 @cp_lexer_next_token_is(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %57
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_13__* @cp_lexer_peek_nth_token(i32 %67, i32 2)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %10, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CPP_ELLIPSIS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %112

75:                                               ; preds = %64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cp_lexer_consume_token(i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = call i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_14__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_14__* %97)
  br label %99

99:                                               ; preds = %96, %93, %89, %84, %75
  br label %110

100:                                              ; preds = %57
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = call i32 @cp_parser_error(%struct.TYPE_14__* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = call i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_14__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_14__* %107, i32 1, i32 0, i32 0)
  br label %109

109:                                              ; preds = %106, %100
  br label %112

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  br label %17

112:                                              ; preds = %109, %74, %56, %22
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %116
}

declare dso_local %struct.TYPE_15__* @cp_parser_parameter_declaration(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i64) #1

declare dso_local %struct.TYPE_13__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
