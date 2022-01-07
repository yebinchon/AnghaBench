; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initializer_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_initializer_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i32 0, align 4
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`}'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @cp_parser_initializer_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_initializer_clause(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %12 = call i64 @cp_lexer_next_token_is_not(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @cp_parser_constant_expression(%struct.TYPE_6__* %15, i32 1, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @fold_non_dependent_expr(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %14
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cp_lexer_consume_token(i32 %28)
  %30 = load i32, i32* @CONSTRUCTOR, align 4
  %31 = call i32 @make_node(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %36 = call i64 @cp_lexer_next_token_is_not(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @cp_parser_initializer_list(%struct.TYPE_6__* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CPP_COMMA, align 4
  %46 = call i64 @cp_lexer_next_token_is(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cp_lexer_consume_token(i32 %51)
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %57 = call i32 @cp_parser_require(%struct.TYPE_6__* %55, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %24
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_constant_expression(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @fold_non_dependent_expr(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @make_node(i32) #1

declare dso_local i32 @cp_parser_initializer_list(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
