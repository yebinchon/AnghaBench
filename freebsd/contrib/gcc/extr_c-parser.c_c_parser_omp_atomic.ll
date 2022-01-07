; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"invalid operator for %<#pragma omp atomic%>\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_omp_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_omp_atomic(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @c_parser_skip_to_pragma_eol(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @c_parser_unary_expression(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @TREE_CODE(i64 %16)
  switch i32 %17, label %32 [
    i32 132, label %18
    i32 128, label %22
    i32 130, label %22
    i32 129, label %27
    i32 131, label %27
  ]

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @c_parser_skip_to_end_of_block_or_statement(i32* %20)
  br label %81

22:                                               ; preds = %1, %1
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_OPERAND(i64 %23, i32 0)
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* @integer_one_node, align 8
  store i64 %26, i64* %4, align 8
  br label %66

27:                                               ; preds = %1, %1
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_OPERAND(i64 %28, i32 0)
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @integer_one_node, align 8
  store i64 %31, i64* %4, align 8
  br label %66

32:                                               ; preds = %1
  %33 = load i32*, i32** %2, align 8
  %34 = call %struct.TYPE_5__* @c_parser_peek_token(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 137, label %37
    i32 140, label %39
    i32 135, label %41
    i32 138, label %43
    i32 139, label %45
    i32 134, label %47
    i32 141, label %49
    i32 136, label %51
    i32 133, label %53
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @MULT_EXPR, align 4
  store i32 %38, i32* %6, align 4
  br label %58

39:                                               ; preds = %32
  %40 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %32
  %42 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %42, i32* %6, align 4
  br label %58

43:                                               ; preds = %32
  %44 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %32
  %46 = load i32, i32* @LSHIFT_EXPR, align 4
  store i32 %46, i32* %6, align 4
  br label %58

47:                                               ; preds = %32
  %48 = load i32, i32* @RSHIFT_EXPR, align 4
  store i32 %48, i32* %6, align 4
  br label %58

49:                                               ; preds = %32
  %50 = load i32, i32* @BIT_AND_EXPR, align 4
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %32
  %52 = load i32, i32* @BIT_IOR_EXPR, align 4
  store i32 %52, i32* %6, align 4
  br label %58

53:                                               ; preds = %32
  %54 = load i32, i32* @BIT_XOR_EXPR, align 4
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %32
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @c_parser_error(i32* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %19

58:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39, %37
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @c_parser_consume_token(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @c_parser_expression(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %58, %27, %22
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @c_finish_omp_atomic(i32 %67, i64 %68, i64 %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @error_mark_node, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @add_stmt(i64 %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @CPP_SEMICOLON, align 4
  %80 = call i32 @c_parser_skip_until_found(i32* %78, i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %19
  ret void
}

declare dso_local i32 @c_parser_skip_to_pragma_eol(i32*) #1

declare dso_local i64 @c_parser_unary_expression(i32*) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @c_parser_skip_to_end_of_block_or_statement(i32*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local %struct.TYPE_5__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_expression(i32*) #1

declare dso_local i64 @c_finish_omp_atomic(i32, i64, i64) #1

declare dso_local i32 @add_stmt(i64) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
