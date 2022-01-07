; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"`new'\00", align 1
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"array bound forbidden after parenthesized type-id\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"try removing the parentheses around the type-id\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @cp_parser_new_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_new_expression(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_14__* %9, i32 0)
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = load i32, i32* @RID_NEW, align 4
  %16 = call i32 @cp_parser_require_keyword(%struct.TYPE_14__* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = call i64 @cp_parser_new_placement(%struct.TYPE_14__* %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @cp_parser_parse_definitely(%struct.TYPE_14__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %31 = call i64 @cp_lexer_next_token_is(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cp_lexer_consume_token(i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = call i64 @cp_parser_type_id(%struct.TYPE_14__* %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %42 = call i32 @cp_parser_require(%struct.TYPE_14__* %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %47 = call i64 @cp_lexer_next_token_is(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @inform(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i32 @cp_parser_direct_new_declarator(%struct.TYPE_14__* %52)
  br label %54

54:                                               ; preds = %49, %33
  %55 = load i64, i64* @NULL_TREE, align 8
  store i64 %55, i64* %8, align 8
  br label %59

56:                                               ; preds = %26
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = call i64 @cp_parser_new_type_id(%struct.TYPE_14__* %57, i64* %8)
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %56, %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %64 = call i64 @cp_lexer_next_token_is(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call i64 @cp_parser_new_initializer(%struct.TYPE_14__* %67)
  store i64 %68, i64* %7, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i64, i64* @NULL_TREE, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_14__* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* @error_mark_node, align 8
  store i64 %76, i64* %2, align 8
  br label %84

77:                                               ; preds = %71
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @build_new(i64 %78, i64 %79, i64 %80, i64 %81, i32 %82)
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %77, %75
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_parser_new_placement(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_type_id(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i32 @cp_parser_direct_new_declarator(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_parser_new_type_id(%struct.TYPE_14__*, i64*) #1

declare dso_local i64 @cp_parser_new_initializer(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @build_new(i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
