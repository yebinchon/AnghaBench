; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parenthesized_expression_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parenthesized_expression_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i32, i32*)* @cp_parser_parenthesized_expression_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_parenthesized_expression_list(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* @NULL_TREE, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %27 = call i32 @cp_parser_require(%struct.TYPE_13__* %25, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @error_mark_node, align 8
  store i64 %30, i64* %5, align 8
  br label %136

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %36 = call i64 @cp_lexer_next_token_is_not(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %106

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %100
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_14__* @cp_lexer_peek_token(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CPP_NAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_12__* @cp_lexer_consume_token(i32 %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %14, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  br label %91

60:                                               ; preds = %42, %39
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = call i64 @cp_parser_constant_expression(%struct.TYPE_13__* %64, i32 1, i32* %15)
  store i64 %65, i64* %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %63
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @cp_parser_assignment_expression(%struct.TYPE_13__* %72, i32 %73)
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @fold_non_dependent_expr(i64 %79)
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* @NULL_TREE, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @tree_cons(i64 %82, i64 %83, i64 %84)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @error_mark_node, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %112

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %51
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %117, %91
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CPP_COMMA, align 4
  %97 = call i64 @cp_lexer_next_token_is_not(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_12__* @cp_lexer_consume_token(i32 %103)
  br label %39

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %31
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %109 = call i32 @cp_parser_require(%struct.TYPE_13__* %107, i32 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_13__* %113, i32 1, i32 1, i32 1)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %92

118:                                              ; preds = %112
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* @error_mark_node, align 8
  store i64 %122, i64* %5, align 8
  br label %136

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %106
  %125 = load i64, i64* %10, align 8
  %126 = call i64 @nreverse(i64 %125)
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @tree_cons(i64 %130, i64 %131, i64 %132)
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i64, i64* %10, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %134, %121, %29
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @cp_parser_require(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local %struct.TYPE_14__* @cp_lexer_peek_token(i32) #1

declare dso_local %struct.TYPE_12__* @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_constant_expression(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @cp_parser_assignment_expression(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @fold_non_dependent_expr(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @nreverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
