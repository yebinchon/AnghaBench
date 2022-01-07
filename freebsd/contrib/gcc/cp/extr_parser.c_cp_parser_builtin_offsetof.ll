; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_builtin_offsetof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_builtin_offsetof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`('\00", align 1
@CPP_COMMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`,'\00", align 1
@null_pointer_node = common dso_local global i32 0, align 4
@CPP_DEREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i64 0, align 8
@OFFSETOF_EXPR = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @cp_parser_builtin_offsetof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_builtin_offsetof(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cp_lexer_consume_token(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %21 = call i32 @cp_parser_require(%struct.TYPE_11__* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = call i32 @cp_parser_type_id(%struct.TYPE_11__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* @CPP_COMMA, align 4
  %26 = call i32 @cp_parser_require(%struct.TYPE_11__* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @build_pointer_type(i32 %27)
  %29 = load i32, i32* @null_pointer_node, align 4
  %30 = call i32 @build_static_cast(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load i32, i32* @CPP_DEREF, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cp_parser_postfix_dot_deref_expression(%struct.TYPE_11__* %31, i32 %32, i32 %33, i32 1, i32* %7)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %1, %66
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_10__* @cp_lexer_peek_token(i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %60 [
    i32 128, label %43
    i32 129, label %47
    i32 130, label %55
  ]

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @cp_parser_postfix_open_square_expression(%struct.TYPE_11__* %44, i32 %45, i32 1)
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cp_lexer_consume_token(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @cp_parser_postfix_dot_deref_expression(%struct.TYPE_11__* %52, i32 129, i32 %53, i32 1, i32* %7)
  store i32 %54, i32* %6, align 4
  br label %66

55:                                               ; preds = %35
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cp_lexer_consume_token(i32 %58)
  br label %67

60:                                               ; preds = %35
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = call i32 @cp_parser_require(%struct.TYPE_11__* %61, i32 130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_11__* %63, i32 1, i32 0, i32 1)
  %65 = load i32, i32* @error_mark_node, align 4
  store i32 %65, i32* %6, align 4
  br label %79

66:                                               ; preds = %47, %43
  br label %35

67:                                               ; preds = %55
  %68 = load i64, i64* @processing_template_decl, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @OFFSETOF_EXPR, align 4
  %72 = load i32, i32* @size_type_node, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @build1(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @finish_offsetof(i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @cp_parser_type_id(%struct.TYPE_11__*) #1

declare dso_local i32 @build_static_cast(i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @cp_parser_postfix_dot_deref_expression(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_postfix_open_square_expression(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @finish_offsetof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
