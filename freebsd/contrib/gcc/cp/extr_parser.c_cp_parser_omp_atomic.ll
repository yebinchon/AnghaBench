; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"invalid operator for %<#pragma omp atomic%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @cp_parser_omp_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_omp_atomic(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @cp_parser_require_pragma_eol(%struct.TYPE_10__* %8, i32* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @cp_parser_unary_expression(%struct.TYPE_10__* %11, i32 0, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  switch i32 %14, label %26 [
    i32 132, label %15
    i32 128, label %16
    i32 130, label %16
    i32 129, label %21
    i32 131, label %21
  ]

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @integer_one_node, align 4
  store i32 %20, i32* %6, align 4
  br label %66

21:                                               ; preds = %2, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @integer_one_node, align 4
  store i32 %25, i32* %6, align 4
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_11__* @cp_lexer_peek_token(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %51 [
    i32 137, label %33
    i32 140, label %35
    i32 135, label %37
    i32 138, label %39
    i32 139, label %41
    i32 134, label %43
    i32 141, label %45
    i32 136, label %47
    i32 133, label %49
  ]

33:                                               ; preds = %26
  %34 = load i32, i32* @MULT_EXPR, align 4
  store i32 %34, i32* %7, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  store i32 %36, i32* %7, align 4
  br label %54

37:                                               ; preds = %26
  %38 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %38, i32* %7, align 4
  br label %54

39:                                               ; preds = %26
  %40 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %40, i32* %7, align 4
  br label %54

41:                                               ; preds = %26
  %42 = load i32, i32* @LSHIFT_EXPR, align 4
  store i32 %42, i32* %7, align 4
  br label %54

43:                                               ; preds = %26
  %44 = load i32, i32* @RSHIFT_EXPR, align 4
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @BIT_AND_EXPR, align 4
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %26
  %48 = load i32, i32* @BIT_IOR_EXPR, align 4
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %26
  %50 = load i32, i32* @BIT_XOR_EXPR, align 4
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %26
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i32 @cp_parser_error(%struct.TYPE_10__* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %73

54:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cp_lexer_consume_token(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = call i32 @cp_parser_expression(%struct.TYPE_10__* %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @error_mark_node, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %73

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %21, %16
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @finish_omp_atomic(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @cp_parser_consume_semicolon_at_end_of_statement(%struct.TYPE_10__* %71)
  br label %76

73:                                               ; preds = %64, %51, %15
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = call i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @cp_parser_require_pragma_eol(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @cp_parser_unary_expression(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local %struct.TYPE_11__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_expression(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @finish_omp_atomic(i32, i32, i32) #1

declare dso_local i32 @cp_parser_consume_semicolon_at_end_of_statement(%struct.TYPE_10__*) #1

declare dso_local i32 @cp_parser_skip_to_end_of_block_or_statement(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
