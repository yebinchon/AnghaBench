; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_enum_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_enum_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@CPP_NAME = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`}'\00", align 1
@ATTR_FLAG_TYPE_IN_PLACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*)* @cp_parser_enum_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_enum_specifier(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cp_lexer_consume_token(i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = call i64 @cp_parser_attributes_opt(%struct.TYPE_13__* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CPP_NAME, align 4
  %20 = call i64 @cp_lexer_next_token_is(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call i64 @cp_parser_identifier(%struct.TYPE_13__* %23)
  store i64 %24, i64* %4, align 8
  br label %27

25:                                               ; preds = %1
  %26 = call i64 (...) @make_anon_name()
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %32 = call i64 @cp_lexer_next_token_is(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i32 @cp_parser_simulate_error(%struct.TYPE_13__* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i32 @cp_parser_parse_definitely(%struct.TYPE_13__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @NULL_TREE, align 8
  store i64 %42, i64* %2, align 8
  br label %93

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i32 @cp_parser_check_type_definition(%struct.TYPE_13__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @error_mark_node, align 8
  store i64 %48, i64* %5, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @start_enum(i64 %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cp_lexer_consume_token(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @error_mark_node, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = call i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_13__* %61)
  %63 = load i64, i64* @error_mark_node, align 8
  store i64 %63, i64* %2, align 8
  br label %93

64:                                               ; preds = %52
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %69 = call i64 @cp_lexer_next_token_is_not(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @cp_parser_enumerator_list(%struct.TYPE_13__* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %78 = call i32 @cp_parser_require(%struct.TYPE_13__* %76, i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = call i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_13__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = call i64 @cp_parser_attributes_opt(%struct.TYPE_13__* %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @ATTR_FLAG_TYPE_IN_PLACE, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @cplus_decl_attributes(i64* %5, i64 %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @finish_enum(i64 %90)
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %89, %60, %41
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_attributes_opt(%struct.TYPE_13__*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i64 @cp_parser_identifier(%struct.TYPE_13__*) #1

declare dso_local i64 @make_anon_name(...) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_check_type_definition(%struct.TYPE_13__*) #1

declare dso_local i64 @start_enum(i64) #1

declare dso_local i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_13__*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_enumerator_list(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_13__*) #1

declare dso_local i32 @cplus_decl_attributes(i64*, i64, i32) #1

declare dso_local i32 @finish_enum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
