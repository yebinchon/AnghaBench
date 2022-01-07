; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_try_catch_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_try_catch_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_parm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RID_AT_TRY = common dso_local global i32 0, align 4
@RID_AT_CATCH = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_ELLIPSIS = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<{%>\00", align 1
@RID_AT_FINALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_try_catch_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_try_catch_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_parm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @RID_AT_TRY, align 4
  %10 = call i64 @c_parser_next_token_is_keyword(i32* %8, i32 %9)
  %11 = call i32 @gcc_assert(i64 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @c_parser_consume_token(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @c_parser_compound_statement(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @objc_begin_try_stmt(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %74, %1
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @RID_AT_CATCH, align 4
  %26 = call i64 @c_parser_next_token_is_keyword(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @c_parser_consume_token(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %33 = call i64 @c_parser_require(i32* %31, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %76

36:                                               ; preds = %28
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @CPP_ELLIPSIS, align 4
  %39 = call i64 @c_parser_next_token_is(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @c_parser_consume_token(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %46 = call i32 @c_parser_skip_until_found(i32* %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @NULL_TREE, align 4
  %48 = call i32 @objc_begin_catch_clause(i32 %47)
  br label %66

49:                                               ; preds = %36
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @NULL_TREE, align 4
  %52 = call %struct.c_parm* @c_parser_parameter_declaration(i32* %50, i32 %51)
  store %struct.c_parm* %52, %struct.c_parm** %5, align 8
  %53 = load %struct.c_parm*, %struct.c_parm** %5, align 8
  %54 = icmp eq %struct.c_parm* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %58 = call i32 @c_parser_skip_until_found(i32* %56, i32 %57, i8* null)
  br label %76

59:                                               ; preds = %49
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %62 = call i32 @c_parser_skip_until_found(i32* %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.c_parm*, %struct.c_parm** %5, align 8
  %64 = call i32 @grokparm(%struct.c_parm* %63)
  %65 = call i32 @objc_begin_catch_clause(i32 %64)
  br label %66

66:                                               ; preds = %59, %41
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %69 = call i64 @c_parser_require(i32* %67, i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @c_parser_compound_statement_nostart(i32* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = call i32 (...) @objc_finish_catch_clause()
  br label %23

76:                                               ; preds = %55, %35, %23
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* @RID_AT_FINALLY, align 4
  %79 = call i64 @c_parser_next_token_is_keyword(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @c_parser_consume_token(i32* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %6, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @c_parser_compound_statement(i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @objc_build_finally_clause(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %76
  %94 = call i32 (...) @objc_finish_try_stmt()
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_compound_statement(i32*) #1

declare dso_local i32 @objc_begin_try_stmt(i32, i32) #1

declare dso_local i64 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @objc_begin_catch_clause(i32) #1

declare dso_local %struct.c_parm* @c_parser_parameter_declaration(i32*, i32) #1

declare dso_local i32 @grokparm(%struct.c_parm*) #1

declare dso_local i32 @c_parser_compound_statement_nostart(i32*) #1

declare dso_local i32 @objc_finish_catch_clause(...) #1

declare dso_local i32 @objc_build_finally_clause(i32, i32) #1

declare dso_local i32 @objc_finish_try_stmt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
