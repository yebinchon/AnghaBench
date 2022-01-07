; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_do_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_do_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RID_DO = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@c_break_label = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@c_cont_label = common dso_local global i8* null, align 8
@RID_WHILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"expected %<while%>\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_do_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_do_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @RID_DO, align 4
  %14 = call i32 @c_parser_next_token_is_keyword(i32* %12, i32 %13)
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @c_parser_consume_token(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i8* @c_parser_attributes(i32* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @flag_isoc99, align 4
  %21 = call i8* @c_begin_compound_stmt(i32 %20)
  store i8* %21, i8** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** @c_break_label, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** @NULL_TREE, align 8
  store i8* %27, i8** @c_break_label, align 8
  %28 = load i8*, i8** @c_cont_label, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** @NULL_TREE, align 8
  store i8* %29, i8** @c_cont_label, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i8* @c_parser_c99_block_statement(i32* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @RID_WHILE, align 4
  %34 = call i32 @c_parser_require_keyword(i32* %32, i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** @c_break_label, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** @c_break_label, align 8
  %37 = load i8*, i8** @c_cont_label, align 8
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** @c_cont_label, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i8* @c_parser_paren_condition(i32* %39)
  store i8* %40, i8** %4, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @CPP_SEMICOLON, align 4
  %43 = call i32 @c_parser_require(i32* %41, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %1
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @c_parser_skip_to_end_of_block_or_statement(i32* %46)
  br label %48

48:                                               ; preds = %45, %1
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @c_finish_loop(i32 %49, i8* %50, i32* null, i8* %51, i8* %52, i8* %53, i8* %54, i32 0)
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @flag_isoc99, align 4
  %58 = call i32 @c_end_compound_stmt(i8* %56, i32 %57)
  %59 = call i32 @add_stmt(i32 %58)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i8* @c_parser_attributes(i32*) #1

declare dso_local i8* @c_begin_compound_stmt(i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i8* @c_parser_c99_block_statement(i32*) #1

declare dso_local i32 @c_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i8* @c_parser_paren_condition(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_skip_to_end_of_block_or_statement(i32*) #1

declare dso_local i32 @c_finish_loop(i32, i8*, i32*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_end_compound_stmt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
