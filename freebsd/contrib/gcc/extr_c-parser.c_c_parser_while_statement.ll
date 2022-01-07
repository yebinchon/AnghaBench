; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_while_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_while_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RID_WHILE = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@c_break_label = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@c_cont_label = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_while_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_while_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @RID_WHILE, align 4
  %12 = call i32 @c_parser_next_token_is_keyword(i32* %10, i32 %11)
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @c_parser_consume_token(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @c_parser_attributes(i32* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* @flag_isoc99, align 4
  %19 = call i8* @c_begin_compound_stmt(i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i8* @c_parser_paren_condition(i32* %24)
  store i8* %25, i8** %4, align 8
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
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** @c_break_label, align 8
  %36 = load i8*, i8** @c_cont_label, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @c_finish_loop(i32 %32, i8* %33, i32* null, i8* %34, i8* %35, i8* %36, i8* %37, i32 1)
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @flag_isoc99, align 4
  %41 = call i32 @c_end_compound_stmt(i8* %39, i32 %40)
  %42 = call i32 @add_stmt(i32 %41)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** @c_break_label, align 8
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** @c_cont_label, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i8* @c_parser_attributes(i32*) #1

declare dso_local i8* @c_begin_compound_stmt(i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i8* @c_parser_paren_condition(i32*) #1

declare dso_local i8* @c_parser_c99_block_statement(i32*) #1

declare dso_local i32 @c_finish_loop(i32, i8*, i32*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_end_compound_stmt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
